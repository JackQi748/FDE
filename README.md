# FDE 知识库

中文 **AI 前线部署工程师（Forward Deployed Engineer）** 学习与面试资料库：从角色认知、交付方法论、企业 AI 落地，到面试通关与可复制工作模板。

> [!NOTE]
> **本仓库是 [VanGong1999/FDE](https://github.com/VanGong1999/FDE) 的 Fork + 迭代版**（维护者：JackQi748）。
> 上游负责体系与广度（00–10 共 170+ 篇），本仓库在此基础上**增补了「能直接上手跑」的工程内容**——
> 见新增的 [11 迭代增补](docs/11-迭代增补/README.md)：2026 模型格局、vLLM/SGLang 部署实战、成本优化、Agent 协议、评测 Harness、30 天路线图。
> 上游原创内容版权归原作者，本目录内容为 JackQi748 2026 原创增补。

> 在线阅读（GitHub Pages）：https://jackqi748.github.io/FDE/  
> 主读者：有后端/全栈经验、转 FDE。从零基础开始，可参考 [学习路径-零基础](docs/00-导读/学习路径-零基础.md)  
> 本地预览 → 见下方 [本地预览](#本地预览)；支持与打赏 → [支持与联系（JackQi748 维护版）](#支持与联系jackqi748-维护版)

## 你学完能做什么

- 说清 FDE 与 SWE / SE / SA 的差异，并完成转岗自评
- 按 Discover → Design → Deploy → Review 推进客户侧 AI 交付
- 独立完成 RAG / Agent 方案选型、Eval、生产化清单
- 按公司类型准备 Decomposition、系统设计、Take-home 与行为面
- 沿 [10 概念课程](docs/10-概念课程/README.md) 十条轨道补齐约 171 个面试高频概念（从 Token/RAG 到 MLOps、Serving、安全与客户面）

## 读者分流（先选一条路）

| 你是谁 | 从这里开始 |
|--------|------------|
| 后端/全栈转 FDE（推荐） | [学习路径-转岗者](docs/00-导读/学习路径-转岗者.md) |
| 编程较弱、想从零了解 | [学习路径-零基础](docs/00-导读/学习路径-零基础.md) |
| 只想突击面试 | [04-面试通关](docs/04-面试通关/面试全景与公司对照.md) + [4–6 周备面计划](docs/04-面试通关/4-6周备面计划.md) |
| 已入职要上手交付 | [02-交付方法论](docs/02-交付方法论/Discover-Design-Deploy-Review.md) + [08-工具箱](docs/08-工具箱与清单/) |

## 4 周核心路径（转岗者速览）

| 周次 | 主题 | 必读 |
|------|------|------|
| Week 1 | 角色与自我定位 | [01-角色认知](docs/01-角色认知/什么是FDE.md) |
| Week 2 | 交付方法论 | [02-交付方法论](docs/02-交付方法论/Discover-Design-Deploy-Review.md) |
| Week 3 | AI 落地 | [03-AI落地](docs/03-AI落地/企业AI落地全景.md) |
| Week 4 | 面试与实操模板 | [04-面试通关](docs/04-面试通关/面试全景与公司对照.md) + [08-工具箱](docs/08-工具箱与清单/) |

**加长（Week 5–8）**：[行业案例](docs/06-行业案例/README.md) + [外文精读](docs/07-外文精读/README.md) + [能力深水区](docs/05-能力补强/README.md)。完整安排见 [如何使用本仓库](docs/00-导读/如何使用本仓库.md)。

## 目录导航

### 00 导读

- [如何使用本仓库](docs/00-导读/如何使用本仓库.md)
- [学习路径-转岗者](docs/00-导读/学习路径-转岗者.md)
- [学习路径-零基础](docs/00-导读/学习路径-零基础.md)
- [术语表](docs/00-导读/术语表.md)
- [扩展阅读清单](docs/00-导读/扩展阅读清单.md)

### 01 角色认知（核心必读 A）

- [什么是 FDE](docs/01-角色认知/什么是FDE.md)
- [FDE 人设使命与技术栈](docs/01-角色认知/FDE人设使命与技术栈.md)
- [公司图谱与岗位差异](docs/01-角色认知/公司图谱与岗位差异.md)
- [能力模型与成长路径](docs/01-角色认知/能力模型与成长路径.md)
- [适合谁不适合谁](docs/01-角色认知/适合谁不适合谁.md)
- [FDE 与 SWE 对比](docs/01-角色认知/FDE与SWE对比.md) · [如何成为 FDE](docs/01-角色认知/如何成为FDE.md)

### 02 交付方法论（核心必读 B）

- [Discover-Design-Deploy-Review](docs/02-交付方法论/Discover-Design-Deploy-Review.md)
- [需求发现与问题拆解](docs/02-交付方法论/需求发现与问题拆解.md)
- [POC 到生产](docs/02-交付方法论/POC到生产.md)
- [客户沟通与阻力处理](docs/02-交付方法论/客户沟通与阻力处理.md)
- [咨询思维与软技能栈](docs/02-交付方法论/咨询思维与软技能栈.md)
- [反模式与踩坑](docs/02-交付方法论/反模式与踩坑.md)
- [客户成果方法论](docs/02-交付方法论/客户成果方法论.md)

### 03 AI 落地（核心必读 C）

- [企业 AI 落地全景](docs/03-AI落地/企业AI落地全景.md)
- [RAG 实战精要](docs/03-AI落地/RAG实战精要.md)
- [Agent 与工具调用](docs/03-AI落地/Agent与工具调用.md)
- [Google ADK 与多 Agent 编排](docs/03-AI落地/Google-ADK与多Agent编排.md)
- [评测 Eval 与 Guardrails](docs/03-AI落地/评测Eval与Guardrails.md)
- [LLM 评测双环](docs/03-AI落地/LLM评测双环.md)
- [生产化清单](docs/03-AI落地/生产化清单.md)
- [架构决策树](docs/03-AI落地/架构决策树.md)
- [AI 系统设计课程·基础篇](docs/03-AI落地/AI系统设计课程-基础篇.md) · [·生产篇](docs/03-AI落地/AI系统设计课程-生产篇.md)

### 04 面试通关（核心必读 D）

- [面试全景与公司对照](docs/04-面试通关/面试全景与公司对照.md)
- [公司差异与薪酬](docs/04-面试通关/公司差异与薪酬.md)
- 各公司面试指南：[Palantir](docs/04-面试通关/Palantir-FDSE面试指南.md) · [OpenAI](docs/04-面试通关/OpenAI-FDE面试指南.md) · [Anthropic](docs/04-面试通关/Anthropic-FDE面试指南.md) · [Google](docs/04-面试通关/Google-FDE面试指南.md) · [AI 初创](docs/04-面试通关/AI初创公司面试指南.md)
- [面试练习操练系统](docs/04-面试通关/面试练习操练系统.md)
- [客户模拟操练](docs/04-面试通关/客户模拟操练.md) · [代码库 / Learning 操练](docs/04-面试通关/代码库Learning操练.md) · [AI 系统设计案例操练](docs/04-面试通关/AI系统设计案例操练.md) · [价值观与招聘经理操练](docs/04-面试通关/价值观与招聘经理操练.md)
- [Decomposition 拆解面](docs/04-面试通关/Decomposition拆解面.md)
- [C.A.S.E. 框架与 Delta 案例](docs/04-面试通关/CASE框架与Delta案例.md)
- [技术方案与 LLM 系统设计](docs/04-面试通关/技术方案与LLM系统设计.md)
- [编码与 Learning 轮](docs/04-面试通关/编码与Learning轮.md)
- [行为面 STAR 题库](docs/04-面试通关/行为面STAR题库.md)
- [Take-home 与演示](docs/04-面试通关/Take-home与演示.md)
- [4–6 周备面计划](docs/04-面试通关/4-6周备面计划.md)

### 05 能力补强

- [索引](docs/05-能力补强/README.md) · [零基础补课地图](docs/05-能力补强/零基础编程补课地图.md)
- [数据工程基石课程](docs/05-能力补强/数据工程基石课程.md)
- [GCP 云架构与基础设施](docs/05-能力补强/GCP云架构与基础设施.md)
- [气隙与战术边缘部署](docs/05-能力补强/气隙与战术边缘部署.md)
- [Snowflake 与 Databricks 现场](docs/05-能力补强/Snowflake与Databricks现场.md)
- [企业 SSO 与权限模型](docs/05-能力补强/企业SSO与权限模型.md)
- [企业网络与私有连接白话](docs/05-能力补强/企业网络与私有连接白话.md)
- [变更管理与培训设计](docs/05-能力补强/变更管理与培训设计.md)
- [解决方案产品化](docs/05-能力补强/解决方案产品化.md)

### 06 行业案例

- [案例目录](docs/06-行业案例/README.md)
- [客服坐席助手](docs/06-行业案例/01-客服坐席助手.md) · [知识库问答](docs/06-行业案例/02-企业知识库问答.md) · [研发 Copilot](docs/06-行业案例/03-内部研发Copilot.md)
- [合同审核 HITL](docs/06-行业案例/04-合同单据审核HITL.md) · [流程工单 Agent](docs/06-行业案例/05-流程型工单Agent.md) · [限域分析助手](docs/06-行业案例/06-限域数据分析助手.md)
- 真实部署：[Morgan Stanley × OpenAI](docs/06-行业案例/07-Morgan-Stanley-OpenAI.md) · [John Deere & Blue River](docs/06-行业案例/08-John-Deere-Blue-River.md) · [Airbus × Palantir](docs/06-行业案例/09-Airbus-Palantir.md)

### 07 外文精读

- [精读目录](docs/07-外文精读/README.md)
- [Exponent 2026](docs/07-外文精读/01-Exponent-FDE面试2026指南.md) · [Decomposition](docs/07-外文精读/02-Decomposition面试框架与操练.md) · [Palantir](docs/07-外文精读/03-Palantir-FDSE面试指南.md) · [OpenAI](docs/07-外文精读/04-OpenAI-FDE面试指南.md)
- [Anthropic](docs/07-外文精读/05-Anthropic-Applied-AI面试侧重点.md) · [Careers 对照](docs/07-外文精读/06-各公司Careers岗位描述对照.md) · [OWASP LLM](docs/07-外文精读/07-OWASP-LLM应用风险Top10.md)
- [Awesome FDE 课程体系总览](docs/07-外文精读/08-Awesome-FDE课程体系总览.md) · [SPC 与多家 FDE 现场声音](docs/07-外文精读/09-SPC与多家FDE现场声音.md)
- [FDEInterviews 公开站点地图](docs/07-外文精读/10-FDEInterviews公开站点地图.md)

### 08 工具箱与模板

- [08 工具箱与清单](docs/08-工具箱与清单/README.md)
  - [发现访谈提纲](docs/08-工具箱与清单/发现访谈提纲.md) · [POC 验收表](docs/08-工具箱与清单/POC验收表.md) · [Go-Live](docs/08-工具箱与清单/生产Go-Live清单.md) · [周报](docs/08-工具箱与清单/周报模板.md)
  - [现场勘察与范围文档](docs/08-工具箱与清单/现场勘察与范围文档.md)
- [可复制模板](docs/templates/)

### 09 面试题

- [题目录](docs/09-面试题/README.md)
- [1. LLM和AI基础](docs/09-面试题/README.md#1-llm和ai基础)（20 题：上下文窗口、生成循环、Transformer、Token、RAG/微调选型、幻觉、工具调用、延迟等）

### 10 概念课程（171 概念）

对照公开 FDE 课程十条轨道的**原创中文概念课**：直觉 + 工作示例 + 面试取舍 + 现场用法。与 09 分工：概念课建直觉，面试题练口述。

- [总索引](docs/10-概念课程/README.md)
- [01 LLM 与 GenAI](docs/10-概念课程/01-LLM与GenAI基础/README.md) · [02 检索与 Agent](docs/10-概念课程/02-检索与Agent/README.md) · [03 评测与 ML](docs/10-概念课程/03-评测与ML基础/README.md)
- [04 生产系统设计](docs/10-概念课程/04-生产系统设计/README.md) · [05 MLOps](docs/10-概念课程/05-MLOps与生命周期/README.md) · [06 Serving](docs/10-概念课程/06-ML基础设施与Serving/README.md)
- [07 数据与 SQL](docs/10-概念课程/07-数据与SQL工程/README.md) · [08 安全治理](docs/10-概念课程/08-AI安全隐私与治理/README.md)
- [09 编码手艺](docs/10-概念课程/09-编码与工程手艺/README.md) · [10 客户面手艺](docs/10-概念课程/10-客户面手艺/README.md)

### 引用总表

- [references/sources.md](references/sources.md)

## 版权与引用

- 本仓库原创内容采用 [MIT License](LICENSE)
- 外文精华以综述/意译呈现，版权归原作者；见各文「参考与来源」与 [sources.md](references/sources.md)
- Awesome FDE 课程内容中文整理署名：Pier Paolo Ippolito、Paolo Perrone（见 [总览精读](docs/07-外文精读/08-Awesome-FDE课程体系总览.md)）

## 贡献

欢迎 PR。请先阅读 [CONTRIBUTING.md](CONTRIBUTING.md)。

## Phase 说明

| 阶段 | 状态 | 内容 |
|------|------|------|
| Phase 1 | 已完成 | 骨架 + 四大核心必读 + 工具箱模板 |
| Phase 2 | 已完成 | 行业案例深写、外文精读库、能力补强深水区 |
| Awesome FDE 入库 | 已完成 | 英文课程拆分翻译并归入 01–08 |

## 本 Fork 的迭代内容（JackQi748 · 2026）

在保留上游全部 00–10 内容的基础上，本仓库新增 [11 迭代增补](docs/11-迭代增补/README.md) 目录，补「落地与时效」短板：

| 新增文件 | 价值 |
|----------|------|
| [2026 模型与平台格局](docs/11-迭代增补/2026-模型与平台格局.md) | 当下选型的 Pareto 决策框架 |
| [推理部署实战：vLLM 与 SGLang](docs/11-迭代增补/推理部署实战-vLLM与SGLang.md) | 一行起服务 + docker-compose + 压测指标 |
| [成本优化手册](docs/11-迭代增补/成本优化手册.md) | 路由 / 缓存 / 量化，把账单打下来 |
| [Agent 协议全景 2026](docs/11-迭代增补/Agent协议全景2026.md) | MCP / A2A / AG-UI 怎么选怎么接 |
| [评测 Harness 速成](docs/11-迭代增补/评测Harness速成.md) | 10 分钟搭可重复 Eval，含代码 |
| [30 天 FDE 行动路线图](docs/11-迭代增补/30天行动路线图.md) | 把全库排进 30 天可执行计划 |

工程改动：Docsify 站点改为**暗色主题**、补充代码复制/图片缩放插件、侧栏新增第 11 节。详见 [CHANGELOG.md](CHANGELOG.md)。

### 本地预览

本仓库是纯静态 Docsify 站点，**无需构建**，改完 markdown 刷新浏览器即可看：

```bash
./preview.sh          # 默认 http://localhost:3000/
./preview.sh 8080     # 自定义端口
```

想用官方热重载 CLI 也可以：`npx docsify-cli serve .`（需 Node.js）。

## 支持与联系（JackQi748 维护版）

如果这个 Fork 对你有帮助，欢迎 **Star / Fork / 提 Issue / 提 PR**。

> 打赏与联系方式为**占位**：请把你自己的收款码放进 `pictures/` 目录（如 `pictures/jackqi748-微信.jpg`），
> 然后把下面表格的图片路径替换成你的文件即可。当前未放置真实收款码，避免沿用上游个人隐私信息。

| 微信打赏 | 支付宝打赏 | 添加微信 |
|:---:|:---:|:---:|
| _待补充（放 pictures/jackqi748-微信.jpg）_ | _待补充（放 pictures/jackqi748-支付宝.jpg）_ | _待补充_ |

上游原作者的打赏与公众号，请前往 [VanGong1999/FDE](https://github.com/VanGong1999/FDE#支持与联系) 支持。
