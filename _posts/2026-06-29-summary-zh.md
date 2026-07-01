---
layout: default
title: "Horizon Summary: 2026-06-29 (ZH)"
date: 2026-06-29
lang: zh
---

> 从 46 条内容中筛选出 32 条重要资讯。

---

1. [HackerRank 开源的招聘系统给同一份简历打出天差地别的分数](#item-1) ⭐️ 8.0/10
2. [GLM 5.2 在 Semgrep 的网络安全基准测试中超越 Claude](#item-2) ⭐️ 8.0/10
3. [年龄验证被视为在线言论自动身份归属的前兆](#item-3) ⭐️ 7.0/10
4. [用 Claude Code 为自己的核磁共振影像求得第二诊断意见](#item-4) ⭐️ 7.0/10
5. [ISC'26 大会上诞生 TOP500 新晋第一超算，疑似采用 SMIC 7 纳米 Arm 芯片](#item-5) ⭐️ 7.0/10
6. [Token 最大化已死，Token 最大化万岁](#item-6) ⭐️ 7.0/10
7. [布朗大学教授揭露考试中大规模 AI 作弊](#item-7) ⭐️ 7.0/10
8. [LibrePods 让 AirPods 功能在 Android 和 Linux 上可用](#item-8) ⭐️ 7.0/10
9. [OpenAI Codex 如何排除敏感文件引发未解决的讨论](#item-9) ⭐️ 7.0/10
10. [拆解航天飞机输入/输出处理器电路板](#item-10) ⭐️ 7.0/10
11. [隐私倡导者重启 fightchatcontrol.eu 以反对欧盟“聊天监控”威胁](#item-11) ⭐️ 7.0/10
12. [Ante 语言将借用检查与引用计数相结合](#item-12) ⭐️ 7.0/10
13. [一种带类型的代数化解析方法（PLDI 2019）](#item-13) ⭐️ 7.0/10
14. [VictoriaLogs 如何以列式布局存储日志](#item-14) ⭐️ 7.0/10
15. [文档核心演算：为文档语言语义建立形式化模型](#item-15) ⭐️ 7.0/10
16. [优化 LLVM 的 bump 分配器以提升性能](#item-16) ⭐️ 7.0/10
17. [斯坦福图表追踪 1960 至 2026 年每 GB 内存价格](#item-17) ⭐️ 6.0/10
18. [KIDS 法案将要求进行年龄验证才能上网](#item-18) ⭐️ 6.0/10
19. [在冷门的 MIPS 架构 Lemote Yeeloong 笔记本上运行 OpenBSD](#item-19) ⭐️ 6.0/10
20. [刚刚，姚班传奇陈立杰苦思 7 年的计算几何核心难题，被 ChatGPT 推翻了](#item-20) ⭐️ 6.0/10
21. [Jon Udell：把“人在回路中”翻转为“代理在回路中”](#item-21) ⭐️ 6.0/10
22. [Interconnects 综述：Zyphra、Cohere 与 Poolside 拓展开放模型生态](#item-22) ⭐️ 6.0/10
23. [深不可测的 Bug 系列第 10 篇：破窗式构建问题](#item-23) ⭐️ 6.0/10
24. [卡巴斯基披露 StrikeShark 行动：借助 SharkLoader 投放 Cobalt Strike](#item-24) ⭐️ 6.0/10
25. [5000 份纽约历史菜单的交互式数据可视化（1880-1920）](#item-25) ⭐️ 5.0/10
26. [迈向可理解的软件](#item-26) ⭐️ 5.0/10
27. [重温 HyperCard：Macintosh 上开创性的超媒体工具](#item-27) ⭐️ 5.0/10
28. [你可能并不需要 Service Worker](#item-28) ⭐️ 5.0/10
29. [编写能在不同引擎间通用的正则表达式](#item-29) ⭐️ 5.0/10
30. [在老旧的 ThinkPad T60 上安装 SerenityOS](#item-30) ⭐️ 5.0/10
31. [测试库「Test That」发布公告](#item-31) ⭐️ 5.0/10
32. [KDDI 数据泄露事件波及五家日本 ISP 共享邮件系统](#item-32) ⭐️ 5.0/10

---

<a id="item-1"></a>
## [HackerRank 开源的招聘系统给同一份简历打出天差地别的分数](https://danunparsed.com/p/hackerrank-open-source-ats) ⭐️ 8.0/10

一位博主测试了 HackerRank 新近开源的求职者跟踪系统（ATS），发现其默认使用的小型语言模型（gemma3:4b）在多次运行中给同一份简历分别打出 90 分、74 分、88 分。调查显示这套简历评分流程是非确定性的，作者称同一份简历约有 65% 的概率会被淘汰，全凭运气。 自动化简历筛选越来越多地决定求职者能否进入下一轮，而非确定性的评分意味着合格的候选人可能仅因运气不好而非能力不足被淘汰。这对求职者以及信赖这类 AI 驱动筛选工具的招聘团队来说，引发了严重的公平性和可靠性担忧。 该系统默认的评判模型是 gemma3:4b，一个只有 40 亿参数的模型，批评者认为它太小，无法担任可靠的评判，实际表现近似于随机数生成器。作者指出该模型运行在 0.1 的 temperature 下，人们常常错误地以为这能让输出变得确定。

hackernews · sambellll · 6月29日 01:44 · [社区讨论](https://news.ycombinator.com/item?id=48713832)

**背景**: 求职者跟踪系统（ATS）是企业用来管理求职申请的软件，通常会在人工查看之前自动筛选和排序简历。Gemma 3 是谷歌推出的一系列轻量级开放模型，其中 4B 版本是最小的规格之一，适合本地运行但推理能力有限。大语言模型本质上是随机的，即它们以概率方式采样输出；即使把 temperature 设得很低也只能减少而无法消除这种随机性，因此相同的输入也可能得到不同的结果。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://ollama.com/library/gemma3:4b">gemma3:4b - ollama.com</a></li>
<li><a href="https://www.skillfuel.com/ai-resume-parsing-nlp-limitations/">Why AI Resume Parsing Fails Best Candidates: NLP Limits</a></li>
<li><a href="https://support.hackerrank.com/articles/1847021717-integrations-overview">Integrations Overview - HackerRank</a></li>

</ul>
</details>

**社区讨论**: 评论者普遍认为这个实验揭示了人们对大语言模型随机性的理解有多匮乏，多人指出文章中“temperature 0.1 能产生确定性输出”的说法本身就是一个误解。一些有招聘经验的工程师认为，考虑到申请人数量庞大，即便存在缺陷的 35% 通过率在实践中也算有用；另一些人则嘲讽用如此小的 4B 模型当评判，并把整套做法比作随机扔掉一半简历。

**标签**: `#LLM`, `#hiring-tech`, `#ATS`, `#AI-reliability`, `#recruiting`

---

<a id="item-2"></a>
## [GLM 5.2 在 Semgrep 的网络安全基准测试中超越 Claude](https://semgrep.dev/blog/2026/we-have-mythos-at-home-glm-52-beats-claude-in-our-cyber-benchmarks/) ⭐️ 8.0/10

Semgrep 发布的一份基准测试报告称，开源权重模型 GLM 5.2 在网络安全任务上的表现超过了 Anthropic 的 Claude，并指出包裹模型的智能体框架（harness）可能比模型本身更重要。 这表明开源模型正以远低于专有前沿模型的成本，逐渐胜任严肃的真实编程和安全工作，挑战了 Claude 等闭源模型始终领先的固有观念。 据报道 GLM 5.2 是一个 753B 参数的模型，评论者指出其取舍：它便宜得多但完成任务更慢（有时约需 1 小时，而专有模型不到 5 分钟），且表现高度依赖所选用的框架，例如 OpenCode 或 Pi。

hackernews · Lobsters · 6月28日 17:50 · [社区讨论](https://news.ycombinator.com/item?id=48709670)

**背景**: 基准测试是用来比较 AI 模型能力的标准化测试，而 Semgrep 是一款静态分析安全工具，其团队构建了一个网络安全基准数据集。所谓“智能体框架”（agent harness）是围绕语言模型的编排层，负责管理提示词、工具调用和上下文，文章的核心观点是到 2026 年，框架设计在决定真实效果方面越来越能与模型本身的选择相抗衡。GLM 是源自北京清华大学的一个开源权重模型系列。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://semgrep.dev/docs/semgrep-multimodal/metrics">Metrics and methodology | Semgrep</a></li>
<li><a href="https://harness-engineering.ai/blog/agent-harness-complete-guide/">The Complete Guide to Agent Harness: What It Is and Why It ...</a></li>

</ul>
</details>

**社区讨论**: 评论者普遍认同 GLM 5.2 是一款强大且具成本效益的日常主力模型（有用户花 20 美元完成的项目，用 GPT 要花费 100 多美元），但有几人强调文章的真正论点是框架比模型更重要。也有人补充了细节，指出在他们自己的安全基准中 GLM 5.2 并非最佳开源模型（更青睐 DeepSeek V4 Pro），并对本地运行 753B 参数模型所需的硬件提出了现实顾虑。

**标签**: `#LLM`, `#AI-coding`, `#security`, `#benchmarks`, `#open-models`

---

<a id="item-3"></a>
## [年龄验证被视为在线言论自动身份归属的前兆](https://nonogra.ph/age-verification-is-just-a-precursor-to-attribution-of-speech-06-29-2026) ⭐️ 7.0/10

一篇评论文章主张，互联网年龄验证法律本身并非最终目的，而是迈向在线言论自动身份归属和更广泛国家监控的踏脚石。文章将强制年龄核查与一种更大的基础设施联系起来，这种基础设施可能把一个人在网上所说的一切永久地与其现实身份绑定。 如果年龄验证使例行身份核查变得常态化，它可能侵蚀网络匿名性并对言论自由产生寒蝉效应，影响的将是几乎所有互联网用户，而不仅仅是访问受限内容的人。这一论点对构建此类归属系统的技术人员来说高度相关。 文章将年龄验证与设备认证等配套机制相提并论，后者将要求使用未经修改、获政府批准的操作系统以及与用户身份关联的应用程序。文章指出，现代大语言模型和人工智能工具使得大规模自动归属和监控言论比过去更加可行。

hackernews · arkhiver · 6月29日 03:42 · [社区讨论](https://news.ycombinator.com/item?id=48714529)

**背景**: 年龄验证系统通过确认用户达到年龄要求来限制访问色情、赌博或酒精等内容，所用方法包括上传政府身份证件、生物特征面部扫描或基于人工智能的年龄估算。正如电子前沿基金会（EFF）等机构所指出的，这些方法无一例外都会收集敏感的个人信息并制造访问互联网的障碍。这里提出的担忧是，为年龄核查而建立的身份数据和验证基础设施日后可能被改用于将言论归属到特定个人身上。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.eff.org/deeplinks/2025/12/age-verification-coming-internet-we-built-you-resource-hub-fight-back">Age Verification Is Coming For the Internet. We Built You a Resource Hub to Fight Back. | Electronic Frontier Foundation</a></li>
<li><a href="https://en.wikipedia.org/wiki/Age_verification_system">Age verification - Wikipedia</a></li>
<li><a href="https://realeyes.ai/blog/how-does-online-age-verification-work/">How Does Age Verification Work Online? A Simple Guide</a></li>

</ul>
</details>

**社区讨论**: 评论者大多认同滑坡风险，提到设备认证是一种平行的管控手段，并警告说被记录且与身份关联的言论日后可能被用来对付人们。有一位虽持异议但内心矛盾的评论者认为，社交媒体对批判性思维的破坏或许使国家对有害言论施加某些管控成为一种无奈的必要，而其他人则引用了 Cory Doctorow 多年来关于政府终将试图监控互联网的警告。

**标签**: `#privacy`, `#age-verification`, `#surveillance`, `#internet-policy`, `#free-speech`

---

<a id="item-4"></a>
## [用 Claude Code 为自己的核磁共振影像求得第二诊断意见](https://antoine.fi/mri-analysis-using-claude-code-opus) ⭐️ 7.0/10

一位用户撰文记录了自己把肩部核磁共振影像交给 Anthropic 的 Claude Code（Opus 模型），以获取 AI 生成的放射诊断第二意见。该帖引发了大量讨论，获得了 425 个赞和 553 条评论，其中包括专业人士的回应。 随着强大的通用 AI 工具变得普及，越来越多的患者可能会用它们来解读医学影像，这引出了关于可靠性、误诊风险以及人类专家角色的现实问题。相关讨论凸显了人们对 AI 与受过训练的放射科医生之间的信任如何影响医疗决策。 讨论中一位执业放射科医生指出，大语言模型通常并不擅长解读医学影像，因为互联网上公开可获取的、带有诊断报告的扫描图像数量，与放射科医生在培训中阅读的影像量相比微乎其微。评论者还引用研究指出，偶发性异常极为常见，其中一项研究发现 40 岁以上成年人中有 99% 至少存在一处肩袖异常，这使得任何 AI 解读都更加复杂。

hackernews · engmarketer · 6月28日 16:35 · [社区讨论](https://news.ycombinator.com/item?id=48708941)

**背景**: Claude Code 是 Anthropic 推出的智能体编程工具，运行在终端中，可以读取文件、执行命令并处理内容，但它的设计用途是软件开发而非医疗。核磁共振成像（MRI）是一种能生成软组织细致影像的扫描技术，而放射科医生是受过专门训练来解读这些影像的专家；本例关注的是肩部扫描及其肩袖结构。尽管研究显示 AI 在受控环境下能辅助医学影像分析，但通用聊天机器人并不是经过验证可用于诊断的医疗设备。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://claude.com/product/claude-code">Claude Code by Anthropic | AI Coding Agent, Terminal, IDE</a></li>
<li><a href="https://www.nature.com/articles/s41586-025-08675-y">Multimodal generative AI for medical image interpretation</a></li>
<li><a href="https://pmc.ncbi.nlm.nih.gov/articles/PMC10740686/">How Artificial Intelligence Is Shaping Medical Imaging ...</a></li>

</ul>
</details>

**社区讨论**: 评论情绪复杂而多元：一些人认为能够不受时间压力地自由向 AI 提问很有价值，而一位执业放射科医生则因训练数据匮乏强烈质疑 AI 解读影像的可靠性。一位用户分享了自己被人类医生严重误诊（误诊为肺结核并被强制住院）的亲身经历，还有人引用研究指出偶发性异常极为普遍，相关发现很容易被过度解读。

**标签**: `#AI/ML`, `#LLM`, `#medical-imaging`, `#Claude`, `#healthcare`

---

<a id="item-5"></a>
## [ISC'26 大会上诞生 TOP500 新晋第一超算，疑似采用 SMIC 7 纳米 Arm 芯片](https://chipsandcheese.com/p/top500-at-isc26-we-have-a-new-number) ⭐️ 7.0/10

在 ISC'26 大会上，一台名为 LineShine 的新系统首次登榜并位居 TOP500 超算榜首，分析认为它采用基于 Arm 的 LX2 小芯片（chiplet），主频 1.55 GHz，很可能由中芯国际（SMIC）7 纳米（N+3）工艺制造，并基于 ARMv9.2 架构。 TOP500 榜首易主是高性能计算（HPC）领域的重大里程碑，而该系统疑似采用国产中芯国际 7 纳米小芯片，表明中国在先进制造设备出口受限的情况下，仍在持续推进高端计算能力的建设。 分析人士推断其采用中芯国际 7 纳米工艺，部分依据是该芯片仅以 1.55 GHz 运行，远低于该工艺可达到的约 3 GHz，暗示较低主频是为平衡内存与核心速度而选择，而非工艺本身的限制。

hackernews · Lobsters · 6月28日 19:38 · [社区讨论](https://news.ycombinator.com/item?id=48710775)

**背景**: TOP500 是每半年发布一次的全球最强超级计算机排名，基于 LINPACK 基准测试，衡量稠密线性代数的浮点运算性能。小芯片（chiplet）是指将多个较小的硅晶片封装在一起的技术，Arm 已通过其小芯片系统架构（CSA）对此进行了标准化。中芯国际（SMIC）是中国最大的芯片代工厂，其 7 纳米工艺（包含 N+1、N+2、N+3 等改进版本）已用于华为麒麟处理器等产品，且未使用西方代工厂依赖的 EUV 光刻技术。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.electronicdesign.com/blog/inside-electronics/podcast/55373929/electronic-design-arm-advances-the-chiplet-ecosystem">Arm Advances the Chiplet Ecosystem | Electronic Design</a></li>
<li><a href="https://wccftech.com/smic-5nm-process-showing-improved-energy-efficiency/">SMIC’s 5nm Process Rumored To Display Impressive Energy</a></li>
<li><a href="https://www.top500.org/lists/top500/2024/06/">June 2024 | TOP500</a></li>

</ul>
</details>

**社区讨论**: 评论者大多认为，TOP500 已沦为衡量「为炫耀而砸钱」的指标，而非实际计算能力，因为其 LINPACK 基准并非多数实际工作负载的真正瓶颈，且许多大型运营商（如云厂商和 AI 公司）并不参与排名。一些人指出中国可能运行着未公开、足以登顶的系统，另一些人则分享了支持 SMIC 7 纳米和 ARMv9.2 推测的参考资料。

**标签**: `#supercomputing`, `#HPC`, `#TOP500`, `#ARM`, `#semiconductors`

---

<a id="item-6"></a>
## [Token 最大化已死，Token 最大化万岁](https://12gramsofcarbon.com/p/agentics-tech-things-tokenmaxxing) ⭐️ 7.0/10

一篇评论文章认为，'token 最大化'（即把最大化大语言模型 token 消耗作为衡量生产力的代理指标的做法）已经见顶并正在被收回，同时批判性地剖析了推动这一趋势的管理层炒作和经济逻辑。 企业如何衡量和激励 AI 使用会塑造工程文化与预算，而把单纯的 token 消耗当作绩效指标，可能在不断壮大的智能体 AI 生态中奖励浪费而非真实成果。 文章探讨了'累积正确性'的说法——即在任务上花费更多 token 会带来更好的结果——但评论者对此提出异议，指出实践中的建议往往是频繁清除上下文，以防止智能体失控。

hackernews · theahura · 6月28日 16:24 · [社区讨论](https://news.ycombinator.com/item?id=48708795)

**背景**: token 是 AI 模型读取和生成内容的基本单位，大约相当于四个字符或约四分之三个单词，token 使用量通常用于衡量和计费大语言模型的活动。'token 最大化'指的是尽可能多地消耗 AI token，其理论是使用越多生产力越高，但批评者认为这一指标鼓励远超任务实际需要地使用 AI 工具，却并未改善真实产出。这发生在智能体 AI 在软件开发中崛起的大背景下，自治智能体会规划、编写和执行复杂任务，过程中往往消耗大量 token。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.usecarly.com/blog/what-is-token-maxxing/">What Is Token Maxxing ? The AI Productivity Trend, Explained</a></li>
<li><a href="https://www.mygreatlearning.com/blog/tokenmaxxing-explained-the-hidden-cost-of-workplace-ai/">Tokenmaxxing Explained: The Hidden Cost of Workplace AI in 2026</a></li>
<li><a href="https://www.forbes.com/councils/forbestechcouncil/2025/11/10/the-rise-of-the-agentic-sdlc-how-ai-agents-are-redefining-software-development/">The Rise Of The Agentic SDLC: How AI Agents Are ... - Forbes</a></li>

</ul>
</details>

**社区讨论**: 评论者大多持怀疑态度，嘲讽 token 最大化是一种深思熟虑的策略，而非脱离真实价值的管理者盲目追逐炒作，有人质疑'累积正确性'的说法，并指出他们并未看到智能体能可靠地累积成功而非错误。一种较为宽容的观点认为，以 token 消耗作为指标只是促使员工真正采用 AI 并了解其局限的临时手段，之后这一指标就会被收回。

**标签**: `#AI/LLM`, `#engineering-management`, `#agentic-AI`, `#industry-commentary`, `#developer-productivity`

---

<a id="item-7"></a>
## [布朗大学教授揭露考试中大规模 AI 作弊](https://english.elpais.com/education/2026-06-28/ai-fraud-at-brown-university-academic-integrity-is-at-risk.html) ⭐️ 7.0/10

一位布朗大学教授公开揭露了考试中普遍存在的 AI 辅助作弊行为，引发了关于大学应如何调整评估方式的广泛讨论，包括恢复线下考试和一对一面试。 像大语言模型这样的生成式 AI 工具正在削弱传统的带回家作业和考试，威胁着大学学位的诚信度和信号价值，迫使各院校的教育者重新思考如何衡量学生的真实学习成果。 教育者们提出了一些具体的应对措施，例如线下手写考试、大型阶梯教室监考，以及通过一对一面试来核实学生是否真正理解所提交的作业，部分教师还采用对抗性思路重新设计课程，确保即使追求高分的学生也能达到学习目标。

hackernews · geox · 6月28日 16:41 · [社区讨论](https://news.ycombinator.com/item?id=48708991)

**背景**: 像 ChatGPT 这样的大语言模型可以按需生成论文、解答习题集和编写代码，使学生能够轻松完成带回家作业和在线考试而无需亲自动手。在新冠疫情期间，大学普遍采用远程和带回家的评估方式，这使得作弊更难被察觉。由于成绩通常按正态分布曲线调整，AI 辅助作弊会直接损害那些诚实努力的学生的利益。

**社区讨论**: 评论者普遍认为评估方式必须转向线下手写形式和一对一面试，一位教授甚至认为 AI 时代讽刺性地可能让学位成为更强的能力信号。学生描述了正态曲线评分课程中令人痛苦的激励机制——诚实作答只能得 B 而作弊却能拿 A，教师们也分享了正在推行的对抗性课程重新设计策略。

**标签**: `#AI`, `#education`, `#academic-integrity`, `#LLMs`, `#assessment`

---

<a id="item-8"></a>
## [LibrePods 让 AirPods 功能在 Android 和 Linux 上可用](https://github.com/librepods-org/librepods) ⭐️ 7.0/10

LibrePods 是一款面向 Android 和 Linux 的开源应用，它逆向工程了苹果专有的 AirPods 功能，使入耳检测、通透模式和主动降噪控制等功能能够在非苹果设备上使用。 该项目展示了对抗厂商锁定的具体互操作性努力，让使用 Android 和 Linux 的 AirPods 用户能够获得苹果通常只为自家生态系统保留的功能。 LibrePods 实现了苹果配件协议（AAP），该协议通过 L2CAP 蓝牙通道在 PSM 0x1001 上运行，使用未加密的十六进制命令序列，这意味着设备命令没有受到专有加密的保护。

hackernews · rbanffy · 6月28日 18:48 · [社区讨论](https://news.ycombinator.com/item?id=48710232)

**背景**: AirPods 在任何设备上都可以作为标准蓝牙耳机使用，但苹果在其之上叠加了入耳检测、通透模式和无缝多设备切换等专有功能，这些功能通常只能在苹果生态系统内运行。逆向工程是指在没有官方文档的情况下，分析一个封闭系统如何通信，从而重新实现其行为。过去类似的努力包括 OpenDrop，这是一个在非苹果平台上重新实现苹果 AirDrop 文件共享协议的项目。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://byteiota.com/librepods-unlocks-airpods-on-android-lock-in-exposed/">LibrePods Unlocks AirPods on Android: Lock-In Exposed | byteiota</a></li>
<li><a href="https://www.theverge.com/news/824953/librepods-apple-airpods-wireless-headphones-android-linux">AirPods ’ best features come to Android and Linux with... | The Verge</a></li>
<li><a href="https://www.omgubuntu.co.uk/2025/11/airpods-linux-librepods-anc-transparency-mode">Use AirPods Pro Features on Linux with LibrePods - OMG! Ubuntu</a></li>

</ul>
</details>

**社区讨论**: 评论者澄清 AirPods 本来就能作为基础蓝牙耳机使用，而该项目添加的是额外的集成功能；同时有几位讨论了通过购买 AirPods 来支持一家“敌对”厂商的道德问题，并担心苹果最终可能会修补这一变通方法。其他人提到了 OpenDrop 等相关项目，并希望 AirDrop 也能以类似方式被“解放”。

**标签**: `#reverse-engineering`, `#open-source`, `#interoperability`, `#bluetooth`, `#apple`

---

<a id="item-9"></a>
## [OpenAI Codex 如何排除敏感文件引发未解决的讨论](https://github.com/openai/codex/issues/2847) ⭐️ 7.0/10

OpenAI Codex 代码仓库上一个仍未解决的 GitHub issue（#2847）请求增加一项内置功能，让编码代理无法访问敏感文件，由此引发了一场有 130 条评论的讨论，争论文件访问究竟应该采用选择性加入、选择性退出，还是通过操作系统层级权限与沙箱来强制实现。 随着 AI 编码代理获得对本地文件系统的广泛访问权限，控制它们能读取什么成为真正的安全问题，因为代理可能在上传包含敏感文件内容的工具输出时无意间泄露凭证或机密信息。这场讨论反映了业界一个更广泛的问题：智能代理工具的安全边界究竟应该设在哪一层。 评论者指出，考虑到 LLM 的不可预测性，应用层级的排除功能可能带来虚假的安全感——例如，模型运行像 "rg foo" 这样的搜索命令时，可能会在工具输出中暴露敏感文件的内容。提出的替代方案包括通过文件权限（chmod）进行技术性强制约束、在不挂载敏感文件的容器中运行 Codex，或仅将特定仓库文件绑定挂载到代理沙箱中。

hackernews · pikseladam · 6月28日 12:27 · [社区讨论](https://news.ycombinator.com/item?id=48706714)

**背景**: OpenAI Codex 是一个在开发者本地计算机上运行的编码代理，能够读取、写入和执行代码以完成工程任务。Codex CLI 提供三种权限模式——只读、自动和完全访问——用于控制文件、命令和网络权限。代理安全中有一个常见原则叫"礼貌代理"谬误：依赖系统提示或指令来保证安全是不可靠的，因此隔离应当通过技术性约束来强制实现，例如操作系统层级机制（macOS Seatbelt、Linux Landlock）或容器。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://ubos.tech/news/deep-dive-into-ai-agent-sandboxes-security-models-and-codex-permissions/">Deep Dive into AI Agent Sandboxes: Security Models and... - UBOS</a></li>
<li><a href="https://mortalapps.com/learn/ai-agents/agent-sandboxing-security-and-isolation-strategies/">Agent Sandboxing : Security and Isolation Strategies... | MortalApps</a></li>
<li><a href="https://github.com/openai/codex">GitHub - openai / codex : Lightweight coding agent that runs in your...</a></li>

</ul>
</details>

**社区讨论**: 社区大体上更倾向于技术性强制而非应用层级功能，建议用户现在就通过文件权限或在挂载了绑定仓库的容器中运行 Codex 来限制访问，其中一位评论者认为该功能毫无意义，只会带来虚假的安全感。一些参与者主张采用选择性加入（而非选择性退出）的访问模型，并分享了 agent-box 和安全 devcontainer 等开源沙箱工具作为实际解决方案。

**标签**: `#AI-agents`, `#security`, `#OpenAI-Codex`, `#sandboxing`, `#developer-tools`

---

<a id="item-10"></a>
## [拆解航天飞机输入/输出处理器电路板](https://www.righto.com/2026/06/space-shuttle-io-processor-boards.html) ⭐️ 7.0/10

Ken Shirriff 发表了一篇对航天飞机输入/输出处理器电路板的详细硬件拆解文章，分析了其确定性的总线控制单元（BCE）设计、康宁玻璃电容，以及轨道飞行器航电系统所采用的容错计算方案。 它罕见地近距离展示了上世纪七八十年代航天工程师如何在飞行关键硬件中实现可靠性和抗辐射能力，这些经验至今仍对容错系统和嵌入式系统设计具有借鉴意义。 每个输入/输出处理器由一个主序列控制器（MSC）作为执行单元，搭配 24 个总线控制单元，每个 BCE 运行一段确定性小程序，使用诸如发送数据、接收数据和等待等指令在网络端口与内存之间搬运数据字。

hackernews · Lobsters · 6月28日 16:16 · [社区讨论](https://news.ycombinator.com/item?id=48708700)

**背景**: 航天飞机的数据处理系统使用了五台 IBM AP-101 通用计算机，每台都配有独立的输入/输出处理器（IOP）来处理数据总线上的通信。多台计算机并行运行相同的指令以实现冗余，这是一种经典的容错技术，出故障或结果不一致的单元可以被投票剔除。玻璃电容（例如康宁公司生产的那种）因其在极端温度下的高稳定性和可靠性，在航空航天和军用电子设备中备受青睐。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/IBM_System/4_Pi">IBM System/4 Pi - Wikipedia</a></li>
<li><a href="https://www.righto.com/2026/06/space-shuttle-io-processor-boards.html">Examining circuit boards from the Space Shuttle's I/O Processor</a></li>
<li><a href="https://pcbsync.com/glass-capacitor/">Glass Capacitor: High Reliability Applications, Specs, and ...</a></li>

</ul>
</details>

**社区讨论**: 评论者将 BCE 的确定性指令集与现代 RP2040/RP2350 微控制器中的 PIO 单元做了细致的类比，对康宁玻璃电容的存在表示惊讶，并讨论了较低的元件密度和并行冗余计算机如何有助于抗辐射和容错，作者也在评论区积极答疑。

**标签**: `#hardware`, `#aerospace`, `#retrocomputing`, `#fault-tolerance`, `#embedded-systems`

---

<a id="item-11"></a>
## [隐私倡导者重启 fightchatcontrol.eu 以反对欧盟“聊天监控”威胁](https://www.patrick-breyer.de/en/double-threat-to-private-communications-undemocratic-chat-control-backroom-deals-and-imminent-concessions-spark-relaunch-of-fightchatcontrol-eu/) ⭐️ 7.0/10

隐私倡导者、前欧洲议会议员 Patrick Breyer 警告称，欧盟“聊天监控”在不透明的幕后谈判和即将做出的妥协中对私人通信构成了新的“双重威胁”，促使民间社会重新启动了 fightchatcontrol.eu 活动平台。重启后的网站让公民可以立即给欧盟立法者和政府代表发邮件，以反对这些措施。 欧盟“聊天监控”提案将要求消息平台扫描私人通信以查找儿童性虐待材料，这直接引发了对大规模监控、端到端加密完整性以及数亿用户数字隐私的担忧。其结果将影响欧洲乃至更广泛地区的消息服务提供商、软件开发者和整个安全社区。 被称为“聊天监控”的拟议《儿童性虐待条例》（CSAR）依赖客户端扫描，在加密前在用户设备上检查消息，批评者认为这破坏了端到端加密，尽管支持者声称并非如此。Breyer 将无差别的“聊天监控”描述为技术上已经过时、并在刑事司法层面被证明是失败的做法。

rss · Lobsters · 6月28日 19:48

**背景**: “聊天监控”指的是欧盟立法，将强制要求消息服务提供商扫描用户的私人消息以查找儿童性虐待材料。一项允许 Google、Meta、Microsoft 和 TikTok 等公司自愿扫描消息的临时条例已于 2026 年 4 月 3 日到期，此前欧洲议会以 311 票对 228 票否决了延长该条例。这场争论的核心是客户端扫描，这种技术在内容被加密之前就在设备上进行分析，隐私倡导者认为这破坏了端到端加密的保护。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://stateofsurveillance.org/news/eu-chat-control-expires-april-3-scanning-ends-whats-next-2026/">Chat Control Is Dead. Long Live Chat Control. - State of ...</a></li>
<li><a href="https://stateofsurveillance.org/news/eu-chat-control-csar-encryption-scanning-2026/">EU Chat Control: The Plan to Scan Every Private Message ...</a></li>
<li><a href="https://www.patrick-breyer.de/en/double-threat-to-private-communications-undemocratic-chat-control-backroom-deals-and-imminent-concessions-spark-relaunch-of-fightchatcontrol-eu/">“Double Threat” to Private Communications: Undemocratic Chat ...</a></li>

</ul>
</details>

**标签**: `#privacy`, `#encryption`, `#EU-policy`, `#chat-control`, `#digital-rights`

---

<a id="item-12"></a>
## [Ante 语言将借用检查与引用计数相结合](https://verdagon.dev/blog/ante-blending-borrowing-rc) ⭐️ 7.0/10

verdagon.dev 上的一篇博客文章探讨了 Ante 编程语言如何将借用检查与引用计数结合起来，仅在借用检查本身无法保证内存安全的地方自动插入引用计数操作。这种方式让大部分代码以零开销的借用检查运行，而在更棘手的情况下回退到引用计数。 内存管理仍然是语言设计中的核心权衡之一，而一种既能提供类似 Rust 的安全性、又不必承担手动借用检查全部使用负担的混合方案，可能降低编写安全系统代码的门槛。这种介于严格所有权与垃圾回收之间的中间地带是一个活跃的研究领域，可能影响未来的语言设计。 Ante 是一门静态类型的低级函数式语言，旨在探索代数效应和安全共享可变性等新特性，这篇文章详细说明了它如何判断何时借用就足够、何时需要引用计数。作为一门实验性的研究语言，这些技术属于探索性质而非可用于生产环境，且该混合模型也带来了自身的运行时考量。

rss · Lobsters · 6月29日 01:37

**背景**: 由 Rust 推广的借用检查在编译时通过追踪所有权和引用来强制保证内存安全，没有运行时开销，但它可能限制较多且不易使用。引用计数则追踪有多少引用指向某个值，并在计数归零时释放它，以运行时开销为代价换取灵活性。垃圾回收以性能不够可预测为代价实现内存管理的自动化，因此将借用检查与引用计数相结合，旨在兼顾编译期安全与运行时灵活性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://antelang.org/">Ante</a></li>
<li><a href="https://deepwiki.com/jfecher/ante">jfecher/ ante | DeepWiki</a></li>

</ul>
</details>

**标签**: `#programming-languages`, `#memory-management`, `#borrow-checking`, `#reference-counting`, `#language-design`

---

<a id="item-13"></a>
## [一种带类型的代数化解析方法（PLDI 2019）](https://www.cl.cam.ac.uk/~nk480/parsing.pdf) ⭐️ 7.0/10

这篇 PLDI 2019 论文为上下文无关表达式（μ-正则表达式）引入了一套类型系统，并证明该系统行为良好——语法替换能保持类型、对指称语义是可靠的，且所有良类型的文法都保证无歧义。作者随后基于该类型系统构建了一个 OCaml 的解析器组合子库。 解析器组合子应用广泛，但常常存在歧义和细微的正确性缺陷，且往往只在运行时才暴露，因此一套能在静态层面排除歧义文法的类型系统，为这种流行却易出错的技术带来了形式化的正确性保证。它把实用的解析工具与扎实的编程语言理论连接起来，有望让基于组合子的解析器更安全、更易于推理。 该工作通过上下文无关表达式以代数方式呈现上下文无关语言，关键理论结果是：类型系统在替换下保持类型、相对于指称语义是可靠的，并保证良类型文法无歧义。其实践成果是一个直接基于该类型化基础构建的 OCaml 解析器组合子库。

rss · Lobsters · 6月28日 15:45

**背景**: 解析器组合子是一种将小型解析函数组合起来、以构建复杂文法解析器的技术，在函数式语言中很受欢迎，因为文法可以简洁地表达为普通代码。上下文无关文法描述了大多数编程语言的结构，但组合子库通常无法静态保证文法无歧义，即同一段输入可能被解析出多种结果。这篇论文运用类型理论和指称语义（用于规约和推理程序含义的形式化数学工具）来提前给出这种保证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.cl.cam.ac.uk/~nk480/parsing.pdf">A Typed, Algebraic Approach to Parsing</a></li>
<li><a href="https://pldi19.sigplan.org/details/pldi-2019-papers/27/A-Typed-Algebraic-Approach-to-Parsing">A Typed, Algebraic Approach to Parsing (PLDI 2019 - PLDI ...</a></li>

</ul>
</details>

**标签**: `#parsing`, `#programming-languages`, `#type-theory`, `#formal-methods`, `#academic-research`

---

<a id="item-14"></a>
## [VictoriaLogs 如何以列式布局存储日志](https://victoriametrics.com/blog/victorialogs-internals-columnar-storage-on-disk/) ⭐️ 7.0/10

VictoriaMetrics 发布了一篇工程深度解析文章，详细说明其开源日志数据库 VictoriaLogs 如何采用列式布局（而非传统的行式格式）将日志数据存储在磁盘上。 列式存储能让日志数据库减少 I/O 并实现更激进的数据压缩，这对运行大规模可观测性系统的团队尤为重要，因为存储成本和查询速度是关键考量。 文章聚焦于 VictoriaLogs 的磁盘存储架构，该数据库提供单节点和集群两个版本且完全开源，旨在高效地摄取、存储和查询从小型到大规模部署的日志数据。

rss · Lobsters · 6月28日 12:23

**背景**: VictoriaLogs 是由 VictoriaMetrics 团队打造的高性能开源日志数据库，能够处理从小型单节点部署到大型集群的日志摄取与查询。列式数据库将每一列数据单独存储在磁盘上，这能减少查询时读取的数据量，并因相似值聚集在一起而实现更强的压缩。这与行式存储不同——行式存储将一条记录的所有字段存放在一起，而列式设计是分析和可观测性场景（如 Apache Parquet 和 ClickHouse 等工具）的常见选择。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/VictoriaMetrics/VictoriaLogs">VictoriaMetrics/ VictoriaLogs : Fast and easy to use database for logs ...</a></li>
<li><a href="https://clickhouse.com/resources/engineering/what-is-columnar-database">What is a columnar database? | ClickHouse Resource Hub</a></li>
<li><a href="https://www.linuxlinks.com/victorialogs-high-performance-log-database/">VictoriaLogs - high-performance log database - LinuxLinks</a></li>

</ul>
</details>

**标签**: `#databases`, `#observability`, `#columnar-storage`, `#systems-engineering`, `#logging`

---

<a id="item-15"></a>
## [文档核心演算：为文档语言语义建立形式化模型](https://dl.acm.org/doi/pdf/10.1145/3632865) ⭐️ 7.0/10

研究者提出了一个面向文档的形式化核心演算（发表于 ACM，DOI 为 10.1145/3632865），它在 System F 的基础上引入模板（template）概念，用于刻画文档语言的核心计算特性。该工作为模板提供了静态语义和动态语义，并对引用标记、响应式更新等运行时扩展进行了建模。 该演算为 Markdown、LaTeX 以及各类模板系统这样的文档语言提供了严谨的理论基础，使编程语言研究者能够精确地推理文档的处理、组合与正确性。它在日常文档工具与形式化编程语言理论之间架起了桥梁，有望指导设计出更安全、更具表达力的文档语言。 该模型在 System F（多态 lambda 演算）之上扩展了模板，是论文的核心贡献，其副标题也致敬了经典的“Lambda: The Ultimate”系列。Cognitive Engineering Lab 在 document-calculus 仓库中提供了开源实现，涵盖论文中描述的静态/动态语义及运行时扩展。

rss · Lobsters · 6月28日 20:12

**背景**: “核心演算”是一种小型形式系统，用于抓住一门语言的本质语义，正如 lambda 演算是函数式编程的理论基础。System F 是带多态（类型）的 lambda 演算，在基本模型上增加了泛型类型。Markdown、LaTeX 以及各种网页模板引擎这类文档语言会把静态文本与替换、条件、响应式更新等计算特性混合在一起，但长期以来缺乏对这些特性行为的统一形式化刻画。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arxiv.org/pdf/2310.04368v1">A Core Calculus for Documents - arXiv.org</a></li>
<li><a href="https://github.com/cognitive-engineering-lab/document-calculus/blob/main/README.md">document-calculus/README.md at main · cognitive-engineering ...</a></li>
<li><a href="https://en.wikipedia.org/wiki/Lambda_calculus">Lambda calculus - Wikipedia</a></li>

</ul>
</details>

**标签**: `#programming-languages`, `#formal-methods`, `#document-processing`, `#academic-research`, `#calculus`

---

<a id="item-16"></a>
## [优化 LLVM 的 bump 分配器以提升性能](https://maskray.me/blog/2026-06-28-optimizing-llvm-bump-allocator) ⭐️ 7.0/10

MaskRay 的一篇技术博客从指令层面剖析了 LLVM 的 bump 指针分配器的工作方式，并探讨了对其分配快速路径的优化。文章分析了诸如 rax/rcx 寄存器的使用，以及 LLVM 分配器为何采用向上而非向下移动指针的设计等细节。 LLVM 是使用最广泛的编译器基础设施之一，因此即便是分配器上的微小改进也能在无数编译任务中累积效果，惠及各地的系统和编译器工程师。底层内存分配性能会直接影响编译器的速度和资源占用。 文章指出，向下移动指针的分配器会少一个活跃值（消除 rax/rcx 的区分），但指令数量保持不变；而 LLVM 之所以按设计向上移动指针，是因为 identifyObject、分配顺序以及 SpecificBumpPtrAllocator::DestroyAll 中向前的 sizeof(T) 步长都依赖于此。这些设计约束限制了快速路径的重构方式。

rss · Lobsters · 6月29日 04:25

**背景**: bump 分配器是一种快速但受限的内存分配技术：它持有一块内存和一个指针，每次分配只需检查剩余容量，然后将指针前移对象大小的距离。这使得分配极其廉价，但代价是通常无法单独释放各个对象——整个内存区域会被一次性回收。LLVM 是一套模块化、可复用的编译器与工具链技术集合，其内部依赖这类分配器来实现快速的、短生命周期的内存管理。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/fitzgen/bumpalo">GitHub - fitzgen/bumpalo: A fast bump allocation arena for ...</a></li>
<li><a href="https://en.wikipedia.org/wiki/Region-based_memory_management">Region-based memory management - Wikipedia</a></li>
<li><a href="https://llvm.org/">The LLVM Compiler Infrastructure Project</a></li>

</ul>
</details>

**标签**: `#LLVM`, `#compilers`, `#memory-allocation`, `#performance-optimization`, `#systems-programming`

---

<a id="item-17"></a>
## [斯坦福图表追踪 1960 至 2026 年每 GB 内存价格](https://dam.stanford.edu/memory-prices.html) ⭐️ 6.0/10

斯坦福发布了一个交互式数据可视化图表，追踪从 1960 年到 2026 年每 GB 计算机内存和存储的价格，展示了数十年间价格的大幅下降以及最近的上涨。该图表在讨论帖中获得了 292 分和 106 条评论。 该图表为理解计算经济学的演变提供了长期参考，而它恰好出现在 AI 驱动的数据中心需求逆转历史趋势、于 2025 年大幅推高 DRAM 和 NAND 价格的时刻。它帮助读者把当前的内存涨价放在过去六十年成本持续下降的背景下来理解。 评论者指出价格未经通胀调整，这低估了 1960 至 1980 年代内存的昂贵程度；而在 1990 年之前用"每 GB"来衡量也有些不合时宜，因为当时的系统根本不以 GB 为单位来设想。还有读者指出，最近的 DRAM 数据点反映的是较老的 DDR3 模块（包括一根 2025 年的 2GB 内存条），这使情况看起来比当前高密度内存的实际定价更乐观。

hackernews · vga1 · 6月28日 18:32 · [社区讨论](https://news.ycombinator.com/item?id=48710092)

**背景**: 自 1960 年代以来，随着半导体制造规模化，每 GB 内存价格下降了许多个数量级，这就是为什么早期系统以 KB 或 MB 为单位衡量内存，而非如今常见的 GB。然而从 2025 年开始出现了全球内存供应短缺：AI 和数据中心工作负载的爆炸性需求超过了 DRAM 和 NAND 闪存供应，逆转了此前的价格趋稳态势并大幅推高价格。"软件臃肿"指现代应用和操作系统倾向于消耗远超旧版本的内存和资源，部分抵消了硬件进步带来的收益。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/2025–present_global_memory_supply_shortage">2025–present global memory supply shortage - Wikipedia</a></li>
<li><a href="https://intuitionlabs.ai/articles/ram-shortage-2025-ai-demand">RAM Shortage 2025: How AI Demand is Raising DRAM Prices</a></li>

</ul>
</details>

**社区讨论**: 评论者欢迎该图表，但提出了方法论上的担忧，指出价格未经通胀调整，且对 1990 年前的时代用每 GB 来衡量并不现实。其他人讨论了当前 AI 驱动的涨价，推测价格可能在约五年后回落，警告若供应神秘下线可能存在市场串通，并预测科技巨头和中国制造商将推动内存供应链的多元化。还有读者指出最近的 DRAM 数据依赖较老的 DDR3 内存条，使情况看起来比实际更乐观。

**标签**: `#hardware`, `#memory`, `#data-visualization`, `#computing-history`, `#economics`

---

<a id="item-18"></a>
## [KIDS 法案将要求进行年龄验证才能上网](https://www.eff.org/deeplinks/2026/06/kids-act-would-require-age-checks-get-online) ⭐️ 6.0/10

电子前哨基金会(EFF)发出行动号召,反对 KIDS 法案。该法案将强制要求进行年龄验证才能访问互联网,引发了关于隐私、儿童安全研究和立法动机的争论。

hackernews · bilsbie · 6月28日 11:56 · [社区讨论](https://news.ycombinator.com/item?id=48706560)

**标签**: `#privacy`, `#internet-policy`, `#age-verification`, `#legislation`, `#digital-rights`

---

<a id="item-19"></a>
## [在冷门的 MIPS 架构 Lemote Yeeloong 笔记本上运行 OpenBSD](http://oldvcr.blogspot.com/2026/06/working-around-dragons-with-lemote.html) ⭐️ 6.0/10

一位复古计算博主详细记录了在基于龙芯 MIPS 架构的 Lemote Yeeloong 笔记本上安装并运行 OpenBSD 的全过程，途中逐一解决了硬件怪癖和软件依赖方面的难题。 这篇文章保存了关于一款不寻常的、获 FSF 认可的开放硬件平台的实用知识，而这款设备如今已基本被遗忘，有助于复古计算与自由软件社区让这类机器继续可用。 作者遇到了一些问题，例如 NetSurf 浏览器引入了庞大的 GTK 依赖，以及一个奇怪的 wsconscfg 多屏问题——尽管 Yeeloong 的显示器是以无 GPU 加速的纯帧缓冲模式（smfb0）运行的。

hackernews · zdw · 6月28日 16:58 · [社区讨论](https://news.ycombinator.com/item?id=48709187)

**背景**: Lemote Yeeloong 是一款约在 2010 至 2012 年间生产的中国笔记本电脑，采用基于 MIPS 指令集的龙芯处理器，因能够完全运行自由软件而成为少数获自由软件基金会（FSF）认可的机型之一。OpenBSD 是一款注重安全的类 Unix 操作系统，支持包括 MIPS 在内的多种 CPU 架构。龙芯芯片（代号 Godson）是中国在自主 CPU 独立方面的重要努力，后来演进为 LoongArch 架构。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Lemote">Lemote - Wikipedia</a></li>
<li><a href="https://www.cnx-software.com/2021/04/17/loongson-loongarch-cpu-instruction-set-architecture/">Loongson unveils LoongArch CPU instruction set architecture for</a></li>

</ul>
</details>

**社区讨论**: 评论者补充了不少有价值的背景，包括 Godson 代号的中文来源（狗剩，意为‘给狗剩下的’），以及指出 NetSurf 更轻量的 SDL 帧缓冲前端可以避免 GTK 的臃肿依赖。还有人讨论了 Yeeloong 内部基于 PS/2 的键盘和触摸板是 PC 对 MIPS 硬件的残留影响，并对纯帧缓冲设备上奇怪的多屏 wsconscfg 行为感到困惑。

**标签**: `#OpenBSD`, `#retrocomputing`, `#MIPS`, `#hardware`, `#Lemote-Yeeloong`

---

<a id="item-20"></a>
## [刚刚，姚班传奇陈立杰苦思 7 年的计算几何核心难题，被 ChatGPT 推翻了](https://mp.weixin.qq.com/s?__biz=MzI3MTA0MTk1MA==&mid=2652709773&idx=2&sn=68bde762eb0070f5bd61518728971232) ⭐️ 6.0/10

一篇微信文章声称，ChatGPT 推翻了研究者陈立杰钻研了七年的一道计算几何难题，该成果建立在 OpenAI 近期公布的关于一个厄多斯猜想的工作之上。

rss · 新智元 · 6月29日 05:01

**标签**: `#AI/ML`, `#computational-geometry`, `#theoretical-cs`, `#OpenAI`, `#mathematics`

---

<a id="item-21"></a>
## [Jon Udell：把“人在回路中”翻转为“代理在回路中”](https://simonwillison.net/2026/Jun/28/jon-udell/#atom-everything) ⭐️ 6.0/10

在一篇由 Simon Willison 转发的文章中，Jon Udell 主张重新定义“人在回路中”这一说法，提出开发者应把它看作属于自己的工作流程，并把 AI 代理招募进来作为团队成员。他是在讨论代理生成无法审查的拉取请求这一背景下提出的，认为代理辅助的流程不必是一个黑盒。 这一表述上的转变之所以重要，是因为它反对将权力让渡给自动化系统，而是在 AI 编程代理日益强大的同时，让开发者继续掌控自己既有的工作流程。它也回应了一个日益增长的担忧：代理产出庞大、难以审查的改动，从而削弱了人类的监督能力。 Udell 的具体不满体现在他的文章标题“医生，代理生成无法审查的 PR 时很痛苦”和回复“那就别那么做”中，即代理不应产出庞大且不透明的拉取请求。他提出的替代方案是把代理当作被招募进透明、由人主导的回路中的团队成员，而不是一个只接收提示、产出功能的系统。

rss · Simon Willison · 6月28日 21:57

**背景**: “人在回路中”（HITL）指的是由人类主动参与监督、审查或批准自动化流程的系统，与完全自主的系统形成对比。代理式软件开发描述了从 AI 自动补全工具向能够执行更大任务（如编写并提交代码改动）的 AI 代理的转变。拉取请求（PR）是在代码改动合并进项目之前进行提议和审查的标准机制。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.ibm.com/think/topics/human-in-the-loop">What Is Human In The Loop (HITL)? | IBM</a></li>
<li><a href="https://www.airtable.com/articles/human-in-the-loop-ai">Why Human - in - the - loop AI Defines the Future of... | Airtable</a></li>

</ul>
</details>

**标签**: `#coding-agents`, `#ai-assisted-development`, `#software-engineering`, `#developer-workflow`, `#commentary`

---

<a id="item-22"></a>
## [Interconnects 综述：Zyphra、Cohere 与 Poolside 拓展开放模型生态](https://www.interconnects.ai/p/artifacts-22-zyphra-cohere-and-poolside) ⭐️ 6.0/10

Nathan Lambert 的 Interconnects 通讯发布了第 22 期“开放制品”综述，盘点了 Zyphra、Cohere 和 Poolside 近期发布的开放模型，并探讨了这些实验室选择开放模型的动机。 持续追踪开放权重模型的发布节奏，有助于从业者评估开放 AI 生态的健康度和广度；当更多实验室扩展其产品时，可能改变其与闭源前沿厂商之间的竞争格局。 本期综述聚焦于 Zyphra 紧凑的 Zamba 7B 模型系列及其 Zonos 文本转语音工作，以及 Poolside 面向代码的工作——后者通过其“Model Factory”基础设施中的强化学习训练基础模型。所提供的摘要较为简短，除了罗列这些发布及开放分发的理由外，技术深度有限。

rss · Interconnects · 6月28日 17:03

**背景**: Interconnects 是研究者 Nathan Lambert 运营的 AI 通讯，定期盘点“开放制品”——公开发布的模型权重、数据集和工具。开放权重模型将其训练好的参数公开供下载，与仅通过 API 访问的闭源模型不同，使开发者能够在本地运行、微调和研究它们。Zyphra 以 Zamba（一个混合架构的 7B 规模模型）等高效小模型和 Zonos 等语音模型而闻名，而 Poolside 则是一家专注于构建代码生成基础模型的前沿实验室。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.zyphra.com/post/zamba">Zyphra</a></li>
<li><a href="https://en.wikipedia.org/wiki/Poolside_AI">Poolside AI - Wikipedia</a></li>
<li><a href="https://www.poolside.ai/">Poolside</a></li>

</ul>
</details>

**标签**: `#open-source-models`, `#AI/ML`, `#LLMs`, `#ecosystem`, `#newsletter`

---

<a id="item-23"></a>
## [深不可测的 Bug 系列第 10 篇：破窗式构建问题](https://algassert.com/post/2603) ⭐️ 6.0/10

Craig Gidney 在其‘深不可测的 Bug’博客系列中发布了第 10 篇文章，名为《破窗式构建》，这是一篇围绕‘破窗’概念展开的调试案例研究，剖析了一个棘手的构建问题。文章本身是深度叙述，相关讨论发生在 Lobsters 上。 详尽的根因调试文章能帮助工程师学习系统化的排错方法，并认识到被忽视的小问题如何累积成更大的故障。‘破窗’这一视角把一个具体的构建 bug 与关于代码质量和维护纪律的更广泛软件工程原则联系了起来。 提供的材料仅包含指向 Lobsters 评论区的链接，没有摘录文章正文，因此具体的 bug、其症状和解决方法只能从标题和系列背景中推断。该文是一个持续编号系列的第 10 篇，表明其采用一贯的以叙事驱动的调试案例研究形式。

rss · Lobsters · 6月28日 20:38

**背景**: 软件工程中的‘破窗理论’由《务实程序员》一书推广，认为放任不修复诸如糟糕设计或劣质代码这样的小问题，会传递出‘质量无关紧要’的信号，从而助长进一步的恶化。应用到构建过程时，一个被容忍的缺陷可能让马虎成为常态，直到整个系统退化。‘深不可测的 Bug’系列记录了异常棘手的 bug 以及追查其根本原因的调查过程。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://blog.codinghorror.com/the-broken-window-theory/">The Broken Window Theory - Coding Horror</a></li>
<li><a href="https://dev.to/wmattei/the-broken-windows-theory-in-software-development-why-you-must-fix-everything-now-fdp">The Broken Windows Theory in Software Development: Why You ...</a></li>

</ul>
</details>

**标签**: `#debugging`, `#software-engineering`, `#build-systems`, `#case-study`

---

<a id="item-24"></a>
## [卡巴斯基披露 StrikeShark 行动：借助 SharkLoader 投放 Cobalt Strike](https://www.anavem.com/en/news/cybersecurity/strikeshark-chinese-campaign-deploys-cobalt-strike) ⭐️ 6.0/10

卡巴斯基记录了一项被其命名为 StrikeShark 的威胁行动，幕后疑似为讲中文的攻击者；该行动使用此前未被记录的加载器 SharkLoader，并结合公开的 CVE 漏洞利用，向被攻陷的主机投放 Cobalt Strike Beacon 载荷。 据报道，该行动针对台湾、香港、黎巴嫩、叙利亚、哥伦比亚和塞尔维亚等多个地区的外交和政府机构，因此对保护高价值组织、防范与国家相关的间谍活动的防御者具有现实意义。 SharkLoader 是一种高度规避检测的加载器，其唯一作用是下载并执行 Cobalt Strike Beacon；攻击者在初始入侵阶段依赖已知的、公开可用的 CVE 漏洞利用，而非新型零日技术。

rss · Anavem.com · 6月28日 11:01

**背景**: Cobalt Strike 是一款商业渗透测试和对手模拟工具，其 Beacon 载荷常被真实攻击者滥用，用于在系统被攻陷后进行远程命令与控制。像 SharkLoader 这样的加载器是一种恶意软件，旨在隐蔽地获取并运行后续载荷，作为中间阶段帮助在部署主工具前规避检测。公开的 CVE 漏洞利用指针对已披露漏洞的攻击代码，攻击者会用它来攻击尚未打补丁的系统。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thehackernews.com/2026/06/new-sharkloader-malware-deploys-cobalt.html">New SharkLoader Malware Deploys Cobalt Strike in StrikeShark ...</a></li>
<li><a href="https://cyberpress.org/sharkloader-targets-global-governments/">New SharkLoader Malware Targets Diplomatic and Government ...</a></li>
<li><a href="https://www.cynet.com/network-attacks/cobalt-strike-white-hat-hacker-powerhouse-in-the-wrong-hands/">What Is Cobalt Strike and How Does It Work?</a></li>

</ul>
</details>

**标签**: `#cybersecurity`, `#threat-intelligence`, `#cobalt-strike`, `#malware`, `#APT`

---

<a id="item-25"></a>
## [5000 份纽约历史菜单的交互式数据可视化（1880-1920）](https://pudding.cool/2026/06/menu-story/) ⭐️ 5.0/10

数据新闻媒体 The Pudding 发布了一篇交互式可视化报道，分析了纽约公共图书馆 Buttolph 藏品中 1880 至 1920 年间的 5000 份餐厅菜单。这篇作品展现了在这四十年里菜品、餐饮分类和定价的演变过程。 这个项目展示了数字化的历史档案如何被转化为通俗易懂、引人入胜的公共叙事，从而揭示社会与经济史。它体现了交互式数据呈现的工艺，让普通读者也能探索庞大的文化数据集。 该可视化作品取材于纽约公共图书馆规模更大的菜单档案的一个子集，该档案藏有超过 45000 份历史菜单，其中约半数由 Frank E. Buttolph 在 1900 至 1921 年间收集和整理。报道建议读者先浏览经过编排的叙事故事，再自由探索更广泛的菜单收藏可视化。

hackernews · xbryanx · 6月28日 14:44 · [社区讨论](https://news.ycombinator.com/item?id=48707763)

**背景**: Buttolph 藏品是纽约公共图书馆收藏的一批大型历史餐厅与活动菜单档案，以 Frank E. Buttolph 命名，她在 1924 年去世前收集了超过 25000 份菜单。The Pudding 是一家以可视化文章闻名的数字出版物，通过交互式数据叙事来解读文化与社会话题。两者结合为我们提供了一扇窗口，得以了解 20 世纪初美国日常餐饮、饮食潮流与价格的样貌。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://digitalcollections.nypl.org/collections/e5114e30-c52f-012f-993c-58d385a7bc34">The Buttolph collection of menus - NYPL Digital Collections</a></li>
<li><a href="http://curatingmenus.org/">Curating Menus</a></li>
<li><a href="https://awards.journalists.org/entries/the-pudding-2/">The Pudding - Online Journalism Awards</a></li>

</ul>
</details>

**社区讨论**: 评论者们表达了对饮食历史的热情，指出菜单在 175 年间变化出奇地小（除了早期常见的“水煮”这类分类），并思考了极低的绝对价格（比如 5 美分的食材成本）可能如何影响了菜品本身。还有人补充了相关的文化趣谈，从德国受法律保护的啤酒垫计数系统，到 2000 年代纽约中餐外卖菜单上独特的剪贴画美学。

**标签**: `#data-visualization`, `#digital-humanities`, `#history`, `#interactive-storytelling`, `#datasets`

---

<a id="item-26"></a>
## [迈向可理解的软件](https://gracefulliberty.com/articles/towards-understandable-software/) ⭐️ 5.0/10

这篇文章主张设计更易于理解的软件，并探讨了提升代码可读性与可维护性的方法和原则。全文发布在 gracefulliberty.com 上，讨论则托管在 Lobsters 社区。 软件的可理解性直接影响团队上手、调试和扩展代码库的速度，因此几乎是每个工程团队都会反复面对的问题。把可理解性当作首要的设计目标而非事后补救，能够降低长期的维护成本。 此处提供的内容仅包含指向 Lobsters 评论区的链接，因此无法从现有材料中评估文章的具体论点、示例和技术深度。读者应直接查阅原文，以判断其具体建议的价值。

rss · Lobsters · 6月28日 14:50

**背景**: 软件可维护性和代码可理解性是软件工程中长期存在的主题，通常与可读性、认知负荷以及良好的命名或模块化设计等概念相关。Lobsters 是一个由社区驱动的链接聚合与讨论网站，专注于计算和编程话题，理念上类似于 Hacker News。

**标签**: `#software-engineering`, `#code-quality`, `#software-design`, `#maintainability`

---

<a id="item-27"></a>
## [重温 HyperCard：Macintosh 上开创性的超媒体工具](https://stonetools.ghost.io/hypercard-mac/) ⭐️ 5.0/10

一篇文章探讨了 HyperCard——为经典 Macintosh 打造的极具影响力的超媒体与终端用户编程环境，包括其 HyperTalk 脚本语言。这篇文章是对一个让普通用户在现代网络出现之前就能构建交互式应用的系统的回顾。 HyperCard 是最早成功的超媒体系统之一，且早于万维网出现，因此成为理解超链接和大众化编程起源的重要参照点。它"为普通人编程"的设计理念至今仍影响着我们如何思考赋能非程序员去构建软件。 HyperCard 将平面文件数据库与可由用户修改的图形界面结合在一起，并内置了 HyperTalk——一种由 Dan Winkler 于 1987 年创建的高级过程式语言，采用类似 Pascal 的英语化语法。其相互链接的屏幕被称为由"卡片"组成的"栈"（stacks），编写程序被称为"脚本编写"，用户被称为作者而非程序员。

rss · Lobsters · 6月28日 19:43

**背景**: HyperCard 由 Bill Atkinson 创建，1987 年由 Apple 为 Macintosh 发布，其理念是"为普通人编程"。它让用户将包含文本、图形和音频的卡片链接成可导航的栈，这一思路预示了万维网的超链接结构。配套的脚本语言 HyperTalk 通过类似纯英语的命令，使构建交互式软件对初学者也变得平易近人。尽管早已停止开发，HyperCard 在历史上仍具有重要意义，并启发了 NovoCard 和 BayCard 等现代复刻项目。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/HyperCard">HyperCard - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/HyperTalk">HyperTalk - Wikipedia</a></li>
<li><a href="https://www.britannica.com/technology/Hypertalk">Hypertalk | Scripting, Programming, Mac OS | Britannica scriptingLanguage | HyperTalk Reference | The HyperCard Center XXIIVV — hypertalk HyperCard script language guide : the HyperTalk language HyperTalk | Apple Wiki | Fandom</a></li>

</ul>
</details>

**标签**: `#HyperCard`, `#Macintosh`, `#computing-history`, `#hypermedia`, `#end-user-programming`

---

<a id="item-28"></a>
## [你可能并不需要 Service Worker](https://www.jayfreestone.com/writing/you-might-not-need-a-service-worker/) ⭐️ 5.0/10

Jay Freestone 发表了一篇观点文章，认为许多 Web 应用在没有必要的情况下采用了 Service Worker，并探讨了一些无需增加复杂度即可实现类似目标的更简单替代方案。 Service Worker 会带来实实在在的维护和调试成本，因此质疑它们究竟何时真正必要，有助于前端开发者避免过度工程化，并为性能和离线需求选择更轻量的方案。 这篇文章沿用了广为人知的“你可能不需要某某”格式，将 Service Worker 与更简单的缓存和性能技术进行权衡，而非完全否定它们。由于无法获取文章正文，这里未能记录其推荐的具体替代方案。

rss · Lobsters · 6月29日 03:08

**背景**: Service Worker 是浏览器在后台运行、独立于网页的脚本，可通过 Cache API 实现离线支持、拦截网络请求和缓存等功能。它们是渐进式 Web 应用（PWA）的核心构件，旨在让网站表现得更像具备离线访问和添加到主屏功能的原生应用。然而，Service Worker 引入了独立的生命周期和缓存层，管理起来颇为棘手，这也是部分开发者质疑是否有更简单方案足以应对的原因。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://web.dev/learn/pwa/service-workers/">Service workers | web.dev</a></li>
<li><a href="https://felixgerschau.com/service-workers-explained-introduction-javascript-api/">Service Workers Explained - Introduction to the JavaScript API</a></li>

</ul>
</details>

**标签**: `#web-development`, `#service-workers`, `#frontend`, `#performance`, `#best-practices`

---

<a id="item-29"></a>
## [编写能在不同引擎间通用的正则表达式](https://www.johndcook.com/blog/2026/06/23/regex-everywhere/) ⭐️ 5.0/10

John D. Cook 发表了一篇博客文章，探讨如何编写在不同正则表达式实现和工具间行为一致的正则表达式，而不是依赖某个引擎特有的功能。 开发者经常需要在不同语言和命令行工具之间迁移正则表达式，而在一个环境中可用的模式在另一个环境中可能会悄然失效或表现不同，因此可移植的写法能够节省调试时间并减少错误。 不同风格之间存在关键的不兼容，例如 POSIX BRE/ERE 与 PCRE 之间的差异，基本 POSIX 语法缺少 +、{n,m} 和 (?...) 分组等特性，而像 \d 这样的简写字符类在 grep 等工具中默认并不被支持。

rss · Lobsters · 6月28日 13:18

**背景**: 正则表达式是许多编程语言和命令行工具支持的文本匹配模式，但其语法并没有单一的通用标准。常见的风格包括 POSIX（其基本和扩展两种变体被 grep、sed、awk 等工具使用）以及 PCRE（Perl 兼容正则表达式），后者提供了 Perl、PHP 等语言中更丰富的功能。由于这些风格在支持的运算符、转义序列和分组语法上各不相同，为某个引擎编写的模式在另一个引擎中往往需要修改才能使用。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://stackoverflow.com/questions/63812609/posix-regex-vs-pcre">POSIX REGEX vs PCRE - Stack Overflow</a></li>
<li><a href="https://www.baeldung.com/linux/digit-pattern-not-supported-by-grep-regex">Why Is \d Not Supported by grep’s Regex | Baeldung on Linux</a></li>
<li><a href="https://sqlpey.com/c/c-regex-implementation-posix-vs-pcre/">C Programming Regex Implementation: POSIX vs PCRE - sqlpey</a></li>

</ul>
</details>

**标签**: `#regular-expressions`, `#programming`, `#portability`, `#developer-tools`

---

<a id="item-30"></a>
## [在老旧的 ThinkPad T60 上安装 SerenityOS](https://btxx.org/posts/serenity-t60/) ⭐️ 5.0/10

一位博主发布了一篇实操文章，记录了将业余爱好操作系统 SerenityOS 安装到老旧 ThinkPad T60 笔记本上的全过程。文章详细介绍了如何在这台老硬件上运行这款从零开发的类 Unix 桌面操作系统。 这篇文章表明，一款实验性的社区开发操作系统不仅能在模拟器中运行，还能跑在真实的十多年前的硬件上，这对复古计算爱好者和操作系统发烧友很有鼓舞作用。它也为那些想用替代软件让老旧 ThinkPad 重获新生的人提供了具体参考。 目标机器是 ThinkPad T60，这是联想于 2006 年初发布的商务笔记本，也是联想收购该产品线后首次重大改版的机型。由于 SerenityOS 是一个年轻的从零开发项目，硬件驱动支持通常有限，因此在真实硬件上安装往往会遇到比在虚拟机中运行更多的兼容性问题。

rss · Lobsters · 6月28日 15:03

**背景**: SerenityOS 是一款从零开发的图形化桌面操作系统，它将自定义的类 Unix 内核与 20 世纪 90 年代办公软件的外观和体验结合在一起，常被形容为写给 90 年代用户界面的情书。它是一个由社区驱动的业余项目，而非商业产品，大多数用户都在虚拟机中运行它。2006 年发布的 ThinkPad T60 因其耐用的设计和对替代操作系统的开放性，至今在复古计算和折腾爱好者圈子里仍很受欢迎。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://serenityos.org/">SerenityOS</a></li>
<li><a href="https://en.wikipedia.org/wiki/ThinkPad_T60">ThinkPad T 60 - Wikipedia</a></li>

</ul>
</details>

**标签**: `#SerenityOS`, `#operating-systems`, `#retro-computing`, `#ThinkPad`, `#hobbyist-OS`

---

<a id="item-31"></a>
## [测试库「Test That」发布公告](https://hovinen.me/announcements/2026/06/24/introducing-test-that.html) ⭐️ 5.0/10

hovinen.me 的一位开发者发布了一篇公告，介绍名为「Test That」的新软件测试工具或库。该公告本身已被分享，但所提供的内容仅链接到一个讨论帖，并未具体说明该工具的功能。 新的测试库可以改善开发者编写、组织和维护自动化测试的方式，这直接影响软件质量与可靠性。不过，由于尚未公开技术细节，目前还无法评估它相对于现有框架的新颖之处。 所提供的内容仅包含一个指向 Lobsters 评论页面的链接，没有任何技术规格、支持的语言或使用示例。因此，从现有资料中无法核实该工具的设计目标、依赖关系和差异化特性。

rss · Lobsters · 6月28日 19:36

**背景**: 测试框架是帮助开发者编写和运行自动化测试的工具，用于验证代码是否按预期运行，涵盖单元测试、集成测试和端到端测试等层面。各种编程语言中存在许多此类框架，每个框架提供不同的语法、断言风格以及与构建流程的集成方式。像「Test That」这样的新工具通常旨在改善编写测试断言的可读性、表达力或使用体验。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/List_of_unit_testing_frameworks">List of unit testing frameworks - Wikipedia</a></li>
<li><a href="https://www.zetcode.com/terms-testing/test-framework/">Test Framework Tutorial: Definition, Types, and Best ...</a></li>

</ul>
</details>

**标签**: `#testing`, `#software-tools`, `#developer-tools`, `#announcement`

---

<a id="item-32"></a>
## [KDDI 数据泄露事件波及五家日本 ISP 共享邮件系统](https://www.anavem.com/en/news/cybersecurity/kddi-data-breach-exposes-email-systems-of-five-isps) ⭐️ 5.0/10

日本电信巨头 KDDI 公司于 2026 年 6 月 28 日披露，攻击者入侵了五家国内 ISP 共用的一套邮件系统，导致客户数据外泄。 KDDI 是日本最大的电信运营商之一，市值约 650 亿美元，此次涉及共享基础设施的泄露可能影响大量客户，并凸显了多家服务商共用邮件系统所带来的系统性风险。 此次披露内容较为简短，未说明攻击手法、外泄客户数据的数量与类型，也未列出全部五家受影响 ISP 的名称，因此事件的技术范围仍不明确。

rss · Anavem.com · 6月28日 14:13

**背景**: KDDI 公司是日本主要的电信运营商，市值约 650 亿美元。ISP（互联网服务提供商）为客户提供上网接入，并常附带电子邮箱等捆绑服务。当多家 ISP 共用同一套邮件系统时，对这一共享基础设施的入侵可能同时危及所有相关服务商的客户。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/KDDI">KDDI - Wikipedia</a></li>
<li><a href="https://disfold.com/japan/companies/">Top 1000 largest Japanese Companies 2026</a></li>

</ul>
</details>

**标签**: `#cybersecurity`, `#data-breach`, `#telecom`, `#ISP`, `#incident-report`

---