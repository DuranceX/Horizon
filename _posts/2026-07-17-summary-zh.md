---
layout: default
title: "Horizon Summary: 2026-07-17 (ZH)"
date: 2026-07-17
lang: zh
---

> 从 56 条内容中筛选出 26 条重要资讯。

---

1. [Moonshot AI 发布 Kimi K3，2.8 万亿参数成最大开源模型](#item-1) ⭐️ 9.0/10
2. [Roc 编译器从 Rust 迁移到 Zig 的进展报告](#item-2) ⭐️ 8.0/10
3. [Puter 将 Firefox 编译为 WebAssembly，在另一个浏览器中运行](#item-3) ⭐️ 8.0/10
4. [Thinking Machines Lab 发布首个开放权重模型 Inkling](#item-4) ⭐️ 8.0/10
5. [LM Studio 推出 Bionic：面向本地开放模型的 AI 智能体](#item-5) ⭐️ 7.0/10
6. [《强化学习小书》：一本免费的教育指南](#item-6) ⭐️ 7.0/10
7. [arXiv 上关于数据科学数学基础的书籍](#item-7) ⭐️ 7.0/10
8. [用“经典”机器学习检测大模型生成的文本](#item-8) ⭐️ 7.0/10
9. [沉浸式线性代数：一本交互式在线教科书](#item-9) ⭐️ 7.0/10
10. [疲惫的人类审阅者：AI 辅助编程的隐性代价](#item-10) ⭐️ 7.0/10
11. [Torvalds 宣布 Linux 不会成为反 AI 项目](#item-11) ⭐️ 7.0/10
12. [Turso 正用 Rust 打造兼容 Postgres 的数据库](#item-12) ⭐️ 7.0/10
13. [存储编译器的真正含义：从位单元到 GDS 布局拼接](#item-13) ⭐️ 7.0/10
14. [Mozilla 发布 PACT：面向网络的匿名凭证系统](#item-14) ⭐️ 7.0/10
15. [Grok CLI 被曝悄悄将本地文件上传至云端](#item-15) ⭐️ 7.0/10
16. [微软开源上世纪 90 年代的漫画风格 IRC 客户端 Comic Chat](#item-16) ⭐️ 6.0/10
17. [诱饵字体：仅在特定缩放级别才可见的隐藏文字](#item-17) ⭐️ 6.0/10
18. [100 美元 AI 音乐视频对决：Claude 对阵 GPT-5.6 Sol，引发艺术价值争论](#item-18) ⭐️ 6.0/10
19. [OpenAI 确认 Codex/GPT-5.6 在完全访问模式下可能删除 $HOME 目录](#item-19) ⭐️ 6.0/10
20. [Lila Sciences 设想未来实验室将如同 AI 驱动的数据中心](#item-20) ⭐️ 6.0/10
21. [Forgejo v16.0 发布](#item-21) ⭐️ 6.0/10
22. [用宽指针实现 GCC 嵌套函数，无需 trampoline](#item-22) ⭐️ 6.0/10
23. [十月投票或将带来史上首个负闰秒](#item-23) ⭐️ 6.0/10
24. [Perl 5.44.0 发布，带来新特性与修复](#item-24) ⭐️ 6.0/10
25. [光靠修复漏洞无法解决软件安全危机](#item-25) ⭐️ 6.0/10
26. [为什么 ML 和 OCaml 适合编写编译器（1998）](#item-26) ⭐️ 6.0/10

---

<a id="item-1"></a>
## [Moonshot AI 发布 Kimi K3，2.8 万亿参数成最大开源模型](https://www.kimi.com/blog/kimi-k3) ⭐️ 9.0/10

Moonshot AI 发布了 Kimi K3，一款 2.8 万亿参数的开源权重模型，登顶最大开源模型榜单，领先于 DeepSeek-V4-Pro（1.6T）和 Kimi K2.6（约 1T）。该模型支持 100 万 token 的上下文窗口，在 Kimi 平台上的定价为每百万输入/输出 token 3 美元/15 美元。 K3 被定位为可与 OpenAI、Anthropic 等美国顶级系统抗衡的开源前沿模型，强化了中国实验室将高能力模型推入开源权重生态的趋势。它的规模和有竞争力的基准表现表明，前沿级别的智能正越来越多地在封闭商业 API 之外变得触手可及。 每百万 token 3 美元/15 美元的定价与 Anthropic 的 Sonnet 系列持平，对于中国开源权重模型来说明显偏高，不过评论者认为，如果 K3 确实达到前沿竞争水平，这个价格是合理的。Simon Willison 的实测中，渲染单个鹈鹕 SVG 花费了 25 美分（95 个输入 token、16658 个输出 token，其中 13241 个是推理 token），凸显了该模型对推理 token 的大量消耗。

hackernews · vincent_s · 7月16日 14:46 · [社区讨论](https://news.ycombinator.com/item?id=48935342)

**背景**: 开源权重模型是指参数可以下载并在自有硬件上运行的模型，不同于只能通过商业 API 访问的封闭前沿模型。像 K3 这样的现代大模型采用混合专家（MoE）架构，每次前向传播只激活总参数的一部分，从而相对于原始参数量降低了推理成本。Moonshot AI 是一家中国实验室，其早期的 Kimi K2 是 1 万亿参数的 MoE 模型，据报道公司今年早些时候筹集了约 5 亿美元，以支持训练和运行如此规模的模型。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://venturebeat.com/technology/chinas-moonshot-ai-releases-kimi-k3-the-largest-open-source-model-ever-rivaling-top-u-s-systems">China’s Moonshot AI releases Kimi K3, the largest open-source model ever, rivaling top U.S. systems | VentureBeat</a></li>
<li><a href="https://tensorops.ai/blog/what-is-mixture-of-experts-llm">LLM Mixture of Experts Explained — A 2026 Field Guide | TensorOps</a></li>
<li><a href="https://developer.tenten.co/kimi-k2-the-1-trillion-parameter-open-source-ai-that-lets-you-code-for-almost-nothing">Kimi K2: The 1- Trillion - Parameter Open-Source AI That Lets You...</a></li>

</ul>
</details>

**社区讨论**: Simon Willison 通过 OpenRouter API 分享了实测，指出由于大量消耗推理 token，这是他在中国模型上渲染成本最高的一次鹈鹕。其他人则讨论中国实验室是否在推行'商品化互补品'策略，以降低 AI 软件价值并从硬件和基础设施中获利，同时质疑投入数亿美元训练是否真能算作商品化；评论者还指出，只有当 K3 真能匹敌前沿竞争对手时，其异常高的定价才算合理。

**标签**: `#LLM`, `#open-weights`, `#AI/ML`, `#Moonshot AI`, `#frontier-models`

---

<a id="item-2"></a>
## [Roc 编译器从 Rust 迁移到 Zig 的进展报告](https://rtfeldman.com/rust-to-zig) ⭐️ 8.0/10

Richard Feldman 发布了一篇进展报告，介绍将 Roc 编程语言的编译器从 Rust 迁移到 Zig 的过程，详细说明了迁移的动机、权衡以及当前状态。基于 Zig 的新编译器仍处于早期阶段，目前主要适用于编程谜题这类小型任务。 这是一份罕见而坦诚的真实迁移案例，展示了重要的系统编程语言迁移过程，为在 Rust 的内存安全保证与 Zig 的快速增量编译等特性之间的权衡提供了实用见解。它推动了业界关于哪种系统编程语言最适合构建编译器的持续讨论。 文章声称 Zig 的 ReleaseSafe 模式通过运行时检查捕获释放后使用（use-after-free）错误，但这一具体保证受到读者质疑，他们在 Zig 文档中未找到相关支持。文中将 Zig 的增量编译和内存控制列为关键优势，而 OCaml 曾被用作原型测试平台，但最终未被选为实现语言。

hackernews · Lobsters · 7月16日 11:39 · [社区讨论](https://news.ycombinator.com/item?id=48933149)

**背景**: Roc 是一种快速的函数式编程语言，其编译器最初用 Rust 编写并以 LLVM 为目标。Rust 是一种以编译期内存安全保证著称的系统编程语言，而 Zig 是一种较新的系统编程语言，定位为 C 的改进替代品，强调简洁性、快速增量编译和手动内存控制。编译器是对性能敏感的程序，因此实现语言的选择需要在安全性、编译速度和底层控制之间做出权衡。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.roc-lang.org/">The Roc Programming Language</a></li>
<li><a href="https://en.wikipedia.org/wiki/Zig_(programming_language)">Zig (programming language) - Wikipedia</a></li>
<li><a href="https://chelseatroy.com/2021/11/28/introduction-to-the-roc-compiler/">Introduction to the Roc Compiler – Chelsea Troy</a></li>

</ul>
</details>

**社区讨论**: Rust 创始人 steveklabnik 对“生成机器码本质上需要不安全操作”的说法提出异议，认为只有热代码重载这类功能才真正需要它。其他评论者质疑 Zig 是否真如文中所说能捕获释放后使用错误，讨论了为何放弃成熟的 OCaml 原型，并指出 Zig 的增量编译是一项有吸引力的特性，而 Rust 未来可能也会实现。

**标签**: `#Zig`, `#Rust`, `#compilers`, `#systems-programming`, `#memory-safety`

---

<a id="item-3"></a>
## [Puter 将 Firefox 编译为 WebAssembly，在另一个浏览器中运行](https://simonwillison.net/2026/Jul/16/firefox-in-webassembly/#atom-everything) ⭐️ 8.0/10

Puter 将 Firefox/Gecko 浏览器引擎编译为 WebAssembly，使得完整的 Firefox 浏览器能够在 Chrome 等其他浏览器中运行，并提供了可在线访问的演示。该构建包含约 233MB 的 gecko.wasm 文件和 18MB 的压缩 chrome-assets 存档。 这展示了 WebAssembly 能力的扩展程度，证明像浏览器引擎这样庞大复杂的应用也能被移植到受沙箱限制的浏览器环境中运行。它预示着未来重量级原生软件可能完全在网页内交付和运行。 由于浏览器内运行的代码无法打开任意网络连接，所有流量都通过 Wisp 协议经由 Puter 服务器以 WebSocket 连接转发；经验证，HTTPS 站点的端到端加密有效，而普通 HTTP 请求仍以明文传输。团队之所以选择 Gecko，是因为它对单进程模式支持良好，而 AI 辅助开发估计耗费了价值约 25,000 美元的 Claude Opus 和 Fable 令牌，不过借助 Claude Max 订阅，实际花费低得多。

rss · Simon Willison · 7月16日 23:34

**背景**: WebAssembly（WASM）是一种底层二进制格式，让用 C++ 等语言编写的代码能在浏览器的安全沙箱内以接近原生的速度运行。Gecko 是 Mozilla 为 Firefox 开发的浏览器渲染引擎，虽然 Firefox 通常以多进程方式运行，但其对单进程模式的支持使得编译为 WASM 更为容易。Puter 是一个开源的、基于浏览器的云操作系统，能在网页内提供完整的类桌面体验。Wisp 协议是一种低开销方法，可在单个 WebSocket 上代理多个 TCP 和 UDP 连接，之所以需要它，是因为受沙箱限制的浏览器代码无法直接建立原始网络连接。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/MercuryWorkshop/wisp-protocol">GitHub - MercuryWorkshop/ wisp - protocol : Wisp is a low-overhead...</a></li>
<li><a href="https://firefox-source-docs.mozilla.org/overview/gecko.html">Gecko — Firefox Source Docs documentation</a></li>
<li><a href="https://itsfoss.com/news/puter-os/">Puter is a Complete, Fully Functional OS that Runs in Your Web Browser</a></li>

</ul>
</details>

**标签**: `#WebAssembly`, `#Firefox`, `#browsers`, `#systems`, `#web-development`

---

<a id="item-4"></a>
## [Thinking Machines Lab 发布首个开放权重模型 Inkling](https://simonwillison.net/2026/Jul/16/inkling/#atom-everything) ⭐️ 8.0/10

Mira Murati 的 Thinking Machines Lab 发布了 Inkling，这是一个采用 Apache-2.0 许可证的多模态混合专家（Mixture-of-Experts）Transformer 模型，总参数量为 9750 亿、激活参数量为 410 亿，训练数据涵盖 45 万亿个文本、图像、音频和视频 token。他们还预告了更小的 Inkling-Small 版本（总参数 2760 亿、激活 120 亿），但该模型仍在测试中，完成后才会发布权重。 这是由前 OpenAI 首席技术官创立的高关注度实验室发布的首个开放权重模型，其宽松的 Apache-2.0 许可证为美国开放权重生态系统带来了一个新的大规模竞争者，与 NVIDIA Nemotron 和 Gemma 4 并列，并可与来自中国的开放模型相抗衡。它标志着开放可用、可商用的基础模型持续发展，开发者可以自由定制这些模型。 Thinking Machines 明确表示 Inkling 并非当前最强的模型，而是定位为可通过其 Tinker 训练平台进行微调的强大基础模型，重点突出多模态能力和高效推理。值得注意的是，该模型的模型卡（model card）和训练数据文档异常简略，数据文档仅含糊地提到使用了公共领域内容、来自开放互联网的公开可用内容以及第三方数据集。

rss · Simon Willison · 7月16日 15:35

**背景**: 混合专家（MoE）模型包含许多专门的子网络（专家），但每个输入 token 只激活其中一小部分，因此模型总参数量可以非常庞大，同时保持较低的单 token 计算成本——这正是 Inkling 总参数达 9750 亿但仅激活 410 亿参数的原因。开放权重意味着训练好的模型参数可以公开下载，而 Apache-2.0 许可证允许免费商用、定制和再分发，且没有 copyleft 限制。Thinking Machines Lab 由前 OpenAI 首席技术官 Mira Murati 创立，团队还包括其他知名的前 OpenAI 研究员。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.ghacks.net/2026/07/16/thinking-machines-lab-releases-inkling-a-975-billion-parameter-open-weights-ai-model-under-apache-2-0/">Thinking Machines Lab Releases Inkling, a 975 Billion Parameter Open ...</a></li>
<li><a href="https://en.wikipedia.org/wiki/Thinking_Machines_Lab">Thinking Machines Lab - Wikipedia</a></li>
<li><a href="https://huggingface.co/blog/moe">Mixture of Experts Explained</a></li>

</ul>
</details>

**标签**: `#open-weights`, `#LLM`, `#mixture-of-experts`, `#multimodal-AI`, `#Thinking-Machines-Lab`

---

<a id="item-5"></a>
## [LM Studio 推出 Bionic：面向本地开放模型的 AI 智能体](https://lmstudio.ai/blog/introducing-lm-studio-bionic) ⭐️ 7.0/10

LM Studio 发布了 Bionic，这是一款可在本地运行开放权重模型的智能体框架，用于处理编码和文档任务；它提供了 'Code' 和 'Work' 等项目类型，并在 Work 项目中对智能体的每一次改动自动创建检查点。 Bionic 将智能体式的编码和文档工作流带到完全运行于用户本地机器上的模型，吸引那些希望控制成本、保护数据隐私并摆脱封闭云端 API 依赖的用户。它反映出本地大模型正逐渐成为日常计算任务实用接口的更大趋势。 创始人邀请用户使用 GLM 5.2、Kimi K2.6 和 Kimi Coder K2.7 等模型试用 Bionic，实际测试者则通过指向已有的 LM Studio 模型库运行了 Qwen3.6 35B 等模型。早期用户指出了一些不足，包括锁定单一目录而无法进行系统级访问、缺少本地网络搜索、不支持 SSH，以及没有可见的模型加载进度指示。

hackernews · minimaxir · 7月16日 20:18 · [社区讨论](https://news.ycombinator.com/item?id=48939662)

**背景**: LM Studio 是一款桌面应用，可在个人电脑上私密地本地运行 Llama、Qwen、DeepSeek 和 gpt-oss 等大语言模型。'智能体框架'（agent harness）是让模型能够自主执行操作的软件支架，比如读取文件、编写代码和完成多步骤任务，而不仅仅是回答问题。'开放权重'模型指的是训练好的参数可自由下载和运行的模型，但其训练代码和数据未必公开，这一点使其区别于完全开源的模型。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://lmstudio.ai/">LM Studio - Local AI on your computer</a></li>
<li><a href="https://kilo.ai/open-source-vs-open-weight-models">Kilo - Open Source vs Open Weight AI Models Explained</a></li>
<li><a href="https://kilo.ai/">Kilo – Open Source AI Coding Agent in IDE, CLI and Cloud</a></li>

</ul>
</details>

**社区讨论**: 创始人 Yagil 积极参与讨论并向测试者提供额度，实际用户称赞其类似 Codex 的熟悉界面和顺畅的上手体验，同时也列出了单一目录锁定、缺少 SSH 和本地网络搜索等具体不足。一些评论者质疑为何要选择 Bionic 而非现有框架（认为其吸引力在于企业级的成本和数据安全控制），也有人畅想本地模型加上优秀框架可能让大模型成为主流的计算接口。

**标签**: `#LLM`, `#local-models`, `#AI-agents`, `#developer-tools`, `#open-models`

---

<a id="item-6"></a>
## [《强化学习小书》：一本免费的教育指南](https://github.com/alxndrTL/little-book-rl/) ⭐️ 7.0/10

一位名为 alxndrTL 的开发者在 GitHub 上发布了《强化学习小书》，这是一份简明的开源教育资源，旨在介绍强化学习的基础知识。该书在 Hacker News 上分享后获得了 103 个赞和 13 条评论。 免费且简洁的教育资料降低了学习者理解强化学习的门槛，而强化学习已成为现代人工智能的核心领域，包括用于训练大语言模型的 RLHF 等技术。这类易于获取的资源能帮助新手在挑战更进阶的教材前打好基础。 该书定位为入门资源，据一位评论者所述，它聚焦于强化学习的核心概念，但省略了信息论基础，例如从相对熵推导信任域方法的内容。评论者建议将其作为阅读 Nathan Lambert 的《RLHF 手册》等更全面著作前的预读材料。

hackernews · mustaphah · 7月16日 22:27 · [社区讨论](https://news.ycombinator.com/item?id=48941104)

**背景**: 强化学习（RL）是机器学习的一个分支，智能体通过与环境交互并接收奖励或惩罚来学习决策，目标是最大化累积的长期奖励。它常被描述为通过试错来学习，类似于人类和动物的学习方式。讨论中提到的信任域方法是一类强化学习优化算法，它限制策略在每次更新时的变化幅度，以保持训练的稳定性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.phaidra.ai/blog/From-Theory-to-Practice-The-Basics-of-Reinforcement-Learning">From Theory to Practice: The Basics of Reinforcement Learning</a></li>
<li><a href="https://mpnikhil.substack.com/p/reinforcement-learning-fundamentals">Reinforcement Learning Fundamentals : From Traditional RL to...</a></li>

</ul>
</details>

**社区讨论**: 评论者普遍认为这本书是有用的入门读物，同时也提出了实质性的批评，特别是它缺乏信息论基础以及与信任域方法和相对熵的联系。另有人推荐将其作为 Nathan Lambert《RLHF 手册》的良好预读材料，还有人质疑试错学习的生物学类比是否完全反映了真实操作性行为的运作方式。

**标签**: `#reinforcement-learning`, `#machine-learning`, `#education`, `#open-source`, `#AI`

---

<a id="item-7"></a>
## [arXiv 上关于数据科学数学基础的书籍](https://arxiv.org/abs/2607.11938) ⭐️ 7.0/10

arXiv 上一本名为《数据科学的数学》的书籍讲解了数据科学背后的数学基础，开篇即探讨人类直觉在高维空间中如何失效（尖刺性、体积集中等），以及这如何影响模型拟合、训练和优化。 对高维几何、优化和统计学建立扎实的直觉，是理解随机梯度下降等现代机器学习技术的关键，而这类基础性资源能帮助从业者超越炒作、走向真正的理解。 该书重点讲解了诸如测度集中等现象——即高维空间上函数的取值会紧密聚集在其均值附近——并将这些数学概念与高维模型、优化搜索空间等实际主题联系起来。

hackernews · Anon84 · 7月16日 20:38 · [社区讨论](https://news.ycombinator.com/item?id=48939896)

**背景**: 在高维空间中，基于二维或三维建立的几何直觉往往会失效：体积会集中在形状表面附近，距离的行为也违反直觉，这些现象由概率论和测度论中的“测度集中”原理所刻画。这些效应直接影响机器学习模型的训练方式以及优化算法在搜索空间中的探索方式，因此高维几何成为数据科学教育的核心主题。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://web.math.princeton.edu/~naor/homepage+files/Concentration+of+Measure.pdf">Concentration of Measure</a></li>
<li><a href="https://math.uh.edu/~dlabate/MDS_2.pdf">MATH 6397 - Mathematics of Data Science From signal processing to...</a></li>

</ul>
</details>

**社区讨论**: 评论者称赞该书开篇聚焦高维直觉，认为这是理解随机梯度下降和现代模型的关键基础；同时他们也在争论“数据科学”究竟指什么——有人指出这是一个含义过载的术语，最实用的定义是能够基于数据做出具有组织层面影响的决策，另一人则认为深入掌握基础统计学是数据科学家避免代价高昂错误的最重要技能。

**标签**: `#data-science`, `#mathematics`, `#statistics`, `#machine-learning`, `#education`

---

<a id="item-8"></a>
## [用“经典”机器学习检测大模型生成的文本](https://blog.lyc8503.net/en/post/llm-classifier/) ⭐️ 7.0/10

一篇博客文章详细介绍了如何使用传统机器学习技术（而非深度神经网络）构建文本分类器，以区分大模型生成的文本和人类撰写的文本。作者记录了这套方法、实验结果以及此类检测的现实局限。 随着大模型生成的内容充斥互联网，可靠的检测工具对教育、出版和内容审核越来越有价值。这篇文章表明，轻量级的经典方法可以作为重量级模型之外更廉价、更透明的替代方案，但同时也引发了关于检测是否根本可行的争论。 该分类器体积足够小，以至于有评论者建议它可以放进浏览器扩展中，对每个段落进行检测并标记大模型文本，就像广告拦截器一样。检测依赖于统计上的“破绽”，例如当前模型偏好的句式和措辞，这意味着它捕捉的是当今模型的特征，而非一种永久、与模型无关的信号。

hackernews · uneven9434 · 7月16日 16:41 · [社区讨论](https://news.ycombinator.com/item?id=48936880)

**背景**: 大模型文本检测通常被表述为一项分类任务，即把机器撰写的文本与人类撰写的文本区分开来。检测方法一般分为黑盒方法（通过 API 级别的访问分析输出）和白盒方法（利用模型内部访问）。经典机器学习指的是非深度学习技术，例如基于特征的监督式分类器，它们在带标签的样本上训练和测试后再应用于新文本。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://cacm.acm.org/research/the-science-of-detecting-llm-generated-text/">The Science of Detecting LLM - Generated Text – Communications of...</a></li>
<li><a href="https://ar5iv.labs.arxiv.org/html/2310.14724">[2310.14724] A Survey on LLM - generated Text Detection : Necessity...</a></li>
<li><a href="https://medium.com/data-from-the-trenches/text-classification-the-first-step-toward-nlp-mastery-f5f95d525d73">Text Classification : The First Step Toward NLP Mastery | Medium</a></li>

</ul>
</details>

**社区讨论**: 评论者大多对可靠检测 AI 文本的可行性持怀疑态度，有几人称其是一场注定失败的战斗，堪比“塔罗牌占卜”，因为文本缺乏足够的信息密度来证明来源。一个反复出现的重新定义是，与其判断作者身份，不如衡量写作所投入的努力或质量；另一些人则指出人类仍是最好的检测者，并提出了浏览器插件等实用扩展的设想。

**标签**: `#machine-learning`, `#llm-detection`, `#nlp`, `#text-classification`, `#ai-content`

---

<a id="item-9"></a>
## [沉浸式线性代数：一本交互式在线教科书](https://immersivemath.com/ila/) ⭐️ 7.0/10

Immersive Math 推出的《沉浸式线性代数》是一本免费的在线教科书（2015 年出版），它通过读者可以直接操作的交互式图形以及贯穿全文的解释性工具提示来讲解线性代数。 这本书展示了交互式、可视化的呈现方式如何让抽象的数学概念更加直观，为数学密集型学科的教育材料如何构建提供了一个范本。对于任何学习或教授线性代数的人来说，它都是一份宝贵的资源。 每一章都以一个交互式图形开篇，正文使用悬停工具提示来就地解释术语和符号，其清晰的结构引导读者从一个章节顺畅过渡到下一个章节。全部内容通过网页在 immersivemath.com/ila/ 上呈现。

hackernews · srean · 7月16日 15:32 · [社区讨论](https://news.ycombinator.com/item?id=48935951)

**背景**: 线性代数是数学的一个分支，研究向量、矩阵和线性变换，是计算机图形学、机器学习和工程学等领域的基础。它的概念往往抽象且难以可视化，因此让读者能够旋转、拖动和调整几何对象的交互式图形，相比传统教科书中的静态图示，能够显著帮助建立直觉。

**社区讨论**: 社区反响热烈而正面，评论者希望自己还是学生时就有这样的资源，并期待统计学、概率论和机器人学也能有类似的交互式呈现方式。有几位提到，如今大语言模型和新工具让制作这类直观图示变得容易得多，还有一位建议扩展这一理念，为任何被高亮的句子、方程或符号添加“解释这个”的弹出选项。

**标签**: `#linear-algebra`, `#education`, `#interactive-learning`, `#mathematics`, `#visualization`

---

<a id="item-10"></a>
## [疲惫的人类审阅者：AI 辅助编程的隐性代价](https://pydantic.dev/articles/the-human-in-the-loop-is-tired) ⭐️ 7.0/10

Pydantic 博客上发表的一篇文章认为，LLM 辅助编程自动化了亲手写代码带来的那些小小成就感，却让开发者背上了不断审阅 AI 生成结果的沉重认知负担。文章提出了“人类奖励函数问题”这一概念，用来描述解决问题和看到代码编译通过所带来的多巴胺快感，正被枯燥的审阅工作所取代。 随着 AI 编程工具走向主流，这篇文章揭示了生产力指标常常忽略的心理和认知负面影响，即开发者的倦怠感以及对编程本身的疏离。这关系到团队如何采用 AI 工具，也关系到软件工程师长期的动力与身心健康。 核心论点将这种转变描述为开发者从主动创造者变成了不间断的审阅者，AI 以机器速度生成代码，而人类只能以人类的速度去评估。文章还谈及了由 AI 驱动的网络和线上内容日益“同质化”的更广泛现象。

hackernews · haritha1313 · 7月17日 00:21 · [社区讨论](https://news.ycombinator.com/item?id=48942000)

**背景**: “人在回路中”（HITL）指的是人类主动参与监督或批准自动化系统决策的系统，遵循“AI 提议、人类决定”的模式。在 LLM 辅助编程中，这通常意味着 AI 写代码、开发者审阅并批准，但审阅 AI 生成的代码与自己写代码带来的认知负担不同，因为你无法从中推断作者的意图、风格或推理过程。由于 AI 生成看起来干净整洁的代码的速度远快于人类仔细评估的速度，生成速度与评估速度之间的差距正是认知负担累积之处。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.ibm.com/think/topics/human-in-the-loop">What Is Human In The Loop (HITL)? | IBM</a></li>
<li><a href="https://karaxai.com/posts/working-at-machine-speed-the-cognitive-squeeze/">Working at Machine Speed: The Cognitive Squeeze</a></li>
<li><a href="https://generativeai.pub/i-review-more-code-than-i-write-now-a39f5ed2ff51">I Review More Code Than I Write Now | by Revant | Generative AI</a></li>

</ul>
</details>

**社区讨论**: 讨论褒贬不一：一些读者强烈认同“人类奖励函数”这一说法，而有评论者反驳称，把 LLM 当作单纯的代码生成器而非自主智能体（只运行单个已规划好的会话并盯着它执行），反而让编程重新变得愉快。还有人注意到互联网上正蔓延的“千篇一律感”，并有人略带讽刺地指出这篇文章本身似乎就是 AI 写的，读起来因此更让人疲惫。

**标签**: `#AI-assisted-development`, `#LLM`, `#developer-experience`, `#software-engineering`, `#commentary`

---

<a id="item-11"></a>
## [Torvalds 宣布 Linux 不会成为反 AI 项目](https://simonwillison.net/2026/Jul/16/linus-torvalds/#atom-everything) ⭐️ 7.0/10

在 Linux 内核邮件列表上，Linus Torvalds 表示 Linux 不是反 AI 项目，并称他作为最高级别维护者愿意在这个问题上强硬表态，告诉持异议者可以去 fork 项目或者直接离开。他宣称 AI 是一个有用的工具，而它是否有用在今天已经不再是一个问题。 作为软件界最具影响力的人物之一以及 Linux 的创始人，Torvalds 明确表态支持 AI，标志着 AI 工具正在开源基础设施开发的最高层面被接受。在一个对 AI 态度分歧的社区里，他的立场分量很重。 这番话是针对 Linux media 邮件列表上关于 AI 负面情绪讨论的回应。Torvalds 将他认为已有定论的「AI 是否有用」问题，与诸如 AI 经济最终会呈现何种面貌等尚无定论的问题区分开来。

rss · Simon Willison · 7月16日 13:26

**背景**: Linus Torvalds 于 1991 年创建了 Linux 内核，至今仍是其最高级别维护者，对项目接受什么拥有最终决定权。在开源软件中，「fork」指合法地复制一个项目的源代码，以此为基础另起一个独立管理的新项目，这是贡献者不认同项目方向时的标准做法。Torvalds 的言论发表在 lore.kernel.org 上，那是讨论内核开发的 Linux 内核邮件列表公开归档。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.theregister.com/ai-and-ml/2026/07/15/linus-torvalds-tells-ai-haters-to-fork-off/5271894">Linux supremo says contributors opposed to AI use can 'just walk away'</a></li>
<li><a href="https://en.wikipedia.org/wiki/Fork_(software_development)">Fork (software development) - Wikipedia</a></li>

</ul>
</details>

**标签**: `#AI`, `#open-source`, `#Linux`, `#Linus Torvalds`, `#developer-tools`

---

<a id="item-12"></a>
## [Turso 正用 Rust 打造兼容 Postgres 的数据库](https://turso.tech/blog/a-new-modern-version-of-postgres-in-rust) ⭐️ 7.0/10

Turso 宣布正在用 Rust 打造一个现代化、兼容 Postgres 的数据库，并采用一个被其比作“数据库界 LLVM”的中间编译层。这是继该公司此前用 Rust 从零重写 SQLite 之后的又一举措。 一个基于 Rust 的现代 Postgres 替代方案，可能为全球最广泛使用的数据库生态之一带来内存安全、异步 I/O 以及可复用的数据库编译层。如果成功，它可能影响未来数据库引擎的架构方式，并为工程师提供更安全的全新基础。 该项目的核心是一个类似 LLVM 的数据库中间表示，即一个可移植、与语言无关、能在多轮优化中处理并作为通用编译目标复用的层。这只是一个进行中的公告，而非已发布并经生产验证的产品，因此实际性能和 Postgres 兼容性仍有待检验。

rss · Lobsters · 7月16日 15:39

**背景**: Postgres 是最流行的开源关系型数据库之一，而 Turso 是一家以用 Rust 从零重写 SQLite 而闻名的公司，其成果具备并发写入（MVCC）和异步 I/O 等特性。LLVM 是一套编译器基础设施，围绕与语言无关的中间表示构建，充当源语言与机器码之间可移植、可优化的层。将这一理念应用到数据库，意味着创建一个查询引擎可以面向和优化的通用中间层，而不必让每个数据库都重新发明这套机制。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/tursodatabase/turso">GitHub - tursodatabase/ turso : Turso is an in-process SQL database ...</a></li>
<li><a href="https://docs.turso.tech/sdk/rust/quickstart">Get started with Turso and Rust in a few simple steps.</a></li>
<li><a href="https://en.wikipedia.org/wiki/LLVM">LLVM - Wikipedia</a></li>

</ul>
</details>

**标签**: `#databases`, `#rust`, `#postgres`, `#systems-programming`, `#open-source`

---

<a id="item-13"></a>
## [存储编译器的真正含义：从位单元到 GDS 布局拼接](https://thecloudlet.github.io/technical/compiler/memory-compiler/) ⭐️ 7.0/10

一篇技术解析文章详细讲解了存储编译器的实际工作原理，梳理了从单个 SRAM 位单元一直到拼接生成完整存储块的 GDS 版图这一完整流程。文章揭开了半导体与 EDA 设计中这一常被视为黑盒的专门领域的神秘面纱。 存储编译器是芯片设计中至关重要却鲜为人知的一环，它能自动生成几乎出现在每一款现代 SoC 中的存储 IP 模块，因此理解它有助于工程师权衡面积、功耗和时序。把这一小众领域讲清楚，降低了进入 VLSI 与 EDA 领域的门槛。 文章解释了存储编译器如何接收存储容量、速度、功耗和时序等输入参数，再通过块拼装和物理拼接技术，用重复的位单元组装成阵列，最终生成 GDS 版图。这类流程中最常用的基本构件是传统的 6T SRAM 位单元，因其面积紧凑、结构简单而广受青睐。

rss · Lobsters · 7月16日 13:01

**背景**: 存储编译器是一种 EDA 软件，能根据设计者的需求自动生成存储电路（如 SRAM、ROM 或 DRAM），并输出可直接使用的 IP 模块。SRAM 由位单元构成，位单元是最小的存储单元，通过复制排列成庞大的阵列，其中 6T（六晶体管）单元是业界标准。GDS 是描述芯片最终物理版图、并交付给晶圆厂的标准文件格式，而拼接则指将重复的单元图案排列组合以形成完整版图。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://anysilicon.com/memory-compiler/">The Ultimate Guide to Memory Compiler - AnySilicon</a></li>
<li><a href="https://www.researchgate.net/publication/302212796_Introduction_to_SRAM">(PDF) Introduction to SRAM</a></li>

</ul>
</details>

**标签**: `#semiconductors`, `#EDA`, `#chip-design`, `#memory-compiler`, `#VLSI`

---

<a id="item-14"></a>
## [Mozilla 发布 PACT：面向网络的匿名凭证系统](https://hacks.mozilla.org/2026/06/pact-anonymous-credentials-for-the-web/) ⭐️ 7.0/10

2026 年 6 月 23 日，Mozilla 公布了 PACT（Private Access Control Tokens，私有访问控制令牌）的设计方案，这是一套匿名凭证系统，可让网站在不收集用户身份或设备信息的情况下验证真人身份并防御机器人。PACT 由 Mozilla、Cloudflare 和 Chrome 在 2026 年 5 月的一次 W3C 社区组会议上共同勾勒出雏形。 PACT 有望为依赖追踪或指纹识别的侵入式机器人检测和真人验证方法提供一种保护隐私的替代方案，而 Mozilla、Cloudflare 和 Chrome 的共同参与预示着它可能在整个网络范围内获得标准级别的广泛采用。对于任何关注在网络安全与用户隐私之间取得平衡的人来说，这都意义重大。 PACT 基于匿名信用令牌（Anonymous Credit Tokens，ACT）构建，其工作方式不同于传统的 Privacy Pass 方案：ACT 不是发放一批一次性令牌，而是支持带有状态的凭证，凭证内部可以保存一个计数器。这种有状态的设计使得单个凭证能够在保持匿名性的同时追踪使用情况。

rss · Lobsters · 7月17日 06:01

**背景**: 匿名凭证系统是一种保护隐私的认证机制，允许用户在不透露自身身份的情况下证明自己持有有效凭证。Privacy Pass 是一种现有方案，它发放加密令牌，使用户能够在不被跨站点追踪的情况下证明自己是可信的（例如已经通过了验证码）。PACT 通过负责制定网络技术的标准组织 W3C 延续并扩展了这一方向的工作，目标是让网站能够在不进行传统验证通常所需的身份和设备数据收集的前提下区分真人与机器人。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://hacks.mozilla.org/2026/06/pact-anonymous-credentials-for-the-web/">PACT : Anonymous Credentials for the Web - Mozilla Hacks - the...</a></li>
<li><a href="https://browserinsight.net/blog/anonymous-credentials-web">Anonymous Credentials : Proving Humanity Without... - BrowserInsight</a></li>
<li><a href="https://gigazine.net/gsc_news/en/20260624-mozilla-pact/">What is PACT , the human verification system that will change the web ...</a></li>

</ul>
</details>

**标签**: `#web-security`, `#privacy`, `#cryptography`, `#authentication`, `#mozilla`

---

<a id="item-15"></a>
## [Grok CLI 被曝悄悄将本地文件上传至云端](https://newsletter.pragmaticengineer.com/p/the-pulse-groks-cli-caught-uploading) ⭐️ 7.0/10

The Pragmatic Engineer 的新闻通讯报道称，xAI 的 Grok CLI 被发现将本地文件上传至云端，另有研究者指出该 npm 包 0.2.93 版本会静默地将 before_codebase.tar.gz 和 after_codebase.tar.gz 压缩包上传到 xAI 的 Google Cloud 仓库。有一份报告甚至描述该工具把用户的整个主目录上传到了 Google Cloud Storage。 AI 编程 CLI 通常拥有对开发者文件系统的广泛访问权限，因此静默上传整个代码库或主目录可能泄露专有源代码、API 密钥等敏感信息，动摇人们对这类广泛使用工具的信任。对于任何采用 AI 智能体的开发者或企业来说，这都很重要，因为它凸显了这些助手拥有多大的隐式数据访问权限。 报告显示这些上传是通过用户明确操作之外的独立通道进行的，缓解建议包括始终使用 grok upload --dry-run 进行测试并避免默认递归上传。该期通讯还涵盖了工程负责人对代码审查负担持续增加的担忧，以及企业开发者对高昂企业定价的意外反应。

rss · The Pragmatic Engineer · 7月16日 16:48

**背景**: Grok CLI 是一款与 xAI 的 Grok 模型相关联的终端 AI 编程助手，提供诸如用于只读探索和 AI 驱动实现规划的 Plan Mode 等功能，类似于 Claude Code 之类的工具。这类 CLI 智能体直接在开发者的终端中运行，能够读取、写入和执行本地文件系统中的文件以完成编程任务。由于它们需要文件访问权限才能发挥作用，因此它们在本地读取的内容与传输到远程服务器的内容之间的界限，是一个关键的隐私与安全问题。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.remio.ai/post/xai-grok-cli-reportedly-silently-uploads-entire-codebases-and-user-keys">xAI Grok CLI Reportedly Silently Uploads Entire Codebases and User...</a></li>
<li><a href="https://asibiont.com/en/blog/vibe-coding-v-deystvii-kak-grok-cli-sluchayno-zagruzil-vsyu-domashnyuyu-direktoriyu-v-gcs">Grok CLI Uploaded My Entire Home Directory to... — ASI Biont Blog</a></li>
<li><a href="https://www.grokcli.dev/">Grok CLI</a></li>

</ul>
</details>

**标签**: `#AI-tools`, `#security`, `#privacy`, `#developer-tools`, `#CLI`

---

<a id="item-16"></a>
## [微软开源上世纪 90 年代的漫画风格 IRC 客户端 Comic Chat](https://opensource.microsoft.com/blog/2026/07/16/microsoft-comic-chat-is-now-open-source/) ⭐️ 6.0/10

微软公开了 Microsoft Comic Chat 的源代码，这款图形化 IRC 客户端能将文字对话自动渲染成漫画连环画，最早于 1996 年随 Internet Explorer 3.0 一同发布。此次开源由 Robert Standefer 在 Scott Hanselman 的支持下经过六年努力促成，而软件的原始开发者是 DJ Kurlander。 将一款上世纪 90 年代的软件开源，为研究和探索保留了互联网与界面设计史上的重要一角，避免它沦为无人维护的弃置软件。它也彰显了那个时代敢于尝试非常规创意（比如把聊天室变成漫画）的精神，而许多开发者认为这种精神在如今受限的产品开发中已经缺失。 Comic Chat 被本地化为 24 种语言并随 Windows 98 捆绑发布，它扩展了 IRC 协议，让用户可以显式地指定漫画角色的外观和表情，而不仅依赖上下文推断。这一协议扩展也是它在部分传统 IRC 社区中不受欢迎的原因之一。

hackernews · Lobsters · 7月16日 16:06 · [社区讨论](https://news.ycombinator.com/item?id=48936426)

**背景**: Internet Relay Chat（IRC）是一种诞生于 1988 年的基于文本的实时消息协议，它将对话组织成频道，至今仍是在线聊天历史的基石。Microsoft Comic Chat（后更名为 Microsoft Chat）是一款图形化 IRC 客户端，它不显示纯文本，而是将每位参与者绘制成带对话气泡和表情的卡通角色，从对话生成漫画连环画式的布局。开源意味着公开发布程序的底层源代码，使任何人都能阅读、修改并在其基础上进行开发。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://opensource.microsoft.com/blog/2026/07/16/microsoft-comic-chat-is-now-open-source/">Microsoft Comic Chat is now open source | Microsoft Open Source...</a></li>
<li><a href="https://ww-article-cache-1.s3.amazonaws.com/en/Microsoft_Comic_Chat">ww-article-cache-1.s3.amazonaws.com/en/ Microsoft _ Comic _ Chat</a></li>
<li><a href="https://medium.com/@1kg/did-you-know-how-irc-paved-the-way-for-modern-chat-platforms-df1887265f50">How Internet Started Chatting !. The terrain of our digital... | Medium</a></li>

</ul>
</details>

**社区讨论**: 讨论气氛温馨而充满怀旧，包括促成此次开源的 Robert Standefer 的第一人称叙述，以及一些个人经历，比如一位评论者受 Comic Chat 启发在 2008 年创办的漫画创作创业项目 Chogger 曾发展到每月 3 万用户。其他人补充了历史背景，指出该客户端因扩展协议而在传统 IRC 圈子里颇受非议，同时许多人赞赏它跳出框架的创意以及它曾获得的机构支持。

**标签**: `#open-source`, `#microsoft`, `#internet-history`, `#IRC`, `#legacy-software`

---

<a id="item-17"></a>
## [诱饵字体：仅在特定缩放级别才可见的隐藏文字](https://www.mixfont.com/experiments/decoy-font) ⭐️ 6.0/10

mixfont.com 上的一个排版实验创造了一种“诱饵字体”，每个字符都藏有第二层信息，只有在特定的缩放或细节级别下才能被读出，可见的字体轮廓显示一句话（如“SORRY ROBOT”），而底层的阴影则显示另一句话（如“HAPPY HUMAN”）。 这个实验直观地展示了多模态视觉模型如何因图像分辨率不同而与人类以不同方式感知文字，揭示了这些模型在处理视觉细节时的独特行为和局限性。 社区测试发现这个把戏很脆弱：GPT、Claude、Gemini 和 Gemma 会根据缩放比例读出不同的文字，而只要对图像进行一两次降采样就能让模型读出隐藏层，这意味着“反 AI”的说法其实并不能真正阻止 AI 读取任何一条信息。

hackernews · ray__ · 7月16日 16:18 · [社区讨论](https://news.ycombinator.com/item?id=48936584)

**背景**: 多模态大语言模型（视觉语言模型）以图像和文本作为输入并生成文本输出，能够回答关于视觉内容的问题或执行类似 OCR 的文字提取。这些模型在处理前会在内部将图像缩放或降采样到固定分辨率，因此它们“看到”的细节层次是一种渲染选择，而非完整分辨率的图像，这正是这种字体所利用的特性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://huggingface.co/blog/vlms">Vision Language Models Explained</a></li>
<li><a href="https://github.com/PaddlePaddle/PaddleOCR">GitHub - PaddlePaddle/PaddleOCR: Turn any PDF or image document...</a></li>

</ul>
</details>

**社区讨论**: 评论者认为这个项目“非常酷”，但一致认为它其实并不能阻止 AI 读取文字；有几位直接测试了 GPT、Claude、Gemini 和 Gemma，指出模型在不同缩放比例下会读出不同的信息，而降采样到更小尺寸（如 150x150）会翻转哪层文字可读，从而把整个效果归结为一种“细节层次”现象。

**标签**: `#typography`, `#multimodal-AI`, `#vision-models`, `#creative-coding`, `#LLM-limitations`

---

<a id="item-18"></a>
## [100 美元 AI 音乐视频对决：Claude 对阵 GPT-5.6 Sol，引发艺术价值争论](https://www.tryai.dev/blog/ai-music-video-arena-claude-vs-gpt-5.6) ⭐️ 6.0/10

tryai.dev 上的一篇博客对比了使用 Claude（Fable 5）和 OpenAI 的 GPT-5.6 Sol 工具生成 AI 音乐视频的效果，两者都以 100 美元预算制作了一段音乐视频。这篇文章及其引发的 Hacker News 讨论（221 分、260 条评论）演变成了一场关于 AI 生成创意内容的艺术与经济影响的更广泛辩论。 这场讨论凸显了人们对 AI 生成媒体是否具有真正艺术价值，以及它如何影响依赖商业创意工作谋生的艺术家生计的日益紧张的关注。随着生成式工具变得足够廉价，能在许多场景中取代人类创意劳动，它反映了整个行业更广泛的反思。 评论者指出，当前的 AI 输出往往过于字面化，直接照搬歌词，而没有构建出优秀音乐视频所具备的主题性叙事弧线，其成果只有在漫不经心地观看时才显得令人信服。据供应商文档描述，GPT-5.6 Sol 是 OpenAI 在 GPT-5.6 系列中的旗舰模型，面向复杂推理、编程和多步骤智能体任务。

hackernews · hershyb_ · 7月16日 20:03 · [社区讨论](https://news.ycombinator.com/item?id=48939524)

**背景**: 生成式 AI 工具如今能够根据文本提示生成视频、音乐和图像，这次对比将 Anthropic 的 Claude 与 OpenAI 的 GPT-5.6 Sol 放在一项实际创意任务中较量。音乐视频传统上将画面与歌曲结合，最优秀的作品运用主题性叙事，而非字面描绘歌词。有评论者提到的“Suno”是一款 AI 音乐生成服务，在此被用来指代那些表面上听起来合理、但经不起仔细推敲的 AI 产物。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://developers.openai.com/api/docs/models/gpt-5.6-sol">GPT - 5 . 6 Sol Model | OpenAI API</a></li>
<li><a href="https://openrouter.ai/openai/gpt-5.6-sol">GPT - 5 . 6 Sol - API Pricing & Benchmarks | OpenRouter</a></li>

</ul>
</details>

**社区讨论**: 社区大体持怀疑态度，认为尽管技术令人印象深刻，但成果缺乏真正的艺术价值，只是把歌曲中各种概念平淡地平均化。多位评论者提到这会对以创作谋生的中产艺术家群体造成经济伤害，另一些人则从哲学角度主张艺术本质上是人类的——根植于艺术家的故事、挣扎与处境——因此 AI 生成的内容无法打动他们。

**标签**: `#generative-ai`, `#ai-art`, `#music-video`, `#creative-industry`, `#ai-ethics`

---

<a id="item-19"></a>
## [OpenAI 确认 Codex/GPT-5.6 在完全访问模式下可能删除 $HOME 目录](https://simonwillison.net/2026/Jul/16/bad-codex-bug/#atom-everything) ⭐️ 6.0/10

OpenAI 的 Thibault Sottiaux 披露，针对 GPT-5.6 意外删除文件的多起报告展开的调查发现，问题多发生在 Codex 以完全访问模式运行且未启用沙箱保护时——模型试图覆盖 $HOME 环境变量来设置临时目录，却错误地删除了 $HOME。 这是一起真实的安全事故，说明当自主式 AI 编码代理获得不受限制的系统访问权限时，可能造成严重且不可逆的数据丢失，凸显了沙箱和审查机制对采用这类工具的开发者的重要性。 该故障需要在启用完全访问模式、且未开启沙箱和自动审查的条件下才会触发；OpenAI 正在更新启用完全访问模式时显示的开发者警告信息，以更清楚地提示授予代理无限制本地文件访问权的风险。

rss · Simon Willison · 7月16日 17:45

**背景**: Codex 是 OpenAI 的 AI 编码代理，能够在开发者的机器上执行命令，其完全访问模式会移除沙箱限制，使代理可以自由读取、写入和删除文件。在类 Unix 系统中，$HOME 是指向当前用户主目录的环境变量，因此当该变量为空或错误时，解析到 $HOME 的删除命令可能会抹掉用户的个人文件。沙箱和自动审查是用于在代理操作生效前对其进行隔离或核查的保护机制。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://windowsreport.com/gpt-5-6-codex-bug-can-wipe-your-entire-home-folde/">GPT-5.6 Codex Bug Can Wipe Your Entire Home Folde</a></li>
<li><a href="https://codex.danielvaughan.com/2026/03/30/codex-cli-docker-containerised-environments/">Codex CLI in Docker: Containerised Environments, Sandboxing and...</a></li>

</ul>
</details>

**标签**: `#coding-agents`, `#ai-safety`, `#codex`, `#generative-ai`, `#developer-tools`

---

<a id="item-20"></a>
## [Lila Sciences 设想未来实验室将如同 AI 驱动的数据中心](https://www.latent.space/p/the-lab-of-the-future-should-feel) ⭐️ 6.0/10

在 Latent Space 播客的访谈中，Lila Sciences 的 Andy Beam 和 Rafa Gómez-Bombarelli 提出了他们的核心观点：由机器人组成、AI 驱动的自动化实验室所进行的科学实验，是下一个尚未被开发的重要训练数据来源。他们认为未来的实验室应当像数据中心一样运作，持续产生实验数据来训练 AI 系统。 随着可用于训练大模型的高质量互联网文本数据日益枯竭，这一观点将物理科学实验指向了新的数据前沿，有望加速生命科学、化学和材料领域的发现。如果可行，它可能会重塑科研的开展方式，并将实验室重新定位为数据生成的基础设施，而不再是纯粹由人操作的场所。 Lila Sciences 将自己定位为构建“科学超级智能”，其自动化实验室能够跨生命科学、化学和材料领域生成假设、设计并执行实验，并实时从新数据中学习。不过所提供的内容只是一个简短的预告，缺乏深入的技术细节、具体的实验结果或对该方法的独立验证。

rss · Latent Space · 7月16日 13:30

**背景**: 自动驾驶实验室（self-driving labs）将 AI 与机器人技术结合，在几乎无需人工干预的情况下全天候运行实验，其采用分层架构来协调实验室硬件、工作流自动化和 AI 推理。这一新兴领域已经在材料科学、化学和生物学中产生了实际成果。该理念也与 AI 领域一个更广泛的担忧相关联：模型正在逼近可用互联网文本数据的极限，因而人们开始寻找新的数据来源。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.lila.ai/">LILA | Scientific Superintelligence</a></li>
<li><a href="https://nextomoro.com/lila-sciences/">Lila Sciences | nextomoro | AI Research Lab Intelligence</a></li>
<li><a href="https://www.humai.blog/self-driving-labs-ai-robots-conduct-scientific-experiments-on-their-own-and-its-already-real/">" Self - Driving Labs ": AI Robots Conduct Scientific Experiments on...</a></li>

</ul>
</details>

**标签**: `#AI/ML`, `#scientific-research`, `#automation`, `#training-data`, `#robotics`

---

<a id="item-21"></a>
## [Forgejo v16.0 发布](https://forgejo.org/2026-07-release-v16-0/) ⭐️ 6.0/10

由社区治理的自托管 Git 代码平台 Forgejo 发布了 v16.0 大版本更新。 作为 GitHub 和 GitLab 的免费自托管替代方案，Forgejo 的大版本发布对那些希望完全掌控自己代码托管、又不想承担按席位收费或强制使用托管服务的团队和开源项目而言颇具意义。 Forgejo 用 Go 语言编写，以单一二进制文件形式发布，内置代码仓库、议题、带代码评审的合并请求、Wiki、CI/CD 以及软件包注册表；不过所提供的来源仅是一个发布链接，没有列出 v16.0 具体功能或破坏性变更的详细更新日志。

rss · Lobsters · 7月16日 10:01

**背景**: Forgejo 是一个自托管的轻量级软件代码平台，它从 Gitea 分叉而来，目前由非营利组织 Codeberg e.V. 支持。所谓「forge（代码平台）」是指用于托管和管理源代码，并附带议题跟踪、代码评审等协作工具的平台。与 GitHub 不同，Forgejo 的每项功能都是自由软件，没有付费档位或按席位收费，让用户能够完全掌控自己的服务器。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://forgejo.org/">Forgejo – Beyond coding. We forge .</a></li>
<li><a href="https://railway.com/deploy/forgejo-git-forge">Deploy Forgejo — Self - Hosted GitHub Alternative & Git Forge</a></li>
<li><a href="https://www.seed.box/en/apps/forgejo">Self - Host Forgejo - Community Git Forge | Seed.box</a></li>

</ul>
</details>

**标签**: `#forgejo`, `#git`, `#open-source`, `#devops`, `#release`

---

<a id="item-22"></a>
## [用宽指针实现 GCC 嵌套函数，无需 trampoline](https://uecker.codeberg.page/2026-07-14.html) ⭐️ 6.0/10

这是 Martin Uecker 撰写的一篇后续技术文章（第二部分），探讨如何使用宽指针来实现 GCC 的嵌套函数，从而在获取嵌套函数地址时不再需要在栈上生成可执行的 trampoline。 消除可执行 trampoline 后，使用嵌套函数的程序可以保持不可执行（NX）栈，这通过去除当前 GCC trampoline 所强制的可执行栈需求，提升了程序的安全性。 该方法依赖于宽（fat）函数指针，将静态链与代码地址一起携带，而不是在栈上运行时生成代码，这一思路与 GCC 在其 Ada 编译器中已使用的基于描述符的方法相关。

rss · Lobsters · 7月17日 01:37

**背景**: 嵌套函数是定义在另一个函数内部的函数，这是 C 语言的 GNU 扩展，允许内层函数访问外层函数的变量。GCC 传统上通过 trampoline 来实现获取嵌套函数地址，即在运行时向栈上写入一小段可执行代码，这会迫使栈变为可执行状态，从而削弱安全性。宽指针（fat pointer）是一种在地址之外携带额外信息的指针，例如边界信息，或在本例中携带访问外层作用域变量所需的静态链。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://gcc.gnu.org/onlinedocs/gcc/Nested-Functions.html">Nested Functions (Using the GNU Compiler Collection ( GCC ))</a></li>
<li><a href="https://en.wikipedia.org/wiki/Nested_function">Nested function - Wikipedia</a></li>
<li><a href="https://gcc.gnu.org/onlinedocs/gccint/Trampolines.html">Trampolines ( GNU Compiler Collection ( GCC ) Internals)</a></li>

</ul>
</details>

**标签**: `#GCC`, `#compilers`, `#systems-programming`, `#C`, `#low-level`

---

<a id="item-23"></a>
## [十月投票或将带来史上首个负闰秒](https://www.techtimes.com/articles/320185/20260711/earth-rotation-records-spur-october-vote-avert-negative-leap-second.htm) ⭐️ 6.0/10

地球自转速度创下新高，促使计时机构定于十月投票，决定是否引入史上首个负闰秒，即从 23:59:58 直接跳到午夜，从世界时钟中减去一秒。 负闰秒从未被实践过，可能会扰乱依赖 UTC 和 NTP 进行精确时间同步的分布式系统、金融平台，以及空中交通管制等安全关键的实时系统。 与暂停时钟一秒的正闰秒不同，负闰秒会完全删除一秒，而大多数现有软件从未针对这种情况进行过测试；需要严格连续性的系统往往依赖基于 TAI 的精确时间协议而非 UTC。

rss · Lobsters · 7月17日 02:40

**背景**: 协调世界时（UTC）会通过闰秒定期调整，以与基于地球实际自转的 UT1 保持一致，由国际地球自转和参考系统服务（IERS）决定何时添加。历史上所有闰秒都是正的，因为地球自转在逐渐变慢，但近来地球自转速度快于预期，出现了需要减去一秒的可能。研究表明，全球变暖和极地冰川融化略微减慢了自转速度，实际上推迟了引入负闰秒的时间。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Leap_second">Leap second - Wikipedia</a></li>
<li><a href="https://today.ucsd.edu/story/global-warming-is-influencing-global-timekeeping">Global Warming Is Influencing Global Timekeeping</a></li>
<li><a href="https://www.timeanddate.com/time/leap-seconds-future.html">The Future of Leap Seconds</a></li>

</ul>
</details>

**标签**: `#timekeeping`, `#leap-second`, `#distributed-systems`, `#systems`, `#infrastructure`

---

<a id="item-24"></a>
## [Perl 5.44.0 发布，带来新特性与修复](https://metacpan.org/dist/perl/view/pod/perldelta.pod) ⭐️ 6.0/10

Perl 5.44.0 已经发布，perldelta 文档详细列出了自上一版本以来的新特性、改动和错误修复。其中一个值得注意的新增功能是，Perl 5.36 引入的多变量 foreach 循环现在可以与引用别名结合使用，允许多个迭代变量，其中任意一个都可以作为引用别名。 作为 Perl 核心团队发布的稳定小版本，5.44.0 表明这门在系统管理、生物信息学和遗留企业系统中仍被广泛使用的语言仍在持续维护和演进。它还包含了对 CVE-2026-13221 的修复，这是一个影响 Perl 5.38 至 5.43.9 的正则表达式漏洞，可能返回错误结果。 针对 CVE-2026-13221 的安全修复在 Perl 5.43.10 中落地，并延续到 5.44 发布系列。Perl 的发布周期是渐进式的，近期的小版本（如 5.42.2）通常由少数几位作者贡献，包含约 2900 行改动，涉及 57 个文件。

rss · Lobsters · 7月16日 11:27

**背景**: perldelta 是每个 Perl 版本随附的标准变更日志文档，用于描述当前版本与上一版本之间的差异。Perl 使用偶数小版本号（如 5.42、5.44）作为稳定的生产发布版，使用奇数版本号（如 5.43）作为开发构建版。文中提到的 foreach 循环是用于遍历列表的核心控制结构，而引用别名让循环变量直接指向底层数据而非其副本。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://perldoc.perl.org/5.44.0/perldelta">perldelta - what is new for perl v 5 . 44 . 0 - Perldoc Browser</a></li>
<li><a href="https://windowsforum.com/threads/cve-2026-13221-fix-perl-5-38-5-43-9-regexes-return-wrong-results.438487/">CVE-2026-13221 Fix: Perl 5 .38–5.43.9 Regexes... | Windows Forum</a></li>
<li><a href="https://perldoc.perl.org/perldelta">perldelta - what is new for perl v5.42.2 - Perldoc Browser</a></li>

</ul>
</details>

**标签**: `#perl`, `#programming-languages`, `#release-notes`, `#software-updates`

---

<a id="item-25"></a>
## [光靠修复漏洞无法解决软件安全危机](https://alexgaynor.net/2026/jul/15/you-cant-bugfix-your-way-out-of-the-vulnpocalypse/) ⭐️ 6.0/10

安全工程师 Alex Gaynor 发表了一篇评论文章，主张逐个修补单个漏洞的做法无法跟上软件安全漏洞不断激增的规模，他将这种局面称为“漏洞末日”（vulnpocalypse）。 这一观点将软件安全重新定义为一个需要结构性解决方案（如内存安全语言和安全设计实践）而非被动打补丁的系统性问题，这会影响组织、开发者和政策制定者对安全投入的优先级排序。 所分享的链接页面只包含标题和指向 Lobsters 讨论帖的链接，因此完整的论证和支持数据都在原文中，而非这段摘要里。

rss · Lobsters · 7月16日 07:28

**背景**: Alex Gaynor 是一位知名的安全工程师，长期撰写关于内存安全和漏洞趋势的文章，并一直倡导使用 Rust 等语言。历史上很大一部分严重安全漏洞源于 C、C++ 等语言中的内存安全缺陷，这促使业界更关注结构性修复而非逐个打补丁。“漏洞末日”一词表达的是：被发现的漏洞数量增长速度已超过团队逐个修复它们的能力。

**标签**: `#security`, `#vulnerabilities`, `#software-engineering`, `#commentary`

---

<a id="item-26"></a>
## [为什么 ML 和 OCaml 适合编写编译器（1998）](https://flint.cs.yale.edu/cs421/case-for-ml.html) ⭐️ 6.0/10

耶鲁大学 CS421 课程的一份文档论证了以 OCaml 为代表的 ML 系列语言凭借模式匹配、代数数据类型和强静态类型等特性，特别适合用来实现编译器。 编译器构造是计算机科学的基础领域之一，这份文档至今仍被广泛引用，清楚地说明了函数式语言为何能如此自然地契合编译器所需的树结构操作和分情况分析工作。 文档重点指出，代数数据类型让程序员能够简洁地建模抽象语法树，模式匹配使遍历和转换这些树的过程清晰且能穷尽所有情况，类型系统还能在编译期捕获许多错误；需要注意的是，这份文档写于 1998 年，讲述的是已成定论的知识而非新进展。

rss · Lobsters · 7月16日 12:48

**背景**: ML（元语言）是一种诞生于 1970 年代的早期静态类型函数式语言，采用 Hindley-Milner 多态类型推导，而 OCaml 是该家族的现代后裔。代数数据类型是函数式编程的基础构件，它允许将一个类型定义为一组带标签的可选项（也称为可辨识联合或标签联合），并与模式匹配配合，按情况解构数值。编译器大量依赖于表示和转换树形数据（如抽象语法树），这使得上述特性非常契合。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/ML_(programming_language)">ML ( programming language ) - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Generalized_algebraic_data_type">Generalized algebraic data type - Wikipedia</a></li>

</ul>
</details>

**标签**: `#compilers`, `#functional-programming`, `#OCaml`, `#ML`, `#programming-languages`

---