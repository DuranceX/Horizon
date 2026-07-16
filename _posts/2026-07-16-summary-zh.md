---
layout: default
title: "Horizon Summary: 2026-07-16 (ZH)"
date: 2026-07-16
lang: zh
---

> 从 47 条内容中筛选出 22 条重要资讯。

---

1. [Thinking Machines 发布开放权重多模态模型 Inkling](#item-1) ⭐️ 8.0/10
2. [xAI 在数据上传风波后开源 Grok Build 命令行工具](#item-2) ⭐️ 8.0/10
3. [研究者绕过 Claude 的 web_fetch 防护，窃取用户记忆数据](#item-3) ⭐️ 8.0/10
4. [OpenAI 推出 GPT-Red：基于自我博弈的自动化红队系统](#item-4) ⭐️ 8.0/10
5. [提议：给 SQLite 引入 Rust 风格的版本机制](#item-5) ⭐️ 7.0/10
6. [在 13 年前的无 GPU Xeon 服务器上以每秒 5 个 token 运行 Gemma 4 26B 模型](#item-6) ⭐️ 7.0/10
7. [深入探究 Telegram 数据中心的组织方式](#item-7) ⭐️ 7.0/10
8. [Linus Torvalds 谈大语言模型在内核开发中的使用](#item-8) ⭐️ 7.0/10
9. [微软确认无法禁用的 Windows GDID 设备标识符，因 FBI 案件文件曝光](#item-9) ⭐️ 7.0/10
10. [elfuse：在 macOS Apple Silicon 上运行 Linux ELF 可执行文件](#item-10) ⭐️ 7.0/10
11. [为 ActivityPub 实现端到端加密还剩下的工作](#item-11) ⭐️ 7.0/10
12. [Dex Horthy 谈 AI 辅助编程中的上下文工程](#item-12) ⭐️ 7.0/10
13. [评论文章呼吁政府与慈善机构资助开源人工智能](#item-13) ⭐️ 6.0/10
14. [将 Grok CLI 的 Rust Mermaid 渲染器编译为 WebAssembly 浏览器工具](#item-14) ⭐️ 6.0/10
15. [在 SQLite 中检测全表扫描](#item-15) ⭐️ 6.0/10
16. [FreeBSD 16 从基础系统中移除最后的 GPL 代码](#item-16) ⭐️ 6.0/10
17. [用续延抽象计算效果](#item-17) ⭐️ 6.0/10
18. [深入探讨鲜为人知的 K&R C 特性](#item-18) ⭐️ 6.0/10
19. [C 语言字符串：一个持续 50 年的设计错误](#item-19) ⭐️ 6.0/10
20. [MIT 出版社开放获取新书追溯 ELIZA 的历史](#item-20) ⭐️ 6.0/10
21. [随着与 Epic 的和解被撤回，第三方应用商店将登陆 Google Play](#item-21) ⭐️ 6.0/10
22. [Mozilla 报告：微软的 Edge 设计手段削弱浏览器选择权](#item-22) ⭐️ 6.0/10

---

<a id="item-1"></a>
## [Thinking Machines 发布开放权重多模态模型 Inkling](https://thinkingmachines.ai/news/introducing-inkling/) ⭐️ 8.0/10

Thinking Machines 发布了 Inkling，一款支持音频的开放权重多模态模型，官方称其为目前最大的支持音频的开放权重模型。该模型被定位为可供定制的强力基座，并可在公司的 Tinker 平台上进行微调。 一家备受关注的 AI 实验室推出重要的开放权重模型，增强了西方开放模型生态，而许多人认为该生态正落后于 DeepSeek、Z.ai 等中国开放模型。它与 Tinker 的整合指向一种商业模式：企业可以以较低成本拥有并微调出针对自身任务达到前沿水平的模型。 作者明确指出，Inkling 并非当今最强的模型（无论开放还是闭源），其价值来自多模态能力、高效推理和可微调性的组合，而非基准测试上的突破。社区成员已经制作了本地部署方案，包括 GGUF 和 NVFP4 量化版本以及 llama.cpp 分支。

hackernews · vimarsh6739 · 7月15日 18:12 · [社区讨论](https://news.ycombinator.com/item?id=48924912)

**背景**: 开放权重模型公开了训练好的参数，任何人都可以运行推理并对其进行微调，但与完全开源的模型不同，它们通常不公开训练代码和数据。Tinker 是 Thinking Machines 于 2025 年 10 月推出的 API，用于借助 LoRA 高效微调开放模型，在为开发者保留对算法和数据控制权的同时处理分布式训练的复杂性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thinkingmachines.ai/tinker/">Tinker - Thinking Machines Lab</a></li>
<li><a href="https://thinkingmachines.ai/news/announcing-tinker/">Announcing Tinker - Thinking Machines Lab</a></li>
<li><a href="https://huggingface.co/blog/daya-shankar/open-source-llms">Best Open - Source LLM Models in 2026: Coding, Local, Agentic AI...</a></li>

</ul>
</details>

**社区讨论**: 评论者对 Inkling 作为最大的支持音频的开放权重模型表示欢迎，并分享了本地部署资源，同时对其实际音频质量感到好奇。部分人称赞 Tinker 的微调商业模式让企业能够拥有针对特定任务的模型，还有人从西方开放模型与中国模型竞争的地缘政治角度来看待此次发布。

**标签**: `#open-weights-models`, `#LLM`, `#multimodal-ai`, `#fine-tuning`, `#Thinking-Machines`

---

<a id="item-2"></a>
## [xAI 在数据上传风波后开源 Grok Build 命令行工具](https://simonwillison.net/2026/Jul/15/grok-build/#atom-everything) ⭐️ 8.0/10

在社区对 Grok Build 工具悄悄将整个目录上传到 xAI 的 Google Cloud 存储桶表示强烈不满后，xAI 以 Apache 2.0 许可证发布了整个 Grok Build 命令行工具的代码库。发布的代码在单次提交中包含约 844,530 行 Rust 代码，其中只有约 3% 是外部依赖。 此事件凸显了 AI 编码工具中的严重隐私风险，因为一位用户报告称该命令行工具把他们的 SSH 密钥、密码管理器数据库、文档、照片和视频都上传到了云端。开源该工具并删除已保留数据，是 xAI 试图重建用户信任、并让用户可以用自己的推理服务在本地运行该工具的举措。 xAI 从 7 月 12 日起关闭了默认数据保留，删除了此前保留的编码数据，Musk 也表示此前上传的所有数据都会被删除，但官方并未解释目录上传为何会发生。值得注意的是，子代理系统提示要求模型不要透露其内容，而主系统提示却没有这一限制，并且多个工具实现模仿了 Codex（apply_patch、grep_files）和 OpenCode（bash、edit、glob）的做法。

rss · Simon Willison · 7月15日 23:59

**背景**: Grok Build 是 xAI 基于终端的 AI 编码命令行工具，于 2026 年 5 月面向 SuperGrok 和 X Premium Plus 订阅用户推出，后来由 Grok 4.5 模型驱动。Apache 2.0 是一种宽松的开源许可证，允许自由使用、修改和分发（包括用于商业和专有项目），因此开发者可以对该工具进行分叉和自托管。数据保留指工具是否在其服务器上存储用户数据，而 ZDR（零数据保留）是一种不保留任何用户数据的模式。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://x.ai/news/grok-build-cli">Introducing Grok Build | SpaceXAI</a></li>
<li><a href="https://docs.x.ai/build/overview">Grok Build - xAI Docs - SpaceXAI</a></li>
<li><a href="https://www.apache.org/licenses/LICENSE-2.0">Apache License, Version 2.0 | Apache Software Foundation</a></li>

</ul>
</details>

**社区讨论**: 评论者赞赏 xAI 没有给出套路化的公关回应，开发者已经在构建注重隐私的分支，如去除遥测并从源码构建的 'gork-build' 和 'dgrok'。有人认为尽管发生了数据外泄，该模型和工具的质量仍可能是同类中最好的，也有人认为开源只是这个市场份额很低的产品的战术性危机公关，还有人建议改用 pi.dev 等替代方案。

**标签**: `#security`, `#open-source`, `#AI-tooling`, `#privacy`, `#xAI`

---

<a id="item-3"></a>
## [研究者绕过 Claude 的 web_fetch 防护，窃取用户记忆数据](https://simonwillison.net/2026/Jul/15/claude-web-fetch-exfiltration/#atom-everything) ⭐️ 8.0/10

安全研究者 Ayush Paul 发现了一种绕过 Claude web_fetch 数据泄露防护的方法：利用该工具允许访问先前抓取页面中嵌入链接的特性，通过设置带有逐字母嵌套链接的蜜罐网站来窃取用户私密数据。这次攻击通过一段提示注入指令，诱导 Claude 在伪造的资料查询系统中「逐字母」导航，成功提取了用户的姓名、居住城市和雇主信息。 这表明即使设计精良的数据泄露防护也可能存在隐蔽漏洞，展示了针对被普遍认为防护良好的生产级 AI 系统的「致命三要素」攻击的真实案例。随着同时具备私密数据访问和联网工具能力的智能体 AI 系统日益普及，这类漏洞会影响所有依赖将记忆与在线内容访问结合的 LLM 助手的用户。 Anthropic 最初的防护允许 web_fetch 访问先前抓取页面中发现的 URL，这正是被利用的漏洞所在；攻击仅向 user-agent 中含有「Claude-User」的客户端投放，以逃避检测。Anthropic 拒绝支付漏洞赏金，声称已在内部发现该问题，此后通过移除 web_fetch 访问其自身抓取内容中额外链接的能力来修补了漏洞。

rss · Simon Willison · 7月15日 14:21

**背景**: 「致命三要素」是 Simon Willison 提出的术语，指同时具备三种危险能力的 AI 智能体：访问私密数据、接触不可信内容，以及向外部泄露数据的途径；同时具备这三者的系统就容易遭受提示注入攻击。Claude 的 web_fetch 工具设计上通过仅抓取用户明确提供或来自其 web_search 工具的 URL 来缓解此风险，防止 Claude 动态构造出编码了窃取数据的 URL。提示注入是一种攻击方式，即 AI 被诱导执行其所处理内容中嵌入的恶意指令。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://simonwillison.net/2025/Sep/10/claude-web-fetch-tool/">Claude API: Web fetch tool</a></li>
<li><a href="https://airia.com/ai-security-in-2026-prompt-injection-the-lethal-trifecta-and-how-to-defend/">AI Security in 2026: Prompt Injection, the Lethal Trifecta, and How to Defend</a></li>
<li><a href="https://platform.claude.com/docs/en/agents-and-tools/tool-use/web-fetch-tool">Web fetch tool - Claude Platform Docs</a></li>

</ul>
</details>

**标签**: `#AI security`, `#prompt injection`, `#LLM`, `#data exfiltration`, `#Claude`

---

<a id="item-4"></a>
## [OpenAI 推出 GPT-Red：基于自我博弈的自动化红队系统](https://openai.com/index/unlocking-self-improvement-gpt-red) ⭐️ 8.0/10

OpenAI 发布了 GPT-Red，这是一套使用自我博弈（self-play）的自动化红队系统，旨在提升 AI 的安全性、对齐性以及抵御提示注入攻击的鲁棒性。 作为领先的 AI 实验室，OpenAI 通过自我博弈来自动化对抗性测试，可能让安全漏洞的发现规模远超人工红队，从而有望重塑整个行业的对齐与安全实践。 该公告目前只是一个简短的预告，核心是利用自我博弈来专门强化模型抵御提示注入的能力，但尚未公布可验证其效果的基准测试、技术架构或性能数据。

rss · OpenAI Blog · 7月15日 10:00

**背景**: 红队测试是指模拟对系统的对抗性攻击，以便在真实攻击者利用之前发现漏洞，而自动化 AI 红队则使用 AI 系统大规模地探测其他模型。提示注入是一类攻击，通过精心构造的输入诱使大型语言模型忽略其原有指令并执行非预期操作，例如泄露数据或绕过安全防护。自我博弈是一种机器学习技术，因其在博弈类智能体中的应用而闻名，模型通过反复与自身的副本对抗来提升能力，并逐步提高难度。GPT-Red 似乎结合了这些理念，让攻击方模型与防御方模型相互对抗，以迭代式地强化防御方。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Prompt_injection">Prompt injection - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Self-play">Self-play - Wikipedia</a></li>
<li><a href="https://genai.owasp.org/llmrisk/llm01-prompt-injection/">LLM01:2025 Prompt Injection - OWASP Gen AI Security Project</a></li>

</ul>
</details>

**标签**: `#AI safety`, `#red teaming`, `#prompt injection`, `#alignment`, `#OpenAI`

---

<a id="item-5"></a>
## [提议：给 SQLite 引入 Rust 风格的版本机制](https://mort.coffee/home/sqlite-editions/) ⭐️ 7.0/10

开发者 mort96 在一篇博客中提议，让 SQLite 采用 Rust 风格的“版本”（editions）机制，在保留向后兼容性的同时修复长期存在的不理想默认设置，用户可以通过类似 PRAGMA edition = 2026 的语句主动启用新行为。这样用户既能选择更合理的默认值，又不会破坏依赖现有行为的既有数据库或应用。 SQLite 是全世界部署最广泛的软件之一，其向后兼容性的约束影响着数十亿台设备，因此一套能安全演进默认值的机制可能会显著改善开发者体验。该提议也展示了 Rust 的版本模型如何推广到其他同样面临“修复错误”与“绝不破坏用户”之间矛盾的长期系统。 该版本机制会是一个可选的 PRAGMA，也就是说除非开发者显式迁移，否则数据库仍保持兼容，这与 Rust crate 只有在主动选择后才采用版本变更类似。讨论中提出的一个关键权衡是：与 Rust 代码不同，SQLite 文件是可移植的数据容器，常常被不同版本的工具打开，因此版本设置可能会破坏用较旧的 sqlite3 命令行工具读取较新数据库这一常见工作流。

hackernews · Lobsters · 7月15日 22:42 · [社区讨论](https://news.ycombinator.com/item?id=48928135)

**背景**: Rust 使用“版本”（如 2015、2018、2021）来引入向后不兼容的变更：每个版本都是可选加入的，因此现有代码除非显式迁移到新版本，否则仍能正常编译。SQLite 是一种嵌入式、基于文件的关系型数据库，极度重视向后兼容性，这意味着一些别扭的默认设置（例如默认关闭外键约束，或 SQLITE_BUSY 的处理方式）从未被更改。PRAGMA 是 SQLite 用来读取或修改库行为和设置的特殊命令，例如 PRAGMA foreign_keys = ON 或 PRAGMA journal_mode = WAL。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://doc.rust-lang.org/edition-guide/editions/">What are editions ? - The Rust Edition Guide</a></li>
<li><a href="https://sqlite.org/pragma.html">Pragma statements supported by SQLite</a></li>
<li><a href="https://rust-lang.github.io/rfcs/3338-style-evolution.html">3338-style-evolution - The Rust RFC Book</a></li>

</ul>
</details>

**社区讨论**: 评论者大多认可这一提议，认为它把具体的痛点与一个可落地、向后兼容的修复方案结合起来，而不只是抱怨，并将其类比为 JavaScript 的“use strict”。主要的反对意见来自 kccqzy，他指出 SQLite 是常被较旧命令行工具读取的可移植数据容器，因此版本机制可能会破坏跨版本的文件检查；另有人提到像 APSW 的最佳实践默认设置这样的封装库是现有的替代方案，作者本人（mort96）也直接参与了讨论。

**标签**: `#SQLite`, `#database`, `#backwards-compatibility`, `#language-design`, `#software-architecture`

---

<a id="item-6"></a>
## [在 13 年前的无 GPU Xeon 服务器上以每秒 5 个 token 运行 Gemma 4 26B 模型](https://www.neomindlabs.com/2026/06/08/running-gemma-4-26b-at-5-tokens-sec-on-a-13-year-old-xeon-with-no-gpu/) ⭐️ 7.0/10

一篇文章展示了在一台 13 年前、仅靠 CPU 且没有任何 GPU 的 Xeon 服务器上，以每秒约 5 个 token 的速度运行谷歌拥有 260 亿参数的 Gemma 4 模型。这篇帖子引发了社区关于本地 CPU 推理相比托管推理服务商是否真正划算的深入讨论。 它表明大型语言模型可以在老旧、廉价、无 GPU 的硬件上运行，为爱好者和注重隐私的用户降低了本地私有 AI 的门槛。同时，讨论也揭示了一个冷静的经济现实：在低速运行下，本地推理的电费可能与托管 API 的 token 价格相当甚至更高。 评论者指出双路 Xeon 在满载时功耗可能达到 300 至 500 瓦，按常见电价折算约为每百万输出 token 0.30 美元，与在 OpenRouter 上运行该模型的价格相当，但速度慢约 8 倍。其他人则报告在类似的老旧 CPU 上能达到每秒 8 至 12 个 token，说明速度会因上下文长度、量化方式和参数设置而有明显差异。

hackernews · neomindryan · 7月15日 15:34 · [社区讨论](https://news.ycombinator.com/item?id=48922434)

**背景**: Gemma 是谷歌 DeepMind 推出的一系列开放权重大型语言模型，基于与 Gemini 相同的研究，其中 Gemma 4 于 2026 年 4 月发布。通过量化技术（例如借助 llama.cpp 等工具使用的 GGUF 格式），降低模型权重的数值精度以减少内存需求并加快计算，使得在无 GPU 的 CPU 上运行这类模型成为可能。每秒 token 数用来衡量生成速度，大约每秒 20 个 token 相当于每秒约 15 个单词，比大多数人的阅读速度还快。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Gemma_(language_model)">Gemma (language model) - Wikipedia</a></li>
<li><a href="https://www.ionio.ai/blog/llms-on-cpu-the-power-of-quantization-with-gguf-awq-gptq">LLMs on CPU : The Power of Quantization with GGUF, AWQ, & GPTQ</a></li>
<li><a href="https://mysummit.school/blog/en/local-llm-guide-for-managers-2026/">Local LLMs for Managers: What You Can Actually Run at Home</a></li>

</ul>
</details>

**社区讨论**: 讨论的重点是真实的经济账而非单纯的赞扬，几位评论者用详细计算论证在这种低速下，托管推理服务商往往比本地电费更便宜且快得多。另一些人分享了自己在类似双路 Xeon 配置上的测试结果，并预测到 2027 年 200B 以上的 MoE 模型将能在普通消费级硬件上运行，还举例称已能在 16GB 的 MacBook Air 上以每秒 7 至 9 个 token 运行 GPT-4 级别的模型。

**标签**: `#local-llm`, `#cpu-inference`, `#cost-analysis`, `#gemma`, `#on-device-ai`

---

<a id="item-7"></a>
## [深入探究 Telegram 数据中心的组织方式](https://dev.moe/en/3025) ⭐️ 7.0/10

这篇 2022 年的调查文章剖析了 Telegram 的多数据中心架构，揭示该平台运行在分布于不同地理位置的五个独立数据中心之上，每个数据中心服务特定区域并以不同方式处理媒体存储。文章记录了用户如何被关联到特定数据中心，以及编号方案中存在的空缺（比如缺失的 DC3）。 Telegram 服务着数亿用户，因此理解其后端设计能够罕见地洞察一个广泛使用的消息平台如何大规模处理区域流量、数据存放地和可靠性问题。相关讨论还暴露出关于谁真正掌控这套基础设施的地缘政治安全担忧。 Telegram 目前运行五个可各自独立运作的数据中心，其中两个主要专用于媒体存储，其余数据中心则对媒体带宽进行限流，客户端可通过 help.getConfig API 方法识别自己所分配的数据中心。用户无法手动切换数据中心，但如果长期从异常位置访问，Telegram 可能会迁移用户数据。

hackernews · theanonymousone · 7月15日 13:22 · [社区讨论](https://news.ycombinator.com/item?id=48920475)

**背景**: Telegram 是一款基于云的消息应用，它将用户数据存储在自己的服务器上而非仅存于设备本地，这就需要一套全球分布式的后端。这里的“数据中心”（DC）指的是一组服务器集群，Telegram 的架构会根据区域等因素将每个用户分配到某一个数据中心，这意味着特定数据中心的故障会影响特定的用户群体。评论中提到的替代设计“为每个用户进行主节点选举”，指的是一种分布式系统技术，即系统为每个用户动态选出一个主节点，而不依赖固定的区域数据中心。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://core.telegram.org/api/datacenter">Working with Different Data Centers</a></li>
<li><a href="https://telegramplayground.github.io/pyrogram/faq/what-are-the-ip-addresses-of-telegram-data-centers.html">What are the IP addresses of Telegram Data Centers? - PyroTGFork 2.2.24 Layer 225</a></li>
<li><a href="https://news.ycombinator.com/item?id=48920475">Mysteries of Telegram Data Centers | Hacker News</a></li>

</ul>
</details>

**社区讨论**: 评论者分享了区域性见解，指出 DC2 服务俄罗斯和乌克兰用户（因此“dc2 down”在俄语社区很常见），而 DC5 的宕机则让中国用户感到沮丧，还有人提到一项调查称 Telegram 的基础设施由一位同时为 FSB 管理基础设施的人负责。其他人讨论了令人好奇的 DC3 空缺，并质疑这一架构选择，追问为何 Telegram 不采用按用户进行的主节点选举，而要维护带有大量定制代码的专用区域数据中心。

**标签**: `#telegram`, `#infrastructure`, `#distributed-systems`, `#security`, `#system-design`

---

<a id="item-8"></a>
## [Linus Torvalds 谈大语言模型在内核开发中的使用](https://lore.kernel.org/linux-media/CAHk-=wi4zC+Ze8e+p3tMv8TtG_80KzsZ1syL9anBtmEh5Z40vg@mail.gmail.com/) ⭐️ 7.0/10

Linus Torvalds 在内核邮件列表上发帖，分享了他对在 Linux 内核开发中使用大语言模型（LLM）的看法。这番评论来自内核的创造者和首席维护者，正值业界对 AI 辅助编程展开激烈讨论之际。 作为 Linux 的创造者，Torvalds 的观点分量很重，可能会影响这个全球最关键的开源项目之一如何对待 AI 生成的代码。他的立场也融入了业界关于 LLM 是否适合安全攸关的底层系统软件的更广泛讨论。 该条目本身是指向 Linux media 邮件列表消息的链接，并附带一个 lobste.rs 讨论帖的引用，而非正式的政策声明。读者应直接查阅原始邮件列表帖子，以了解 Torvalds 言论的完整细节。

rss · Lobsters · 7月16日 03:19

**背景**: 大语言模型（LLM）是能够根据自然语言提示生成代码的 AI 系统，如今已迅速在主流软件开发中普及，被称为“AI 结对程序员”。Linux 内核是 Linux 操作系统的核心，通过内核邮件列表协作开发，补丁和设计决策都在公开场合讨论。内核代码属于底层、对性能敏感且安全攸关的软件，因此任何 AI 生成贡献的可靠性和正确性都尤为重要。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.emergentmind.com/topics/llm-as-a-developer">LLM -as-a- Developer in Software Engineering</a></li>

</ul>
</details>

**标签**: `#linux-kernel`, `#llm`, `#ai-assisted-development`, `#linus-torvalds`, `#open-source`

---

<a id="item-9"></a>
## [微软确认无法禁用的 Windows GDID 设备标识符，因 FBI 案件文件曝光](https://www.ghacks.net/2026/07/12/microsoft-confirms-windows-gdid-device-identifier-that-cannot-be-disabled-documented-in-fbi-case-filing/) ⭐️ 7.0/10

据报道，微软已确认 Windows 中存在一个名为全局设备标识符（GDID）的机制，它是在 Windows 关联微软账户进行初始化时分配的永久性设备级 ID，用户无法将其禁用。该标识符首次被公开记录，是通过一份 FBI 案件文件曝光的，文件显示它曾被用来追踪一名 Windows 用户。 由于 Windows 运行在全球大量个人和企业电脑上，一个无法关闭的持久性标识符会给数百万用户带来广泛的隐私和监控担忧。它出现在执法文件中，表明该 ID 可被用来将特定设备和账户与真实身份关联起来。 据报道，GDID 由一系列 Windows 服务生成，并与用于设置设备的微软账户绑定，适用于物理机和虚拟机。与广告 ID 或遥测设置不同，据称没有面向用户的开关可以将其关闭。

rss · Lobsters · 7月15日 15:36

**背景**: 设备标识符是用来在一段时间内唯一识别某台特定电脑或某个系统安装的数值，类似于序列号识别一件硬件的方式。现代操作系统通常会收集遥测数据，并使用标识符来进行授权验证、数据同步和诊断，但其中许多标识符通常可以通过隐私设置加以限制。报道中的 GDID 之所以引人注意，是因为它被描述为持久且无法禁用的，意味着无论用户如何设置，它都会一直伴随设备。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.ghacks.net/2026/07/12/microsoft-confirms-windows-gdid-device-identifier-that-cannot-be-disabled-documented-in-fbi-case-filing/">Microsoft Confirms Windows GDID Device Identifier That Cannot Be...</a></li>
<li><a href="https://allaboutcookies.org/microsoft-reveal-gdid">Microsoft Just Admitted Windows Has a Hidden... | All About Cookies</a></li>

</ul>
</details>

**标签**: `#privacy`, `#windows`, `#microsoft`, `#security`, `#surveillance`

---

<a id="item-10"></a>
## [elfuse：在 macOS Apple Silicon 上运行 Linux ELF 可执行文件](https://github.com/sysprog21/elfuse) ⭐️ 7.0/10

elfuse 是一个系统工具，可以让 Arm64 和 x86-64 两种格式的 Linux ELF 可执行文件直接在 macOS Apple Silicon 机器上运行。它的目标是在苹果基于 ARM 的硬件上原生执行 Linux 程序，而无需安装完整的 Linux 系统。 长期以来，在 macOS 上运行 Linux 可执行文件都需要笨重的虚拟机或容器，因此一个轻量的双架构方案降低了跨平台开发者的使用门槛。同时支持 Arm64 和 x86-64 在 Apple Silicon 上尤其有价值，因为许多 Linux 工具最初都是为老式 x86 硬件构建的。 该工具以底层系统的方式处理跨平台兼容性，既支持 ARM 原生的 Arm64 ELF 格式，也支持原本需要指令翻译的 x86-64 可执行文件。类似项目通常依赖两种方式之一：一种是系统调用翻译，即拦截每个 Linux 系统调用并映射到对应的 macOS 调用；另一种是针对跨架构代码进行 CPU 模拟。

rss · Lobsters · 7月15日 19:33

**背景**: ELF（可执行与可链接格式）是 Linux 及其他类 Unix 系统上可执行文件、共享库和目标文件的标准二进制格式，其设计本身就跨越不同的 CPU 架构。macOS 使用不同的二进制格式和内核，因此 Linux ELF 程序无法直接运行，通常需要一个兼容层。这类工具一般是把 Linux 系统调用翻译成对应的 macOS 调用（有时借助 Apple 的 Hypervisor Framework 在轻量虚拟机内完成），而不是模拟整个操作系统，其思路类似于 WINE 运行 Windows 程序的方式。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Executable_and_Linkable_Format">Executable and Linkable Format - Wikipedia</a></li>
<li><a href="https://hyper-linux.app/">hyper- linux — Run Linux binaries on macOS</a></li>
<li><a href="https://github.com/ish-app/ish/issues/210">macOS version ( syscall translation only) · Issue #210 · ish-app/ish</a></li>

</ul>
</details>

**标签**: `#systems-programming`, `#macos`, `#apple-silicon`, `#linux-compatibility`, `#elf-binaries`

---

<a id="item-11"></a>
## [为 ActivityPub 实现端到端加密还剩下的工作](https://soatok.blog/2026/07/15/the-long-tail-of-work-left-until-activitypub-has-e2ee/) ⭐️ 7.0/10

应用密码学作者 Soatok 发表了一篇工程分析文章，梳理了 ActivityPub 联邦协议实现真正端到端加密（E2EE）之前仍需解决的一系列长尾技术难题。文章逐一拆解了在联邦宇宙中实现可靠的私密加密消息之前必须攻克的问题。 ActivityPub 支撑着日益壮大的去中心化社交网络，包括 Mastodon 和 Meta 的 Threads 等平台，但它目前缺乏可靠的私密消息功能，私信内容可被服务器运营者读取。为一个跨多服务器的联邦协议实现 E2EE，将显著改善整个联邦宇宙的用户隐私，并弥补其最关键的信任与安全短板之一。 为联邦协议实现 E2EE 从根本上比为 Signal 这样的中心化服务困难得多，因为在独立运营的众多服务器之间不存在统一的密钥分发和身份验证机构。该分析聚焦于即便核心密码学设计已明确、仍然遗留的一系列较小问题，例如密钥管理、身份认证以及跨服务器的消息投递。

rss · Lobsters · 7月16日 01:13

**背景**: ActivityPub 是一个用于去中心化社交网络的 W3C 开放标准，提供服务器到服务器的联邦协议，让独立运营的服务器（实例）之间可以交换内容和通知。使用该协议互联的服务器集合被称为联邦宇宙（fediverse），这个词由“联邦（federated）”和“宇宙（universe）”组合而成，涵盖 Mastodon 和 Threads 等平台。端到端加密（E2EE）确保只有通信双方能读取消息，但像 Signal 这样的协议是在中心化环境下实现这一点的，而在众多独立的联邦服务器之间实现则带来了密钥分发和身份认证等额外挑战。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/ActivityPub">ActivityPub - Wikipedia</a></li>
<li><a href="https://www.w3.org/TR/activitypub/">ActivityPub</a></li>
<li><a href="https://en.wikipedia.org/wiki/Fediverse">Fediverse - Wikipedia</a></li>

</ul>
</details>

**标签**: `#cryptography`, `#e2ee`, `#activitypub`, `#fediverse`, `#decentralization`

---

<a id="item-12"></a>
## [Dex Horthy 谈 AI 辅助编程中的上下文工程](https://newsletter.pragmaticengineer.com/p/context-engineering-with-dex-horthy) ⭐️ 7.0/10

在 Gergely Orosz 的 The Pragmatic Engineer 访谈中，HumanLayer 创始人、被认为提出了“上下文工程”一词的 Dex Horthy 讲解了如何通过刻意设计和管理提供给大语言模型的上下文，在不牺牲代码质量的前提下实现更有效的 AI 辅助软件开发。 随着开发者越来越依赖 AI 编程代理，上下文工程已成为一门关键学科，它能让基于同一模型构建的两个应用在质量上截然不同，把关注点从模型本身的能力转向了围绕模型的架构设计。 Horthy 以“Ralph loop”和他的 RPI（研究、规划、实现）方法论而闻名，该框架要求代理在生成代码前先就架构产物达成一致，以摆脱他所说的“笨区”——即代码产出增多但并不等于真正进展的状态。

rss · The Pragmatic Engineer · 7月15日 16:08

**背景**: 上下文工程指的是设计和管理大语言模型在单条提示之外所看到的一切，包括指令、检索到的数据、工具、记忆和先前状态。这一理念建立在诸如 Anthropic 关于 AI 代理有效上下文工程的指导等工作之上，反映出业界日益认识到可靠的大语言模型系统更依赖于周围的上下文架构，而非模型的选择。由 Gergely Orosz 运营的 The Pragmatic Engineer 是一份广受欢迎、涵盖深度软件工程话题的通讯。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://newsletter.pragmaticengineer.com/p/context-engineering-with-dex-horthy">Context engineering with Dex Horthy - by Gergely Orosz</a></li>
<li><a href="https://dev.to/ametel01/advanced-context-engineering-for-coding-agents-11p7">Advanced Context Engineering for Coding Agents - DEV Community</a></li>
<li><a href="https://linearb.io/dev-interrupted/podcast/dex-horthy-humanlayer-rpi-methodology-ralph-loop">Dex Horthy on Ralph, RPI, and escaping the "Dumb Zone"</a></li>

</ul>
</details>

**标签**: `#AI-assisted development`, `#context engineering`, `#software engineering`, `#LLMs`, `#code quality`

---

<a id="item-13"></a>
## [评论文章呼吁政府与慈善机构资助开源人工智能](https://www.siegelendowment.org/wp-content/uploads/2026/07/fortune-david-siegel-open-source-ai.pdf) ⭐️ 6.0/10

在《财富》杂志的一篇评论文章中，Siegel Family Endowment 的 David Siegel 主张政府、企业和非营利组织应投资于免费、开源的人工智能，以制衡日益壮大的商业 AI 提供商。他将当前的 AI 之争视为几十年前开源软件之争的延续，只是规模更大。 随着商业实验室对强大 AI 模型的控制日益集中，来自公共和慈善的资金有望为研究人员、开发者及公众保留开放访问、透明度和竞争空间。这场辩论触及了谁最终掌控 AI 基础设施，以及开源替代方案能否在资金雄厚的专有产品面前保持生命力。 这篇文章属于观点评论，而非技术发布，它主张的是一种资助与政策立场，而不是推出新模型或基准测试。文中提出的一个核心矛盾是：志愿性或受补贴的开源努力，能否与那些拥有全职带薪激励、从而推动持续进展的商业开发者相抗衡。

hackernews · bilsbie · 7月15日 21:16 · [社区讨论](https://news.ycombinator.com/item?id=48927095)

**背景**: 开放权重（open-weight）AI 模型将模型训练得到的参数（权重）公开供人下载和本地运行，相比完全封闭的模型，在部署、成本和定制方面提供了更多控制权。然而，开放权重并不等同于完全开源，因为训练数据和代码往往并未公开。这一区别在关于公共资助的 AI 究竟能有多开放、多可复现的讨论中至关重要。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.linkedin.com/pulse/open-weight-ai-what-we-finally-opened-bonnet-nicolas-pistorio-n3ulf">Open - weight AI : what if we finally opened the bonnet ?</a></li>
<li><a href="https://www.mindstudio.ai/blog/run-open-weight-ai-models-locally-ollama-lm-studio">How to Run Open - Weight AI Models Locally with Ollama... | MindStudio</a></li>

</ul>
</details>

**社区讨论**: 有评论者提出了具体的资助思路，例如设立定期的诱导性奖金（每 6 到 12 个月约 20 万美元），奖励在固定显存限制下达到高难度基准的开源模型，这呼应了诺贝尔奖得主 Michael Kremer 的奖金模式。另一些人则提出反对，认为善意和兼职贡献无法可靠地击败以利润驱动的商业开发，即使是闭源产品也仍能分享知识，而公共资金更应用于儿童保育和医疗等服务。

**标签**: `#open-source-ai`, `#ai-policy`, `#open-weight-models`, `#commentary`, `#funding`

---

<a id="item-14"></a>
## [将 Grok CLI 的 Rust Mermaid 渲染器编译为 WebAssembly 浏览器工具](https://simonwillison.net/2026/Jul/16/grok-mermaid/#atom-everything) ⭐️ 6.0/10

Simon Willison 在最近开源的 xAI Grok CLI（grok-build）代码库中发现了一个用 Rust 编写的独立终端 Mermaid 渲染器，并将其编译为 WebAssembly，做成了一个把 Mermaid 图表转换为 Unicode 方框艺术的浏览器工具。他通过向 Claude Code for web（Fable 5）提示词来构建，工具能直接在浏览器中把流程图渲染成终端风格的 ASCII/Unicode 图形。 该项目展示了一种实用模式，即通过 WebAssembly 在浏览器中复用特定语言的 Rust 组件，向开发者演示如何重新利用开源智能体工具链中的代码。它也凸显了 xAI 最近对 Grok CLI 的开源，使其内部工具可供人们探索和复用。 原始渲染器来自 xai-grok-markdown/src/mermaid.rs，被描述为一个「独立的 Mermaid 图表终端渲染器」，而浏览器版本增加了最大宽度设置、适配输出面板、复制为文本以及分享图表链接等控件。作为面向终端、将图表转换为基于文本的方框艺术的渲染器，它针对的使用场景比完整的图形化 Mermaid 渲染更为狭窄。

rss · Simon Willison · 7月16日 00:33

**背景**: Mermaid 是一种受 Markdown 启发的文本语法，可以从纯文本描述生成流程图、UML 图、甘特图等各类图表。WebAssembly（Wasm）是一种可移植的二进制格式，让用 Rust 等语言编写的代码能够在网页浏览器中以接近原生的速度运行。Grok CLI（grok-build）是 xAI 开源的、由其 Grok 模型驱动的终端智能体编程工具，其代码库中包含可复用的 Rust 组件，例如这里用到的 Mermaid 渲染器。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://mermaid.js.org/intro/syntax-reference.html">Diagram Syntax | Mermaid</a></li>
<li><a href="https://github.com/superagent-ai/grok-cli">GitHub - superagent-ai/ grok - cli : An open-source coding agent for the...</a></li>
<li><a href="https://x.ai/cli">Grok Build | SpaceXAI</a></li>

</ul>
</details>

**标签**: `#WebAssembly`, `#Rust`, `#developer-tools`, `#Mermaid`, `#Grok`

---

<a id="item-15"></a>
## [在 SQLite 中检测全表扫描](https://tenderlovemaking.com/2026/07/15/detecting-full-table-scans-with-sqlite/) ⭐️ 6.0/10

这篇文章展示了一种在编程层面检测 SQLite 查询何时执行全表扫描的实用技术，通过一个基于内存数据库和查询计划工具的示例程序来实现，而不是靠人工检查。 全表扫描是数据库查询变慢的常见原因，能够自动捕获它们可以让开发者在测试或持续集成阶段提前发现性能退化，避免问题进入生产环境。 SQLite 的 EXPLAIN QUERY PLAN 命令能揭示查询是使用索引（SEARCH）还是执行全表扫描（SCAN），而且 SQLite 每次查询对每个表只能使用一个索引，因此涉及多列的 WHERE 条件仍可能对未建索引的列触发扫描。

rss · Lobsters · 7月15日 23:57

**背景**: SQLite 是一个广泛使用的嵌入式关系型数据库，它在进程内运行，无需独立的服务器。全表扫描是指数据库为了满足查询而读取表中的每一行，而不是通过索引直接定位匹配的行，随着表数据增长会变得非常慢；有一个案例显示，修复扫描问题后，一个 3100 万行的查询从 168 秒降到了 5 秒。EXPLAIN QUERY PLAN 语句是 SQLite 内置的工具，用于检查查询将如何执行以及使用了哪些索引。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.sqlite.org/eqp.html">Explain query plan</a></li>
<li><a href="https://dev.to/tianninglab/how-i-made-a-31m-row-sqlite-query-go-from-168-seconds-to-5-seconds-h6m">How I made a 31M-row SQLite query go from 168... - DEV Community</a></li>

</ul>
</details>

**标签**: `#SQLite`, `#databases`, `#performance`, `#query-optimization`, `#debugging`

---

<a id="item-16"></a>
## [FreeBSD 16 从基础系统中移除最后的 GPL 代码](https://www.phoronix.com/news/FreeBSD-16-Goes-GPL-Free) ⭐️ 6.0/10

FreeBSD 16 已经移除了基础系统中最后残留的 GPL 许可代码，完成了一项长期推进的工作，使整个基础系统现在都由宽松许可证覆盖。 完全采用宽松许可证的基础系统契合了 FreeBSD 的核心理念，让企业和下游项目能够更自由地使用、修改和再分发代码，而无需承担 copyleft 义务。 此次变更涉及用宽松许可的替代方案替换基础系统中的 GPL 许可第三方组件，这一清理工作需要在受支持的架构上进行构建验证，并在旧有平台上进行测试。

rss · Lobsters · 7月15日 12:33

**背景**: FreeBSD 是一款源自伯克利软件套件（BSD）的免费开源类 Unix 操作系统，首个版本于 1993 年发布。与从独立软件包组装系统的 Linux 发行版不同，FreeBSD 的基础系统将内核、核心工具和第三方组件捆绑在一起。GPL 是一种 copyleft 许可证，要求衍生作品保持相同许可证，而宽松的 BSD 风格许可证只对代码的再利用和再分发施加极少的限制。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/FreeBSD">FreeBSD - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Permissive_software_license">Permissive software license - Wikipedia</a></li>
<li><a href="https://freebsdfoundation.org/blog/cleaning-up-critical-infrastructure-in-freebsd/">Cleaning Up Critical Infrastructure in FreeBSD | FreeBSD Foundation</a></li>

</ul>
</details>

**标签**: `#FreeBSD`, `#open-source`, `#licensing`, `#operating-systems`, `#BSD`

---

<a id="item-17"></a>
## [用续延抽象计算效果](https://crowdhailer.me/2026-07-15/abstracting-effects-with-continuations/) ⭐️ 6.0/10

一篇技术文章探讨了如何利用续延（continuations）来抽象编程语言中的计算效果，例如异常处理、可变状态和其他控制流模式。该文章是一篇面向编程语言和函数式编程爱好者的深度剖析。 效果系统（effect systems）和基于续延的抽象正日益影响现代编程语言如何以有原则、可组合的方式处理复杂的控制流和副作用。理解这些技术对语言设计者以及构建健壮、可预测软件的开发者来说都很重要。 一等的定界续延（delimited continuations）表达能力很强，能够表示任何计算效果，包括异常和可变状态，而无定界续延（undelimited continuations）已被证明表达能力较为有限。所分享的链接主要指向 Lobsters 上的评论讨论帖，而非完整的文章正文。

rss · Lobsters · 7月15日 22:57

**背景**: 续延（continuation）是一种数据结构，表示程序在执行到某一点时的控制状态，捕获了“接下来要做什么”。续延传递风格（CPS）将这一点显式化，从而能够实现异常、短路等复杂的控制结构。与之相关的效果系统（effect systems）则要求函数声明它可以执行哪些效果（副作用），这有助于限制和控制程序各部分之间以及与外部世界的交互方式。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Continuation">Continuation - Wikipedia</a></li>
<li><a href="https://okmij.org/ftp/continuations/undelimited.html">Undelimited continuations are not functions</a></li>
<li><a href="https://di.ku.dk/english/news/2023/the-programming-language-of-the-future-is-being-developed-in-denmark/">The programming language of the future is being developed in...</a></li>

</ul>
</details>

**标签**: `#programming-languages`, `#continuations`, `#functional-programming`, `#effect-systems`, `#compilers`

---

<a id="item-18"></a>
## [深入探讨鲜为人知的 K&R C 特性](https://sebsite.pw/w/20260712-kandr.html) ⭐️ 6.0/10

一位开发者发布了一篇个人文章，记录了他此前并不了解的原始 K&R C 方言中那些晦涩的特性和怪癖。 这篇文章保存并呈现了现代 C 语言教学中大多缺失的历史语言知识，对关心 C 语言演变过程的系统程序员和语言爱好者具有价值。 文章聚焦于早于 ANSI/ISO C 标准的传统 K&R C 行为，因此其实际影响较为小众，主要用于理解早期 C 语言，而非日常的现代开发。

rss · Lobsters · 7月15日 12:28

**背景**: K&R C 是 C 编程语言的原始方言，源自 Brian Kernighan 和 Dennis Ritchie 于 1978 年出版的《The C Programming Language》一书。它早于标准化的 C 语言版本（ANSI C / C89 以及后来的 ISO 标准），包含若干后来被修改或移除的语法规则与行为，例如旧式函数声明。理解 K&R C 有助于解释现代 C 中仍可见的许多设计决策和历史惯例。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/KRC">KRC - Wikipedia</a></li>

</ul>
</details>

**标签**: `#C`, `#programming-languages`, `#systems-programming`, `#language-history`

---

<a id="item-19"></a>
## [C 语言字符串：一个持续 50 年的设计错误](https://longtran2904.substack.com/p/c-strings-a-50-year-mistake) ⭐️ 6.0/10

一篇观点文章认为，C 语言以空字符（null）标记字符串结尾的设计是一个长达数十年的错误，主张这种设计在安全性和性能上都留下了持久的代价。 空字符结尾的字符串是 C 运行库以及无数基于它构建的系统的基础，因此这种设计缺陷直接导致了缓冲区溢出等至今仍困扰软件的内存安全漏洞。 由于空字符结尾的字符串不携带显式长度信息，像 strcpy 这样的函数不做边界检查且必须扫描终止符，这既导致了缓冲区溢出，也使得求长度的操作是 O(n)而非 O(1)。

rss · Lobsters · 7月15日 05:04

**背景**: 在 C 语言中，字符串以空字符（'\0'）结尾的字符数组形式存储，这种格式也称为 C 字符串或 ASCIIZ。由于长度没有单独保存，代码必须扫描整个数组才能找到终止的空字符，而标准库函数历来假定这一约定却不检查缓冲区大小。正因如此，长度前缀式字符串（如 Pascal 所用，以及 Rust 的 String 类型内部所用）常被认为是更安全、更快的设计。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Null-terminated_string">Null - terminated string - Wikipedia</a></li>
<li><a href="https://stackoverflow.com/questions/2037209/what-is-a-null-terminated-string">c ++ - What is a null - terminated string ? - Stack Overflow</a></li>

</ul>
</details>

**标签**: `#C`, `#programming-languages`, `#systems-programming`, `#software-design`, `#memory-safety`

---

<a id="item-20"></a>
## [MIT 出版社开放获取新书追溯 ELIZA 的历史](https://mitpress.mit.edu/9780262052481/inventing-eliza/) ⭐️ 6.0/10

MIT 出版社以开放获取形式出版了《Inventing ELIZA - How the First Chatbot Shaped the Future of AI》一书，全书 PDF 可免费下载，并配有 findingeliza.org 网站。该书考察了 1960 年代常被称为首个聊天机器人的 ELIZA 程序的诞生过程，以及它如何影响了人工智能的发展轨迹。 理解 ELIZA 的起源为当今对话式 AI 热潮提供了宝贵的背景，因为当前许多关于把聊天机器人拟人化以及信任机器回应的争论都可以直接追溯到它。作为一份可免费获取的学术资源，这本书降低了研究者、学生和从业者研究现代自然语言系统根源的门槛。 这本书完全开放获取，PDF 托管在 MIT 出版社的 direct.mit.edu 平台上，作者曾在 CoRecursive 播客中与 Jeff Shrager 一同就 ELIZA 接受访谈。它是一部历史性和学术性著作，而非技术发布，因此其价值在于深度和背景，而非即时应用。

rss · Lobsters · 7月15日 14:12

**背景**: ELIZA 是 MIT 教授 Joseph Weizenbaum 于 1966 年开发的一个符号主义 AI 程序，它使用简单的模式匹配将用户的陈述改写成问题，从而模拟心理治疗师。Weizenbaum 把它作为研究人机自然语言交流的一种方式，但当人们把真正的理解和同理心归于它时，他感到警觉。这一现象后来被称为"ELIZA 效应"，即人们倾向于把理解、同理心等人类特质投射到简陋的计算机程序上，这一担忧在当今的聊天机器人时代依然高度相关。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/ELIZA">ELIZA - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/ELIZA_effect">ELIZA effect - Wikipedia</a></li>
<li><a href="https://www.smithsonianmag.com/history/why-the-computer-scientist-behind-the-worlds-first-chatbot-dedicated-his-life-to-publicizing-the-threat-posed-by-ai-180987971/">Why Joseph Weizenbaum Invented the Eliza Chatbot</a></li>

</ul>
</details>

**标签**: `#AI history`, `#chatbots`, `#ELIZA`, `#open access`, `#NLP`

---

<a id="item-21"></a>
## [随着与 Epic 的和解被撤回，第三方应用商店将登陆 Google Play](https://arstechnica.com/gadgets/2026/07/third-party-app-stores-coming-to-google-play-next-week-as-epic-settlement-withdrawn/) ⭐️ 6.0/10

在与 Epic Games 的和解被撤回后，Google 将从下周开始允许第三方应用商店在 Google Play 中运行。这标志着由 Epic 诉 Google 反垄断诉讼所引发的早期安排发生了转变。 向竞争性应用商店开放 Google Play 可能重塑 Android 应用的分发方式，并削弱 Google 对计费和应用发现的控制。开发者和竞争对手商店将获得触达用户的新渠道，这可能影响 Google Play 商店的收入以及更广泛的移动生态系统。 这些变化可追溯到 Epic 诉 Google 案，Google 被要求向替代商店开放 Android，据报道其承诺将对此类功能的支持延续至 2032 年 6 月 30 日。所提供的条目仅是一个链接到评论的标题，因此被撤回和解的具体实施细节并未包含在原始内容中。

rss · Lobsters · 7月15日 20:05

**背景**: Epic Games 就 Google 的应用商店政策提起诉讼，主张 Google 对 Android 应用分发和应用内计费的控制具有反竞争性。与 Apple 不同，Android 长期以来允许侧载和第三方应用商店（如 Amazon Appstore），但 Google Play 本身仍对竞争性商店封闭。该诉讼产生了一系列裁决和和解，迫使 Google 开放 Android 生态系统，其中包括与美国各州就 Play 商店做法达成的另一项 7 亿美元和解。

**标签**: `#android`, `#app-stores`, `#google-play`, `#antitrust`, `#epic-games`

---

<a id="item-22"></a>
## [Mozilla 报告：微软的 Edge 设计手段削弱浏览器选择权](https://research.mozilla.org/browser-competition/over-the-edge-2/) ⭐️ 6.0/10

Mozilla 研究部门发布了名为《Over the Edge 2.0》的后续报告，指出微软继续在 Windows 中使用各种设计手段，将用户引导至 Edge 浏览器，从而削弱真正的浏览器选择权。报告的核心发现是，即便用户选择了其他默认浏览器，Windows 仍会不断把用户导回 Edge，例如通过绕过用户默认设置的 Copilot 链接。 这份报告为有关平台权力、反垄断和用户自主权的持续讨论提供了素材，凸显了默认浏览器设置如何在操作系统层面被绕过。它对关注浏览器竞争的人以及监管机构都很重要，尤其是在欧盟《数字市场法案》已经证明更公平的选择界面能够显著推动市场份额转向替代浏览器之后。 报告记录了具体机制，例如 Windows 11 的 Copilot 链接无论用户选择哪个默认浏览器都会在 Edge 中打开，这意味着默认设置并非真正覆盖整个系统。作为一份由 Mozilla 撰写的报告，它出自与 Edge 直接竞争的利益相关方，因此其论述带有倡导色彩，而非中立的技术审计。

rss · Lobsters · 7月15日 09:58

**背景**: 默认浏览器是操作系统用来打开网页链接的应用程序，但平台厂商可以构建忽略或覆盖这一设置的功能。所谓“暗黑模式”（dark patterns）是指引导用户偏向厂商利益而非用户真实意愿的设计手法。欧盟《数字市场法案》（DMA）要求大型平台展示中立的浏览器选择界面，Mozilla 的数据显示自这些规则生效以来 Firefox 新增了数百万次选择，这说明默认浏览器的处理方式为何成为竞争焦点。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://windowsforum.com/threads/windows-11-copilot-links-bypass-default-browser-mozilla-says.438892/">Windows 11 Copilot Links Bypass Default Browser ... | Windows Forum</a></li>
<li><a href="https://blog.mozilla.org/netpolicy/2026/05/11/six-million-selections-later-how-the-dma-is-giving-people-browser-choice/">Six Million Selections Later: How the DMA Is Giving People Browser ...</a></li>

</ul>
</details>

**标签**: `#browser-competition`, `#microsoft-edge`, `#mozilla`, `#platform-policy`, `#user-choice`

---