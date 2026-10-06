# 推理部署实战：vLLM 与 SGLang

一句话直觉：把「模型权重」变成「内部 OpenAI 兼容接口」，让上层 RAG/Agent 代码一行不改就能换底座。vLLM 社区最广、SGLang 对 MoE/结构化输出更顺手——先用 vLLM 跑通，再按需切 SGLang。

## 1. 先选引擎

| 维度 | vLLM | SGLang |
|------|------|--------|
| 生态/文档 | 最成熟 | 增长快 |
| MoE 吞吐 | 好 | 更好（原生 RadixAttention） |
| 结构化输出 | 支持 | 原生更强 |
| 何时先用 | 通用、要稳 | 大规模 MoE、复杂约束解码 |

## 2. vLLM 一行起服务（OpenAI 兼容）

```bash
# 需要一张有够显存的卡；下面以 Qwen2.5-7B-Instruct 为例
pip install vllm

vllm serve Qwen/Qwen2.5-7B-Instruct \
  --host 0.0.0.0 --port 8000 \
  --gpu-memory-utilization 0.9 \
  --max-model-len 8192 \
  --enable-prefix-caching
```

起来后直接当 OpenAI 接口用：

```python
from openai import OpenAI

client = OpenAI(base_url="http://localhost:8000/v1", api_key="EMPTY")

resp = client.chat.completions.create(
    model="Qwen/Qwen2.5-7B-Instruct",
    messages=[{"role": "user", "content": "用一句话解释 RAG"}],
)
print(resp.choices[0].message.content)
```

## 3. 生产级 docker-compose（含观测）

```yaml
# docker-compose.yml
services:
  vllm:
    image: vllm/vllm-openai:latest
    runtime: nvidia
    ports:
      - "8000:8000"
    volumes:
      - ./models:/models
    command: >
      --model /models/Qwen2.5-7B-Instruct
      --tensor-parallel-size 1
      --gpu-memory-utilization 0.9
      --max-model-len 8192
      --enable-prefix-caching
      --enable-chunked-prefill
    deploy:
      resources:
        reservations:
          devices:
            - driver: nvidia
              count: 1
              capabilities: [gpu]
  # 可选：Prometheus 抓 /metrics，Grafana 看 QPS/延迟/显存
```

启动：`docker compose up -d`。健康检查：`curl localhost:8000/health`。

## 4. 压测（别靠感觉估吞吐）

```bash
# 装：pip install evalscope  或 用官方 benchmark
python -m vllm.entrypoints.openai.api_server --help  # 确认版本
# 简单并发压测用 locust / evalscope，关注三个数：
#   - QPS（吞吐）
#   - P95 首 token 延迟（TTFT）
#   - P95 每 token 间隔（TPOT）
```

| 指标 | 含义 | 现场阈值经验 |
|------|------|--------------|
| TTFT | 首 token 延迟 | 交互场景 < 1s 较舒服 |
| TPOT | 生成速度 | < 50ms/token 流畅 |
| QPS | 并发吞吐 | 按成本反推能接多少用户 |

## 5. 上线前 Checklist

- [ ] 接口 `/v1` 与上层代码兼容（OpenAI SDK 直连）
- [ ] 开启前缀缓存（重复 system prompt 直接命中）
- [ ] 限流 + 队列，避免突发打满显存
- [ ] 模型版本锁定（镜像 tag 固定，便于回滚）
- [ ] 显存留余量（utilization 别拉满，留 10% 防 OOM）
- [ ] 有降级：底座挂了切 API 旗舰

## 6. 反模式

- **把显存吃满**：`gpu-memory-utilization=0.98` 一有并发就 OOM。
- **不上缓存**：system prompt 几十次重复编码，白烧算力。
- **无压测就上线**：体感「挺快」≠ 50 并发下不崩。

## 参考与来源

- vLLM 官方文档：https://docs.vllm.ai
- SGLang 官方文档：https://docs.sglang.ai
- 上游 [docs/03-AI落地/生产化清单.md](../../03-AI落地/生产化清单.md)
- 本篇为 JackQi748 2026 迭代增补，命令思路原创整理
