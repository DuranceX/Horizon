---
layout: default
title: "Horizon Summary: 2026-07-20 (ZH)"
date: 2026-07-20
lang: zh
---

> 从 80 条内容中筛选出 21 条重要资讯。

---

1. [网站可靠性工程师用价值 1600 美元的 ESP32 替换 12 万美元的保龄球计分系统](#item-1) ⭐️ 8.0/10
2. [阿里巴巴发布 2.4 万亿参数开放权重大模型 Qwen 3.8](#item-2) ⭐️ 8.0/10
3. [wp2shell：据称 WordPress 核心存在预认证远程代码执行漏洞](#item-3) ⭐️ 8.0/10
4. [Claude Code 现已在生产环境中搭载 Bun 的 Rust 重写版本](#item-4) ⭐️ 7.0/10
5. [卖出 2500 台 MIDI 录音机的心得：硬件其实没那么难](#item-5) ⭐️ 7.0/10
6. [控制大语言模型的推理投入](#item-6) ⭐️ 7.0/10
7. [安腾（IA-64）模拟器成功在这一已停产架构上引导 Windows](#item-7) ⭐️ 7.0/10
8. [《我的世界》Java 版在最新快照中改用 SDL3](#item-8) ⭐️ 6.0/10
9. [研究称 AI 建议降低准确率却提升自信](#item-9) ⭐️ 6.0/10
10. [一位开发者加入 IndieWeb 的经验分享](#item-10) ⭐️ 6.0/10
11. [Ollama 在 8800 万美元融资中重新定位为开放模型平台](#item-11) ⭐️ 6.0/10
12. [上海 AI Lab 让智能体 Harness 自进化，效果提升 104%](#item-12) ⭐️ 6.0/10
13. [AI 狂热正在扭曲企业决策](#item-13) ⭐️ 6.0/10
14. [SQLite 查询解释器：在浏览器中解读 EXPLAIN 输出的交互工具](#item-14) ⭐️ 6.0/10
15. [防御智能体 AI 的提示注入与工具滥用](#item-15) ⭐️ 6.0/10
16. [数学家仍不知道乘法运算的最快算法](#item-16) ⭐️ 6.0/10
17. [Cagire：基于 Forth 的实时编码音乐音序器](#item-17) ⭐️ 6.0/10
18. [CodeSizer：解释二进制文件为何如此庞大的工具](#item-18) ⭐️ 6.0/10
19. [用人工审查作为使用 AI 生成代码的理由并不成立](#item-19) ⭐️ 6.0/10
20. [使用 Lean 进行形式化验证入门（第一部分）](#item-20) ⭐️ 6.0/10
21. [研究 Linux 调度器以及度量指标为何重要](#item-21) ⭐️ 6.0/10

---

<a id="item-1"></a>
## [网站可靠性工程师用价值 1600 美元的 ESP32 替换 12 万美元的保龄球计分系统](https://news.ycombinator.com/item?id=48968606) ⭐️ 8.0/10

一位买下废弃 8 道保龄球馆的网站可靠性工程师用 ESP32 微控制器搭建了可用的计分系统原型，每对球道成本约 200 美元，用以替换一套 2008 年安装、更换费用高达 8 万至 12 万美元的专有系统。他计划以 OpenLaneLink 为名开源整套硬件、固件和软件栈。 该项目展示了通用开放硬件和开源软件如何以两个数量级的成本优势取代昂贵的专有系统，使小企业主摆脱厂商锁定和按功能收费的束缚。它也凸显了用廉价现代嵌入式电子技术改造老旧机械和工业系统的广阔前景。 该系统采用基于 ESP-NOW 的 ESP32 星型拓扑网状网络，并以 RS485 有线连接作为射频干扰环境下的备份，事件通过 UART 网关传入运行 Redis 和状态机的树莓派，前端使用 React 和 websocket 实现界面与动画。作者指出，真正困难的部分是编写固件和通信协议，而维修或更换一对球道的设备各只需不到十分钟。

hackernews · section33 · 7月19日 14:41

**背景**: 保龄球计分系统记录每一格的分数，通常还驱动球速计算、基于摄像头的瓶位检测、犯规判定和动画等功能，而真正的排瓶机往往已有数十年历史且纯粹是机械结构，仅靠一个继电器触发。ESP32 是乐鑫（Espressif）推出的廉价 Wi-Fi 和蓝牙微控制器，广泛应用于物联网和爱好者项目，ESP-NOW 则是其用于设备间直接通信的低延迟无线协议。网站可靠性工程（SRE）是一门专注于已部署系统可靠性、可用性和性能的软件工程学科，这也解释了作者为何能熟练运用事件流、Redis 和状态机。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/ESP32">ESP32 - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Pinsetter">Pinsetter - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Site_reliability_engineering">Site reliability engineering - Wikipedia</a></li>

</ul>
</details>

**社区讨论**: 评论者反响热烈并分享了类似经历，包括一位拥有曾由 1970 年英特尔 MCS-48 芯片控制的机械迷你保龄球道的用户，以及一位在父亲修理继电器式 AMF 排瓶机的环境中长大的人。多位评论者认为该项目印证了用廉价现代控制器改造老旧机床和遗留系统的大趋势，还有人已在扩展这一思路，加入 DMX 灯光、追随球体的 LED 灯带以及一触即付的自助终端。

**标签**: `#embedded-systems`, `#ESP32`, `#hardware-hacking`, `#legacy-retrofit`, `#IoT`

---

<a id="item-2"></a>
## [阿里巴巴发布 2.4 万亿参数开放权重大模型 Qwen 3.8](https://twitter.com/Alibaba_Qwen/status/2078759124914098291) ⭐️ 8.0/10

阿里巴巴发布了 Qwen 3.8，这是一款 2.4 万亿参数的开放权重大语言模型，被视为对月之暗面（Moonshot AI）近期发布的 2.8 万亿参数 Kimi K3 的竞争性回应。此次发布延续了 Qwen 公开发布模型权重供大众下载的做法。 两家中国实验室几乎同时发布超大规模开放权重模型，加剧了可自由下载 AI 模型领域的前沿竞争，为开发者提供了替代 Claude 等闭源模型的强大选择。对许多用户来说，这种竞争意味着更好的本地部署选项，尤其适合在不将数据发送到外部 API 的情况下处理敏感或私人数据。 社区成员希望阿里巴巴能像以往那样发布 Qwen 3.8 的较小版本（此前曾发布 27B、35B 等稠密和 MoE 模型），以便在消费级或高端个人硬件上本地运行。需要注意的是，讨论中的部分细节涉及尚未发布或未来的模型，因此具体规格和发布日期应视为未经证实。

hackernews · nh43215rgb · 7月19日 08:44 · [社区讨论](https://news.ycombinator.com/item?id=48966120)

**背景**: Qwen 是阿里云推出的大语言模型系列，以开放权重形式发布，即公开可下载训练好的参数，任何人无需了解其构建方式即可运行该模型。“开放权重”不同于“开源”：权重可自由获取，但训练数据和完整训练方法可能并不公开。月之暗面是一家中国公司，其 Kimi 模型采用混合专家（MoE）架构，每次查询只激活部分参数，从而在保持推理成本可控的同时实现极大的总参数量。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Kimi_(chatbot)">Kimi (chatbot) - Wikipedia</a></li>
<li><a href="https://github.com/QwenLM/Qwen3">GitHub - QwenLM/Qwen3: Qwen3 is the large language model series developed by Qwen team, Alibaba Cloud. · GitHub</a></li>
<li><a href="https://bota.chat/kimi-k3/open-weight-ai-models/">Open Weight vs Open Source AI Models : The Real Difference</a></li>

</ul>
</details>

**社区讨论**: 评论者普遍欢迎阿里巴巴与月之暗面之间的竞争，认为这对用户是好事，还有人期待能本地运行的较小版本以私密处理敏感数据。不过体验褒贬不一：一位用户称 Qwen 3.7 Pro 在软件工程方面“无法使用”，远落后于 DeepSeek V4 Pro；另一位则表示在本地运行 Qwen 3.6 27B 时感到惊喜，并称 mtplx 等工具能将速度提升 2 到 3 倍。

**标签**: `#LLM`, `#open-weights`, `#Qwen`, `#AI/ML`, `#Alibaba`

---

<a id="item-3"></a>
## [wp2shell：据称 WordPress 核心存在预认证远程代码执行漏洞](https://wp2shell.com/) ⭐️ 8.0/10

一个名为 wp2shell 的网站声称在 WordPress 核心本身中发现了一个预认证远程代码执行（RCE）漏洞，也就是说攻击者无需登录即可执行任意代码。该说法正在 Lobsters 上被讨论，但所分享的内容只有一个链接，没有提供任何技术证明、CVE 编号或受影响版本的细节。 WordPress 支撑着全球相当大比例的网站，因此如果其核心确实存在无需认证的 RCE 漏洞，那将是可以想象到的最严重的 Web 漏洞之一，可能使数百万网站面临大规模入侵。正是由于这种潜在的影响范围，网站运营者和安全团队既需要认真对待此类说法，也需要在采取行动前对其加以核实。 所提供的材料中没有 CVE 编号、受影响版本范围、概念验证代码或 WordPress 官方安全公告，因此仅凭此来源无法确认该漏洞的真实性和严重程度。在 WordPress 安全团队或公认的披露渠道加以佐证之前，读者应将 wp2shell 的说法视为未经核实的信息。

rss · Lobsters · 7月18日 18:12

**背景**: 预认证（或称未认证）远程代码执行漏洞允许攻击者在无需任何有效登录的情况下在服务器上执行任意代码，由于它不需要凭证或用户交互，被认为是最危险的一类漏洞。其他软件中近期的例子，如 React Server Components 中的 CVE-2025-55182 和 BeyondTrust 产品中的 CVE-2026-1731，正是出于这个原因被评为严重级别。WordPress 核心是 WordPress 内容管理系统背后的基础软件，与更常成为漏洞来源的主题和插件不同，因此核心本身的漏洞几乎会影响到每一个安装实例。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.trendmicro.com/en_us/research/25/l/critical-react-server-components-vulnerability.html">Critical React Server Components Vulnerability CVE-2025-55182: What Security Teams Need to Know | Trend Micro (US)</a></li>
<li><a href="https://www.rapid7.com/blog/post/etr-cve-2026-1731-critical-unauthenticated-remote-code-execution-rce-beyondtrust-remote-support-rs-privileged-remote-access-pra/">CVE-2026-1731: Critical Unauthenticated Remote Code Execution in BeyondTrust Remote Support (RS) and Privileged Remote Access (PRA)</a></li>

</ul>
</details>

**标签**: `#security`, `#WordPress`, `#RCE`, `#vulnerability`, `#web-security`

---

<a id="item-4"></a>
## [Claude Code 现已在生产环境中搭载 Bun 的 Rust 重写版本](https://simonwillison.net/2026/Jul/19/claude-code-in-bun-in-rust/#atom-everything) ⭐️ 7.0/10

Simon Willison 检查了自己的 Claude Code 安装，验证了 Jarred Sumner 的说法：Claude Code v2.1.181 及之后的版本内嵌了 Bun 运行时的 Rust 重写版本，他在二进制文件中发现了 'Bun v1.4.0' 字符串以及 563 个 '.rs' 源文件名。该 v1.4.0 版本领先于 Bun 在 GitHub 上的最新公开发布版（v1.3.14），目前仅通过 Bun 的 canary 预览版提供。 这表明一次大规模、由 AI 辅助的从 Zig 到 Rust 的重写已经在数百万台 Claude Code 设备的生产环境中运行，为此类重写的可行性提供了真实世界的证据。它也凸显了 Anthropic 的工具链战略，因为 Bun 核心团队成员在 Anthropic 工作，并使用了预发布的 Claude 模型来协助完成这次重写。 据 Sumner 称，此次切换使 Linux 的启动速度提升了约 10%，而大多数用户几乎察觉不到变化；转向 Rust 的动机是为了消除 Zig 要求开发者手动追踪内存生命周期而导致的一类内存 bug。Willison 通过基于 strings 的检查以及一个 preload 技巧验证了内嵌版本，该技巧报告 'Bun.version' 为 1.4.0。

rss · Simon Willison · 7月19日 03:54 · [社区讨论](https://news.ycombinator.com/item?id=48966569)

**背景**: Bun 是一个集运行时、打包器和包管理器于一体的 JavaScript 与 TypeScript 工具，最初用 Zig 编写，旨在成为 Node.js 的高速替代品。Claude Code 是 Anthropic 的智能体命令行编码工具，运行在终端中，并基于 JavaScript 运行时构建。Zig 和 Rust 都是系统级编程语言；Zig 采用手动内存管理，而 Rust 通过其所有权和借用检查机制在编译期自动保证内存安全。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://bun.com/blog/bun-in-rust">Rewriting Bun in Rust | Bun Blog</a></li>
<li><a href="https://github.com/oven-sh/bun">GitHub - oven-sh/bun: Incredibly fast JavaScript runtime, bundler, test runner, and package manager – all in one</a></li>
<li><a href="https://en.liujiacai.net/2026/05/16/bun-rust-port/">My Thoughts on Bun's Rust Rewrite | Jiacai Liu's personal website</a></li>

</ul>
</details>

**社区讨论**: 评论者意见分歧：一些人认同技术理由，即 Rust 自动消除了 Zig 需要手动追踪的一类内存生命周期 bug，而另一些人则批评 Bun 的沟通和评审流程，认为在不到一个月内合并一个百万行以上的 PR 不够专业。有几位质疑终端界面为何需要 JavaScript 运行时，还有人担心 Bun 实际上正从一个开源项目转变为由 Anthropic 掌控的产物。

**标签**: `#Bun`, `#Rust`, `#Claude Code`, `#developer-tools`, `#runtime`

---

<a id="item-5"></a>
## [卖出 2500 台 MIDI 录音机的心得：硬件其实没那么难](https://chipweinberger.com/articles/20260719-hardware-is-not-so-hard) ⭐️ 7.0/10

一位创始人发表了一篇回顾文章，分享了设计、制造并销售 2500 台名为 JamCorder 的 MIDI 录音机的经验教训，主张开发实体硬件产品远比人们所说的更容易上手。 这篇文章为考虑做硬件的个人创始人和小团队提供了实用的第一手指南，也反映出现代制造工具和供应链如何降低了实体产品的入门门槛。 JamCorder 将演奏以标准 MIDI 文件的形式录制到存储卡上，从而避免了对配套应用的依赖问题，即使应用消失数据仍可访问；不过批评者指出，该产品相对简单（一块小型 PCBA 加上两片注塑外壳），可能无法代表更复杂硬件的难度。

hackernews · chipweinberger · 7月19日 10:34 · [社区讨论](https://news.ycombinator.com/item?id=48966713)

**背景**: MIDI（乐器数字接口）是一种数字通信协议，让电子乐器、电脑和其他设备之间交换音符、时值等演奏数据。MIDI 录音机记录的是这些数据而非音频，将演奏保存为紧凑的 MIDI 文件，之后可在任何兼容乐器上编辑或回放。PCBA（印刷电路板组件）和注塑成型是硬件制造中的常见术语，分别指装配好的电路板和成型塑料外壳的工艺。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://kernom.com/en-us/blogs/midi/midi-basis">Understanding MIDI Basis for your Stompboxes - KERNOM NEWS</a></li>
<li><a href="https://gearspace.com/board/electronic-music-instruments-and-electronic-music-production/1327024-hardware-midi-recorder.html">Hardware midi recorder? - Gearspace</a></li>

</ul>
</details>

**社区讨论**: 评论者大多称赞这一成就，一位 JamCorder 用户称其为近乎完美的产品，但讨论中最有力的观点是对核心论点的反驳：starky 认为“硬件的难度由产品本身决定”，指出简单的两片式外壳远比需要数十个定制模具零件的产品容易，skippyfish 则强调硬件在规模化和故障方面与软件有本质不同。

**标签**: `#hardware`, `#manufacturing`, `#entrepreneurship`, `#product-development`, `#electronics`

---

<a id="item-6"></a>
## [控制大语言模型的推理投入](https://magazine.sebastianraschka.com/p/controlling-reasoning-effort-in-llms) ⭐️ 7.0/10

机器学习教育者 Sebastian Raschka 发表了一篇技术深度文章，解释大语言模型如何学会在低、中、高三种推理投入模式下运行，以及如何有意识地控制这种推理投入。文章梳理了让单个模型能根据所需投入级别在较短和较长思维链之间切换的训练机制。 推理投入控制让开发者能在答案质量与延迟、token 成本之间做权衡，这是大规模部署推理模型（如 OpenAI 等公司的模型）时的重要实际考量。理解这一控制机制有助于从业者针对真实工作负载调优模型，而不必对每个请求都付出最大推理开销。 近期的工作（如 ThinkDial）展示了一种做法：在预算模式监督微调中为高、中、低三种模式使用不同的系统提示，并用高:中:低比例为 1:1:1 的均衡数据集进行训练。商业部署越来越多地对隐藏的“推理 token”计量，并提供一个“推理投入”控制项来调节模型在回答前的思考量。

rss · Ahead of AI (Sebastian Raschka) · 7月18日 11:16

**背景**: 思维链（CoT）推理是一种让模型在给出最终答案前生成中间推理步骤的技术，它通过给模型更多计算量和结构，从而提升复杂多步问题的准确率。现代推理模型经过训练能原生地产生这些思维链，而非依赖提示引导。然而，更多推理意味着生成更多 token，会增加成本和延迟，因此控制模型投入多少推理已成为一个活跃的研究与部署课题。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arxiv.org/abs/2508.18773">[2508.18773] ThinkDial: An Open Recipe for Controlling Reasoning Effort in Large Language Models</a></li>
<li><a href="https://en.wikipedia.org/wiki/Reasoning_model">Reasoning model - Wikipedia</a></li>
<li><a href="https://www.ibm.com/think/topics/chain-of-thoughts">What is chain of thought (CoT) prompting? | IBM</a></li>

</ul>
</details>

**标签**: `#LLM`, `#reasoning`, `#machine-learning`, `#AI`, `#model-training`

---

<a id="item-7"></a>
## [安腾（IA-64）模拟器成功在这一已停产架构上引导 Windows](https://raymii.org/s/blog/Intel_Itanium_IA-64-Emulator_that_boots_Windows.html) ⭐️ 7.0/10

一位开发者为英特尔已停产的安腾（IA-64）架构构建了一个模拟器，其完整度足以在模拟硬件上引导 Windows 操作系统。 IA-64 是一个在商业上失败且如今已停产的架构，因此一个可用的模拟器保留了在无需日益稀有的实体硬件的情况下运行安腾遗留软件和研究该平台的能力。 模拟 IA-64 在技术上颇具挑战，因为它采用了 EPIC（显式并行指令计算）范式，包含谓词执行、推测加载和庞大的寄存器堆，这与常规的 x86 模拟有很大不同。

rss · Lobsters · 7月19日 08:37

**背景**: IA-64（英特尔安腾架构）是一种 64 位指令集架构，最初由 HP 开发，后与英特尔联合开发，如今已停产。与主流 CPU 不同，安腾基于 EPIC 构建，这是 VLIW（超长指令字）设计的演进，它依赖编译器显式表达指令级并行性，而非由硬件在运行时发现并行性。这一设计使得安腾以难以编译和难以模拟而著称。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/IA-64">IA-64 - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Itanium">Itanium - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Explicitly_parallel_instruction_computing">Explicitly parallel instruction computing - Wikipedia</a></li>

</ul>
</details>

**标签**: `#emulation`, `#systems`, `#Itanium`, `#IA-64`, `#retrocomputing`

---

<a id="item-8"></a>
## [《我的世界》Java 版在最新快照中改用 SDL3](https://www.minecraft.net/en-us/article/minecraft-26-3-snapshot-4) ⭐️ 6.0/10

《我的世界》Java 版在最近的开发快照中迁移到了 SDL3 库，取代了之前的窗口与输入处理方案。这一变化得益于社区为 SDL3 贡献的 LWJGL 绑定。 SDL3 为窗口、输入和音频提供了成熟的跨平台硬件抽象层，有望为《我的世界》庞大的玩家群体在各操作系统上带来更一致、更可靠的体验。这也表明 SDL3 正被越来越多的主流实际应用采用，对游戏开发者和系统工程师具有参考价值。 该快照带有已知问题，包括在 Windows 多显示器环境下的独占全屏模式崩溃，以及在 Wayland 上进入独占全屏时崩溃。该 SDL3 的 LWJGL 绑定由 GregTech: New Horizons（GTNH）整合包团队的一名成员编写。

hackernews · ObviouslyFlamer · 7月19日 11:48 · [社区讨论](https://news.ycombinator.com/item?id=48967256)

**背景**: 《我的世界》Java 版依赖 LWJGL（轻量级 Java 游戏库），这是一个开源库，让 Java 代码能够访问 OpenGL、OpenAL 等原生 C 库，用于跨平台游戏开发。SDL（Simple DirectMedia Layer，简单直接媒体层）是一个跨平台库，提供对音频、键盘、鼠标、手柄和图形硬件的底层访问，SDL3 是其最新的主要版本。通过为 LWJGL 添加 SDL3 绑定，《我的世界》可以借助 SDL3 处理 Windows、macOS 和 Linux 上窗口创建与输入等与平台相关的事务。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Simple_DirectMedia_Layer">Simple DirectMedia Layer - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/LWJGL">LWJGL - Wikipedia</a></li>
<li><a href="https://www.lwjgl.org/">LWJGL - Lightweight Java Game Library</a></li>

</ul>
</details>

**社区讨论**: 评论者注意到 SDL3 的 LWJGL 绑定源自 GTNH 整合包团队成员之手，形成了从原版到模组再回到原版的有趣循环。有几人担心 Windows 和 Wayland 上已知的全屏崩溃问题看起来严重到足以推迟快照发布，还有人评论说《我的世界》越来越像一个完整的游戏引擎，而不仅仅是一款游戏。

**标签**: `#SDL3`, `#Minecraft`, `#game-development`, `#LWJGL`, `#cross-platform`

---

<a id="item-9"></a>
## [研究称 AI 建议降低准确率却提升自信](https://thenextweb.com/news/ai-advice-suppresses-critical-thinking-wrong-answers-study) ⭐️ 6.0/10

The Next Web 报道的一项研究声称，获得 AI 建议的人在回答问题时准确率反而下降，但对自己答案的信心却更强，暗示 AI 可能抑制批判性思维。该研究让参与者使用一个研究人员明知会对特定问题给出错误答案的大语言模型，然后就这些问题对他们进行测试。 这一发现触及了人们对自动化偏见和过度依赖 AI 的日益担忧——用户不加批判地接受机器生成的结果，并将自身的推理外包出去。如果结论属实，随着 AI 工具日益普及，这将预示着教育、专业决策以及日常信息获取方面的风险。 批评者指出，该实验设计并非 AI 所特有：参与者使用的是一个已知会给出错误答案的大语言模型，且在不确定时可以选择不回答，而正确答案仅奖励 0.10 美元。这种设置可以说测试的是对任何不可靠建议来源的信任，而非 AI 系统所独有的特性。

hackernews · rbanffy · 7月19日 21:18 · [社区讨论](https://news.ycombinator.com/item?id=48971738)

**背景**: 自动化偏见指的是不加批判地信任自动化系统的倾向，认知外包则指将信息检索和综合等推理任务转移给工具，研究人员警告这两者都可能随时间侵蚀批判性思维。像 ChatGPT 这样的大语言模型（LLM）会生成流畅、听起来自信的回答，即使在事实错误时也可能具有说服力，这正是人们担忧过度依赖 AI 的核心所在。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.lumenova.ai/blog/overreliance-on-ai-adressing-automation-bias-today/">Overreliance on AI : Addressing Automation Bias Today</a></li>
<li><a href="https://www.eurekalert.org/news-releases/1107740">Overreliance on AI risks eroding new and future doctors’ critical ...</a></li>

</ul>
</details>

**社区讨论**: 社区最主要的反应是对方法论的质疑，评论者认为该研究测试的是对一个已知不可靠来源的信任，而非 AI 所特有的现象。不过，也有人指出现实中过度依赖 AI 正在拖垮各类建议论坛，并持悲观看法，认为迎合用户的 AI 只会强化用户已有的观念和偏见。

**标签**: `#AI`, `#critical-thinking`, `#LLM`, `#research-methodology`, `#human-AI-interaction`

---

<a id="item-10"></a>
## [一位开发者加入 IndieWeb 的经验分享](https://en.andros.dev/blog/0b8e451e/i-joined-the-indieweb-heres-what-i-learned/) ⭐️ 6.0/10

一位开发者发布了一篇博客文章，回顾了自己采用 IndieWeb 协议和 POSSE 等实践的经历，分享了过程中遇到的实际经验和阻碍。这篇文章获得了大量关注，在讨论帖中收获了 158 分和 85 条评论。 这篇文章凸显了去中心化、用户自主掌控的网络理想与将大多数非技术用户拒之门外的技术复杂性之间的持续矛盾。它推动了更广泛的行业讨论，即如何从中心化的社交媒体孤岛手中夺回内容所有权。 讨论中提到了一些替代方案，例如 Nostr，一些人认为它比 Mastodon 或 AT Protocol 更符合 POSSE 理念，以及像 Indiekit 这样开箱即用、集成了 IndieWeb 功能的工具。一个反复出现的批评是，要求用户接触命令行、Docker 或服务器配置，使得这种方式对大约 90% 的潜在用户来说难以实现。

hackernews · andros · 7月19日 11:14 · [社区讨论](https://news.ycombinator.com/item?id=48966984)

**背景**: IndieWeb 是一个社区驱动的运动，鼓励人们通过在自己的个人网站上发布内容来掌控自己的网络身份和内容，而不是依赖 Twitter 或 TikTok 等中心化平台（被称为"孤岛"）。其核心实践是 POSSE，即"在自己的网站发布，再向别处同步"——你先在自己的网站上发布内容，然后把副本或链接分享到社交媒体，从而让原始内容始终掌握在自己手中。文中提到的相关技术还包括 Nostr 和 AT Protocol（Bluesky 使用），它们是替代性的去中心化发布系统，以及联邦式社交网络 Mastodon。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://indieweb.org/POSSE">POSSE - IndieWeb</a></li>
<li><a href="https://www.glukhov.org/post/2025/02/posse-publish-on-your-own-site-syndicate-elsewhere/">POSSE: Publish on your own site, syndicate elsewhere - Rost Glukhov | Personal site and technical blog</a></li>
<li><a href="https://indieweb.org/GeoCities">GeoCities - IndieWeb</a></li>

</ul>
</details>

**社区讨论**: 评论者普遍认同其目标，但对可用性门槛提出批评，有人认为把工程复杂性推到最前面与 IndieWeb 声称的"内容优先"目标相矛盾，并呼吁推出一键式解决方案。也有人建议使用 Nostr 和功能齐全的 Indiekit 等替代方案，还有人提出了更具哲学意味的看法——指出 IndieWeb 本身也是一种自我表达形式，并质疑许多"独立"博客那种精致的、自我推销式的风格。

**标签**: `#IndieWeb`, `#decentralization`, `#web-development`, `#self-hosting`, `#POSSE`

---

<a id="item-11"></a>
## [Ollama 在 8800 万美元融资中重新定位为开放模型平台](https://ollama.com/blog/all-aboard-open-models) ⭐️ 6.0/10

Ollama 发布了一篇题为《All Aboard Open Models》的博客文章，将自身定位为开放模型平台，同时宣布了在 2026 年 7 月 9 日完成的 8800 万美元融资，参与方包括 Benchmark、Theory Ventures、8VC 和 Y Combinator 等。 Ollama 是本地运行大语言模型最常用的工具之一，因此这笔大额融资加上战略重新定位，标志着本地 AI 领域的商业关注度不断上升，并可能影响普通用户获取开放模型的方式。 社区中的批评者认为，Ollama 应用比纯 llama.cpp 更慢，其量化模型文件（quants）质量往往不如 unsloth 等替代方案，同时指出 Ollama 在很大程度上依赖 Georgi Gerganov 底层的 llama.cpp 工作。

hackernews · inferhaven · 7月19日 07:59 · [社区讨论](https://news.ycombinator.com/item?id=48965880)

**背景**: Ollama 是一款开源工具，能让用户轻松在个人硬件上下载并运行大语言模型，屏蔽了大量技术配置的复杂性。它构建在 llama.cpp 之上，后者是由 Georgi Gerganov 开发的 C/C++ 推理引擎，能以极少的依赖实现高效的大语言模型推理。量化是一种将模型权重从 16 位精度降至 4 位或 8 位等更低位宽的技术，可将内存占用减少 50% 到 75%，通常只带来很小的质量损失，而具体质量取决于量化的实现方式。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/ggml-org/llama.cpp">GitHub - ggml-org/ llama . cpp : LLM inference in C/C++ · GitHub</a></li>
<li><a href="https://www.freecodecamp.org/news/run-and-customize-llms-locally-with-ollama/">How to Run and Customize LLMs Locally with Ollama</a></li>
<li><a href="https://www.promptquorum.com/local-llms/llm-quantization-explained">Q4_K_M vs Q4_0 vs Q8_0: LLM Quantization Explained (2026)</a></li>

</ul>
</details>

**社区讨论**: 讨论整体偏向负面，多位评论者呼吁人们停止使用 Ollama 及其量化文件，转而选择他们认为更快、质量更高的 llama.cpp 或 unsloth。有人称 Georgi Gerganov 的 llama.cpp 才是这项技术背后的"真正英雄"，也有人对一个饱受批评的项目竟能融资 8800 万美元感到费解，并将其归因于投资方的运作。

**标签**: `#local-llm`, `#ollama`, `#llama.cpp`, `#open-models`, `#ai-tooling`

---

<a id="item-12"></a>
## [上海 AI Lab 让智能体 Harness 自进化，效果提升 104%](https://mp.weixin.qq.com/s?__biz=MzIzNjc1NzUzMw==&mid=2247904823&idx=3&sn=af8b10819641ba1f59492acb8aa9ebd4) ⭐️ 6.0/10

上海 AI Lab 据称开发了一种可自进化的智能体 Harness，让 AI 自己修改自身的运行框架，在不更换底层模型的情况下实现了声称高达 104%的效果提升。 如果这一结果得到验证，通过 Harness 而非模型来提升智能体性能意味着一条更低成本的优化路径，团队无需重新训练或更换大语言模型即可改进编排逻辑。 报道将其描述为已被顶级智能体社区关注的自我改进循环，但信息来源是一篇推广性聚合内容，缺少公开的方法论、基准测试，以及 104%这一数字的具体测量方式。

rss · 量子位 · 7月18日 07:45

**背景**: 智能体 Harness 是围绕大语言模型的运行框架，负责管理上下文、工具调用和信息流转，与模型本身的权重相互独立。自进化或自我改进的智能体利用反馈循环，将来自评估或环境交互的信号固化为对智能体组件（如提示词或编排逻辑）的持续更新，从而在不重新训练基础模型的情况下提升性能。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/selfimproving-agent/awesome-Self-Improving-Agents">GitHub - selfimproving- agent /Awesome- Self - Improving - Agents ...</a></li>
<li><a href="https://selfimproving-agent.github.io/">Self - Improvements in Modern Agentic Systems — Survey Hub</a></li>
<li><a href="https://dev.to/herrington_darkholme/agent-calculus-a-unified-framework-for-ai-agent-design-32d8">Agent Calculus: A Unified Framework for AI Agent ... - DEV Community</a></li>

</ul>
</details>

**标签**: `#AI Agents`, `#LLM`, `#Self-Improvement`, `#Shanghai AI Lab`, `#Agent Frameworks`

---

<a id="item-13"></a>
## [AI 狂热正在扭曲企业决策](https://simonwillison.net/2026/Jul/19/ai-mania/#atom-everything) ⭐️ 6.0/10

顾问 Nik Suresh 发表了一篇批评性评论，并由 Simon Willison 转发，文中借助匿名内部人士的轶事指出，AI 狂热正在腐蚀大公司的决策，其中一个案例是某高管在从未使用过 ChatGPT 的情况下，为一家营收超过 20 亿美元的机构制定了完全以 AI 为核心的技术战略。 这篇文章揭示了推动重大 AI 投资决策的往往是社会和商业压力，而非真实证据，这可能导致大规模的资源错配，并削弱整个行业中诚实的技术评估。 一个引人注目的轶事描述了一名工程师用 AI 将整个 Go 代码库重写为 Zig，仅仅是为了在公司的"token 排行榜"上刷活跃度以保住工作；另一个案例则揭示，AI 供应商因担心失去企业合同，不敢反驳客户对 100 倍生产力提升的夸大说法。

rss · Simon Willison · 7月19日 05:06

**背景**: "token 排行榜"指的是一种有争议的做法，即公司根据员工消耗的 AI token（语言模型处理的文本单位）数量来跟踪和排名，把高使用量当作衡量 AI 采用程度的替代指标，批评者称之为"tokenmaxxing"，并将其比作代码行数等有缺陷的虚荣指标。Zig 是一门被定位为 C 语言改进版的通用系统编程语言，而 Go 是 Google 开发的广泛使用的语言，因此在这种背景下将 Go 项目重写为 Zig 代表着一项庞大且基本上没有必要的工程投入。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Zig_(programming_language)">Zig (programming language) - Wikipedia</a></li>
<li><a href="https://www.linkedin.com/posts/hunterpowers_tokenmaxxing-the-vanity-metric-eating-your-activity-7453129080859893760-YXrF">Token Leaderboards Misleading Engineering Leaders | LinkedIn</a></li>
<li><a href="https://medium.com/@adnanmasood/tokenmaxxing-the-productivity-paradox-of-generative-ai-consumption-ddfe72cae8d5">Tokenmaxxing: The Productivity Paradox of Generative AI ... | Medium</a></li>

</ul>
</details>

**标签**: `#AI`, `#commentary`, `#corporate-strategy`, `#AI-hype`, `#industry-analysis`

---

<a id="item-14"></a>
## [SQLite 查询解释器：在浏览器中解读 EXPLAIN 输出的交互工具](https://simonwillison.net/2026/Jul/18/sqlite-query-explainer/#atom-everything) ⭐️ 6.0/10

Simon Willison 发布了 SQLite Query Explainer，这是一个基于浏览器的交互工具，通过在 Pyodide 和 WebAssembly 中运行的 Python 来执行 SQLite，并为 EXPLAIN 和 EXPLAIN QUERY PLAN 的输出添加通俗易懂的解释。他在受到 Julia Evans 关于想学会读懂查询计划的评论启发后，借助 AI 助手（Fable）构建了该工具。 即便是经验丰富的开发者，读懂 SQLite 原始的 EXPLAIN 操作码和查询计划也非常困难，因此一个能对这些输出进行标注和解释的工具降低了查询优化的门槛。由于它完全在浏览器中运行、无需后端服务器，任何人都能立即使用，无需安装 SQLite 或将查询发送到外部。 该工具依赖 Pyodide 的 WebAssembly 运行时在浏览器内执行 SQLite，Willison 也坦言由于自己对 SQLite 查询计划了解不够，无法亲自验证这些解释的准确性。EXPLAIN 会输出数十条底层虚拟机操作码（如 OpenRead、SeekRowid），而 EXPLAIN QUERY PLAN 则提供查询如何执行的更高层视图。

rss · Simon Willison · 7月18日 17:19

**背景**: SQLite 是一款广泛使用的嵌入式数据库引擎，它将 SQL 查询编译成供其内部虚拟机执行的字节码。EXPLAIN 命令会输出这些底层操作码，而 EXPLAIN QUERY PLAN 则给出关于表和索引如何被访问的更易读摘要，两者都能帮助开发者诊断慢查询。Pyodide 是将 CPython 移植到 WebAssembly 的项目，让 Python 包无需任何后端服务器即可直接在浏览器中运行。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.sqlite.org/lang_explain.html">EXPLAIN</a></li>
<li><a href="https://coddy.tech/docs/sqlite/explain-query-plan">Runnable SQLite Docs: EXPLAIN QUERY PLAN | Coddy</a></li>
<li><a href="https://pyodide.org/">Pyodide — Version 314.0.2</a></li>

</ul>
</details>

**标签**: `#sqlite`, `#sql`, `#developer-tools`, `#webassembly`, `#query-optimization`

---

<a id="item-15"></a>
## [防御智能体 AI 的提示注入与工具滥用](https://machinelearningmastery.com/agentic-ai-security-defending-against-prompt-injection-and-tool-misuse/) ⭐️ 6.0/10

Machine Learning Mastery 发布了一篇入门指南，解释了智能体 AI 系统中的提示注入与工具滥用是什么，并概述了专家用来缓解这些威胁的防御策略。文章重点讨论了这些攻击如何危害部署在真实生产环境中的 AI 智能体。 随着 AI 智能体在有限监督下获得推理、行动和调用外部工具的自主能力，它们暴露出传统网络安全协议无法覆盖的新攻击面。对于任何在生产环境中部署智能体系统的人来说，理解提示注入与工具滥用正变得愈发重要。 提示注入利用了系统提示与用户输入共享同一种自然语言格式这一事实，因此模型无法可靠地区分可信指令与恶意输入。工具滥用发生在智能体以非预期或有害的方式使用被授予的权限时，专家指出危害往往源自多个合法工具调用的组合，而非任何单一调用。

rss · Machine Learning Mastery · 7月17日 12:00

**背景**: 智能体 AI 指的是半自主或全自主的 AI 系统，能够在有限的人工监督下感知、推理并朝目标行动，通常通过调用外部工具和 API 来实现。提示注入在 OWASP 生成式 AI 安全项目的 LLM01:2025 榜单中被列为首要风险，它诱使模型忽略其原始指令——例如，哄骗客服聊天机器人查询私有数据或泄露对话内容。工具滥用之所以出现，是因为智能体被授予了真实权限，因此被误解或被注入的指令可能导致生产系统中出现非预期的操作。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://genai.owasp.org/llmrisk/llm01-prompt-injection/">LLM01:2025 Prompt Injection - OWASP Gen AI Security Project</a></li>
<li><a href="https://www.ibm.com/think/topics/agentic-ai">What is Agentic AI? | IBM</a></li>
<li><a href="https://nhimg.org/community/agentic-ai-and-nhis/agentic-tool-misuse-are-your-controls-catching-unsafe-tool-chains/">Agentic tool misuse : are your controls catching unsafe tool chains?</a></li>

</ul>
</details>

**标签**: `#AI security`, `#prompt injection`, `#agentic AI`, `#LLM safety`, `#tool misuse`

---

<a id="item-16"></a>
## [数学家仍不知道乘法运算的最快算法](https://www.scientificamerican.com/article/mathematicians-still-dont-know-the-fastest-way-to-multiply-numbers/) ⭐️ 6.0/10

《科学美国人》梳理了寻找大数乘法理论最快算法这一未解问题，回顾了从 Karatsuba 方法到 2019 年 Harvey–van der Hoeven 算法达到人们长期猜想的 O(n log n) 上界的历程。这篇文章是科普性解释，而非报道新的突破。 乘法是计算中最基础的运算之一，因此弄清它真正的理论速度极限对密码学、科学计算和复杂性理论都有深远意义。即便已达到 O(n log n) 上界，人们仍未能证明这就是可能的最快速度，使这个数十年的老问题依然处于理论计算机科学的核心。 Harvey–van der Hoeven 算法证实了 Schönhage 和 Strassen 在 1971 年提出的猜想，即乘法可在 O(n log n) 时间内完成，但它主要具有理论意义，因为只有在天文级别的大数上才会超过更简单的方法。实际的程序库仍会根据操作数大小采用 Karatsuba、Toom-Cook 以及基于 FFT 的 Schönhage–Strassen 方法。

rss · Lobsters · 7月19日 07:50

**背景**: 传统竖式乘法计算两个 n 位数需要 O(n²) 次运算，数学家长期以来一直在寻找更快的方法。Karatsuba 算法（1960 年）首次用分治技巧突破了这一界限，随后是 Toom-Cook 算法以及基于 FFT 的 Schönhage–Strassen 算法，进一步降低了运行时间。2019 年 David Harvey 和 Joris van der Hoeven 达到了人们长期认为是理论目标的 O(n log n) 上界，但目前仍未证明不存在更快的算法。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Multiplication_algorithm">Multiplication algorithm - Wikipedia</a></li>
<li><a href="https://www.unsw.edu.au/news/2019/04/david-harvey-s-algorithm-multiplies-integers-faster-than-all-pre">David Harvey 's algorithm multiplies integers faster than all previous...</a></li>
<li><a href="https://en.wikipedia.org/wiki/Karatsuba_algorithm">Karatsuba algorithm - Wikipedia</a></li>

</ul>
</details>

**标签**: `#algorithms`, `#computational-complexity`, `#mathematics`, `#multiplication`, `#theory`

---

<a id="item-17"></a>
## [Cagire：基于 Forth 的实时编码音乐音序器](https://cagire.raphaelforment.fr/) ⭐️ 6.0/10

Cagire 是一个构建在 Forth 编程语言之上的实时编码环境，让音乐人可以即时编写和修改音乐序列。该项目通过其专属网站作为一个可用工具展示，并分享到了 Lobsters 社区。 它代表了一种不寻常的结合，把冷门的基于栈的语言与创意音频编程结合在一起，把实时编码者的工具箱从更常见的基于 Lisp、Scheme 和 Haskell 的音序器进一步扩展。对于关注语言设计的人来说，它展示了 Forth 交互式、极简的特性如何适合实时音乐演出。 Cagire 使用 Forth，一种以类似 REPL 的交互式工作流和紧凑语法著称的面向栈语言，这与实时编码所需的即时反馈循环天然契合。所链接的内容较少，主要是项目网站和一个 Lobsters 讨论帖，而非详细文档。

rss · Lobsters · 7月20日 01:01

**背景**: Forth 是一种面向栈的交互式编程语言，由 Charles “Chuck” Moore 于约 1970 年创造，最初为嵌入式和实时应用而设计，以极简、可扩展的设计著称。实时编码是一种演出实践，音乐人在演出时实时编写和修改代码来生成声音，而这一领域现有的工具通常构建在 Scheme、Lisp 或 Haskell 等语言之上。音序器是用来编排和触发音符、节奏等音乐事件的软件，常常向乐器发送 MIDI 信号。Cagire 把 Forth 引入这个创意编程领域，将该语言实时、交互的风格与音乐音序结合起来。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Forth_(programming_language)">Forth (programming language) - Wikipedia</a></li>
<li><a href="https://lambda-music.github.io/">Lambda Music Sequencer for Live Coding | Scheme’s lambda functions become music by Lamu sequencer!</a></li>
<li><a href="https://hackage.haskell.org/package/live-sequencer">live-sequencer: Live coding of MIDI music - Hackage</a></li>

</ul>
</details>

**标签**: `#live-coding`, `#forth`, `#music-programming`, `#creative-coding`, `#domain-specific-languages`

---

<a id="item-18"></a>
## [CodeSizer：解释二进制文件为何如此庞大的工具](https://github.com/Wren6991/CodeSizer) ⭐️ 6.0/10

CodeSizer 是一个新近在 GitHub 上分享的开源工具，用于分析编译后的二进制文件，揭示是什么占用了空间，帮助开发者理解并缩减可执行文件的体积。 在嵌入式和系统开发中，二进制体积是一个真实的痛点，因为内存和闪存资源非常紧张，所以能够精确定位体积来源的工具可以直接帮助开发者优化代码。它解决了跨语言、跨平台中编译产物意外膨胀这一反复出现的困扰。 CodeSizer 属于更广泛的二进制体积分析工具类别，类似 cargo-bloat、Twiggy 和 bloaty，这类工具会按符号、段或源代码来拆解可执行文件，展示字节都用在了哪里。作为一项渐进式的工具贡献而非突破性成果，它的价值在于为体积分析提供务实且专注的实用功能。

rss · Lobsters · 7月19日 14:32

**背景**: 当源代码被编译成二进制可执行文件时，由于运行时库、调试符号、内联代码以及链接器未能剔除的无用函数等因素，最终文件往往比预期大得多。例如，即使是 Go 语言中一个简单的 'Hello World' 程序也可能生成接近 2 MB 的可执行文件，而 C++ 的对象初始化方式也会明显增大二进制体积。体积分析工具会将二进制文件拆解为各个组成部分，帮助开发者识别并消除占用最大的部分。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.analysis-tools.dev/tag/binary">27 Binary Static Analysis Tools, Linters, And Code Formatters | Analysis Tools</a></li>
<li><a href="https://stackoverflow.com/questions/28576173/reason-for-huge-size-of-compiled-executable-of-go">Reason for huge size of compiled executable of Go - Stack Overflow</a></li>
<li><a href="https://dev.to/sandordargo/object-initialization-and-binary-sizes-edf">Object initialization and binary sizes - DEV Community</a></li>

</ul>
</details>

**标签**: `#developer-tools`, `#binary-analysis`, `#embedded-systems`, `#code-optimization`, `#systems-programming`

---

<a id="item-19"></a>
## [用人工审查作为使用 AI 生成代码的理由并不成立](https://softwaremaxims.com/blog/reviewing-ai-code) ⭐️ 6.0/10

softwaremaxims.com 上一篇 2025 年的博客文章提出，常见的“因为有人会审查 AI 生成的代码所以没问题”这一说法，并不能成为依赖 AI 来编写代码的正当理由。 随着 AI 编程助手成为软件开发中的常用工具，对其输出进行审查的质量和严谨程度直接影响代码的可靠性、可维护性以及团队责任归属，因此这是工程师群体中广受争议的话题。 文章质疑“人工审查足以发现 AI 生成代码中问题”这一假设，不过所分享的内容仅提供了一个评论链接，没有完整正文，因此难以对其论点做详细评估。

rss · Lobsters · 7月18日 16:25

**背景**: 像 GitHub Copilot 这样的 AI 辅助编程工具和大语言模型能够快速生成大量代码，而为其使用辩护的一个常见理由是：在代码上线前仍然会有人类开发者进行审查。代码审查是软件工程中由来已久的实践，目的是发现缺陷、安全问题和设计缺陷，但批评者认为，审查大量机器生成的代码，与审查同事有意编写且真正理解的代码存在本质区别。

**标签**: `#AI-assisted-coding`, `#code-review`, `#software-engineering`, `#developer-productivity`, `#opinion`

---

<a id="item-20"></a>
## [使用 Lean 进行形式化验证入门（第一部分）](https://hashcloak.com/blog/tutorial-introduction-to-formal-verification-with-lean-(part-1)) ⭐️ 6.0/10

HashCloak 发布了一个教程系列的第一部分，介绍如何使用 Lean 定理证明器进行形式化验证。这篇文章带领读者了解基础概念，而不是展示全新的研究成果。 形式化验证让开发者能够用数学方法证明软件行为的正确性，这对密码学等对安全性和正确性要求极高的系统至关重要。一份易于上手的教程降低了那些希望采用这些技术但缺乏定理证明背景的工程师的门槛。 作为“第一部分”的入门教程，内容侧重于基础材料，尚未涉及高级证明或新颖成果。Lean 既是一个证明助手，也是一门基于带归纳类型的构造演算的函数式编程语言。

rss · Lobsters · 7月19日 17:35

**背景**: 形式化验证是指用数学方法证明系统满足特定性质，相比单纯的测试能提供更强的保证。Lean 是一个证明助手（也称交互式定理证明器），让用户能够陈述定理并构建可由机器检验的证明，同时它还是一门函数式编程语言。研究社区用它来形式化大量数学内容，并验证对正确性要求极高的软件。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Lean_(proof_assistant)">Lean (proof assistant) - Wikipedia</a></li>
<li><a href="https://lean-lang.org/papers/system.pdf">The Lean Theorem Prover</a></li>

</ul>
</details>

**标签**: `#formal-verification`, `#lean`, `#theorem-proving`, `#tutorial`, `#programming-languages`

---

<a id="item-21"></a>
## [研究 Linux 调度器以及度量指标为何重要](https://pradyun.net/blog/metrics_matter.html) ⭐️ 6.0/10

Pradyun 撰写的一篇博客文章分析了 Linux CPU 调度器的行为，并主张选择正确的评估指标对于有意义地衡量调度器性能至关重要。文章阐述了当使用错误的指标来比较调度策略时，基准测试结果如何可能产生误导。 调度器性能直接影响从桌面到数据中心的每一种 Linux 工作负载的系统响应速度、吞吐量和延迟，因此正确衡量它对于任何调优或比较系统的人都很重要。选择不当的指标可能导致工程师得出错误结论，并采用会损害实际性能的调度改动。 该分析强调，单一的聚合数字很少能真实反映调度器行为，因为像平均延迟这样的指标可能掩盖对交互式工作负载至关重要的尾部延迟和公平性权衡。有意义的评估需要将指标与工作负载的实际目标相匹配，而不是依赖通用的基准测试。

rss · Lobsters · 7月19日 00:45

**背景**: Linux 内核调度器决定哪个任务在每个 CPU 上运行以及运行多久，需要在公平性、延迟和吞吐量之间取得平衡。多年来，在 Linux 2.6.23 中合并的完全公平调度器（CFS）一直是默认调度器，但从内核 6.6 起，它被 Peter Zijlstra 提出的 EEVDF（最早合格虚拟截止时间优先）调度器取代。内核 6.12 还引入了 sched_ext，这是一种可扩展的调度器类，允许开发者用 eBPF 实现可插拔的 CPU 调度器，从而大大简化了调度策略的原型开发和基准测试。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Completely_Fair_Scheduler">Completely Fair Scheduler - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Earliest_eligible_virtual_deadline_first_scheduling">Earliest eligible virtual deadline first scheduling - Wikipedia</a></li>
<li><a href="https://www.kernel.org/doc/html/next/scheduler/sched-ext.html">Extensible Scheduler Class — The Linux Kernel documentation</a></li>

</ul>
</details>

**标签**: `#linux`, `#scheduling`, `#performance`, `#systems`, `#benchmarking`

---