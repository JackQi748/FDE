# CHANGELOG

本仓库是 [VanGong1999/FDE](https://github.com/VanGong1999/FDE) 的 Fork + 迭代版，维护者 **JackQi748**（2026）。

上游原创内容版权归原作者（MIT License，见 [LICENSE](LICENSE)）；本 CHANGELOG 与 `docs/11-迭代增补/` 下内容为 JackQi748 原创增补。

## [2026-10-07] v0.1.0 · Fork + 首轮迭代

### 新增（docs/11-迭代增补/）
- `README.md` — 迭代增补目录索引与定位说明
- `2026-模型与平台格局.md` — 闭源/开源选型决策框架与速查表
- `推理部署实战-vLLM与SGLang.md` — 一行起服务、docker-compose 模板、压测指标、上线 Checklist
- `成本优化手册.md` — 模型路由 / 提示缓存 / 语义缓存 / 量化 四杠杆
- `Agent协议全景2026.md` — MCP / A2A / AG-UI 三层地图与选型
- `评测Harness速成.md` — 最小可运行 Eval 闭环（数据集 + Runner + 评分 + 报告）
- `30天行动路线图.md` — 把全库内容排进 30 天可执行计划

### 改进（工程）
- `index.html`：Docsify 站点改为**暗色主题**（适配深色阅读环境），Mermaid 切 dark 主题
- `index.html`：新增 `docsify-copy-code`、`zoom-image` 插件，补充 yaml/docker 等语言高亮
- `index.html`：`repo` 指向 `JackQi748/FDE`，开启 `notFoundPage`
- `_sidebar.md`：新增「11 迭代增补」分组与 7 个条目
- `README.md`：顶部新增 Fork + 迭代说明横幅，新增「本 Fork 的迭代内容」章节，Pages 链接改指 JackQi748

### 未改动
- 上游 `docs/00-*` ~ `docs/10-*` 全部内容与结构原样保留
- `LICENSE`、`CONTRIBUTING.md`、`.github/workflows/pages.yml` 保持不变（Pages 自动部署 main 分支）
