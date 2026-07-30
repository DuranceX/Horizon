---
layout: default
title: "Horizon Summary: 2026-07-30 (ZH)"
date: 2026-07-30
lang: zh
---

> 从 51 条内容中筛选出 23 条重要资讯。

---

1. [开源引擎在 M 系列 Mac 上仅用 2 GB 内存运行 Gemma 4 26B](#item-1) ⭐️ 8.0/10
2. [Mitchell Hashimoto 基于开源 libghostty 创立 Superlogical](#item-2) ⭐️ 8.0/10
3. [Kimi 发布 K3：256k 上下文可临时扩展至 100 万 tokens](#item-3) ⭐️ 8.0/10
4. [一位密码学家对 Anthropic 新 AI 密码分析成果的冷静评价](#item-4) ⭐️ 8.0/10
5. [K-Search 将 CUDA 内核优化经验迁移到 Apple Silicon 的 MLX](#item-5) ⭐️ 8.0/10
6. [顶尖 AI 初创公司几乎不再发表研究成果](#item-6) ⭐️ 7.0/10
7. [两项 API 设置让 GPT-5.6 在 ARC-AGI-3 上的得分翻了三倍](#item-7) ⭐️ 7.0/10
8. [CHERIoT 迎来首款实体芯片](#item-8) ⭐️ 7.0/10
9. [PostgreSQL 的 MVCC：与其他数据库引擎的设计取舍对比](#item-9) ⭐️ 7.0/10
10. [Copilot 可在 Word 文档间传播自我复制的提示注入蠕虫](#item-10) ⭐️ 7.0/10
11. [形式化方法与 AI：Hillel Wayne 访谈](#item-11) ⭐️ 7.0/10
12. [用 Vision Pro 漫步于尚未建成的房屋](#item-12) ⭐️ 6.0/10
13. [noyb 就 dict.cc 一键授予 1,741 项同意的横幅提起 GDPR 投诉](#item-13) ⭐️ 6.0/10
14. [生产力的海市蜃楼](#item-14) ⭐️ 6.0/10
15. [Keychron 宣布推出首个游戏鼠标开源固件](#item-15) ⭐️ 6.0/10
16. [AI 公司大规模招募数千名电工和木匠](#item-16) ⭐️ 6.0/10
17. [在不影响租房押金的前提下把普通空调变智能](#item-17) ⭐️ 6.0/10
18. [Ollama、LM Studio 与 llama.cpp：2026 年该选哪款本地 AI 运行时？](#item-18) ⭐️ 6.0/10
19. [OpenAI 为 10 万名学术研究人员提供免费 ChatGPT 使用权限](#item-19) ⭐️ 6.0/10
20. [C++ 浮点数转整数可能触发未定义行为](#item-20) ⭐️ 6.0/10
21. [Gleam v1.18.0 发布，带来重要的语言服务器改进](#item-21) ⭐️ 6.0/10
22. [在简单游戏中设置计时器与帧规则](#item-22) ⭐️ 6.0/10
23. [按钮和链接的区别](#item-23) ⭐️ 6.0/10

---

<a id="item-1"></a>
## [开源引擎在 M 系列 Mac 上仅用 2 GB 内存运行 Gemma 4 26B](https://github.com/drumih/turbo-fieldfare) ⭐️ 8.0/10

一位开发者发布了 TurboFieldfare，这是一个用 Swift 和 Metal 编写的开源推理引擎，能在任意 M 系列 Mac 上仅用约 2 GB 内存运行 4-bit 量化的 Gemma 4 26B-A4B 混合专家模型，尽管该模型权重约占 14 GB。它的做法是将共享权重和 KV 缓存常驻内存，同时仅从 SSD 按 token 流式加载所需的路由专家。 这让用户能在内存受限的 8 GB 或 16 GB Mac 上运行原本装不下的强大大模型，从而在无需昂贵高内存硬件的情况下扩展端侧 AI 的可及性。它展示了一种打破“整个模型必须常驻内存”这一假设的实用方法，在模型规模增长快于消费级内存的当下尤其重要。 该引擎使用小型专家缓存和有界并行 pread 读取，同时让 GPU 运行共享层，在 8 GB 的 M2 MacBook Air 上生成 5–6 tok/s，在更高端的 M 系列机器上达到 31–35 tok/s，并附带一个实验性的、兼容 OpenAI 的本地服务器，支持流式输出和工具调用。吞吐量在很大程度上取决于 SSD 带宽和操作系统页缓存，因此内存更大的机器能让专家常驻从而更快；需注意文中引用的具体产品名称（Gemma 4 26B、M5 Pro）尚未有明确的公开确认。

hackernews · gitpusher42 · 7月29日 15:05 · [社区讨论](https://news.ycombinator.com/item?id=49098510)

**背景**: 混合专家（MoE）模型包含许多专门的子网络（专家），但每个 token 只激活其中一小部分，因此像 Gemma 4 26B-A4B 这样的 260 亿参数模型每 token 的计算量约相当于 40 亿参数的模型，却保留了完整 260 亿参数的知识容量。KV 缓存存储注意力的键/值张量以避免重复计算，能加快生成速度，但会占用随序列长度增长的内存。Metal 是苹果的底层图形与计算 API，可直接控制 Apple Silicon 上的 GPU，非常适合高效的端侧推理。传统做法是把全部模型权重加载进内存，因此从 SSD 流式加载专家是一种针对内存受限硬件的非常规优化。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://ai.google.dev/gemma/docs/core">Gemma 4 model overview | Google AI for Developers</a></li>
<li><a href="https://sesen.ai/blog/kv-cache-llm-inference-memory">Why LLM Inference Gets Fast and Then Runs Out of Memory</a></li>
<li><a href="https://developer.apple.com/metal/">Metal Overview - Apple Developer</a></li>

</ul>
</details>

**社区讨论**: 评论者大多热情，并分享了具体基准数据，一位 M4 Max 用户报告在 1.9 GB RSS 下达到 48 tok/s，并指出操作系统页缓存让内存更大的机器表现更好，另一位则提供了在较旧的 macOS 15 上编译的兼容性修复。有人质疑该方法与普通的 llama.cpp mmap 相比如何，认为关键优势在于将 SSD 读取与推理活动同步而非依赖操作系统，还有几位对前沿 AI 默认“整个模型必须装进内存”表达了更广泛的不满。

**标签**: `#on-device-ai`, `#llm-inference`, `#mixture-of-experts`, `#apple-silicon`, `#open-source`

---

<a id="item-2"></a>
## [Mitchell Hashimoto 基于开源 libghostty 创立 Superlogical](https://www.superlogical.com/) ⭐️ 8.0/10

HashiCorp 联合创始人、Ghostty 终端模拟器作者 Mitchell Hashimoto 宣布成立新公司 Superlogical，该公司构建于开源的 libghostty 终端组件之上。他还将 Ghostty 的所有权转移给了一个非营利组织，Superlogical 将使用与所有人相同的、采用 MIT 许可的 libghostty 构建块，并会持续将共享的终端工作回馈上游。 此举展示了一种模式：商业公司在社区拥有的开源基础设施之上公开构建，而不是分叉或闭源，这可能影响开发者工具及基于终端的 AI 代理工具的构建方式。鉴于 Hashimoto 在 HashiCorp 和 Ghostty 上的过往成绩，他的新公司在开发者工具行业中分量十足。 libghostty 是从 Ghostty 中提取出来的、与 C 兼容且采用 MIT 许可的核心库，负责终端仿真、字体渲染和 GPU 加速绘制，被设计为可嵌入第三方应用的可复用构建块。Superlogical 承诺使用这些相同的公开组件，并将改进回馈上游，使所有 libghostty 使用者都能受益。

hackernews · yan · 7月29日 15:41 · [社区讨论](https://news.ycombinator.com/item?id=49098965)

**背景**: Ghostty 是 Mitchell Hashimoto 开发的一款快速、跨平台的终端模拟器，主要用 Zig 编写，于 2024 年底发布 1.0 版本，采用平台原生 UI 并支持 GPU 加速。其模块化架构以 libghostty 为核心，这个库让其他项目可以嵌入功能完整的终端内核，而无需从零构建。Hashimoto 在联合创立 HashiCorp 之后，自 2021 年起将 Ghostty 作为个人业余项目持续开发。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/ghostty-org/ghostty">GitHub - ghostty-org/ghostty: 👻 Ghostty is a fast, feature-rich, and cross-platform terminal emulator that uses platform-native UI and GPU acceleration.</a></li>
<li><a href="https://mitchellh.com/ghostty">Ghostty – Mitchell Hashimoto</a></li>
<li><a href="https://lzwjava.github.io/notes/2025-10-04-ghostty-terminal-emulator-en">Introducing the Ghostty Terminal Emulator</a></li>

</ul>
</details>

**社区讨论**: 评论者赞赏将 Ghostty 转移给非营利组织、并把公司建立在其开源依赖之上的做法，也有人将其与微软的 OLE/COM/ActiveX 嵌入技术做历史类比，并联系到新兴的 AI 代理开发工具。少数人批评这个谜一样的单词标题属于标题党，神秘有余而信息不足。

**标签**: `#startups`, `#open-source`, `#terminal`, `#developer-tools`, `#AI-agents`

---

<a id="item-3"></a>
## [Kimi 发布 K3：256k 上下文可临时扩展至 100 万 tokens](https://www.kimi.com/code/docs/en/kimi-code/models) ⭐️ 8.0/10

Moonshot AI 发布了 Kimi K3，其 256k tokens 上下文模型可在不清空 KV 缓存的情况下临时扩展到 100 万 tokens，并推出了与上下文长度挂钩的新定价。据称对于停留在 256k 上下文以内的用户，价格降到了原来的一半。 在 256k 与 100 万上下文之间切换时保留 KV 缓存，引入了一种"可临时扩展上下文"的范式，让应用能偶尔处理超长输入，而无需在每次请求上都承担长上下文的成本。这可能改变开发者构建长上下文工作负载的方式，以及各家实验室的推理定价策略。 据称该开源权重模型在全精度下运行约需 1.5TB 显存，不过 Unsloth 已将其压缩到 1-bit 约 570GB、准确率约 75%。定价似乎在 256k 处采用硬性分界而非平滑梯度，一些观察者认为这种可临时扩展上下文主要是 API 层面的变更，而非一个新模型。

hackernews · monneyboi · 7月29日 19:25 · [社区讨论](https://news.ycombinator.com/item?id=49101852)

**背景**: KV（键值）缓存在推理时存储中间的注意力状态，使 transformer 大模型无需在每一步生成时重新计算历史 token，但其内存占用会随上下文长度线性增长。Moonshot AI 是一家中国实验室，其 Kimi 模型系列经历了 K1、K2 系列（包括开源推理模型 K2 Thinking），如今推出 K3，通常采用混合专家（MoE）架构。上下文窗口已成为竞争焦点，多家实验室正推动向 100 万 tokens 甚至更高迈进。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Moonshot_AI">Moonshot AI - Wikipedia</a></li>
<li><a href="https://huggingface.co/blog/not-lain/kv-caching">KV Caching Explained: Optimizing Transformer Inference Efficiency</a></li>
<li><a href="https://www.blockchain-council.org/ai/meet-kimi-k3/">Meet KIMI K 3 - Blockchain Council</a></li>

</ul>
</details>

**社区讨论**: 评论者对"可临时扩展上下文"范式以及 256k 以下的明显降价感到兴奋，但也存在质疑：有人认为它在功能上类似 OpenAI 按上下文长度分层定价，并质疑为何采用硬性分界而非平滑梯度；也有人指出约 1.5TB 的显存需求让本地部署不切实际，并争论这主要是 API 层面的变更还是一个新模型。

**标签**: `#LLM`, `#AI/ML`, `#context-window`, `#model-release`, `#inference-cost`

---

<a id="item-4"></a>
## [一位密码学家对 Anthropic 新 AI 密码分析成果的冷静评价](https://blog.cryptographyengineering.com/2026/07/29/some-notes-about-anthropics-new-results/) ⭐️ 8.0/10

密码学家 Matthew Green 评论了 Anthropic 使用其尚未发布的 Claude Mythos 模型取得的两项密码分析成果：针对后量子签名方案 HAWK 的攻击，以及针对缩减轮数 AES 的改进攻击。他认为这些能力提升是真实且令人印象深刻的，但同时告诫人们不要相信 AGI 已经到来的夸大说法。 AI 模型能够针对现代密码原语产生新颖的密码分析攻击，处于 AI 能力与安全研究的关键交汇点，表明前沿模型可能很快成为发现真实密码学弱点的实用工具。这也引出了一个更广泛的讨论：如何在既不轻视、也不陷入 AGI 炒作的前提下，准确评估模型的进步。 据称这些成果是通过反复提示模型「继续」直到它找到结果获得的，评论者认为这种方法既粗糙又出人意料地有效。Claude Mythos 仍未发布，外部只能通过一个名为 Fable 的过滤版本访问，该版本会在涉及网络安全或生物学话题时降低回答质量。

hackernews · Lobsters · 7月29日 16:42 · [社区讨论](https://news.ycombinator.com/item?id=49099804)

**背景**: HAWK 是一种基于格的数字签名方案，旨在抵御量子计算机的攻击；AES 是广泛使用的对称加密标准，其「缩减轮数」变体是学术攻击的常见目标。密码分析是研究如何发现密码算法弱点的学科，这些成果建立在 CryptanalysisBench 之上——这是一个与 Anthropic 合作开发的基准测试，用于衡量大语言模型能否针对历史和现代密码发现新的数学攻击。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://blog.cryptographyengineering.com/2026/07/29/some-notes-about-anthropics-new-results/">Some thoughts about Anthropic ’s new cryptanalysis results</a></li>
<li><a href="https://www.schneier.com/blog/archives/2026/07/measuring-llms-ability-to-perform-cryptanalysis.html">Measuring LLMs' Ability to Perform Cryptanalysis - Schneier on Security</a></li>
<li><a href="https://arxiv.org/html/2607.18538v1">CryptanalysisBench: Can LLMs do Cryptanalysis?</a></li>

</ul>
</details>

**社区讨论**: 评论者大体认同 Green 的观点，simonw 赞同「这些模型确实很聪明且进步迅速，但仍未达到 AGI」的看法。一些人注意到「不行，继续」这种提示方法的粗糙程度令人惊讶，并对尚未发布的 Mythos 模型是否会向公众开放表示怀疑，因为可访问的 Fable 版本会大量过滤与安全相关的查询。

**标签**: `#cryptanalysis`, `#AI/ML`, `#Anthropic`, `#security`, `#LLM-capabilities`

---

<a id="item-5"></a>
## [K-Search 将 CUDA 内核优化经验迁移到 Apple Silicon 的 MLX](http://bair.berkeley.edu/blog/2026/07/29/cuda-to-mlx-k-search/) ⭐️ 8.0/10

伯克利人工智能研究院（BAIR）介绍了对进化式内核搜索框架 K-Search 的扩展，新增了 MLX 后端以及一个结构化的 CUDA 到 MLX 转换层，能够自动把现有的 CUDA GPU 内核改写成适配 Apple Silicon 的优化内核。该方法在 MLX 原生 Attention 内核上达到 0.97 倍的加速，在 Mamba SSM 内核上相比社区 mlx-lm 实现最高实现了 20 倍的预填充（prefill）加速。 随着 AI 硬件在 NVIDIA 之外日益多样化，像 Apple Silicon 这样较新的生态缺乏 CUDA 中积累了数十年的手工调优内核经验，而自动迁移这些知识可以节省数千工程小时，并让数以亿计的 Mac 获得更好的本地 AI 推理能力。该方法并不局限于 MLX，可以推广到任何能够迁移 CUDA 经验的生态，包括定制 AI 加速器。 K-Search 运行一个迭代循环：由一个大语言模型推理该尝试哪些优化，一个写代码的模型生成候选内核，然后这些候选在真实硬件上编译和基准测试，结果再反馈回搜索过程。博客强调是把 CUDA 优化转换为符合架构特点的原生 MLX 策略，而非逐条指令照搬，因为 MLX 往往缺少经过调优的内核，例如分页注意力（paged attention）、优化的 SSM 扫描以及融合的 MoE 路由。

rss · BAIR Blog · 7月29日 09:00

**背景**: GPU 内核是运行在 GPU 内部的底层程序，为注意力或状态空间模型等运算编写高效内核需要多年的专业经验。CUDA 是 NVIDIA 成熟的编程生态，拥有数十年手工调优的内核实现；而 MLX 是 Apple 于 2023 年底发布的数组框架，面向 Apple Silicon 统一内存架构上的机器学习。由于每个硬件厂商都有自己的架构，内核通常无法直接照搬，必须重新优化，这正是这项工作所要解决的空白。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/ml-explore/mlx">GitHub - ml-explore/mlx: MLX: An array framework for Apple silicon · GitHub</a></li>
<li><a href="https://opensource.apple.com/projects/mlx/">Apple Open Source</a></li>
<li><a href="https://siboehm.com/articles/22/CUDA-MMM">How to Optimize a CUDA Matmul Kernel for cuBLAS-like...</a></li>

</ul>
</details>

**标签**: `#GPU-kernels`, `#Apple-Silicon`, `#CUDA`, `#MLX`, `#AI-systems`

---

<a id="item-6"></a>
## [顶尖 AI 初创公司几乎不再发表研究成果](https://www.science.org/content/article/ai-s-top-startups-are-barely-publishing-their-research) ⭐️ 7.0/10

《科学》杂志的一篇文章报道，领先的 AI 初创公司越来越倾向于不将研究成果公开发表；该分析以引用量作为衡量研究影响力的替代指标，涵盖了 OpenAI、Hugging Face、Anthropic、Databricks 等公司。 顶尖 AI 实验室开放发表的减少威胁到科学的可复现性和严谨性，使知识集中在少数私营公司内部，也让更广泛的研究界更难验证结论或在已有成果上继续推进。 该论文使用累计引用量而非发表数量作为衡量研究影响力的不完美替代指标，其中 OpenAI 排名居首，随后是 MEGVII、Hugging Face、Waymo、Momenta、Preferred Networks、Anthropic、Owkin、Databricks 和 Aibee 等公司。

hackernews · YeGoblynQueenne · 7月29日 21:25 · [社区讨论](https://news.ycombinator.com/item?id=49103285)

**背景**: 在 AI 发展的早期，主要实验室通常会在学术会议和期刊上发表突破性成果，推动了整个领域的快速开放进步。随着商业竞争加剧，许多公司转向保密或以简短的博客文章取代经过同行评审的论文，理由是竞争压力以及担心对手抄袭未受保护的成果。这种开放科学与商业优势之间的张力，如今成为关于 AI 研究文化讨论的核心。

**社区讨论**: 评论者大多以亲身经历印证了这一趋势：从业者描述因担心 OpenAI、Anthropic 等大型实验室抄袭成果、以及不满期刊漫长的审稿周期而避免发表。也有人批评 AI 研究的"博客化"，认为这让未经验证的说法以类似社交媒体的方式传播；还有人指出文章对所点名的公司含糊其辞，尽管底层论文其实相当具体。

**标签**: `#AI research`, `#open science`, `#industry trends`, `#startups`, `#research culture`

---

<a id="item-7"></a>
## [两项 API 设置让 GPT-5.6 在 ARC-AGI-3 上的得分翻了三倍](https://openai.com/index/how-two-settings-tripled-our-arc-agi-3-scores) ⭐️ 7.0/10

OpenAI 表示，开启两项 API 设置——推理保留（reasoning retention）和上下文压缩（context compaction）——让 GPT-5.6 在 ARC-AGI-3 交互式推理基准上的得分翻了三倍，同时还提升了效率。这篇文章将其定位为实用的配置调整，而非模型本身的升级。 这表明推理模型的配置方式可能与模型本身同样重要，为开发者提供了一个无需重新训练即可在困难的智能体任务上提升表现的具体手段。对于需要在长时间、高 token 消耗的交互中运行智能体的团队来说尤为重要。 推理保留会在多轮之间保留模型此前的推理过程，而上下文压缩则在保留下一步所需信息的同时减少上下文窗口中的 token 数量，两者结合既提升了得分又提高了 token 效率。需要注意的是，GPT-5.6 是一个未经证实的模型版本，且结果直接来自 OpenAI 自身的测试，而非独立验证。

rss · OpenAI Blog · 7月29日 15:00

**背景**: ARC-AGI-3 是一个交互式推理基准，要求 AI 智能体探索全新环境、即时获取目标、构建可适应的世界模型并持续学习，旨在检验 AI 能否接近人类的学习效率。上下文压缩是一种在保留下一步推理所需关键信息的前提下减少上下文窗口 token 数量的技术，是在 token 压力下维持长对话可用性的常见策略。推理保留则通过类似 OpenAI Responses API 的接口暴露，用于控制模型的内部推理过程是否以及如何在多次交互间被延续。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arcprize.org/arc-agi/3">ARC - AGI - 3</a></li>
<li><a href="https://www.linkedin.com/pulse/context-compaction-task-aware-approach-optimizing-llm-sakshi-singh-kg6qf">Context Compaction : A Task-Aware Approach to Optimizing LLM ...</a></li>
<li><a href="https://docs.openhands.dev/sdk/guides/llm-reasoning.md">docs.openhands.dev/sdk/guides/ llm - reasoning .md</a></li>

</ul>
</details>

**标签**: `#AI/ML`, `#OpenAI`, `#benchmarks`, `#LLM-reasoning`, `#API-optimization`

---

<a id="item-8"></a>
## [CHERIoT 迎来首款实体芯片](https://cheriot.org/silicon/2026/03/04/cheriot-first-silicon.html) ⭐️ 7.0/10

CHERIoT 项目已完成首款实体芯片的流片，使其基于能力（capability）的内存安全架构从 FPGA 仿真阶段迈入真正的嵌入式处理器芯片。这标志着这一基于 RISC-V 的设计从学术原型走向了实际制造的硬件。 内存安全漏洞仍是安全隐患的主要来源，而像 CHERIoT 这样在硬件层面强制实施的保护，有望在嵌入式和物联网设备的芯片层面消除整类攻击。可运行的芯片是一个关键证明点，表明该方法可用于实际部署，而不仅仅停留在研究阶段。 CHERIoT（面向物联网的 RISC-V 能力硬件扩展）在 CHERI 与 RISC-V 基础上进行扩展，提供对象粒度的空间内存安全和确定性的释放后使用（use-after-free）防护，并与一个以安全为核心的 RTOS 协同设计。它面向低功耗嵌入式处理器，此前的研究已分析了将其集成到 Ibex 等内核时带来的面积开销。

rss · Lobsters · 7月29日 18:11

**背景**: CHERI（能力硬件增强 RISC 指令）是 SRI International 与剑桥大学的联合研究项目，通过重新设计硬件，用硬件能力来强制内存访问——即让指针携带边界和权限等元数据。CHERIoT 是针对小型嵌入式和物联网设备定制的变体，构建在 RISC-V 之上。传统嵌入式系统依赖 PMP（物理内存保护）等粗粒度机制，而基于能力的方法能直接在硬件中强制实施细粒度的安全防护。流片（tape-out）或首款芯片，是指芯片设计被制造成实际物理器件的时刻。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://cheriot.org/papers/2023-micro-cheriot-uarch.pdf">CHERIoT : Complete Memory Safety for Embedded Devices</a></li>
<li><a href="https://en.wikipedia.org/wiki/Capability_Hardware_Enhanced_RISC_Instructions">Capability Hardware Enhanced RISC Instructions - Wikipedia</a></li>
<li><a href="https://arxiv.org/html/2505.08541">Area Comparison of CHERIoT and PMP in Ibex</a></li>

</ul>
</details>

**标签**: `#CHERI`, `#hardware-security`, `#memory-safety`, `#embedded-systems`, `#computer-architecture`

---

<a id="item-9"></a>
## [PostgreSQL 的 MVCC：与其他数据库引擎的设计取舍对比](https://boringsql.com/posts/mvcc-bad-bad/) ⭐️ 7.0/10

boringsql.com 上的一篇技术文章分析了 PostgreSQL 多版本并发控制（MVCC）实现的设计取舍，并将其与其他数据库引擎所采用的并发控制方式进行了对比。 表膨胀和 vacuum 开销等与 MVCC 相关的问题是广为人知的运维痛点，因此理解 PostgreSQL 的取舍有助于工程师在调优或选型数据库时做出更好的决策。 文章探讨了 PostgreSQL 如何将旧行版本保留在主堆表中并依赖 vacuum 进程回收死元组，这与将旧版本单独存储的引擎不同，并权衡了由此带来的膨胀和维护成本与并发收益之间的关系。

rss · Lobsters · 7月29日 13:25

**背景**: MVCC（多版本并发控制）是一种通过为每行保留多个版本，让多个事务并发读写数据的技术，从而使读操作不会阻塞写操作，反之亦然。它是两阶段锁等基于锁的方案的替代方案，后者会迫使事务等待共享锁，可能引发争用和死锁。PostgreSQL 通过将旧行版本内联保存来实现 MVCC，这需要定期执行 vacuum 来清除过时版本并防止存储膨胀。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.postgresql.org/docs/current/mvcc-intro.html">PostgreSQL : Documentation: 18: 13.1. Introduction</a></li>
<li><a href="https://blog.stackademic.com/understanding-concurrency-control-2pl-vs-mvcc-in-database-systems-2e8af23f1668">Two-Phase Locking vs . MVCC : Understanding Database ...</a></li>

</ul>
</details>

**标签**: `#PostgreSQL`, `#databases`, `#MVCC`, `#concurrency`, `#systems`

---

<a id="item-10"></a>
## [Copilot 可在 Word 文档间传播自我复制的提示注入蠕虫](https://enklypesalt.com/posts/context-collapse-part3-ai-worming-through-word/) ⭐️ 7.0/10

安全研究员 Håkon Måløy 展示了一种被称为“Context Collapse, Part 3 – AI Worming through Word”的提示注入技术，它把普通的提示注入升级为可自我复制的蠕虫：一份 Word 文档中藏有隐藏的文本指令，Microsoft Copilot 读取后会将其复制到它起草的其他文档中。这使得单份被污染的文档变成载体，通过常规的企业文档工作流传播恶意提示。 这揭示了一类新的 AI 安全威胁，即 AI 助手本身成为恶意内容的传播机制，无需传统可执行代码即可在文档和用户之间扩散。随着 Copilot 等工具深度融入企业工作流，这类自我复制的提示攻击可能影响大量依赖 AI 辅助文档创作的组织。 该攻击依赖嵌入在 Word 文档中的隐藏文本，Copilot 会将其作为上下文的一部分读取，从而在生成新内容时复制这些恶意指令。值得注意的是，有分析认为这种行为更像上世纪 90 年代的宏病毒，而非真正的网络蠕虫，那个时代的类似防御手段或许同样适用。

rss · Lobsters · 7月29日 12:20

**背景**: 提示注入是一种针对大语言模型（LLM）应用的攻击，它利用模型无法可靠区分可信指令和不可信输入的弱点；攻击者将恶意指令隐藏在模型读取的数据中，使其执行攻击者的命令。Microsoft Copilot 是集成在 Word 等 Office 应用中的 AI 助手，会读取文档内容以协助起草和编辑文本。蠕虫是一种能自我复制并自行传播的恶意软件，因此“提示注入蠕虫”结合了这两个概念，利用注入的指令让 AI 把自身复制到新文档中。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://simonwillison.net/2026/Jul/29/ai-worming-through-word/">AI Worming through Word | Simon Willison’s Weblog</a></li>
<li><a href="https://sourcefeed.dev/a/copilots-self-copying-prompt-is-a-macro-virus-not-a-worm">Copilot's Self -Copying Prompt Is a Macro Virus, Not a Worm</a></li>
<li><a href="https://gbhackers.com/microsoft-copilot-word-flaw/">Microsoft Copilot Word Flaw Lets Hidden Prompts Spread...</a></li>

</ul>
</details>

**标签**: `#AI security`, `#prompt injection`, `#Copilot`, `#malware`, `#LLM vulnerabilities`

---

<a id="item-11"></a>
## [形式化方法与 AI：Hillel Wayne 访谈](https://newsletter.pragmaticengineer.com/p/formal-methods-with-hillel-wayne) ⭐️ 7.0/10

《The Pragmatic Engineer》通讯发布了一篇对形式化方法实践者 Hillel Wayne 的访谈，他解释了为什么 TLA+ 这类工具有助于构建可靠软件，并认为 AI 会增加形式化验证的使用，但不会让它成为主流。 形式化方法是一种鲜为人知但功能强大的手段，能在缺陷进入生产环境前捕捉设计层面的错误，这篇访谈为一线工程师提供了务实的视角，帮助判断该技术何时值得投入，以及 AI 可能如何影响其采用。 Wayne 认为对大多数工程师而言形式化方法仍是小众工具，而基于属性的测试是构建健壮软件更实用的轻量级方法，他还预测 AI 会提升形式化验证的使用量，但不会将其推向主流。

rss · The Pragmatic Engineer · 7月29日 16:22

**背景**: 形式化方法使用数学技术——例如模型检查、自动定理证明、类型系统和状态转换建模——来证明软件在所有可能状态下都能正确运行，而不仅仅是测试所覆盖的情形。TLA+ 是由 Leslie Lamport 创建的形式化规约语言，让工程师能够对并发和分布式系统建模并检查设计缺陷。基于属性的测试是一种更轻量的技术，它生成大量随机化输入来验证既定属性始终成立，以较低的前期成本提供了形式化方法的部分严谨性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://newsletter.pragmaticengineer.com/p/formal-methods-with-hillel-wayne">Formal methods with Hillel Wayne - by Gergely Orosz</a></li>
<li><a href="https://cs.stackexchange.com/questions/93400/an-example-of-something-you-can-formally-verify-with-proofs-in-software-developm">formal methods - An example of something you can formally verify ...</a></li>

</ul>
</details>

**标签**: `#formal-methods`, `#TLA+`, `#software-reliability`, `#AI`, `#software-engineering`

---

<a id="item-12"></a>
## [用 Vision Pro 漫步于尚未建成的房屋](https://christianselig.com/2026/07/vision-pro-house/) ⭐️ 6.0/10

开发者 Christian Selig 发表文章，介绍了他如何使用 Apple Vision Pro 在房屋建成之前进行虚拟漫游，让他能够在沉浸式 3D 环境中体验空间和比例。 这凸显了 VR/AR 头显在游戏之外的一个实用且高价值的消费级和专业用途，展示了建筑可视化如何帮助客户和设计师在昂贵的施工开始前发现空间问题。 该工作流通常从使用 Rhino3D 或 Revit 等工具构建的 3D 模型开始，通过 Enscape 等可视化插件渲染，然后流式传输到头显，并将显示高度设置为观看者的实际身高，使比例感觉更准确。

hackernews · robbiet480 · 7月29日 20:39 · [社区讨论](https://news.ycombinator.com/item?id=49102774)

**背景**: Apple Vision Pro 是苹果的混合现实头显，其营销围绕“空间计算”概念展开，将数字内容与物理环境融合。建筑可视化是将建筑设计转化为逼真图像或沉浸式体验的实践，VR 漫游让客户在施工前以真实比例体验空间。Christian Selig 在 iOS 社区中因开发热门 Reddit 客户端 Apollo 而广为人知。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://vizkingdom.com/blog/upgrade-your-renders-to-vr-ready-walkthroughs/">Upgrade Your Renders to VR -Ready Walkthroughs | Viz Kingdom</a></li>
<li><a href="https://www.coohom.com/article/easy-vr-and-3d-rendering-for-architectural-visualization">Architectural Visualization Too Slow? Try Easy VR 3D Renderi</a></li>
<li><a href="https://gulfbusiness.com/apple-drops-tech-new-devices-powered-by-m5-chip/">Apple drops next-generation tech: New devices powered by M5 chip</a></li>

</ul>
</details>

**社区讨论**: 多位从业者证实这是一种成熟的实际工作流：一家 Hamptons 的设计建造公司每天使用 Rhino3D、Enscape 和 Quest 3，另一位则回忆起十年前用 HTC Vive 和 IrisVR 的类似经历。评论者建议了一些扩展用途，例如模拟不同季节的太阳角度以检查采光和热量，以及追踪现有墙壁内的布线或管道，还有人称赞了 Selig 早期在 Apollo 应用上的工作。

**标签**: `#Vision Pro`, `#VR/AR`, `#architecture`, `#3D visualization`, `#spatial computing`

---

<a id="item-13"></a>
## [noyb 就 dict.cc 一键授予 1,741 项同意的横幅提起 GDPR 投诉](https://noyb.eu/en/1741-informed-consents-one-click-gdpr-complaint-against-dictcc-filed) ⭐️ 6.0/10

隐私维权组织 noyb 对在线词典 dict.cc 提起了 GDPR 投诉，指控其 Cookie 同意横幅通过点击一次接受按钮就获取了 1,741 项各自独立的"知情"同意。该投诉认为这种横幅设计具有误导性，无法满足 GDPR 对有效同意的要求。 此案凸显了许多网站如何利用"黑暗模式"和夸大的"合作伙伴"名单来制造既不具体也非知情的同意，这种做法几乎影响到欧盟每一位互联网用户。投诉若成功，可能会促使监管机构在整个行业范围内打击这类普遍存在的同意横幅滥用行为。 GDPR 要求同意必须是"自由给予、具体、知情且明确的"，noyb 认为当一次点击就捆绑了上千个不同的数据处理目的和第三方合作伙伴时，这一要求根本无法满足。投诉还涉及一种常见手法，即援引"合法利益"作为兜底理由，为用户并未真正同意的追踪行为辩护。

hackernews · dotcoma · 7月30日 05:33 · [社区讨论](https://news.ycombinator.com/item?id=49106384)

**背景**: GDPR（通用数据保护条例）是欧盟的数据保护法律，要求企业在为广告和追踪等目的处理个人数据前必须获得用户的有效同意。noyb（None Of Your Business）是由活动家 Max Schrems 创立的奥地利隐私维权组织，经常就企业可疑的数据处理做法提起投诉。"黑暗模式"是指具有误导性的用户界面设计，会诱导用户做出他们本不会做出的选择，例如让"全部接受"比拒绝追踪容易得多。

**社区讨论**: 评论者普遍表达了对同意横幅的不满，提到类似经历，比如三星电视列出 264 个合作伙伴，以及一些网站声称拥有数百个"合法利益"合作伙伴却只允许通过付费订阅退出。一些人呼吁加强执法或干脆禁止基于追踪的广告、转向基于上下文的广告，另一些人则建议采取技术自卫措施，如使用 Pi-hole DNS 拦截，或者干脆不把设备联网。

**标签**: `#GDPR`, `#privacy`, `#data-protection`, `#dark-patterns`, `#consent-management`

---

<a id="item-14"></a>
## [生产力的海市蜃楼](https://frantic.im/mirage/) ⭐️ 6.0/10

这篇文章认为，痴迷于开发工具和环境配置往往被伪装成生产力，而真正的工作在于思考和阅读，由此引发了社区关于工匠精神与分心之间的深入辩论。

hackernews · msephton · 7月29日 23:18 · [社区讨论](https://news.ycombinator.com/item?id=49104335)

**标签**: `#productivity`, `#software-engineering`, `#developer-tools`, `#workflow`, `#opinion`

---

<a id="item-15"></a>
## [Keychron 宣布推出首个游戏鼠标开源固件](https://www.digitalfoundry.net/news/2026/07/keychron-announces-first-open-source-firmware-for-gaming-mice) ⭐️ 6.0/10

Keychron 宣布推出其首个开源游戏鼠标固件 ZGM，计划于 2027 年第一季度发布，首先应用于 G6 HE 混合磁轴游戏鼠标。 开源固件将为用户提供完全的透明度以及自定义鼠标行为的能力，把 QMK 和 ZMK 为键盘构建的社区驱动输入生态系统扩展到游戏鼠标领域。 这只是一次 announcement 而非实际发布，目前所链接的代码仓库中并无源代码，发布时间还在大约六到九个月后的 2027 年第一季度。市面上已存在开源替代方案，例如运行 QMK 的 Ploopy 鼠标。

hackernews · JLO64 · 7月29日 16:36 · [社区讨论](https://news.ycombinator.com/item?id=49099715)

**背景**: QMK 是一款广泛使用的机械键盘开源固件，允许用户完全自定义按键映射与行为，而 ZMK 是一个类似但侧重无线的项目；两者都依靠活跃的爱好者社区为新硬件添加支持。由于这类固件通常采用 GPL 许可，分发修改后的版本一般需要公开源代码。Keychron 是一家以机械键盘闻名的外设制造商，其部分硬件已有社区移植的 QMK 支持。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/Keychron/zgm">GitHub - Keychron/zgm: Open source gaming mouse firmware built...</a></li>
<li><a href="https://ploopy.co/mouse/">Mouse – Ploopy</a></li>
<li><a href="https://qmk.fm/">QMK Firmware</a></li>

</ul>
</details>

**社区讨论**: 评论者表达了合理的怀疑，认为这个提前发布的公告可能是空头承诺，因为发布日期定在 2027 年第一季度而代码仓库却是空的，并指出 GPL 许可本来就要求公开源代码。也有人质疑其相对于 Ploopy 等现有 QMK 鼠标的附加价值，希望 QMK 生态系统能加入设备间通信通道，并期待 Keychron 推出更有意思的鼠标形态。

**标签**: `#open-source`, `#firmware`, `#peripherals`, `#QMK`, `#hardware`

---

<a id="item-16"></a>
## [AI 公司大规模招募数千名电工和木匠](https://www.nytimes.com/2026/07/29/business/economy/data-center-electricians-training.html) ⭐️ 6.0/10

AI 公司正在招募数千名电工、木匠及其他技术工人，为支撑其模型运行的数据中心建设物理基础设施。这波需求激增带动了技术工种的高薪资和大规模招聘。 这凸显了 AI 热潮已远远超出软件领域，延伸到大规模的实体建设中，创造了大量蓝领岗位需求并重塑了地方劳动力市场。这表明 AI 的增长如今不仅受制于算法或芯片，同样受制于物理基础设施和技术劳动力。 这一需求源于数据中心的资本密集型特性，如今 AI 公司的大部分成本和收入都围绕建设和租赁基础设施展开。然而，数据中心建设历来具有周期性，引发了对这些高薪岗位长期稳定性的担忧。

hackernews · thm · 7月29日 14:43 · [社区讨论](https://news.ycombinator.com/item?id=49098198)

**背景**: 数据中心是充满服务器、冷却系统和供电设施的大型建筑，用于运行 AI 模型和其他云服务。训练和运行现代 AI 系统需要巨大的算力，这反过来要求对建筑、电气系统和电力供应进行大规模投资。这使得主要 AI 公司变成了大规模的基础设施建设方，除了软件工程师外还需要电工、木匠等技术工种。

**社区讨论**: 评论者乐见技术工人获得高薪，但有人警告不要基于这一趋势做出职业决定，指出数据中心建设具有繁荣与萧条的周期性，一旦建设放缓工资可能大幅下跌。也有人重新解读这一新闻，认为这些公司实际上是基础设施公司，因为其主要成本和收入都来自建设和租赁物理基础设施。

**标签**: `#AI infrastructure`, `#data centers`, `#labor market`, `#economy`, `#skilled trades`

---

<a id="item-17"></a>
## [在不影响租房押金的前提下把普通空调变智能](https://prilik.com/blog/post/automating-ac-nyc/) ⭐️ 6.0/10

一位博主记录了如何在纽约的租住公寓里，用自动化硬件改造一台非智能窗式空调，采用不破坏、不永久改动设备的方式，从而避免损失租房押金。 这个项目为租房者提供了一条无需对房东不友好改动的家庭自动化实用路径，同时也反映出许多日常家电缺乏开放、标准化控制接口这一普遍痛点。 评论者提出了多种替代控制方案，包括用步进电机直接耦合控制轴、用光耦（vactrol，即 LED 与光敏电阻的组合）替换电位器、用 ESP32 配合红外 LED 模拟遥控器信号，以及借助 ESPHome 在约十分钟内完成软件部分。

hackernews · austinallegro · 7月29日 18:28 · [社区讨论](https://news.ycombinator.com/item?id=49101198)

**背景**: 窗式空调和 PTAC（穿墙式一体空调）在较老甚至新建的楼宇中都很常见，尤其在纽约市，这类设备通常没有任何网络或 App 连接功能。ESP32 是一款低成本的 WiFi 微控制器，广泛用于 DIY 物联网项目，而 ESPHome 是一个能轻松将此类设备接入 Home Assistant 等家庭自动化系统的框架。光耦（vactrol）将 LED 与光敏电阻组合在一起，使电路能以电子方式改变阻值，从而在无机械部件的情况下用软件替代手动旋钮。

**社区讨论**: 评论者大多认可这个改造，并分享了各自的方案，有人偏好用 ESP32 做红外模拟，也有人建议用光耦以电子方式替代电位器；多人抱怨家电普遍缺乏标准化的模拟/数字控制接口，还有一人批评纽约建筑仍在使用 PTAC 是由本地法规和经济因素驱动的地域性怪现象。

**标签**: `#home-automation`, `#diy-hardware`, `#iot`, `#esp32`, `#hacking`

---

<a id="item-18"></a>
## [Ollama、LM Studio 与 llama.cpp：2026 年该选哪款本地 AI 运行时？](https://machinelearningmastery.com/ollama-vs-lm-studio-vs-llama-cpp-which-local-ai-runtime-should-you-use-in-2026/) ⭐️ 6.0/10

一篇对比文章从从业者最关心的几个维度评估了三款流行的本地大语言模型运行时——Ollama、LM Studio 和 llama.cpp，并就 2026 年该如何选择给出建议。 对于希望在本地私密、离线运行大语言模型的开发者来说，选择合适的运行时是常见的决策点，这一选择会影响性能、易用性以及对部署的控制程度。 这三款工具处于抽象层级的不同位置：llama.cpp 是一个用 C/C++ 编写的高性能推理引擎，能以极少的配置运行 GGUF 格式模型；Ollama 将 llama.cpp 封装成守护进程，并在 localhost:11434 暴露兼容 OpenAI 的 API；而 LM Studio 提供图形化桌面应用，无需命令行即可运行 Qwen3、Gemma3、DeepSeek 等模型。

rss · Machine Learning Mastery · 7月29日 12:00

**背景**: 运行本地大语言模型意味着直接在自己的设备或私有服务器上执行 AI 模型，而不依赖云服务，这样能提升隐私性并省去订阅费用。llama.cpp 是许多上层工具所依赖的基础开源推理引擎，GGUF 是它使用的模型文件格式，而 Ollama 和 LM Studio 都力求让本地推理像打开笔记本电脑一样简单，而不是搭建一座数据中心。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/ggml-org/llama.cpp">GitHub - ggml-org/ llama . cpp : LLM inference in C/C++ · GitHub</a></li>
<li><a href="https://www.lmstudio.ai/">LM Studio - Local AI on your computer</a></li>
<li><a href="https://env.dev/ai/ollama">Ollama — env.dev</a></li>

</ul>
</details>

**标签**: `#local-llm`, `#ollama`, `#llama.cpp`, `#ai-tooling`, `#inference`

---

<a id="item-19"></a>
## [OpenAI 为 10 万名学术研究人员提供免费 ChatGPT 使用权限](https://openai.com/index/chatgpt-for-academic-researchers) ⭐️ 6.0/10

OpenAI 宣布向 10 万名学术研究人员免费提供其最先进的 ChatGPT AI 模型使用权限，以支持科学研究、协作和发现。 通过将前沿 AI 模型交到大量研究人员手中，OpenAI 有望加速多个科学领域的研究流程，并推动 AI 工具更深入地融入学术工作。这同时也让 OpenAI 在具有影响力的学术圈中积累好感并收集使用洞察。 该公告是一篇简短的宣传帖，向 10 万名研究人员提供免费使用权限，但并未披露资格标准、免费使用的期限、具体的模型版本或使用限制。其实际影响将取决于执行和采用情况，而非任何声称的技术突破。

rss · OpenAI Blog · 7月29日 10:00

**背景**: ChatGPT 是 OpenAI 基于其大语言模型构建的对话式 AI 产品，能够完成文献总结、编程、数据分析和撰写草稿等任务。使用 OpenAI 最先进的模型通常需要付费订阅，因此免费使用对研究人员来说意味着显著的成本降低。面向学术和教育用户的项目是行业更广泛趋势的一部分，即 AI 公司争取研究群体以扩大采用并展示实际应用价值。

**标签**: `#OpenAI`, `#ChatGPT`, `#academic-research`, `#AI-access`, `#scientific-discovery`

---

<a id="item-20"></a>
## [C++ 浮点数转整数可能触发未定义行为](https://kttnr.net/blog/cpp-float-to-int-conversion-undefined-behavior/) ⭐️ 6.0/10

文章说明，在 C++ 中，当浮点数经过截断后的值超出目标整数类型可表示的范围时，将浮点数转换为整数属于未定义行为。这是一个语言层面的正确性问题，而非编译器缺陷，意味着标准对结果不作任何要求。 越界的浮点转整数在系统编程和数值代码中很常见，由于属于未定义行为，优化编译器可能产生意外或不一致的结果，从而导致难以排查的缺陷。理解这一点有助于有经验的 C++ 开发者在转换前加入显式的范围检查，写出更可移植、更可靠的代码。 该未定义行为具体发生在源浮点值向零截断后落在目标整数类型可表示范围之外时，无论使用 static_cast、C 风格强制转换还是隐式转换都适用。开发者应在转换前验证数值处于整数类型的边界之内，因为编译器并不保证进行钳制、回绕或以其他方式定义结果。

rss · Lobsters · 7月30日 03:47

**背景**: 在 C++ 中，未定义行为（UB）意味着 ISO 标准对会发生什么不作任何要求，因此编译器可以假设它永远不会出现并据此进行优化，有时会产生意外的输出结果。C++ 提供了 float、double 等浮点类型以及 int 等整数类型，二者之间转换时会截去小数部分；但只有当截断后的值能装进目标类型时，标准才保证结果有定义。这种设计体现了 C++ 刻意保留部分操作为未定义的权衡取舍，以便在不同硬件上实现性能优化。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.cppreference.com/cpp/language/ub">Undefined behavior - cppreference.com</a></li>
<li><a href="https://en.cppreference.com/cpp/language/static_cast">static_cast conversion - cppreference.com</a></li>

</ul>
</details>

**标签**: `#C++`, `#undefined-behavior`, `#type-conversion`, `#systems-programming`, `#language-semantics`

---

<a id="item-21"></a>
## [Gleam v1.18.0 发布，带来重要的语言服务器改进](https://gleam.run/news/a-field-day-for-gleams-language-server/) ⭐️ 6.0/10

Gleam 发布了 1.18.0 版本，这是一个以一系列语言服务器改进为核心的小版本更新，同时还对整体开发者体验进行了其他优化。 语言服务器的增强为自动补全、跳转到定义等编辑器功能带来了实实在在的使用体验提升，这对于一门正在成长但仍属小众、且力图吸引更多开发者的 BEAM 系语言来说意义重大。 这是一个渐进式的小版本更新，而非突破性发布，重点在于打磨工具链，而不是引入重大的新语言特性。

rss · Lobsters · 7月29日 13:42

**背景**: Gleam 是一门静态类型的编程语言，运行在 BEAM 虚拟机上，Erlang 和 Elixir 也运行在同一虚拟机之上。语言服务器实现了语言服务器协议（LSP），这是一种基于 JSON-RPC 的开放协议，让编辑器和 IDE 能够与后端通信，从而提供自动补全、跳转到定义和内联诊断等功能。通过改进语言服务器，Gleam 让这些编辑器功能在众多支持 LSP 的工具中更强大、更可靠。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Language_Server_Protocol">Language Server Protocol - Wikipedia</a></li>
<li><a href="https://microsoft.github.io/language-server-protocol/">Official page for Language Server Protocol</a></li>

</ul>
</details>

**标签**: `#gleam`, `#programming-languages`, `#language-server`, `#developer-tools`, `#release`

---

<a id="item-22"></a>
## [在简单游戏中设置计时器与帧规则](https://lynn.github.io/blog/pico-timers/) ⭐️ 6.0/10

一篇技术博客文章探讨了如何在简单游戏中（尤其是在 PICO-8 幻想主机上）正确实现计时器，并解释了“帧规则”（frame rule）如何影响计时精度。文章讲解了朴素计时器实现的陷阱，以及基于帧的计数如何给计时带来量化误差。 正确处理计时器是游戏开发中常见的细微 bug 来源，理解基于帧的计时能帮助开发者构建更可靠、更可预测的游戏逻辑。这一概念也与速通（speedrunning）社区密切相关，因为帧级精准的计时和帧规则直接影响记录的创造与优化。 由于游戏以离散的帧推进（通常每秒 30 或 60 帧），计时器的实际时长会被量化到帧边界，也就是说请求的时长会被四舍五入到最接近的帧，而不是按精确的真实时间来衡量。PICO-8 的背景在这里很相关，因为它以固定帧率运行，使得基于帧的计数成为计时的自然单位。

rss · Lobsters · 7月29日 16:26

**背景**: PICO-8 是一款“幻想主机”，即一个通过软件模拟的复古游戏机，它带有刻意设置的严格限制，并以固定帧率运行游戏。“帧规则”是速通领域里广为人知的概念：由于游戏以整帧为单位处理逻辑，事件不能在任意时刻发生，而只能落在帧边界上，因此计时会被吸附到帧间隔的整数倍。这种量化意味着在真实时间中略有先后的两个动作可能被解析到同一帧，从而同时影响游戏手感和竞技计时。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://tpa10.com/what-is-speedrunning-in-video-games/">What Is Speedrunning In Video Games?: Beginner Guide - TPA10</a></li>
<li><a href="https://pahammond.itch.io/mappy">Pico - 8 game based on the 1983 Namco arcade game and console ...</a></li>

</ul>
</details>

**标签**: `#game-development`, `#programming`, `#timing`, `#pico-8`, `#frame-rate`

---

<a id="item-23"></a>
## [按钮和链接的区别](https://unplannedobsolescence.com/blog/buttons-vs-links/) ⭐️ 6.0/10

这是一篇讲解文章，阐述了 HTML 按钮（`<button>`）和链接（`<a>`）在语义和功能上的区别，并给出了每种元素应在何时使用的指导。 选择正确的元素会影响可访问性、键盘导航以及辅助技术对页面的解读，而误用它们是一个常见错误，会降低依赖屏幕阅读器等用户的使用体验。 核心区别在于：链接用于导航到新的位置或资源（通常通过 URL），而按钮用于触发操作或改变当前页面的状态；这一区别还带来了浏览器内置的行为差异，例如右键上下文菜单和预期的键盘交互方式。

rss · Lobsters · 7月30日 03:42

**背景**: 在 HTML 中，语义化元素传达的是内容和用途的含义，而不仅仅是外观，这让浏览器和辅助技术能够恰当地处理它们。`<a>`（锚点）元素用于创建导航用的超链接，而 `<button>` 元素表示执行某个操作的可点击控件。开发者常常把一种元素样式化成另一种的外观，或用带点击事件的通用 `<div>` 元素来替代，这会破坏诸如键盘聚焦和屏幕阅读器播报等原生行为。

**标签**: `#web-development`, `#html`, `#accessibility`, `#frontend`, `#semantic-html`

---