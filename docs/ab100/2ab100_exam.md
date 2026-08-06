# AB-100 Agentic AI Business Solutions Architect

## 1 Plan AI-powered business solutions


Case study

**Overview**

Contoso, Ltd. is a high-tech manufacturing company that uses Microsoft Dynamics 365 Finance. Dynamics 365 Supply Chain Management, and Dynamics 365 Commerce for its North American operations. The company designs and develops innovative products that have many patents and proprietary technologies. The patents and engineering designs are closely guarded secrets.

Contoso executives want to integrate and adopt AI solutions to help scale the company in preparation for an anticipated period of rapid growth.

The company has multiple legal entities and Azure subscriptions that will be used in the adopted AI solutions.

**Requirements**

**AI Adoption**

The following executives will have specific responsibilities in the overall AI adoption:


- Chief Technology Officer (CTO): Select one Dynamics 365 Finance, Dynamics 365 Supply Chain Management or Dynamics 365 Commerce prebuilt AI agent and one custom Microsoft Copilot Studio AI agent to prioritize and deploy during the initial AI adoption phase.

- Chief Information Officer (CIO): Ensure that appropriate security labels are assigned to the data used by the AI agents.

- Chief Financial Officer (CFO): Analyze the return on investment (ROI) for the AI agents being deployed. Chief Information Security Officer (CISO): Discover and inventory AI resources for auditing.

- Chief Executive Officer (CEO): Ensure that all solutions adhere to industry-standard responsible AI practices.


All AI initiatives and agents will have a detailed business use case, a defined audience profile, and an estimated ROI that will compare the cost savings of the current process against the estimated costs of using the new AI solutions.

The company's research and development (R&D) department already has a custom Model Context Protocol (MCP) server that contains comprehensive product specifications and compliance data.

**Prebuilt AI Agent**

The CTO has NOT yet selected which prebuilt AI agent to use in Dynamics 365 Supply Chain Management. The CTO wants to view available agent templates to identify which agent will add the most business value.

Depending on which high-priority AI agents are identified, its agent capabilities must be previewed in a discovery meeting with the relevant business operation stakeholders.


**Custom AI Agent**

Contoso has identified the following custom AI agent requirements:

- The custom AI agent will use data from Dynamics 365 Supply Chain Management to answer questions for the manufacturing team as a low-code solution.

- The custom AI agent will be accessible from within Microsoft Teams.

- The custom AI agent must be designed to eventually connect to other agents that can be selected based on their description.

- The topics used in the custom AI agent will be selected based NOT on a trigger phrase, but on a description of the purpose of the query, to make the interactions more conversational.

- The custom AI agent must be able to answer questions about product specifications by using existing technologies. The product specifications are maintained by the R&D department.

- The custom AI agent must be integrated with and accessible from Dynamics 365 Supply Chain Management.

- The custom AI agent must be able to use Dynamics 365 Supply Chain Management business logic that is stored outside of the application.

**Analysis, Reporting, and Troubleshooting**

Contoso has identified the following analysis, reporting, and troubleshooting requirements:

The CISO will audit all the AI solutions monthly for compliance and security.

The CFO will analyze all the AI solutions quarterly to compare the estimated ROI against actual measured efficiencies and adoption. The CFO will use the Copilot Studio agent usage estimator to perform this analysis.

The CISO wants to identify how much sensitive data was accessed for a given AI agent run and who accessed the data. Too much sensitive data accessed by a single user might indicate a high security risk.

The CTO wants to track user feedback on the quality of the AI agent responses during user interactions with the agents. Consistently poor feedback will trigger an escalated reengineering discussion.

The CEO wants a quarterly assessment of all the required metrics for their specific responsibilities. The tools used for the assessments must be Microsoft-recommended and must verify reliability, interpretability, fairness, and compliance.

The CFO wants to identify how many interactions with the AI agents are abandoned on a given day as compared to resolved conversations. Too many abandoned sessions might indicate that Copilot Studio credits are being used inefficiently by end users.

### QUESTION 1 

Which **two components in the custom AI agent design should the CFO evaluate** in the quarterly agent analysis? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

A. the GPT models used for the agent

B. the average characters in a chat message

C. the agent orchestration method

D. the average session time per agent


-----


**QUESTION 1 答案与解析**

#### **正确答案：**

* **A. the GPT models used for the agent**（Agent 所使用的 GPT 模型）
* **C. the agent orchestration method**（Agent 的编排方式）

**解析与考点分析**

**为什么选 A 和 C？**

题目问的是：“CFO 在季度 Agent 分析中应该评估自定义 AI Agent 设计中的哪两个组件？”

从案例中 CFO 的职责和要求来看：

1. **CFO 的核心职责：** 分析投资回报率（ROI），评估**成本与效率**（"compare the estimated ROI against actual measured efficiencies"）。
2. **使用工具：** CFO 需要使用 **Copilot Studio agent usage estimator**（Copilot Studio 用量/额度估算器）来进行分析。
3. **成本驱动因素：** 在 Microsoft Copilot Studio 的计费与用量估算模型中，直接影响消息消耗（Credits / Message consumption）和成本的核心设计组件是：
   * **GPT models used for the agent (A)：** 选择不同的底层大语言模型（如标准模型 vs. 高级 GPT-4/GPT-4o 模型，或调用 Azure OpenAI 的自定义模型），每次生成式回答所消耗的 Copilot Studio Credits（额度）或 Token 费用是完全不同的。
   * **Agent orchestration method (C)：** 编排方式（是使用传统基于触发词的主题编排 Classic Topics，还是使用生成式动态编排 Generative Orchestration / Dynamic Chaining）。生成式编排会在单轮对话中触发多次 LLM 调用和插件检索，大幅增加消息额度的消耗，从而直接影响计算出来的消耗成本和 ROI。

**为什么不选 B 和 D？**

* **B. the average characters in a chat message（聊天消息的平均字符数）：** 虽然字符数影响 Token，但 Copilot Studio 的使用率估算器（Usage Estimator）和计费主要是按 **Billed Messages（计费消息数）** 及模型类型结算，而不是让 CFO 在设计层面去逐字分析平均字符数。
* **D. the average session time per agent（每个 Agent 的平均会话时间）：** 平均会话时长是运维/用户体验指标，并非 Copilot Studio Agent 用量估算器中关于 Agent **设计架构** 成本的核心决定组件。



**💡 备考提示（针对此 Case Study 的其他潜考点）**

1. **CISO / CIO / 安全与合规要求：**

   * **敏感数据与访问监控（CISO）：** 对应 **Microsoft Purview**（查看敏感数据标签及 AI 资源审计）以及 **Microsoft Defender for Cloud / Azure AI Content Safety**。
   * **分配安全标签（CIO）：** 对应 **Microsoft Purview Information Protection (MPIP)** 敏感情报标签。

2. **Custom AI Agent 设计要求：**
   * **低代码/Teams 访问/D365 整合：** 对应 **Microsoft Copilot Studio** 部署到 Teams 及 D365 SCM 嵌入。
   * **不使用触发词，而是根据描述选择 Topic：** 对应 Copilot Studio 的 **Generative Orchestration（生成式编排）/ Dynamic Chaining**。
   * **连接已有的 R&D 部门 MCP 服务器/规格说明：** 对应 **Model Context Protocol (MCP)** 或自定义插件（Custom Connectors / Conversational Plugins / Knowledge Sources）。

3. **CEO / 负责任的 AI (Responsible AI)：**
   * 对应 **Azure AI Evaluation SDK / Azure Machine Learning Responsible AI Dashboard**（用于评估 Reliability, Interpretability, Fairness, Compliance）。


---

**Correct Answer: CD**

Explanation/Reference:

Explanation:

Scenario:

The CFO will analyze all the AI solutions quarterly to compare the estimated ROI against actual measured efficiencies and adoption. The CFO will use the Copilot Studio agent usage estimator to perform this analysis.

-Quarterly Estimated ROI (Forecasting) Use the Microsoft Agent Usage Estimator to model quarterly expectations before each period.

Orchestration Method Input: Select between Classic (logic-driven) or Generative (AI-driven) orchestration. Generative orchestration typically consumes more credits but reduces manual development time.

Session Time Variables: Model the average session time per agent to estimate total message volume. The estimator uses this to project credit consumption based on interaction depth.

Target ROI Formula: Define the benchmark as:

Estimated Savings = (Projected Deflection × Human Agent Cost) - Estimated Credit Cost.


### QUESTION 2 

What should you configure for the custom AI agent?

A. AI-assisted evaluators

B. classic orchestration

C. generative orchestration

D. Azure OpenAI reasoning models


------


**QUESTION 2 答案与解析**

- **正确答案：** **C. generative orchestration**（生成式编排）


**解析与考点分析**

**为什么选 C？**

直接看案例原文中关于 **Custom AI Agent（自定义 AI Agent）** 的明确要求：

> *"The topics used in the custom AI agent will be selected based **NOT on a trigger phrase, but on a description of the purpose of the query**, to make the interactions more conversational."*
> 
> （自定义 AI Agent 中使用的主题将**基于对查询目的的描述来选择，而不是基于触发词**，以使交互更具对话性。）

> 在 **Microsoft Copilot Studio** 中：

* **Classic Orchestration（传统编排，选项 B）：** 依赖用户输入的**触发词（Trigger Phrases）**来精准匹配并触发特定的 Topic（主题）。
* **Generative Orchestration（生成式编排，选项 C）：** 允许 Copilot Studio 使用大语言模型（LLM）理解用户的意图，并根据每个 Topic、Plugin（插件）或 Agent 的**描述（Description）**动态选择并调用最合适的内容，完全不需要预定义触发词。

另外，案例中还提到：
> *"The custom AI agent must be designed to eventually connect to other agents that can be selected based on their description."*
> 
> （自定义 AI Agent 必须设计为最终能够连接到其他可以**根据其描述进行选择**的 Agent。）

这同样是 Copilot Studio 中 **Generative Orchestration（生成式编排）/ Dynamic Chaining（动态链接）** 的标准功能（即 Agent 间通过 Description 互相路由与协作）。

**为什么不选其他选项？**

* **A. AI-assisted evaluators（AI 辅助评估器）：** 这是 Azure AI Foundry / Responsible AI 中用于测试和评估模型输出质量（如可靠性、公平性）的工具，用于 CEO/CTO 的季度质量评估，而不是 Agent 运行时的话题匹配机制。
* **B. classic orchestration（传统编排）：** 与案例要求的“不使用触发词（NOT on a trigger phrase）”直接冲突。
* **D. Azure OpenAI reasoning models（Azure OpenAI 推理模型）：** 指的是 o1/o3 等具备高级推理能力的模型，而题目问的是针对 Agent 话题路由与调用机制的**配置（Orchestration）**。


Correct Answer: C

**Explanation/Reference:**

**Explanation:**

Generative orchestration is the most appropriate choice for this Microsoft Dynamics 365 AI agent solution. This selection directly addresses your requirements for a low-code, conversational, and interconnected agent ecosystem within the Microsoft Power Platform and Dynamics 365 environment.

**Why Generative Orchestration?**

Generative orchestration (available in Microsoft Copilot Studio) is specifically designed to move away from rigid, trigger-phrase-based logic toward a flexible, intent-based model.

**Mapping to Your Requirements** 

Intent-Based Selection: Unlike "Classic" orchestration which relies on exact trigger phrases, generative orchestration uses Natural Language Understanding (NLU). It selects the correct topic or "sub-agent" based on a description of the purpose, allowing for the conversational flow you requested.

**Low-Code Integration:** Copilot Studio is the primary low-code tool for Dynamics 365. It provides native connectors to Supply Chain Management (SCM) data and can be embedded directly into the SCM interface or deployed to Microsoft Teams.

**External Business Logic**: It can trigger Power Automate flows or API calls to execute business logic stored in external databases or legacy systems, bringing that data back into the conversation.

**Product Specifications**: By using Generative Answers, the agent can crawl "existing technologies" like SharePoint libraries, internal wikis, or SCM data tables to answer complex spec questions without manual topic authoring.

Incorrect:

**[Not A]**

AI-Assisted Evaluators are testing and diagnostic tools, not runtime execution engines.

You would use these to measure how well your agent is performing, but they cannot be the agent or manage the logic flow.

**[Not B]**

Classic Orchestration is entirely dependent on trigger phrases.

It creates a "command-and-control" feel rather than the fluid, conversational interaction you are looking for. 

It also scales poorly when trying to connect multiple agents.


**[Not D]**

Azure OpenAI Models (Reasoning Models) while powerful, this is a pro-code path (API-heavy).

Using raw Azure OpenAI models would require significant custom development, missing the "low-code" requirement. While Generative Orchestration uses these models under the hood, the orchestration layer itself is what manages the "which agent to call" logic.

**Scenario: Custom AI Agent**

Contoso has identified the following custom AI agent requirements:

*-> The custom AI agent will use data from Dynamics 365 Supply Chain Management to answer questions for the manufacturing team as a low-code solution.

The custom AI agent will be accessible from within Microsoft Teams.

The custom AI agent must be designed to eventually connect to other agents that can be selected based on their description


*-> The topics used in the custom AI agent will be selected based NOT on a trigger phrase, but on a description of the purpose of the query, to make the interactions more conversational.

The custom AI agent must be able to answer questions about product specifications by using existing technologies. The product specifications are maintained by the R&D department.

*-> The custom AI agent must be integrated with and accessible from Dynamics 365 Supply Chain Management.

*-> The custom AI agent must be able to use Dynamics 365 Supply Chain Management business logic that is stored outside of the application.

## 2 Plan AI-powered business solutions


**Background** 

Fabrikam, Inc., is a global consumer goods company that is undergoing a digital transformation initiative to migrate its entire infrastructure to the Microsoft cloud. As a key element of this cloud migration, the company will implement Microsoft Dynamics 365 Sales, moving away from the current on-premises proprietary technologies used by its business-to-business (B2B) sales team.

As part of the cloud migration, Fabrikam will adopt an AI-first approach to its business solutions and implement AI solutions, wherever possible, to streamline operations.

**Problem Statements**

Fabrikam's infrastructure currently relies on various on-premises systems that require sales executives to use corporate computers with physical keyboards to access business information during customer interactions. Mobile phones cannot be used for these purposes, as the systems depend on keyboard input. As a result, the sales executives spend a lot of time using keyboards to search for data on several disparate systems and file servers, rather than focusing on the customers. This affects the customer experience.

Fabrikam stakeholders are concerned that users will be hesitant to adopt AI. If the AI initiatives are NOT adopted, cost savings will never be realized. Additionally, funding for future AI initiatives will depend on demonstrating an increase in AI adoption month over month. As the AI agent initiative for the sales team will be the first for Fabrikam, the rapid adoption of the agent is a high priority

**Planned Initiatives** 

General

Fabrikam management has prioritized AI-driven projects to improve efficiency, customer engagement, and responsible AI adoption. The current application infrastructure is on-premises and must be migrated to the cloud to support the adoption of these technologies.

**Infrastructure Migration**

Fabrikam plans to migrate from its current on-premises infrastructure to a completely cloud-based topology; this will include user authentication, the security framework, and, primarily, the adoption of the services by end users.

All the data from the different systems will be consolidated into a single data source - a common data model that will use a Microsoft Dataverse environment as a single source of truth (SSOT) for the sales team.

**Sales Cycle Enablement**

To achieve the company's objectives, Fabrikam intends to implement the following strategies to enhance the sales cycle:

Use low-code development to create a single AI agent that has Dataverse as its core component. Ensure that sales managers can access unanswered correspondence from prospects and intervene as appropriate.

Replace the previous proprietary software with Dynamics 365 Sales to track sales cycles and customer interactions.

Have the sales executives use Dynamics 365 Sales to track interactions for open opportunities and send follow-up communications to prospects.

Have the sales executives use handsfree headsets to interact with an AI agent when they have questions about internal policies or customer data.


Requirements 

**Infrastructure Migration**

Fabrikam has identified the following infrastructure migration requirements:

Azure must be used for all future infrastructure workloads.

The company must follow Microsoft-recommended methodologies for infrastructure migration to the cloud.

Any created AI agents must have their return on investment (ROI) calculated to ensure that the solution will save the company money.


**Sales Cycle Enablement**

Fabrikam has identified the following requirements for sales cycle enablement:

The final AI agent must follow Microsoft recommendations for a conversational user experience.

A designated checklist must be reviewed to ensure that the AI agent follows Microsoft deployment recommendations for a compliant solution.

Detailed telemetry must be logged for the first created AI agent to help troubleshoot and optimize the agent during the initial AI agent adoption process.

Unexpected AI agent actions must end in an escalation to a live representative. For example, a sales executive must be rerouted to a representative if the agent cannot answer a question after two failed attempts.

The return on investment (ROI) of switching from the current process to the future process is required for stakeholder sign off.

The sales team must use Dynamics 365 Sales to correspond with prospects more quickly and efficiently than currently.

Sales managers must report on the adoption of the AI agent to key Fabrikam stakeholders on a monthly basis.

Any sensitive information, such as user IDs and names, shared via the AI agent must be tracked for future auditing.

### QUESTION 1

Which framework should you use to meet the AI agent requirements for the sales cycle enablement? To answer, select the appropriate options in the answer area.

Hot Area:

Answer Area

**For Microsoft Copilot Studio best practices:**

- the ALM Accelerator for Microsoft Power Platform  
- Microsoft Cloud Adoption Framework for Azure  
- Microsoft Power Platform Well-Architected framework  
- Success by Design  

**For conversational user experiences:**

- the ALM Accelerator for Microsoft Power Platform  
- Microsoft Cloud Adoption Framework for Azure  
- Microsoft Power Platform Well-Architected framework  
- Success by Design


--------

Explanation/Reference:

Explanation:

**Box 1: the ALM Accelerator for Microsoft Power Platform For Microsoft Copilot Studio best practices**

Using the ALM Accelerator for Microsoft Power Platform is a recommended approach for managing the lifecycle of a low-code AI agent (Copilot Studio) that relies on Dataverse. It enables source control, versioning, and automated deployment of AI agents to ensure they follow Microsoft's best practices.

**Box 2: Microsoft Power Platform Well-Architected framework For conversational user experience**

Utilizing the Microsoft Power Platform Well-Architected framework for a low-code AI agent (built in Copilot Studio) with Dataverse as the core data component ensures the solution is secure, reliable, and provides a high-quality conversational user experience (CUX). The framework helps align the agent with Microsoft’s best practices for responsible AI, efficiency, and user satisfaction.



###  Scenario: Sales Cycle Enablement

Fabrikam has identified the following requirements for sales cycle enablement:

*-> The final AI agent must follow Microsoft recommendations for a conversational user experience.

#### Sales Cycle Enablement

To achieve the company's objectives, Fabrikam intends to implement the following strategies to enhance the sales cycle

*-> Use low-code development to create a single AI agent that has Dataverse as its core component.

#### QUESTION 2

Which framework should you use for the infrastructure migration?

A. Microsoft Cloud Adoption Framework for Azure

B. Success by Design

C. Microsoft Power Platform Center of Excellence (CoE)

D. Microsoft Power Platform Project Setup Wizard


**Correct Answer: A**

Explanation/Reference:

For migrating a legacy on-premises infrastructure to Microsoft Dynamics 365 Sales with Dataverse as the Single Source of Truth (SSOT), the recommended framework is the Microsoft Cloud Adoption Framework for Azure (CAF), specifically utilized in conjunction with the Data Management Framework (DMF) for Dynamics 365.

This combined approach ensures a structured transition by focusing on both the strategic adoption of cloud technology and the technical, granular migration of data.

Recommended Framework: Microsoft Cloud Adoption Framework (CAF) The CAF provides a holistic structure to ensure the migration is secure, compliant, and aligned with business goals.

Plan: Assess legacy data, prioritize workloads, and define the SSOT requirements.

Ready: Set up the Dataverse environment (landing zone) and configure security (Azure Active Directory/ Microsoft Entra ID).

Adopt (Migrate): Perform the technical migration of data using ETL (Extract, Transform, Load) processes.


### Scenario: Infrastructure Migration

Fabrikam plans to migrate from its current on-premises infrastructure to a completely cloud-based topology; this will include user authentication, the security framework, and, primarily, the adoption of the services by end users.

All the data from the different systems will be consolidated into a single data source - a common data model that will use a Microsoft Dataverse environment as a single source of truth (SSOT) for the sales team.

**Background**

Fabrikam, Inc., is a global consumer goods company that is undergoing a digital transformation initiative to migrate its entire infrastructure to the Microsoft cloud. As a key element of this cloud migration, the company will implement Microsoft Dynamics 365 Sales, moving away from the current on-premises proprietary technologies used by its business-to-business (B2B) sales team.

Reference:

Plan AI-powered business solutions

#### QUESTION 1

A company uses Microsoft Dynamics 365 Sales to manage leads that are stored in a Microsoft Dataverse table named Lead and use non-standard terminology and custom columns.

You need to configure business terms in the Lead table so that Microsoft Copilot controls can summarize the leads efficiently. The solution must minimize administrative effort.

How should you configure the business terms?

A. Combine all the fields into one custom field.

B. Map the field display names as business terms.

C. Add the schema names as business terms.

D. Create new business terms for each field.

------

Correct Answer: B

Explanation/Reference:

To configure Microsoft Copilot to efficiently summarize leads with non-standard terminology and custom columns in Microsoft Dynamics 365 Sales, you must map these unique fields to business terms within the Sales AI Glossary in Microsoft Copilot Studio.

Note:

To map your field display names as business terms:

1. Access Copilot Studio: Open Microsoft Copilot Studio and select the environment containing your Dynamics 365 Sales instance.

2. Select the Sales Agent: Navigate to Agents and select the agent named Copilot in Dynamics 365 Sales (formerly Sales Copilot Power Virtual Agents Bot).

3. Navigate to Knowledge: Under the Knowledge section, select the SalesSpecificQnA knowledge source.

4. Add Glossary Entries:

Go to the Glossary tab.

Term: Enter the non-standard or custom field display name (e.g., your custom business term).

Description: Define how this term relates to the Dataverse schema. This helps Copilot understand the logic behind the custom column.

5. Configure Synonyms: In the Synonyms section, map your custom field to alternative names that sellers might use in natural language queries (e.g., mapping "Custom Revenue" to "Opportunity Revenue").

6. Publish Changes: Select Publish to apply these mappings, allowing Copilot to use the newly defined terms when generating lead summaries.




#### QUESTION 2

You are designing two Microsoft Copilot Studio agents named Agent1 and Agent2. Each agent must meet the following requirements:

Each agent must use a standard model.

Each agent must NOT use generative orchestration.

Agent1 must support simple and short phrases for a given topic.

Agent2 must integrate with Microsoft Dynamics 365 Contact Center voice channel.

You need to recommend language models for the agents.

What should you recommend for each agent? To answer, drag the appropriate language models to the correct agents. Each language model may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.

Select and Place:

**Language models**

- Azure Language in Foundry Tools
- Azure OpenAI
- Conversational language understanding (CLU)
- Natural language understanding (NLU)
- Natural language understanding + (NLU+)

**Answer Area**

- Agent1:
- Agent2:

---------

这题考的是 **Copilot Studio Standard Model** 的选择，尤其是 **NLU、NLU+、CLU** 的区别，是新版考试非常喜欢考的知识点。

**先分析题目**

共同要求：

* ✅ Each agent must use a **standard model**
* ✅ **NOT use generative orchestration**

所以可以先排除：

* Azure OpenAI ❌（属于生成式 AI，不符合要求）
* Azure Language in Foundry Tools ❌（属于 Azure AI 服务，不是 Copilot Studio 的标准语言模型）

真正需要在下面三者中选择：

* CLU
* NLU
* NLU+

**Agent1**

要求：

> **support simple and short phrases for a given topic**

关键词：

* simple
* short phrases
* given topic

这是 **Natural Language Understanding (NLU)** 的典型应用。

NLU：

* Intent Recognition
* Trigger phrases
* 简单短语
* 规则式 Topic 匹配

例如：

```
"Reset password"

"My order"

"Track shipment"
```

都属于简单 Trigger Phrase。

因此：

✅ **Agent1 → NLU**


**Agent2**

要求：

> integrate with Microsoft Dynamics 365 Contact Center voice channel

关键词：

* Voice
* Contact Center

微软官方建议：

Dynamics 365 Contact Center Voice Agent

使用：

**NLU+**

原因：

NLU+：

* 更适合 Voice
* Better intent detection
* Better speech recognition integration
* 更自然的对话

微软文档中：

Voice Channel 推荐：

> **Natural Language Understanding+ (NLU+)**

因此：

✅ **Agent2 → NLU+**


**为什么不是 CLU？**

很多人容易混淆。

CLU（Conversational Language Understanding）：

属于 Azure AI Language。

主要用于：

* Azure Bot
* Azure AI Language

而不是 Copilot Studio Standard Model。

题目已经说明：

> must use a standard model

Copilot Studio Standard Models：

* NLU
* NLU+

不是 CLU。

**为什么其他选项错？**

Azure OpenAI ❌

Generative AI。

题目明确：

> must NOT use generative orchestration

排除。

Azure Language in Foundry Tools ❌

Azure AI 服务。

不是 Copilot Studio Standard Language Model。

CLU ❌

Azure AI Language 的模型。

不是 Copilot Studio Standard Model。

最终答案

| Agent      | Language Model                                |
| ---------- | --------------------------------------------- |
| **Agent1** | ✅ **Natural language understanding (NLU)**    |
| **Agent2** | ✅ **Natural language understanding + (NLU+)** |

考试速记

| 模型                                  | 适用场景                                                |
| ----------------------------------- | --------------------------------------------------- |
| **NLU**                             | 简单 Trigger Phrase、短语匹配、经典 Topic                     |
| **NLU+**                            | Voice、Dynamics 365 Contact Center、更自然的意图识别          |
| **CLU**                             | Azure AI Language（不是 Copilot Studio Standard Model） |
| **Azure OpenAI**                    | Generative Orchestration / LLM                      |
| **Azure Language in Foundry Tools** | Azure AI Language 服务                                |

**答案：**

* **Agent1:** ✅ **Natural language understanding (NLU)**
* **Agent2:** ✅ **Natural language understanding + (NLU+)**


----

Box 1: Natural Language Understanding (NLU)

Box 2: Natural Language Understanding + (NLU +)



Explanation/Reference:


**Box 1: Natural Language Understanding (NLU)**

Agent1 must support simple and short phrases for a given topic.

For a Microsoft Copilot Studio agent that must not use generative orchestration and requires support for simple, short trigger phrases, the best choice is the Classic NLU (Natural Language Understanding) model.

When you disable generative orchestration (also known as "Generative mode" or "Generative AI" orchestration), the agent reverts to Classic orchestration. In this mode, the agent relies on predefined trigger phrases to map user input directly to specific topics.


**Box 2: Natural Language Understanding + (NLU +)**

Agent2 must integrate with Microsoft Dynamics 365 Contact Center voice channel.

For a Microsoft Copilot Studio agent using classic orchestration (no generative orchestration) and integrating with the Dynamics 365 Contact Center voice channel, the best language model is NLU+.

Why NLU+ is the Best Choice While standard agents offer three "classic" Natural Language Understanding (NLU) options, NLU+ is specifically designed for high-performance, enterprise-grade scenarios like voice channels.

Note:

Comparison of Classic Models

| Model | Best For | Key Characteristic |
|:----|:---:|:---:|
| NLU | Simpler bots | Uses 5-20 phrases per topic; basic RegEx/List entities. |
| NLU+  | Voice / Enterprise | **Optimizes speech recognition** and handles large training sets with high accuracy. |
| CLU | Advanced devs | Integrates with Azure Conversational Language Understanding for external model management. |


### QUESTION 3

A company uses Microsoft Dynamics 365 finance and operations apps.

The company plans to use Microsoft Copilot in-app help and guidance to generate responses for internal business processes.

You need to add an additional knowledge source for the business processes. The solution must NOT add new topics to the Copilot agent for the finance and operations apps.

Which knowledge source should you add?


A. Microsoft Dataverse

B. a public website

C. Azure AI Search

D. a file upload


-------


Correct Answer: D Section: (none)


Explanation/Reference:

Explanation:

To add an additional knowledge source for internal business processes to the Microsoft Copilot in-app experience for Dynamics 365 finance and operations apps—without creating new topics—you should add File Uploads (such as PDF, Word, or text documents) to the "Copilot for finance and operations apps" agent in Copilot Studio.


### QUESTION 4

A company has an AI business solution.

You need to extend the solution so that Microsoft 365 Copilot can invoke external logic hosted in Azure services.

What should you include in the solution?

A. Microsoft Copilot Studio skills

B. Microsoft Power Platform connectors

C. custom engine agents

-----

Correct Answer: B Section: (none)

Explanation/Reference: 

Explanation:


To enhance an AI business solution with Microsoft 365 Copilot and integrate external logic hosted in Azure, you should use Copilot Studio to create Actions. These actions act as plugins that allow Copilot to invoke external services through Power Platform components.

**Implementation Strategy**

Azure Logic Hosting: Host your external logic in Azure using services like Azure Functions or Azure Logic Apps. These provide the API endpoints that Copilot will ultimately call.


*-> Power Platform Connector: Create a Custom Connector in the Power Platform to wrap your Azure service's API. This connector acts as the bridge, translating Copilot's requests into API calls your Azure logic understands.

Copilot Studio Integration: Within Microsoft Copilot Studio, add the custom connector as a Tool or Action. This makes the logic discoverable and invokable by Microsoft 365 Copilot.

Deployment: Deploy the action through the Microsoft 365 admin center under Integrated Apps to make it available to users in Teams or other Microsoft 365 apps.

**Key Components *->**


Connector: Wraps the Azure API using an OpenAPI definition or Postman collection.

Plugin/Action: Defines how Copilot identifies when to use the connector based on user prompts.

Authentication: Ensure the connector is configured with appropriate security (e.g., OAuth 2.0) to safely access your Azure resources.



### QUESTION 5

You need to design a shared prompt library that will be used across multiple business units. The solution must meet the following requirements:

* Ensure consistent AI responses with reusable formats. 
* Support governance and version control.
* Minimize administrative effort.
* Minimize ongoing costs.

What should you recommend for each requirement? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.

Hot Area:

Answer Area

Ensure consistent AI responses:

- Delegate department-specific prompt templates.
- Define standardized prompt templates.
- Maintain a prompt history.

Support governance and version control:

- Define standardized prompt templates.
- Store prompts in a Git repository.
- Categorize prompts by business function.


------


**Box 1: Define standardized prompt templates**

**Box 2: Store prompts in a Git repository**


Explanation/Reference:

Explanation:


**Box 1: Define standardized prompt templates**

Ensure consistent AI responses with reusable formats.

To ensure consistent AI responses across multiple business units, your shared prompt library should be built on a foundation of standardized, modular templates that balance centralized governance with unitspecific flexibility.

**Box 2: Store prompts in a Git repository**

Support governance and version control.

Storing AI prompts in a Git repository allows you to treat prompts as "first-class artifacts" with the same accountability and lifecycle management as source code. For an enterprise solution serving multiple business units, this approach provides the necessary structure for governance, collaboration, and scalability.

1. Repository Organization for Business Units

2. Governance and Version Control Workflow Branching Strategy: Use a dedicated branch for each experiment or new use case (e.g., feature/ marketing-seo-v2) to ensure the main branch remains stable.

Pull Requests (PRs): Mandate PRs for all changes to enable peer reviews. PRs should include descriptions of changes, linked issues, and test results.

Semantic Versioning: Apply tags (e.g., v1.0.1) to mark significant updates, allowing business units to pin their applications to specific, stable prompt versions.

Auditability: Git maintains a full historical record of who changed a prompt, what was modified, and when it occurred.

### QUESTION 6

A company has a Microsoft Foundry project that uses a single agent and a single prompt to complete a series of tasks.

The agent encounters the following issues:

* It frequently produces incomplete results. 
* It struggles with domain-specific reasoning. 
* Agent response times are remarkably slow.


You need to recommend a solution to improve the overall performance and accuracy of the agent.

What should you include in the recommendation? 

To answer, drag the appropriate actions to the correct requirements. Each action may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.

NOTE: Each correct selection is worth one point.


Select and Place:

**Actions**

- Add a grounding data source.
- Add a prebuilt connector.
- Move to a multi-agent architecture.
- Upgrade to a larger generative AI model.

Answer Area

- To improve performance: [______]
- To improve accuracy: [______]

Action

- [______]
- [______]



------

**Box 1: Move to a multi-agent architecture**

**Box 2: Add a grounding data source**


**Explanation/Reference:**

**Box 1: Move to a multi-agent architecture To improve performance**

> To improve performance

Moving to a multi-agent architecture in Azure AI Foundry is a highly effective strategy to overcome performance bottlenecks, as single-agent systems often struggle with long-running tasks, leading to high latency and timeout issues. By decomposing complex tasks into smaller, specialized subtasks, you can improve response times through parallel processing and targeted tool usage.

Incorrect:

**Upgrade to a larger generative AI model** 

To address slow response times in your Microsoft Foundry agent, upgrading to a larger generative AI model is one option, but it may increase latency in some scenarios due to higher processing demands. Instead, a combination of prompt optimization, model selection, and architectural changes in Microsoft Foundry is recommended to improve performance.

**Box 2: Add a grounding data source**

> To improve accuracy

To improve the performance of an agent in a Microsoft Foundry project experiencing incomplete results, weak domain reasoning, and high latency, adding a grounding data source is a highly effective strategy. Grounding connects the Large Language Model (LLM) to verified external data, ensuring responses are accurate, contextual, and less likely to hallucinate.


### QUESTION 7

A financial services company uses Microsoft Dynamics 365 Finance.

Currently, the company's support staff manually reviews customer transaction histories to detect potential fraud cases before escalating the cases.

You need to recommend an automation solution for the review process. The solution must ensure that escalations reach a human analyst for final decision making. What should you recommend?

A. Deploy an autonomous agent that closes non-fraud cases automatically.

B. Use Microsoft 365 Copilot in Word to automatically finalize fraud detection policies.

C. Configure a task agent to generate fraud risk scores for the human analyst to review.

D. Export the data to a data lake for analysis in Microsoft Power BI.

-----

正确答案与详细解析

正确答案：

  - C. Configure a task agent to generate fraud risk scores for the human
    analyst to review.（配置一个任务 Agent 生成欺诈风险评分，供人工分析师进行审核。）

解析与考点分析

为什么选 C？

1.  业务场景： 金融服务公司希望将原本人工审查交易历史以识别潜在欺诈的过程自动化。
2.  核心约束条件（Human-in-the-Loop）：
      - 题目明确要求：“必须确保升级后的案件到达人工分析师手中以做出最终决策（The solution must ensure that escalations reach a human analyst for final decision making）”。
3.  解决方案分析：
      - 配置任务 Agent 生成风险评分： AI Agent 负责自动化繁琐的数据分析和模式识别工作，自动生成欺诈风险评分（Fraud risk scores），并将其呈现给人工分析师（Human Analyst）。
      - 人工分析师作为“人机协同（Human-in-the-Loop）”中的最终决策者，基于 AI 提供的评分和分析做出是否升级或封禁的最终决定。这既实现了审核流程的自动化和提效，又完全符合负责任 AI（Responsible
        AI）的高风险场景合规要求。

为什么不选其他选项？

  - A. Deploy an autonomous agent that closes non-fraud cases
    automatically（部署一个自主 Agent 自动关闭非欺诈案件）：
    完全自主关闭案件缺乏人工监督，在金融欺诈识别这种高风险场景中容易因误判（假阴性）造成重大损失，且违背了题目要求的“由人工分析师做出最终决策”。
  - B. Use Microsoft 365 Copilot in Word to automatically finalize fraud
    detection policies（使用 Word 中的 Copilot 自动敲定欺诈检测策略）： 在 Word
    中撰写策略文档无法自动化交易历史的审查与欺诈检测流程。
  - D. Export the data to a data lake for analysis in Microsoft Power
    BI（导出数据到数据湖以便在 Power BI 中分析）： 数据报表展示只能提供离线数据可视化，无法提供实时的自动化欺诈风险评分与事件升级工作流。




------


**Correct Answer: C**

**Explanation/Reference:**

Explanation:

To automate the fraud review process in Microsoft Dynamics 365 Finance while ensuring a human analyst makes the final decision, you should configure the Dynamics 365 Fraud Protection (or integrated Copilot AI agents) to generate risk scores and route high-risk transactions to a manual review queue.

Here is the configuration approach to achieve this:

1. Implement AI-Driven Risk Scoring: Utilize Dynamics 365 Fraud Protection, which uses AI to analyze customer transaction history and assign a risk score (0-999) to each transaction.
2. Define Rules for Escalation: Set up fraud rules in the system to determine which transactions require human intervention. For instance, define a threshold (e.g., a "Minimum score value") where transactions with high fraud probability are automatically flagged.
3. Establish Manual Review Queues: Configure the Manual Review tool to create queues for suspected fraudulent transactions, allowing human analysts to review the AI-generated risk score and transaction history, such as customer behavior, for final, informed decision-making.
4. Use Copilot/AI Agents for Monitoring: Enable AI agents to continuously monitor financial data, such as invoice, payment, and vendor data, and generate alerts for unusual patterns before escalating.


This setup, particularly through the Manual Review workspace, allows for an automated, intelligent, and scalable approach to fraud management.


### QUESTION 8

A company plans to deploy a Microsoft Copilot Studio agent that will analyze historical business data to predict customer behavior.

The data is currently stored in an Azure SQL database, flat files, APIs, and logs.

You need to organize the data into a format that can be used as a knowledge source in Copilot Studio.

What should you include in the solution?

A. Azure AI Search

B. Azure Data Lake Storage

C. Azure Cosmos DB

D. Azure Translator in Foundry Tools

-----

Correct Answer: A

**Explanation/Reference:**

Microsoft Copilot Studio agents can analyze customer behavior by leveraging business data from Azure SQL, files, and APIs by using Azure AI Search as a knowledge source. By importing and vectorizing this structured and unstructured data into an Azure AI Search index, the agent can perform semantic, meaning-based searches to retrieve context-relevant information.


### QUESTION 9

A retail company plans to deploy Microsoft Copilot Studio agents to support:

- Microsoft Dynamics 365 Commerce scenarios.
- A Microsoft Power Apps inventory management solution.

You need to recommend a solution to organize product catalog data as a consistent source for multiple AI systems.

What should you recommend?

A. Let each agent scrape product details from Microsoft SharePoint Online libraries.

B. Store the product catalog data in a separate custom table for each agent.

C. Configure prompts to pull product details from the PDFs of external vendors.

D. Centralize the product catalog data in Microsoft Dataverse and expose the data to both agents.


-------


正确答案与详细解析

正确答案：

  - D. Centralize the product catalog data in Microsoft Dataverse and expose the data to both agents.（将产品目录数据集中在 Microsoft Dataverse 中，并将数据公开给两个 Agent。）


1.  业务场景与数据一致性需求：

      - 公司需要同时为 Dynamics 365 Commerce（电商/零售场景） 和 Power Apps（库存管理方案） 部署 Copilot Studio Agent。
      - 核心要求是：建立一个**一致的数据源（Consistent source / Single Source of Truth）**供多个 AI
        系统共享使用。

2.  微软架构最佳实践：

      - Microsoft Dataverse 是 Power Platform 和 Dynamics 365 体系的核心数据底座（Common
        Data Model）。
      - 将产品目录集中存储在 Dataverse 中，可以实现：
          - 单一事实来源（SSOT）： 避免不同系统和 Agent 之间的数据冗余与不一致。
          - 原生无缝集成： Dynamics 365 Commerce、Power Apps 和 Copilot Studio
            均能够以极低的开发成本原生的读写 Dataverse 中的表与数据，确保数据更新实时同步给所有 AI Agent。

为什么不选其他选项？

  - A. Let each agent scrape product details from Microsoft SharePoint Online libraries（让每个 Agent 从 SharePoint 抓取产品信息）： 从非结构化文档库抓取产品数据不够精准且响应较慢，无法保证电商和库存系统所需的高一致性结构化数据。
  - B. Store the product catalog data in a separate custom table for each agent（为每个 Agent 分别存储在独立的自定义表中）： 这会导致数据孤岛和数据冗余，一旦产品信息更新就需要多处修改，直接违背了“一致的数据源”的要求。
  - C. Configure prompts to pull product details from the PDFs of external vendors（配置 Prompt 从外部供应商的 PDF 中拉取）： 通过 Prompt 实时解析 PDF 属于非结构化文档提取，准确率受限且无法满足零售与库存场景下的结构化业务查询需求。


---


**Correct Answer: D**

Explanation:

In the scenario described, centralizing product catalog data in Microsoft Dataverse is the recommended architectural approach to ensure consistency across multiple AI systems. Dataverse acts as a unified "knowledge network" that allows different agents to share a single source of truth for both structured and unstructured data.

**Key Benefits of Centralizing in Dataverse**

**Cross-App Consistency**: By storing the catalog in Dataverse, both the Dynamics 365 Commerce agent and the Power Apps inventory management agent access the exact same records. This prevents data silos where inventory levels or product descriptions might drift apart between systems.

**Native Copilot Studio Integration:** You can directly add Dataverse tables as knowledge sources in Microsoft Copilot Studio. This allows agents to use Retrieval-Augmented Generation (RAG) to answer queries grounded in your live product data.

**Security & Governance:** Dataverse enforces Role-Based Access Control (RBAC), ensuring that agents only interact with data they are authorized to see, based on the user's existing permissions.

**Automated Updates:** You can use Power Platform Dataflows to ingest and synchronize catalog data from external sources into Dataverse, keeping the information fresh for all connected AI agents.


### QUESTION 10


A company has a portfolio of AI initiatives at different stages of development.

You need to recommend a structured approach to evaluating the return on AI investment (ROAI) across all the initiatives. The solution must balance immediate results with long-term values and strategic innovations.

What should you include in the recommendation?

A. a simple cost and benefit analysis

B. a horizon-based framework

C. the internal rate of return (IRR) function

D. a prioritization grid

----

**Correct Answer: B**

**Explanation/Reference:**


In this scenario, a horizon-based framework is best for evaluating the return on AI investment (ROAI). While a prioritization grid is excellent for immediate tactical choices (e.g., effort vs. impact), a horizonbased framework is specifically designed to balance diverse timeframes—mapping immediate efficiency gains alongside the long-term strategic and transformational value required for a comprehensive Microsoft AI portfolio.

**Why the Horizon-Based Framework Wins**

This approach categorizes AI initiatives into three distinct "horizons," allowing you to measure different types of value across the development lifecycle:

**Horizon 1: Core Operations (Immediate ROI)**

Focuses on extending current capabilities for rapid results, such as using Microsoft Copilot to automate routine coding tasks or IT support.

**Horizon 2: Adjacent Opportunities (Mid-Term Value)**

Targets growth by expanding into new areas related to your core, such as developing agentic platforms or AI-driven specialized tools that build on existing infrastructure.

Comparison for This Scenario

**Horizon 3: Transformational Innovation (Long-Term Strategy)** 

Invests in "future-forward" innovations that may have uncertain immediate returns but offer massive strategic upside or business model reimagination.


| Feature    | Priority Grid (e.g., 2x2 Matrix) | Horizon-Based Framework    |
|---|---|---|
| **Primary Goal**    | Selecting "what to do first" based on constraints. | Managing a balanced portfolio of value over time.    |
| **Best For**    | Tactical, sprint-level feature ranking.    | Strategic roadmap and investment allocation.    |
| **ROAI Focus**    | Often emphasizes "quick wins" and high-certainty projects. | Validates high-risk, high-reward innovations as essential for long-term health. |


Recommendation: Use the Microsoft AI Maturity Model to baseline your current state, then apply the Horizon-Based Framework to structure your ROAI evaluation. This ensures you don't starve long-term innovation in favor of only "low-hanging fruit" efficiency projects.


### QUESTION 11

You need to recommend a Microsoft Power Platform business solution that consolidates data from multiple internal and external data sources. The solution must meet the following requirements:

- Provide the data as a centralized source for multiple AI systems, including Microsoft Copilot Studio agents, Dynamics 365 applications, and external AI models.
- Support built-in data classification and protection policies.
- Provide data for grounding and analytics.

What should you include in the recommendation?


A. Microsoft Dataverse

B. Azure Data Lake Storage

C. a Microsoft Power BI semantic model

D. Azure Cosmos DB


----

**Correct Answer: A**

Explanation/Reference:

Microsoft Dataverse is the ideal foundational component for this scenario, serving as the secure, centralized data platform for the Microsoft Power Platform, Dynamics 365, and AI integrations. By using Dataverse, the business can consolidate, protect, and utilize data across Copilot Studio agents, Dynamics 365 applications, and analytics tools, addressing all stated requirements.

Here is how Dataverse fulfills the requirements in the described scenario:

Centralized Source: It serves as the primary data storage and management engine for Power Platform, Dynamics 365, and Copilot Studio. It consolidates data into a unified data model (Common Data Model), ensuring consistency across internal and external sources.

Internal & External Integration: Dataverse supports data integration from diverse sources using tools like Power Query, Azure Data Factory, and virtual tables that map external data in real-time.

Data Classification & Protection: It features built-in, enterprise-grade security.

**AI Grounding & Analytics:**

- Grounding: It acts as the knowledge source for Copilot Studio agents, providing the necessary business context for accurate generative AI responses.

- Analytics: It integrates natively with Power BI for reporting and can synchronize with Microsoft Fabric or Azure Synapse for large-scale data modeling and advanced analytics.


### QUESTION 12 

A company plans to deploy an AI-based customer service app that will autonomously manage interactions, escalate complex cases, and learn from historical ticket data.

You need to perform a return on AI investment (ROAI) analysis of the app deployment. The solution must ensure that the analysis is accurate.

What should you do first?

A. Establish the AI performance metrics.

B. Conduct an AI market benchmarking study.

C. Model the customer experience.

D. Identify and quantify all the development, deployment, and operating costs.


-----

Correct Answer: D


**Explanation/Reference:**

Explanation:

To conduct a robust Return on AI Investment (ROAI) analysis for your Microsoft-based AI customer service application, you must first categorize and quantify three distinct cost phases: Development, Deployment, and Operations. For a system capable of managing complex escalations and learning from historical data, your project aligns with "Advanced" or "Agentic" AI profiles.


1.Development Costs (Upfront Investment)

This phase covers the creation of the core AI logic, custom integrations, and data preparation.


2.Deployment Costs (One-Time Setup) 

These are the costs to move the application from a development environment to a live production state.

**3.Operating & Maintenance Costs (Recurring)**

Ongoing expenses are critical for ROAI as they impact the net gain over time.


### QUESTION 13

You are designing end-to-end test scenarios for a business solution that uses Microsoft Dynamics 365 Sales and Dynamics 365 Finance.

You need to ensure that the business solution meets the following test requirements:

- Properly exchanges data between the Dynamics 365 apps 
- Aligns with defined user workflows and business processes

Which type of testing should you use for each requirement? 

To answer, drag the appropriate testing types to the correct requirements. Each testing type may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.


NOTE: Each correct selection is worth one point.


Select and Place

**Testing types**

- Drift
- Exploratory
- Integration
- Performance
- User acceptance

**Answer Area**

- Properly exchanges data between the Dynamics 365 apps.   []
- Aligns with defined user workflows and business processes. []


-----

这是该道拖拽匹配题（Select and Place）的**正确答案与详细解析**：

---

**QUESTION 答案 (Answer Area)**

* **Properly exchanges data between the Dynamics 365 apps:** 
  👉 **Integration**（集成测试）

* **Aligns with defined user workflows and business processes:** 
  👉 **User acceptance**（用户验收测试 / UAT）

**解析与考点分析**

**1. 在 Dynamics 365 各应用之间正确交换数据 (Properly exchanges data between the Dynamics 365 apps)**

* **正确选择：** **Integration**
* **解析：** 
  * 验证不同系统或应用之间（如 Dynamics 365 Sales 与 Dynamics 365 Finance，通过 Dual-write 或 Dataverse）的数据流动、接口对接以及数据同步正确性，属于标准的**集成测试（Integration Testing）**范畴。


**2. 符合已定义的用户工作流和业务流程 (Aligns with defined user workflows and business processes)**

* **正确选择：** **User acceptance**
* **解析：** 
  * **用户验收测试（UAT, User Acceptance Testing）：** 由业务专家（SMEs）或最终用户按照真实的业务流程和工作流进行测试，旨在验证整个解决方案是否满足业务需求，以及用户能否顺畅完成既定的日常工作。


**其他干扰项排除说明**

* **Drift（漂移测试）：** 主要指 AI/ML 中的模型漂移（Model Drift）或数据漂移（Data Drift）监测，用于评估模型准确率随时间衰减的情况，与系统流程测试无关。
* **Exploratory（探索性测试）：** 无脚本的随机测试，用于发现意外的缺陷，不适用于验证既定的业务流程规范。
* **Performance（性能测试）：** 用于验证高并发或大数据量下的响应时间和吞吐量，与数据交换逻辑和业务流程对齐无关。


**Box 1: Integration**

**Box 2: User acceptance**

Box 1: Integration 

Properly exchanges data between the Dynamics 365 apps

For a project involving Dynamics 365 Sales and Dynamics 365 Finance, the best testing type to verify proper data exchange is Integration Testing, specifically within a System Integration Testing (SIT) phase.


**Integration Testing** 

This is the primary method for validating that data flows correctly between Sales (Customer Engagement) and Finance (Finance & Operations).


Purpose: Ensures seamless information flow, communication protocols, and data synchronization. Example Scenario: Creating a new Account in D365 Sales and verifying it automatically triggers the creation of a Customer in D365 Finance via Dual-write.

**Box 2: User acceptance**

Aligns with defined user workflows and business processes


The best testing type to ensure a Microsoft Dynamics 365 solution aligns with defined user workflows and business processes is User Acceptance Testing (UAT).

While other testing phases (like Functional or Integration) verify that the system works technically, UAT is the final "road test" where the business confirms that the solution actually supports their day-to-day operations.


### QUESTION 14

A company has a Microsoft 365 tenant in Canada and multiple Microsoft Power Platform environments in Canada and the United States.

The company plans to deploy a Microsoft Copilot Studio agent to the Canadian environment that will use:

Microsoft Dataverse data stored in Canada A connector that connects to an Azure OpenAI instance in the United States

You need to ensure that the agent adheres to data residency and data movement policies before being deployed.

What should you do?

A. Ensure that the data processed by Azure OpenAI is stored in the United States.

B. From the Microsoft Purview portal, validate the Data loss prevention settings.

C. Migrate the tenant to the United States.

D. Ensure that cross-region data movement is enabled for the Canadian environment and connector dependencies.

-----

Correct Answer: D

**Explanation/Reference:**

Explanation:

**Manage Cross-Geo Data Movement Settings**

Because your agent in Canada connects to Azure OpenAI in USA, data will leave your primary geography.

**Explicit Opt-in**: 

You must navigate to the Power Platform Admin Center and explicitly allow data movement across regions for generative AI features.

**Regional Scope:** 

If this toggle is off, Copilot features requiring the external Azure OpenAI instance will be disabled to protect residency.


Security Assurance: Microsoft does not log or retain prompt/response data during this cross-region transit for the purpose of training foundation models.


### **QUESTION 15**

A company has a Microsoft Copilot Studio agent for customer support. You are reviewing and validating the following prompts:

- A prompt that has instructions to "help the customer as best you can"

- A prompt that helps retrieve product information from a knowledge base You need to ensure that the agent delivers consistent and accurate responses.

What should you do for each prompt? To answer, select the appropriate options in the answer area. NOTE: Each correct selection is worth one point.

Hot Area:


**A prompt that has instructions to "help the customer as best you can"**:

- Add filler words to make the prompt sound more natural and conversational.
- Keep the prompt vague to enable model flexibility.
- Rewrite the prompt with clear and task-specific instructions.

**A prompt that helps retrieve product information from a knowledge base:**

- Add several open-ended questions to give the model broader context.
- Use responses with only reference sources and limit the response scope.
- Remove the knowledge source so that the model responds freely with general product information.


--------

**Box 1: Rewrite the prompt with clear and task-specific instructions.**

**Box 2: Use responses with only reference sources and limit the response scope.**

Explanation/Reference:

Explanation:

**Box 1: Rewrite the prompt with clear and task-specific instructions.**


To ensure a Microsoft Copilot Studio agent delivers high-quality support, you must move beyond vague instructions like "help as best you can." Generative AI requires constraints, structured data, and persona definitions to remain consistent.

Here is how to optimize your agent for accuracy and reliability:

Refine the System Prompt A vague prompt leads to "hallucinations" (made-up facts). Replace the general instruction with a Persona and Boundary script.

Define the Persona: "You are a professional Support Specialist for [Company Name]. Your tone is empathetic, concise, and helpful."

Set Boundaries: "Only answer questions based on the provided uploaded documents. If the answer is not in the documentation, politely state you don't know and offer to connect to a human."

Establish Steps: "Always greet the user, identify their core issue, and provide a step-by-step solution."


**Box 2: Use responses with only reference sources and limit the response scope.**

To ensure your Microsoft Copilot Studio agent remains grounded, accurate, and avoids "hallucinations," you must configure the System Prompt to enforce strict grounding. This tells the AI to act only as a retrieval tool rather than a general-purpose assistant.

Restrict Search Scope:

In the Generative Answers node, ensure "Search only selected sources" is toggled on.

Upload specific PDFs, Manuals, or SharePoint folders rather than using the entire public web


### QUESTION 16

You are designing a testing solution for Microsoft Copilot Studio agents.

You need to validate prompt engineering best practices to ensure that the agents generate accurate and contextually relevant responses.

Which prompt validation techniques and metrics should you include in the solution? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.

Answer Area

Prompt validation techniques:

- Exclude domain-specific terminology from the prompts.
- Use prompts that have varied phrasing.
- Use only simple, one-word prompts.

Metrics:


- The number of words generated per response
- Response relevance and accuracy
- The response generation time


------

**Box 1: Use prompts that have varied phrasing**

**Box 2: Response Relevance and accuracy**


**Box 1: Use prompts that have varied phrasing**

Here is why this technique is superior to the others for validating prompt engineering best practices: Robustness and Generalization: Using varied phrasing (synonyms, different sentence structures) tests whether the agent understands the underlying intent rather than just matching keywords. This ensures the agent is not brittle and can handle real-world user queries that vary in phrasing.

Best Practice Validation: Microsoft encourages testing agent responses by iterating and refining prompts. Testing with variations helps identify if a prompt is too rigid or if it correctly captures the context.

For a comprehensive validation strategy, this technique is typically paired with Batch Testing, where you upload a set of varied test cases to evaluate the AI's consistency and accuracy.

Incorrect:

* Exclude domain-specific terminology This is incorrect. Effective prompting often requires using domain-specific terms to ensure the AI understands the specialized context.

* Use only simple, one-word prompts This is ineffective. Simple prompts lack the context required for high-quality, accurate responses.

**Box 2: Response Relevance and accuracy**

By using Response Relevance and Accuracy as your primary metrics, you ensure the agent remains grounded in its knowledge sources while remaining flexible to user intent.


### QUESTION 17

A company has two Microsoft Power Platform environments named Dev1 and Prod1. A Microsoft Copilot Studio agent named Agent1 is built into a solution in the Dev1 environment.

You plan to deploy Agent1 to Prod1.

You need to make Agent1 available to the users in Prod1. The solution must minimize administrative effort.

What should you do?

A. Share Agent1 with the users in Prod1.

B. Export the solution as an unmanaged solution and import the solution into Prod1.

C. Export the solution as a managed solution and import the solution into Prod1.

D. Create a new Copilot Studio agent in Prod1 by replicating the configuration of Agent1.


-----

正确答案与详细解析

正确答案：

  - C. Export the solution as a managed solution and import the solution into
    Prod1.（将解决方案导出为托管解决方案，并将其导入 Prod1 中。）

解析与考点分析

为什么选 C？

1.  Power Platform ALM（应用生命周期管理）最佳实践：
      - 在 Microsoft Power Platform 体系中，将应用、Flow 或 Copilot Studio Agent 从开发环境（Dev1）部署到生产环境（Prod1）时，标准的官方规范是导出为 托管解决方案（Managed Solution）。
2.  满足“最小化管理工作量（Minimize administrative effort）”：
      - 托管解决方案（Managed Solution）是用于非开发环境（测试/生产环境）的标准部署包。
      - 导入为托管解决方案后，可以防止生产环境中被意外直接修改（锁定生产环境），同时后续可以通过覆盖或更新版本轻松进行全自动升级与卸载，大大降低了长期的系统运维和管理成本。

为什么不选其他选项？

  - A. Share Agent1 with the users in Prod1（与 Prod1 中的用户共享 Agent1）： Agent1 当前存在于 Dev1 环境中，仅跨环境“共享”无法将 Agent 真正部署并运行在 Prod1 生产环境的数据源和隔离策略下。
  - B. Export the solution as an unmanaged solution and import the solution into Prod1（导出为非托管解决方案导入 Prod1）： 非托管解决方案（Unmanaged Solution）只能用于开发环境。如果导入生产环境，会导致生产环境中产生非托管图层（Unmanaged layers），后续无法进行干净的解决方案升级和卸载，极大地增加管理工作量。
  - D. Create a new Copilot Studio agent in Prod1 by replicating the configuration of Agent1（在 Prod1 中通过复制配置新建）： 手动重新创建和配置 Agent 属于极度繁琐且容易出错的人工重复劳动，严重违背了“最小化管理工作量”的要求。


-----


**Correct Answer: C**

**Explanation/Reference:**

Explanation:

To deploy a Microsoft Copilot Studio agent to a second environment while minimizing administrative work, you should use managed solutions and Power Platform Pipelines (or manual export/import if pipelines are not configured).

Follow these steps to move and share the agent effectively:

1. **Prepare the Solution (Source Environment)**

Since your agent is already in a solution, ensure all its dependencies are included to avoid "missing component" errors during import.

2. **Export and Import** 

To minimize manual labor, use a Managed Solution for the target environment. Managed solutions are easier to update or remove later and prevent accidental direct edits in production.


### QUESTION 18

A company has a Microsoft Power Platform environment that contains Microsoft Dataverse data.

You create a Microsoft Copilot Studio agent named Agent1 that processes the Dataverse data.

You discover that Agent1 fails to return relevant or accurate results.

You need to improve the quality and reliability of data grounding.

What should you do?

A. Retrain Agent1.

B. Verify and cleanse the Dataverse data.

C. Use an adaptive card in Agent1.

D. Add example user inputs to the training data of Agent1.


**Correct Answer: B**

**Explanation/Reference:**


To improve the reliability and accuracy of a Microsoft Copilot Studio agent grounded in Dataverse, you must focus on Dataverse data preparation, which includes cleaning, structuring, and enriching the data to ensure the agent retrieves relevant information. When Copilot fails to return accurate results, it is often due to poor data quality (garbage in, garbage out), excessive, unstructured data, or misconfigured search indexing.

### QUESTION 19 

A company plans to deploy a Microsoft Copilot Studio agent to enhance customer support.

The company stores customer data across ServiceNow, Microsoft Dynamics 365 Finance, Dynamics 365 Supply Chain Management, and Excel files in SharePoint Online.

You need to recommend a solution to ensure that the agent can deliver accurate and timely responses.

What should you recommend?

A. Implement a model router for query handling.

B. Create custom prompts.

C. Implement Microsoft Power Platform connectors.

D. Enable incremental indexing in Azure AI Search.




-----

正确答案与详细解析

正确答案：

  - C. Implement Microsoft Power Platform connectors.（实现 Microsoft Power Platform 连接器。）

解析与考点分析

为什么选 C？

1.  业务痛点： 公司的客户数据散落在多个不同的异构系统和数据源中，包括：
      - 第三方 SaaS 系统：ServiceNow
      - Dynamics 365 企业应用：Dynamics 365 Finance 和 Dynamics 365 Supply ChainManagement
      - 文件与文档：存储在 SharePoint Online 中的 Excel 文件
2.  技术解决方案： Microsoft Copilot Studio 建立在 Microsoft Power Platform 之上。为了让 Copilot
    Studio Agent 能够实时跨这些不同的系统检索和读取数据，最标准、最直接且低代码的方式就是使用 Microsoft Power Platform
    Connectors（连接器）。
3.  Power Platform 拥有 1,000+ 现成的内置连接器（涵盖 ServiceNow、Dynamics 365
    各模块、SharePoint/Excel 等）。通过配置这些连接器（作为知识源 Knowledge Sources 或 Plugin
    Actions），Agent 可以直接调用 API 获取最新的实时数据，从而确保回答的准确性与及时性（accurate and timely
    responses）。

为什么不选其他选项？

  - A. Implement a model router for query handling（实现用于查询处理的模型路由器）： 模型路由（Model
    Routing）主要用于在不同的 LLM 大模型（如 GPT-3.5、GPT-4、Claude
    等）之间根据查询复杂度分发请求以优化成本和时延，它无法解决从
    ServiceNow 或 Dynamics 365 中检索企业业务数据的问题。
  - B. Create custom prompts（创建自定义提示词）：
    Prompt（提示词）只能指导大模型如何思考或格式化输出，如果模型本身没有连接到包含客户数据的后台系统，Prompt 无法凭空产生准确的企业内部数据。
  - D. Enable incremental indexing in Azure AI Search（在 Azure AI Search
    中启用增量索引）： 增量索引是 Azure AI Search 针对非结构化文档检索的优化手段。虽然 Azure AI Search 可以作为 RAG
    的向量数据库，但对于 Dynamics 365 Finance/SCM 和 ServiceNow 这类包含大量实时事务型数据（Transactional
    Data）和复杂业务逻辑的系统，直接通过连接器（Connectors）调用系统 API 才是更合适且能够保证实时准确回答的标准做法。


### QUESTION 20 

A manufacturing company wants to deploy an agent that will automate supplier invoice processing.

You are designing a solution to evaluate the financial implications of the deployment. The company is especially concerned about budget overruns.

You need to ensure that the solution considers the total cost of ownership (TCO), the expected savings from using automation, and whether to extend the existing AI capabilities.

What should you include in the design?

A. a break-even analysis only

B. adopting prebuilt agents to reduce the deployment time

C. training a custom model

D. a return on AI investment (ROAI) analysis


-----


Correct Answer: D

**Explanation/Reference:**

Explanation:

This design plan outlines the financial and operational framework for deploying a Microsoft-based AI agent for supplier invoice processing. By leveraging current industry benchmarks and Microsoft’s own agentic AI frameworks, this plan focuses on maximizing Return on AI Investment (ROAI) while mitigating the risk of budget overruns.


### QUESTION 21 

A company has a Microsoft Power Platform solution that contains the following components:

- Microsoft Dataverse tables
- A Microsoft Power BI workspace named WS1
- A canvas app named App1 that uses Dataverse
- A Power BI semantic model that connects to Dataverse by using DirectQuery

You plan to use generative AI to provide answers to queries based on a subset of corporate data.

You need to ensure that the data is available as a grounding data source for AI systems.

What should you do?

A. Populate a Dataverse table.

B. Share WS1. 

C. Endorse the semantic model.

D. Export the semantic model.

---

正确答案与详细解析

正确答案：

  - C. Endorse the semantic model.（对语义模型进行背书/认证。）

解析与考点分析

为什么选 C？

1.  业务场景： 公司有一个通过 DirectQuery 连接到 Dataverse 的 Power BI 语义模型（Semantic
    Model），希望使用生成式 AI（如 Power BI Copilot / Microsoft Copilot /
    Copilot Studio）基于企业数据子集提供查询解答，并确保该数据能够作为 AI 系统的接地数据源（Grounding data source）。
2.  微软架构与最佳实践：
      - 在 Power BI / Microsoft Fabric / Copilot 生态系统中，为了让 AI
        系统识别、信任并优先使用某个语义模型作为可靠的接地数据源（Grounding
        Source），必须对该语义模型进行背书（Endorse）（即设置为
        Promoted 提升 或 Certified 认证）。
      - 对语义模型进行背书可以向 AI 系统和用户表明该数据源经过严格治理、数据准确且属于企业权威数据源（Single Source of
        Truth），从而授权生成式 AI 基于该模型进行数据回答与分析。

为什么不选其他选项？

  - A. Populate a Dataverse table（填充 Dataverse 表）： Dataverse 已经是底层的元数据存储，但题目中的
    AI 问答是基于已建立好的 Power BI 语义模型（包含度量值、关系和计算）。仅填充数据表不能直接将语义模型注册/暴露为受信任的 AI 接地数据源。
  - B. Share WS1（共享 WS1 工作区）： 共享工作区只是赋予用户对工作区内资源的访问权限，无法将数据模型提升为 AI
    系统认可的受信任接地数据源。
  - D. Export the semantic model（导出语义模型）： 导出模型（如导出为文件）会脱离现有的云端 DirectQuery
    实时连接，断开数据更新，无法作为 AI 系统实时的接地数据源。


-----

Correct Answer: C


Explanation/Reference:

Explanation:

To ensure data is available as a grounding source for generative AI systems within this Power Platform solution, you should endorse the semantic model.

While populating a Dataverse table and sharing the workspace are necessary for general data accessibility, endorsing the Power BI semantic model (through certification or promotion) specifically helps generative AI systems like Power BI Copilot and Microsoft 365 Copilot prioritize and identify it as a high-quality, trusted source for grounding answers.

Why Endorsement is Key for Grounding 

Generative AI systems use grounding to reduce "hallucinations" by anchoring their responses in real corporate data. In the Power BI ecosystem:

**Discovery:** Endorsement makes the semantic model more discoverable across the organization.

**Prioritization:** Copilot often prioritizes endorsed (Promoted or Certified) models when searching for relevant data to answer a natural language query.

**Trust:** 

It signals to both the AI and the end-user that the data in this DirectQuery-connected model is verified and authoritative for business queries.



### QUESTION 22 

A company plans to implement an AI business solution for a consumer goods company.

You need to create agents that meet the following requirements:

Orchestrate the sales order fulfillment and shipping of goods to customers. Analyze historical data and trends to replenish stock.

Which type of agent should you use for each requirement? To answer, drag the appropriate agent types to the correct requirements. Each agent type may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.


Select and Place

**NOTE:** Each correct selection is worth one point.

**Agent types**

- Autonomous
- Prompt-and-response
- Task

**Answer Area**

- Orchestrate the sales order fulfillment and shipping:
- Analyze historical data and trends:


----

**Box 1: Autonomous**

**Box 2: Autonomous**


**Box 1: Autonomous**

Orchestrate the sales order fulfillment and shipping of goods to customers.

An Autonomous Agent is the best choice for orchestrating sales order fulfillment and shipping in a consumer goods (CPG) environment.

While prompt-and-response agents are good for simple queries and task-based agents are good for linear workflows, an autonomous agent can manage the "many-to-many" variables inherent in supply chains without constant human intervention.

Why Autonomous is the Best Fit An autonomous agent acts as a reasoning engine rather than a static script. In fulfillment, it excels because it can:

Handle Exceptions: If a warehouse is out of a specific SKU, the agent can independently look for the next closest facility or suggest a substitute product.

Multi-Step Reasoning: It can check credit limits, verify inventory, calculate shipping dates, and trigger a logistics pickup in one cohesive flow.

Proactive Problem Solving: If a weather delay affects a shipping route, the agent can reroute the order and notify the customer before a human even spots the issue.

**Box 2: Autonomous**

Analyze historical data and trends to replenish stock.

For a consumer goods company managing stock replenishment, an Autonomous Agent is the best fit.

Stock replenishment requires a system that proactively monitors inventory, analyzes trends in real-time, and takes action (like drafting purchase orders) without waiting for a human to ask. While "Task" and "Prompt-and-response" agents have roles in analysis, they lack the "always-on" orchestration needed for a supply chain.

Why an Autonomous Agent Wins Proactive Replenishment Unlike prompt-based systems, an autonomous agent in Microsoft Copilot Studio can be triggered by business events—such as a low-stock alert in your ERP—rather than a user's prompt. It can:

Continuously Monitor: Watch inventory levels across multiple warehouses 24/7.

Auto-Draft Orders: Apply vendor rules and lead times to create draft purchase orders for approval.

Sense Disruptions: Adjust supply chain settings before a problem escalates based on real-time data.


### QUESTION 23 

A company has an AI agent that automates the review of customer feedback stored in a cloud database.

You plan to generate monthly reports from the agent's output to provide insights into customer sentiment and guide product development and marketing.

You need to ensure that the data ingested by the agent is clean and suitable for the intended use.

What should you do to prepare the data?

A. Create a workflow in Microsoft Power Automate.

B. Identify and address biased data.

C. Create an agent flow in Microsoft Copilot Studio.

D. Sort the database by customer last name.

----

**Correct Answer: B**


### QUESTION 24

A company is designing a Microsoft Power Platform solution to reduce the manual steps of a business process by deploying an existing AI model.

You need to calculate the return on AI investment (ROAI) by identifying the metadata and telemetry of the solution.

What should you use?

A. Microsoft Power Platform admin center

B. Success by Design

C. the Business value toolkit

D. Microsoft Cloud Adoption Framework for Azure

-----

**Correct Answer: C**

Explanation/Reference:


Explanation:

The Business Value Toolkit is the correct resource to use for calculating Return on AI Investment (ROAI) for a Microsoft Power Platform solution.

Calculating ROAI with the Business Value Toolkit The Business Value Toolkit helps organizations move beyond simple automation by providing structured templates and analytics to justify AI investments.

Metadata Identification: It captures environment-specific data, such as the number of automated flows, the type of AI models used (e.g., AI Builder), and the business units involved.

Telemetry Integration: It leverages usage data from the Power Platform admin center and Application Insights to track real-time performance, such as execution frequency and success rates.

ROI Metrics: It transforms technical telemetry into financial outcomes, such as:

- Time saved: Hours recovered from manual data entry or processing.

- Error reduction: Improvements in accuracy compared to manual steps.

- Cost avoidance: Savings from reduced reliance on specialized manual labor.

Incorrect:

[Not D] While the Cloud Adoption Framework (CAF) for Azure provides broad strategic guidance for AI adoption, the Business Value Toolkit is specifically designed to quantify the impact of low-code and AI solutions using solution metadata and telemetry.


### QUESTION 25

A company has a Microsoft Power Platform environment.

You need to build two agents named Agent1 and Agent2. The solution must meet the following requirements:

- Agent1 must be extendable by using the Semantic Kernel and must connect to multiple business apps and APIs.

- Agent2 must connect directly to data stored in Microsoft Dataverse and must be embeddable in a Microsoft Power Apps canvas app.

What should you use to build each agent? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.

Hot Area

Answer Area

**Agent1:**

- Microsoft Foundry
- Azure Logic Apps
- Copilot in Power Apps
- Microsoft Copilot Studio

**Agent2:**

- Microsoft Foundry
- Azure Logic Apps
- Copilot in Power Apps
- Microsoft Copilot Studio


-------


这是该道热点选择题（Hot Area）的正确答案与详细解析：

QUESTION 答案 (Answer Area)

1. Agent1:

  - 正确选项： Microsoft Foundry

2. Agent2:

  - 正确选项： Microsoft Copilot Studio

解析与考点分析

第一部分分析：Agent1（使用 Semantic Kernel 扩展并连接多个 API）

  - 需求关键点： “使用 Semantic Kernel 进行扩展（extendable by using the Semantic Kernel）” 以及 “连接多个业务应用和 API”。
  - 技术选型： Microsoft Foundry（Azure AI Foundry）
      - Semantic Kernel（语义内核） 是微软开源的专业代码 SDK，用于开发者构建高级 AI Agent 和 LLM 工作流。
      - Microsoft Foundry（前身为 Azure AI Studio）是专业开发者（Pro-code）使用 Semantic Kernel、Python/C# SDK 构建、托管、调试和部署代码级 AI Agent 的官方核心平台。

第二部分分析：Agent2（直接连接 Dataverse 且嵌入 Canvas App）

  - 需求关键点： “直接连接存储在 Microsoft Dataverse 中的数据” 以及 “嵌入到 Microsoft Power Apps
    canvas app 中”。
  - 技术选型： Microsoft Copilot Studio
      - Microsoft Copilot Studio 是 Power Platform 生态下的低代码 Agent 构建平台。
      - 它原生支持将 Microsoft Dataverse 设定为知识源（Knowledge Source）或数据表连接。
      - 在 Power Apps Canvas App（画布应用） 中，开发者可以通过内置的 Copilot 控件直接选择并**嵌入（Embed）**在
        Copilot Studio 中创建和发布的 Agent。





### QUESTION 26

A company has an Azure environment that supports multiple business units.

The company plans to implement an AI solution that will perform sentiment analysis on customer product reviews.

You need to evaluate the potential cost of the solution to support return on AI investment (ROAI) analysis.

What should you use?

A. Cost Management + Billing

B. Microsoft Fabric SKU Estimator

C. Total Cost of Ownership (TCO) Calculator

D. Azure Reservations


-----

**正确答案与详细解析**

**正确答案：**

* **C. Total Cost of Ownership (TCO) Calculator**（总体拥有成本计算器）

**解析与考点分析**

**为什么选 C？**

1. **业务场景：** 公司**计划（Plans）**实现一个全新的 AI 解决方案（进行客户产品评论的情感分析），需要**在部署前评估该方案的潜在成本（Potential Cost）**，以支持 AI 投资回报率（ROAI, Return on AI Investment）分析。
2. **工具功能定位：**
   * **Total Cost of Ownership (TCO) Calculator：** 专门用于在项目部署前进行财务建模和 ROI/ROAI 分析。它可以估算拟议解决方案在整个生命周期内的总体成本（包括算力、存储、服务调用及运营维护成本），帮助管理层评估投资效益。

**为什么不选其他选项？**

* **A. Cost Management + Billing（成本管理 + 计费）：** 用于监控、分析和管理 Azure 中**已经部署和正在运行**的资源的实际支出与预算，无法评估尚未部署的全新 AI 项目的预估成本。
* **B. Microsoft Fabric SKU Estimator（Microsoft Fabric SKU 估算器）：** 专门用于估算 Microsoft Fabric 分析平台的容量和 SKU 需求，不适用于评估 Azure AI Services（如语言服务/情感分析）的总体 AI 项目 ROAI。
* **D. Azure Reservations（Azure 预留）：** 一种折扣购买机制（通过承诺 1 年或 3 年使用期来降低虚拟机或服务成本），属于成本优化手段，而不是用于分析和评估 ROAI 的估算工具。

----

Correct Answer: C

Explanation/Reference:

Explanation:

To evaluate the cost of an Azure sentiment analysis solution and support a Return on AI Investment (ROAI) analysis for multiple business units, you should use the Azure Total Cost of Ownership (TCO) Calculator.

The TCO Calculator is essential for calculating the financial impact of migrating or implementing a new solution compared to your existing infrastructure.

Step-by-Step: Using the TCO Calculator for ROAI To perform a comprehensive ROAI analysis, follow these steps to capture the full scope of ownership:

1. Define Your Current Workload Enter details about your existing infrastructure that the AI solution might replace or augment.

2. Adjust Assumptions Tailor the calculator to your business environment by adjusting key metrics.

3. Review the TCO Report The calculator generates a detailed report comparing your current costs against Azure.


### QUESTION 27

You need to recommend a Microsoft Power Platform solution for customer support. The solution must include AI capabilities in Microsoft Power Automate and must meet the following requirements:

Use a centralized workspace for AI models.

Generate short overviews from large amounts of unstructured text, such as case notes or transcripts, without requiring additional training or coding.

What should you include in the recommendation for each requirement? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.

### Answer Area

* **Use a centralized workspace:**
  * An Microsoft Foundry hub
  * Azure OpenAI Foundry
  * Microsoft Copilot Studio
  * Microsoft Dataverse

* **Generate short overviews:**
  * An AI Builder prebuilt model
  * An AI Builder prebuilt prompt
  * Azure OpenAI
  * GitHub Copilot
  * Microsoft Copilot in Power Automate


------


Box 1: Azure AI Foundry

Box 2: An AI Builder prebuilt model


**Box 1: Azure AI Foundry Use a centralized workspace for AI models.**

Integrating Azure AI Foundry with Microsoft Power Automate provides a powerful, centralized environment for managing the AI models that drive your customer support project. This combination allows you to leverage enterprise-grade generative AI while maintaining governance through a unified hub.

Core AI Capabilities in Power Automate Power Automate can use AI Foundry models to transform standard support flows into intelligent, context- aware processes.

Intelligent Email Responders: Automatically analyze incoming support emails to determine sentiment, urgency, and intent.

Ticket Summarization: Use GPT models to condense long customer conversation histories for human agents.

Contextual Routing: Extract key entities (like product names or order IDs) to route tickets to the correct specialized team.

Multi-Agent Orchestration: Coordinate complex support tasks—like checking a database, drafting a reply, and updating a CRM—using centralized AI logic.

Incorrect:

* Microsoft Foundry Hub While Microsoft Foundry Hubs (part of Azure AI Foundry) are used for large-scale, professional-grade AI development, AI Builder is the specific low-code tool designed to integrate seamlessly into Microsoft Power Automate.


**Box 2: An AI Builder prebuilt model** 

Generate short overviews from large amounts of unstructured text, such as case notes or transcripts, without requiring additional training or coding.

To generate short overviews from large amounts of unstructured text in Power Automate without additional training, you should use the AI Builder "Summarize text" prebuilt model.

Key Features of the Summarize Model Zero Training Required: Works immediately out of the box with Microsoft’s pre-trained logic.

Unstructured Data: Handles case notes, long emails, and meeting transcripts effectively.

Low Code: Can be added to a Power Automate flow as a single "action" step.

Customizable Length: Allows you to specify if you want a brief summary or a more detailed overview.


### QUESTION 28 


A company uses Microsoft Dynamics 365 Finance for accounts payable and customer debt recovery.

You are designing an AI finance process that meets the following requirements:

- Provides AI-driven details to help staff identify overdue vendor invoices and outstanding balances
- Helps staff reduce how long it takes to review overdue invoices and payment history

You need to recommend which Microsoft Copilot features to include in the design.

What should you recommend for each requirement? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.

Answer Area

* **Help identify vendor overdue invoices and outstanding balances:**
  * Agent management
  * AI Summaries with Copilot
  * The Account Reconciliation agent
  * The Supplier Communication agent

* **Reduce how long it takes to review overdue invoices and payment history:**
  * Analyze demand plans with Copilot
  * Collections coordinator summary
  * The Account Reconciliation agent
  * The Supplier Communication agent


-----

**Box 1: The Account Reconciliation Agent**

**Box 2: Collections coordinator summary**


Box 1: The Account Reconciliation Agent 


Provides AI-driven details to help staff identify overdue vendor invoices and outstanding balances In Microsoft Dynamics 365 Finance, the Account Reconciliation agent and Copilot for Finance provide a powerful AI-driven ecosystem to manage overdue vendor invoices and customer debt recovery. These agents shift your team from reactive manual checking to proactive, exception-based management.

The Account Reconciliation Agent This agent automates the high-volume task of matching subledger transactions to the general ledger, specifically for Accounts Payable (AP) and Accounts Receivable (AR).

Automated Matching: Continuously monitors and reconciles transactions throughout the month rather than waiting for period-end.

Exception Identification: Automatically flags discrepancies, such as voucher amount mismatches or unmatched entries, for staff review.

AI-Suggested Actions: Using Microsoft Copilot, the agent suggests the most likely resolution for each exception, such as posting a correction or reaching out to a vendor.

Efficiency: Reduces the time spent on manual spreadsheet-based reconciliations, allowing staff to focus on resolving the "why" behind overdue balances


Box 2: Collections coordinator summary


Helps staff reduce how long it takes to review overdue invoices and payment history

To reduce the time spent reviewing overdue invoices and payment history in Microsoft Dynamics 365 Finance, you need the Collections Coordinator Summary feature powered by Copilot.

This AI-driven process automates the synthesis of customer financial data, allowing staff to move directly from review to action without manual data digging.


### QUESTION 29

A company has an AI agent that automates the review of customer feedback stored in a cloud database.

You plan to generate monthly reports from the agent's output to provide insights into customer sentiment and guide product development and marketing.

You need to ensure that the data ingested by the agent is clean and suitable for the intended use.

What should you do to prepare the data?

A. Ensure that the size of the database does not exceed 100 GB.

B. Translate the data into a single language.

C. Identify and address biased data.

D. Sort the database by customer last name.


------

Correct Answer: C

Explanation/Reference:

Explanation:

Correct:

* Identify and address biased data.

To ensure that the customer feedback ingested by your Microsoft AI agent is clean and suitable for monthly sentiment reports, the most effective action is to identify and address biased data.Data bias in sentiment analysis can lead to skewed reports that misrepresent customer satisfaction or ignore the needs of specific demographic groups.‘


Incorrect:

* Create a workflow in Microsoft Power Automate

* Create an agent flow in Microsoft Copilot Studio.

* Ensure that the size of the database does not exceed 100 GB.

* Sort the database by customer last name.


### QUESTION 30

A company has an Azure environment that supports multiple business units.

The company plans to implement an AI solution that will perform sentiment analysis on customer product reviews.

You need to evaluate the potential cost of the solution to support return on AI investment (ROAI) analysis.

What should you use?

A. Total Cost of Ownership (TCO) Calculator

B. Azure Reservations

C. Azure pricing calculator

D. Azure Monitor

----


Correct Answer: C

Explanation/Reference:

Explanation:

Correct:

Azure pricing calculator (Best choice) The best tool to evaluate the potential cost of a new AI solution to support ROI analysis is the Azure pricing calculator.

Why Azure Pricing Calculator is BestProactive Estimation: It is specifically designed to estimate the costs of Azure services before they are deployed.

Granular Planning: It allows you to select specific services (e.g., Azure AI Language, Cognitive Services, Azure Machine Learning), define usage patterns, regions, and tiers to create a detailed cost estimate.

Scenario Comparison: You can create different scenarios (e.g., comparing different language models or usage volumes) to estimate the impact on ROAI

Comparison of Tools Azure Pricing Calculator: Estimates costs for new, un-deployed projects. (Best Choice).


Total Cost of Ownership (TCO) Calculator: Compares on-premises infrastructure costs against Azure, typically used for large-scale migration strategies, not specific AI service modeling.

Cost Management + Billing: Monitors and analyzes actual, real-time spending on already deployed resources. 

For a complex AI solution involving.

* Total Cost of Ownership (TCO) Calculator (Second best choice)

While Cost Management + Billing is essential for tracking actual spend once a solution is running, the TCO Calculator is specifically designed for the pre-implementation phase to support Return on AI Investment (ROAI) analysis. 

It allows you to estimate and compare the potential costs of moving a workload to Azure —including labor, networking, and storage—against an existing process or alternative solution.

* Cost Management + Billing (Third best)

Azure pricing calculator and Total Cost of Ownership (TCO) Calculator are both better than Cost Management + Billing, as they evaluate the potential cost and support a Return on AI Investment (ROAI) analysis before the solution is built, you need to estimate future expenses based on expected usage. 

Cost Management + Billing does post-deployment tracking.


A good tool still for this scenario is Cost Management + Billing. Cost Management + Billing allows you to break down and evaluate costs across many business units using tags and scope filtering. This granular data is essential for calculating the Return on AI Investment (ROAI) for specific departments or the entire organization.

Incorrect


* Azure Monitor
* Azure Reservations
* Azure savings plans

Is used to reduce costs for compute services via long-term commitment. 


It is a way to lower your bill, but not a tool for evaluating or reporting on investment performance.


* Microsoft Fabric SKU Estimator

Is used to estimate capacity needs for Fabric-specific data projects. It is eseful only if your sentiment analysis solution is built specifically on the Microsoft Fabric platform.

* **Azure pricing calculator**

To evaluate the potential cost of an AI solution for sentiment analysis on Azure, you should use the Azure Pricing Calculator.This tool allows you to estimate the monthly and annual costs of the specific services required for your solution—such as Azure AI Language (which provides sentiment analysis) or Azure OpenAI Service—based on your expected volume of feedback data.

* Total Cost of Ownership (TCO) Calculator

To evaluate the cost of an Azure sentiment analysis solution and support a Return on AI Investment (ROAI) analysis for multiple business units, you should use the Azure Total Cost of Ownership (TCO) Calculator.

The TCO Calculator is essential for calculating the financial impact of migrating or implementing a new solution compared to your existing infrastructure.

Step-by-Step: Using the TCO Calculator for ROAI 

To perform a comprehensive ROAI analysis, follow these steps to capture the full scope of ownership:

1. Define Your Current Workload

Enter details about your existing infrastructure that the AI solution might replace or augment.

2. Adjust Assumptions

Tailor the calculator to your business environment by adjusting key metrics.

3. Review the TCO Report

The calculator generates a detailed report comparing your current costs against Azure.


### QUESTION 31 

A company has an Azure environment that supports multiple business units.

The company plans to implement an AI solution that will perform sentiment analysis on customer product reviews.

You need to evaluate the potential cost of the solution to support return on AI investment (ROAI) analysis.

What should you use?


A. Azure savings plans

B. Microsoft Fabric SKU Estimator

C. Cost Management + Billing

D. Azure Monitor


----


Correct Answer: C 

Explanation/Reference:

Correct:

* Azure pricing calculator (Best choice) The best tool to evaluate the potential cost of a new AI solution to support ROI analysis is the Azure pricing calculator.

Why Azure Pricing Calculator is BestProactive Estimation: It is specifically designed to estimate the costs of Azure services before they are deployed.

Granular Planning: It allows you to select specific services (e.g., Azure AI Language, Cognitive Services, Azure Machine Learning), define usage patterns, regions, and tiers to create a detailed cost estimate.

Scenario Comparison: You can create different scenarios (e.g., comparing different language models or usage volumes) to estimate the impact on ROAI

Comparison of Tools Azure Pricing Calculator: Estimates costs for new, un-deployed projects. (Best Choice).

Total Cost of Ownership (TCO) Calculator: Compares on-premises infrastructure costs against Azure, typically used for large-scale migration strategies, not specific AI service modeling.Cost Management + Billing: Monitors and analyzes actual, real-time spending on already deployed resources. For a complex AI solution involvin

* Total Cost of Ownership (TCO) Calculator (Second best choice) While Cost Management + Billing is essential for tracking actual spend once a solution is running, the TCO Calculator is specifically designed for the pre-implementation phase to support Return on AI Investment (ROAI) analysis. It allows you to estimate and compare the potential costs of moving a workload to Azure —including labor, networking, and storage—against an existing process or alternative solution.

* Cost Management + Billing (Third best) Azure pricing calculator and Total Cost of Ownership (TCO) Calculator are both better than Cost Management + Billing, as they evaluate the potential cost and support a Return on AI Investment (ROAI) analysis before the solution is built, you need to estimate future expenses based on expected usage. Cost Management + Billing does post-deployment tracking.

A good tool still for this scenario is Cost Management + Billing. Cost Management + Billing allows you to break down and evaluate costs across many business units using tags and scope filtering. 


This granular data is essential for calculating the the Return on AI Investment (ROAI) for specific departments or the entire organization.


Incorrect:

* Azure Monitor
* Azure Reservations
* Azure savings plans

Is used to reduce costs for compute services via long-term commitment. 


It is a way to lower your bill, but not a tool for evaluating or reporting on investment performance

* Microsoft Fabric SKU Estimator

Is used to estimate capacity needs for Fabric-specific data projects. It is eseful only if your sentiment analysis solution is built specifically on the Microsoft Fabric platform


Note:

* Azure pricing calculator

To evaluate the potential cost of an AI solution for sentiment analysis on Azure, you should use the Azure Pricing Calculator.This tool allows you to estimate the monthly and annual costs of the specific services required for your solution—such as Azure AI Language (which provides sentiment analysis) or Azure OpenAI Service—based on your expected volume of feedback data.

* Total Cost of Ownership

(TCO) Calculator To evaluate the cost of an Azure sentiment analysis solution and support a Return on AI Investment (ROAI) analysis for multiple business units, you should use the Azure Total Cost of Ownership (TCO) Calculator.

The TCO Calculator is essential for calculating the financial impact of migrating or implementing a new solution compared to your existing infrastructure.

Step-by-Step: Using the TCO Calculator for ROAI 

To perform a comprehensive ROAI analysis, follow these steps to capture the full scope of ownership:

1. Define Your Current Workload

Enter details about your existing infrastructure that the AI solution might replace or augment.

2. Adjust Assumptions

Tailor the calculator to your business environment by adjusting key metrics.

3. Review the TCO Report

The calculator generates a detailed report comparing your current costs against Azure.

### QUESTION 32 

A company has an Azure environment that supports multiple business units.

The company plans to implement an AI solution that will perform sentiment analysis on customer product reviews.

You need to evaluate the potential cost of the solution to support return on AI investment (ROAI) analysis.

What should you use?

A. Azure Reservations

B. Microsoft Fabric SKU Estimator

C. Anomaly Detection in Azure Cost Management

D. Azure pricing calculator

----

Correct Answer: D

Explanation:

* Azure pricing calculator (Best choice)

The best tool to evaluate the potential cost of a new AI solution to support ROI analysis is the Azure pricing calculator.

Why Azure Pricing Calculator is BestProactive Estimation: It is specifically designed to estimate the costs of Azure services before they are deployed.

Granular Planning: It allows you to select specific services (e.g., Azure AI Language, Cognitive Services, Azure Machine Learning), define usage patterns, regions, and tiers to create a detailed cost estimate.

Scenario Comparison: You can create different scenarios (e.g., comparing different language models or usage volumes) to estimate the impact on ROAI

**Comparison of Tools Azure Pricing Calculator: Estimates costs for new, un-deployed projects. (Best Choice**）

Total Cost of Ownership (TCO) Calculator: Compares on-premises infrastructure costs against Azure, typically used for large-scale migration strategies, not specific AI service modeling.Cost Management + Billing: Monitors and analyzes actual, real-time spending on already deployed resources. For a complex AI solution involvin

* Total Cost of Ownership (TCO) Calculator (Second best choice)

While Cost Management + Billing is essential for tracking actual spend once a solution is running, the TCO Calculator is specifically designed for the pre-implementation phase to support Return on AI Investment (ROAI) analysis. It allows you to estimate and compare the potential costs of moving a workload to Azure —including labor, networking, and storage—against an existing process or alternative solution.

* Cost Management + Billing (Third best)

Azure pricing calculator and Total Cost of Ownership (TCO) Calculator are both better than Cost Management + Billing, as they evaluate the potential cost and support a Return on AI Investment (ROAI) analysis before the solution is built, you need to estimate future expenses based on expected usage. Cost Management + Billing does post-deployment tracking.

A good tool still for this scenario is Cost Management + Billing. Cost Management + Billing allows you to break down and evaluate costs across many business units using tags and scope filtering. This granular data is essential for calculating the Return on AI Investment (ROAI) for specific departments or the entire organization.

Incorrect:

* Azure Monitor
* Azure Reservations
* Azure savings plans

Is used to reduce costs for compute services via long-term commitment. It is a way to lower your bill, but not a tool for evaluating or reporting on investment performance.

* Microsoft Fabric SKU Estimator

Is used to estimate capacity needs for Fabric-specific data projects. It is eseful only if your sentiment analysis solution is built specifically on the Microsoft Fabric platform.

**Note:**

* Azure pricing calculator

To evaluate the potential cost of an AI solution for sentiment analysis on Azure, you should use the Azure Pricing Calculator.This tool allows you to estimate the monthly and annual costs of the specific services required for your solution—such as Azure AI Language (which provides sentiment analysis) or Azure OpenAI Service—based on your expected volume of feedback data.

* Total Cost of Ownership (TCO) Calculator

To evaluate the cost of an Azure sentiment analysis solution and support a Return on AI Investment (ROAI) analysis for multiple business units, you should use the Azure Total Cost of Ownership (TCO) Calculator.

The TCO Calculator is essential for calculating the financial impact of migrating or implementing a new solution compared to your existing infrastructure.

Step-by-Step: Using the TCO Calculator for ROAI To perform a comprehensive ROAI analysis, follow these steps to capture the full scope of ownership:

1. Define Your Current Workload Enter details about your existing infrastructure that the AI solution might replace or augment.

2. Adjust Assumptions Tailor the calculator to your business environment by adjusting key metrics.

3. Review the TCO Report The calculator generates a detailed report comparing your current costs against Azure.

## Design AI-powered business solutions

Testlet 1


Overview Contoso, Ltd. is a high-tech manufacturing company that uses Microsoft Dynamics 365 Finance. Dynamics 365 Supply Chain Management, and Dynamics 365 Commerce for its North American operations. The company designs and develops innovative products that have many patents and proprietary technologies. The patents and engineering designs are closely guarded secrets.

Contoso executives want to integrate and adopt AI solutions to help scale the company in preparation for an anticipated period of rapid growth.

The company has multiple legal entities and Azure subscriptions that will be used in the adopted AI solutions.

Requirements AI Adoption The following executives will have specific responsibilities in the overall AI adoption:

- Chief Technology Officer (CTO): Select one Dynamics 365 Finance, Dynamics 365 Supply Chain Management or Dynamics 365 Commerce prebuilt AI agent and one custom Microsoft Copilot Studio AI agent to prioritize and deploy during the initial AI adoption phase.
- Chief Information Officer (CIO): Ensure that appropriate security labels are assigned to the data used by the AI agents.
- Chief Financial Officer (CFO): Analyze the return on investment (ROI) for the AI agents being deployed. Chief Information Security Officer (CISO): Discover and inventory AI resources for auditing.
- Chief Executive Officer (CEO): Ensure that all solutions adhere to industry-standard responsible AI practices.

All AI initiatives and agents will have a detailed business use case, a defined audience profile, and an estimated ROI that will compare the cost savings of the current process against the estimated costs of using the new AI solutions.

The company's research and development (R&D) department already has a custom Model Context Protocol (MCP) server that contains comprehensive product specifications and compliance data.

**Prebuilt AI Agent**

The CTO has NOT yet selected which prebuilt AI agent to use in Dynamics 365 Supply Chain Management. The CTO wants to view available agent templates to identify which agent will add the most business value.

Depending on which high-priority AI agents are identified, its agent capabilities must be previewed in a discovery meeting with the relevant business operation stakeholders.

**Custom AI Agent**

Contoso has identified the following custom AI agent requirements:

- The custom AI agent will use data from Dynamics 365 Supply Chain Management to answer questions for the manufacturing team as a low-code solution.

- The custom AI agent will be accessible from within Microsoft Teams.

- The custom AI agent must be designed to eventually connect to other agents that can be selected based on their description.

- The topics used in the custom AI agent will be selected based NOT on a trigger phrase, but on a description of the purpose of the query, to make the interactions more conversational.

- The custom AI agent must be able to answer questions about product specifications by using existing technologies. The product specifications are maintained by the R&D department.

- The custom AI agent must be integrated with and accessible from Dynamics 365 Supply Chain Management.

- The custom AI agent must be able to use Dynamics 365 Supply Chain Management business logic that is stored outside of the application.

**Analysis, Reporting, and Troubleshooting**

Analysis, Reporting, and Troubleshooting

Contoso has identified the following analysis, reporting, and troubleshooting requirements:

- The CISO will audit all the AI solutions monthly for compliance and security.

- The CFO will analyze all the AI solutions quarterly to compare the estimated ROI against actual measured efficiencies and adoption. The CFO will use the Copilot Studio agent usage estimator to perform this analysis.

- The CISO wants to identify how much sensitive data was accessed for a given AI agent run and who accessed the data. Too much sensitive data accessed by a single user might indicate a high security risk.

- The CTO wants to track user feedback on the quality of the AI agent responses during user interactions with the agents. Consistently poor feedback will trigger an escalated reengineering discussion.

- The CEO wants a quarterly assessment of all the required metrics for their specific responsibilities. The tools used for the assessments must be Microsoft-recommended and must verify reliability, interpretability, fairness, and compliance.

- The CFO wants to identify how many interactions with the AI agents are abandoned on a given day as compared to resolved conversations. Too many abandoned sessions might indicate that Copilot Studio credits are being used inefficiently by end users.


### QUESTION 1 

What should you recommend to assist the CTO with the prebuilt agent selection process?

A. Agent management

B. Copilot Studio

C. Lifecycle Services (LCS)

D. Immersive Home

----

Correct Answer: A Section: (none)

Explanation/Reference:

Explanation:

Agent management is the correct tool to use for viewing available agent templates and deciding which AI agent to use within Dynamics 365 Supply Chain Management.

Available Agent Discovery Tools When working within Dynamics 365 Finance and Operations apps (including Supply Chain Management), the specifically designed interface for these tasks is Agent management.

Agent Management: A dedicated preview feature in Finance and Operations apps that allows users to discover, configure, and manage autonomous AI-powered agents.

Incorrect:

[Not B] Copilot Studio: While this is the platform used to build and customize agents and track detailed analytics (like thumbs-up/down feedback), it is a standalone low-code tool rather than the primary discovery pane inside the SCM interface.

[Not C] Lifecycle Services (LCS): Primarily used for environment management, deployments, and updates rather than the day-to-day discovery of specific AI agent templates.

[Not D] Immersive Home: Typically refers to a broader Microsoft 365 or entry-level experience, not the specialized ERP agent management portal.

Scenario: 

**Prebuilt AI Agent**

The CTO has NOT yet selected which prebuilt AI agent to use in Dynamics 365 Supply Chain Management. The CTO wants to view available agent templates to identify which agent will add the most business value.

The CTO wants to track user feedback on the quality of the AI agent responses during user interactions with the agents. Consistently poor feedback will trigger an escalated reengineering discussion.


### QUESTION 2 

What should you include in the custom AI agent design to meet the R&D product specifications and the compliance information requirements? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.


Answer Area

To expose the data to the agent, create:

* an Azure AI Bot Service channel
* a custom connector
* a custom OData entity
* the Semantic Kernel

Add to the agent:

* an event trigger
* the MCP server
* a REST API
* a tool

-----

Box 1: Custom connector

Box 2: a tool


**Explanation/Reference:**

Explanation:

Scenario:

The company's research and development (R&D) department already has a custom Model Context Protocol (MCP) server that contains comprehensive product specifications and compliance data.

The custom AI agent must be able to answer questions about product specifications by using existing technologies. The product specifications are maintained by the R&D department.

**Box 1: Custom connector To expose the data to the agent, create**

To expose data from a custom Model Context Protocol (MCP) server to a Microsoft Dynamics 365 AI agent (built in Copilot Studio) to answer questions about product specifications, you should create a Custom Connector.

This custom connector acts as the bridge between the custom MCP server and Power Platform/Copilot Studio, enabling the agent to consume the data and tools provided by the MCP server.


**Box 2: a tool Add to the agent**

To add a custom Model Context Protocol (MCP) server that contains comprehensive product specifications and compliance data to a Microsoft Dynamics 365 AI agent, you should use Microsoft Copilot Studio and configure the MCP server as a tool (or skill) within the agent.

Here are the specific steps and components to use:

Platform: Use Microsoft Copilot Studio to create or update the custom agent.

*-> Method: In the agent configuration, go to the Tools section and select Add a tool > Model Context Protocol (MCP).

MCP Server Details: Input the required technical details for your custom server, including the Server Name, Description, and Server URL.

Authentication: Configure the necessary authentication type (e.g., OAuth 2.0 or API Key) as required by your custom MCP server to ensure secure access to product specifications and compliance data.

*-> Tool Binding: The MCP server will expose the specifications as tools that the agent can "call" at runtime to answer user questions about products.


## Testlet 2


**Background **

Fabrikam, Inc., is a global consumer goods company that is undergoing a digital transformation initiative to migrate its entire infrastructure to the Microsoft cloud. As a key element of this cloud migration, the company will implement Microsoft Dynamics 365 Sales, moving away from the current on-premises proprietary technologies used by its business-to-business (B2B) sales team.

As part of the cloud migration, Fabrikam will adopt an AI-first approach to its business solutions and implement AI solutions, wherever possible, to streamline operations.

**Problem Statements** 


Fabrikam's infrastructure currently relies on various on-premises systems that require sales executives to use corporate computers with physical keyboards to access business information during customer interactions. Mobile phones cannot be used for these purposes, as the systems depend on keyboard input. As a result, the sales executives spend a lot of time using keyboards to search for data on several disparate systems and file servers, rather than focusing on the customers. This affects the customer experience.

Fabrikam stakeholders are concerned that users will be hesitant to adopt AI. If the AI initiatives are NOT adopted, cost savings will never be realized. Additionally, funding for future AI initiatives will depend on demonstrating an increase in AI adoption month over month. As the AI agent initiative for the sales team will be the first for Fabrikam, the rapid adoption of the agent is a high priority.

**Planned Initiatives**


General Fabrikam management has prioritized AI-driven projects to improve efficiency, customer engagement, and responsible AI adoption. The current application infrastructure is on-premises and must be migrated to the cloud to support the adoption of these technologies. 

**Infrastructure Migration**

Fabrikam plans to migrate from its current on-premises infrastructure to a completely cloud-based topology; this will include user authentication, the security framework, and, primarily, the adoption of the services by end users.

All the data from the different systems will be consolidated into a single data source - a common data model that will use a Microsoft Dataverse environment as a single source of truth (SSOT) for the sales team.

**Sales Cycle Enablement**

- To achieve the company's objectives, Fabrikam intends to implement the following strategies to enhance the sales cycle:

- Use low-code development to create a single AI agent that has Dataverse as its core component. Ensure that sales managers can access unanswered correspondence from prospects and intervene as appropriate.

- Replace the previous proprietary software with Dynamics 365 Sales to track sales cycles and customer interactions.

- Have the sales executives use Dynamics 365 Sales to track interactions for open opportunities and send follow-up communications to prospects.

- Have the sales executives use handsfree headsets to interact with an AI agent when they have questions about internal policies or customer data.

**Requirements** 

**Infrastructure Migration** 

Fabrikam has identified the following infrastructure migration requirements:

Azure must be used for all future infrastructure workloads.

The company must follow Microsoft-recommended methodologies for infrastructure migration to the cloud.

Any created AI agents must have their return on investment (ROI) calculated to ensure that the solution will save the company money.

**Sales Cycle Enablement** 

- Fabrikam has identified the following requirements for sales cycle enablement:

- The final AI agent must follow Microsoft recommendations for a conversational user experience.

- A designated checklist must be reviewed to ensure that the AI agent follows Microsoft deployment recommendations for a compliant solution.

- Detailed telemetry must be logged for the first created AI agent to help troubleshoot and optimize the agent during the initial AI agent adoption process.

- Unexpected AI agent actions must end in an escalation to a live representative. For example, a sales executive must be rerouted to a representative if the agent cannot answer a question after two failed attempts.

- The return on investment (ROI) of switching from the current process to the future process is required for stakeholder sign off.

- The sales team must use Dynamics 365 Sales to correspond with prospects more quickly and efficiently than currently.

- Sales managers must report on the adoption of the AI agent to key Fabrikam stakeholders on a monthly basis.

- Any sensitive information, such as user IDs and names, shared via the AI agent must be tracked for future auditing.

### QUESTION 1 


Which template should you use for the AI agent to meet the requirements for the sales executives?

A. IT Helpdesk in Microsoft Copilot Studio 

B. AI agents in Microsoft Foundry

C. Voice in Microsoft Copilot Studio

D. AI chat in Microsoft Foundry

----

Correct Answer: C

Sales Cycle Enablement To achieve the company's objectives, Fabrikam intends to implement the following strategies to enhance the sales cycle:

Have the sales executives use Dynamics 365 Sales to track interactions for open opportunities and send follow-up communications to prospects.

*-> Have the sales executives use handsfree headsets to interact with an AI agent when they have questions about internal policies or customer data.

To enable handsfree headset interaction with an AI agent for internal policies and customer data in Dynamics 365 Sales, you should use Microsoft Copilot Studio to create a custom agent template.

Here is the breakdown of the recommended approach and templates:

Recommended Template Voice-enabled agent template (in Copilot Studio): This template provides the foundational, pre-configured setup for Interactive Voice Response (IVR) capabilities, allowing for natural language voice inputs and text-to-speech output.

Internal Data Knowledge Source: Within this agent, you will connect to Dataverse (for customer data) and configure Knowledge Sources (for internal policy documents).

Note:

To implement a hands-free AI agent for Dynamics 365 Sales using the Voice agent template in Microsoft Copilot Studio, follow these steps to enable voice-first interactions for internal policies and customer data.

1. Create a Voice-Enabled Agent

2. Configure Hands-Free Interaction

3. Connect to Internal Dat


### QUESTION 2 

Which tool should you use for the prospect communication requirements in Dynamics 365 Sales?

A. Azure AI Search

B. Copilot email assist

C. the Voice template Microsoft Copilot Studio

D. Deep Research in Microsoft Foundry Agent Service


------


Correct Answer: B

Explanation:

Scenario:

Requirements 

*-> The sales team must use Dynamics 365 Sales to correspond with prospects more quickly and efficiently than currently.

Sales Cycle Enablement 

To achieve the company's objectives, Fabrikam intends to implement the following strategies to enhance the sales cycle:

Ensure that sales managers can access unanswered correspondence from prospects and intervene as appropriate.

Have the sales executives use Dynamics 365 Sales to track interactions for open opportunities and send follow-up communications to prospects

---

In Dynamics 365 Sales, the Copilot email assist feature acts as a powerful accelerator for handling prospects by automating the most time-consuming parts of communication.

Here is how it helps you move faster and more efficiently:

Instant Drafting: You can generate professional-looking email drafts in seconds by choosing a predefined category (like "reply to an inquiry" or "follow up") or by entering your own custom prompt.

Context-Aware Personalization: The AI uses data directly from your CRM—such as past interactions, deal status, and customer notes—to ensure every message is tailored specifically to that prospect's needs. Tone & Style Adjustments: You can quickly refine the length and tone (e.g., formal, friendly, or urgent) of a draft to better resonate with a particular recipient.

Summarization: When dealing with long email chains, Copilot provides a concise summary of the conversation history, allowing you to catch up instantly without reading through every old message. Actionable Reminders: It monitors your inbox to identify pending action items or key customer requests you may have missed, ensuring no prospect falls through the cracks.

Seamless Integration: These tools are available directly within the Dynamics 365 Email Rich Text Editor and across Microsoft 365 apps like Outlook and Teams, keeping you in your flow of work.


### QUESTION 3 

Which components should you use to meet the sales cycle enablement requirements? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.

Answer Area

**For Al agent creation:**


- Microsoft Foundry

- Dynamics 365 Sales

- Microsoft Copilot Studio

- the Power Platform admin center


**For unexpected Al agent actions:**


- a custom connector

- an event trigger

- a Fallback topic

- a REST API


------


Explanation/Reference:


**Box 1: Microsoft Copilot Studio**


**Box 2: a Fallback topic**


**Box 1: Microsoft Copilot Studio For AI agent creation**

Scenario:

A designated checklist must be reviewed to ensure that the AI agent follows Microsoft deployment recommendations for a compliant solution.

The Microsoft tool that should be used to create the AI agent is Microsoft Copilot Studio.

It is a low-code platform specifically designed for building and managing intelligent agents that integrate with Microsoft Dataverse as a core component for storing data and providing business context. To ensure the agent follows Microsoft's deployment recommendations, users should consult the implementation checklist provided within the Microsoft Copilot Studio documentation.

Key Features of Microsoft Copilot Studio:

Low-Code Interface: Uses a graphical builder or natural language to design agent behaviors and conversation flows.

Dataverse Integration: Leverages Dataverse as the enterprise data platform to ground agents in organizational knowledge and store shared context.

Governance and Compliance: Includes built-in responsible AI features and aligns with enterprise security standards.

Multi-Channel Deployment: Allows publishing agents across Microsoft Teams, websites, and mobile app

**Box 2: a Fallback topic** 

For unexpected AI agent actions.

Scenario:

Unexpected AI agent actions must end in an escalation to a live representative. For example, a sales executive must be rerouted to a representative if the agent cannot answer a question after two failed attempts.

In a low-code environment using Microsoft Copilot Studio with Dataverse, you can ensure unexpected AI actions lead to a live representative by configuring specific system topics.


1. Configure the System Fallback Topic

The Fallback system topic triggers when the AI agent cannot match a user's intent to any existing topic or knowledge source with sufficient confidence.

Enable Fallback: In Copilot Studio, navigate to Settings > General Settings > System fallback and click Add.

Action: Edit the Fallback topic to include a Go to topic node that redirects to the Escalate system topic.

2. Implement the Escalate System Topic The Escalate topic is the primary mechanism for handoffs.

3. Handle Errors and Infinite Loops


## Question Set 3 -  Design AI-powered business solutions


### QUESTION 1 

You need to design a Microsoft 365 Copilot solution to optimize employee productivity. The solution must meet the following requirements:

Ensure that the employees can query content stored in a subset of Microsoft SharePoint Online sites and in Teams by using natural language-based prompt actions.

Ensure that employees receive contextually relevant responses in Microsoft 365 Copilot.

What should you include in the design?

A. Build a Microsoft Power Automate desktop flow to read the SharePoint content and post the responses to Teams.

B. Modify SharePoint settings.

C. Create a custom REST API that crawls the SharePoint content.

D. Configure Microsoft Graph access


----

Correct Answer: D


Explanation/Reference:

Explanation:

To enable Microsoft 365 Copilot to query a specific subset of SharePoint Online and Teams content using natural language, you can implement a combination of Restricted SharePoint Search and Microsoft Graph Connectors.

1. Restricting Content Access You can limit the scope of data Copilot searches by using features that control which sites are indexed or accessible.

2. Configuring Microsoft Graph Access Microsoft Graph acts as the bridge connecting Copilot to your organizational data. To integrate specific sources.

3. Enabling Prompt Actions & Context Declarative Agents: You can create specialized Copilot Agents grounded in specific SharePoint knowledge sources. These agents use natural language instructions to focus on a subset of data for more contextually relevant responses.

Direct Referencing: Users can improve response relevance by explicitly naming files, folders, or Teams channels in their natural language prompts (e.g., "Summarize notes from the 'Product Launch' channel").


### QUESTION 2 

A company uses Microsoft Dynamics 365 Finance to manage accounts payable.

You are designing an AI invoice processing solution.

You need to recommend the prerequisites to configure a prebuilt copilot for accounts payable.

What should you recommend?

A. From Microsoft Copilot Studio, create an accounts payable agent.

B. Extend Microsoft 365 Copilot for Sales to an accounts payable agent.

C. Build an AI tool in Microsoft Foundry.

D. From the Power Platform admin center, assign the Finance and Operations AI security role to users.

-----


正确答案与详细解析

正确答案：

  - D. From the Power Platform admin center, assign the Finance and Operations AI security role to users.（在 Power Platform 管理中心，将 Finance and Operations AI
    安全角色分配给用户。）

解析与考点分析

为什么选 D？

1.  业务场景： 公司使用 Dynamics 365 Finance（财务模块） 管理应付账款（Accounts
    Payable），并希望配置该模块中**预置的 Copilot（Prebuilt Copilot）**来处理发票。
2.  前置条件与权限控制（Prerequisites）：
      - Dynamics 365 Finance（属于 Finance & Operations 应用程序体系）内置了预置的生成式 AI /
        Copilot 功能（如发票自动化处理、应付账款匹配等）。
      - 要让用户能够使用这些**预置（Prebuilt）**的 Copilot 功能，管理员必须在 Power Platform 管理中心 或
        Dynamics 365 安全配置中，为相关用户分配 Finance and Operations AI 安全角色（Finance and
        Operations AI security role） 及对应的 AI 访问权限。

为什么不选其他选项？

  - A. From Microsoft Copilot Studio, create an accounts payable agent（从 Copilot
    Studio 创建应付账款 Agent）： 这是从零开始开发自定义（Custom） AI Agent
    的步骤，而题目明确要求配置现有的预置（Prebuilt） Copilot。
  - B. Extend Microsoft 365 Copilot for Sales to an accounts payable agent（将
    Copilot for Sales 扩展为应付账款 Agent）： Copilot for Sales 是专门针对 CRM（销售与
    Outlook）场景的，与 Dynamics 365 Finance 的应付账款（AP）无直接关系。
  - C. Build an AI tool in Microsoft Foundry（在 Microsoft Foundry 中构建 AI 工具）：
    Azure AI Foundry（前身为 Azure AI Studio）用于专业开发者构建自定义大模型和 RAG 应用，不属于
    Dynamics 365 预置 Copilot 的低代码/无代码前置配置。

-----------

Explanation/Reference:

Users must be assigned the Finance and Operations AI and AIB Roles in the Dataverse environment.

Note:

To configure the prebuilt Copilot for Accounts Payable in Microsoft Dynamics 365 Finance, you must satisfy several foundational and technical requirements.

1. System & Environment Prerequisites

2. Technical Configuration & Data Settings

3. Licensing & Security Roles Licenses

*-> Dataverse Roles: Users must be assigned the Finance and Operations AI and AIB Roles in the Dataverse environment.

4. Feature Activation





### QUESTION 3 

A company plans to deploy a Microsoft Dynamics 365 Contact Center agent.

You need to ensure that the agent can transfer the conversation to a live customer service representative.

Which two components should you include in the solution? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

A. Microsoft Foundry

B. Microsoft Copilot Studio

C. Microsoft 365 Agents Toolkit

D. an Azure AI Bot Service skill

E. Customer engagement hub


-----



Correct Answer: BE


Explanation/Reference:

To implement a Microsoft Dynamics 365 Contact Center solution that enables seamless handoff between a virtual agent and a live representative, you must integrate Microsoft Copilot Studio with the Customer Engagement Hub (typically Dynamics 365 Customer Service or Omnichannel).


Core Components & Setup


1. Copilot Studio Configuration:

Connect to Engagement Hub: In Copilot Studio, navigate to Settings > Customer Engagement Hub and select Dynamics 365 Customer Service.

Enable Agent Transfer: Under the Channels tab, select the Dynamics 365 Customer Service tile and click Connect. This establishes the link between the bot and your live agent environment.

Configure Handoff Topic: Modify the Escalate system topic or create a custom topic. Use the Transfer conversation node to trigger the move to a live representative. You can include a private message to the agent to provide context.


2. Customer Engagement Hub (Dynamics 365) Setup:

Workstream Integration: In the Customer Service Admin Center, create or open a workstream (e.g., for Live Chat or Voice). Add your Copilot Studio agent to this workstream to ensure it is the first point of contact.

Routing Rules: Define rules to route the escalated conversation to the correct live agent queue based on context variables passed from the bot.

3. Handoff Experience:

Context Sharing: When a transfer occurs, the live representative receives the full conversation transcript and any variables collected by the bot, allowing them to resume the interaction without asking the customer to repeat information.

Agent Workspace: Live agents accept the transfer through the Customer Service Workspace or Omnichannel for Customer Service.


### QUESTION 4

、A company uses Microsoft Dynamics 365 Supply Chain Management.

You are designing an AI supply chain process that meets the following requirements:

Provides managers with AI-driven insights that surface key information from customer orders

Helps planners use AI to anticipate future product needs more accurately You need to recommend which Microsoft Copilot features to include in the design.

What should you recommend for each requirement? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.

**NOTE:** Each correct selection is worth one point.

Answer Area

Provide AI-driven insights from customer orders:

- Al Summaries with Copilot
- Generative insights for Demand planning
- The Customer credit and collections workspace
- Workload insights with Copilot

Anticipate future product needs:

- Generative insights for Demand planning
- Microsoft Power BI
- Product information management
- The Supplier Communications Agent


-----


**Box 1: AI summaries with Copilot**


**Box 2: Generative insights for Demand planning**


Box 1: AI summaries with Copilot 


Provides managers with AI-driven insights that surface key information from customer orders

To provide managers with AI-driven insights from customer orders in Dynamics 365 Supply Chain Management, use the AI summaries with Copilot feature, specifically leveraging the embedded Customer Summary capabilities. This tool provides instant, personalized overviews of critical data, such as backordered items, credit limits, and risk indicators, directly within the workspace.


Box 2: Generative insights for Demand planning 


Helps planners use AI to anticipate future product needs more accurately

The Copilot Generative insights for Demand planning feature in Microsoft Dynamics 365 Supply Chain Management enables demand planners to move from reactive, manual forecasting to proactive, AI-driven demand anticipation. By analyzing, clustering, and interpreting vast datasets, Copilot helps identify patterns such as seasonality and signal correlations to improve accuracy.


### QUESTION 5

A company has a Microsoft 365 E5 subscription and uses Microsoft Copilot Studio.

The company has a Microsoft SharePoint Online library that contains 10,000 policy PDFs from various departments. The library contains a populated column named Department for each PDF.

You need to design a Copilot Studio agent that will use the SharePoint library as a knowledge source. The solution must meet the following requirements:

- Enable the agent to answer user questions about company policies.

- Ensure that the agent can identify which departments and policies are connected.

What should you include in the design for each requirement? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.


Enable the agent to answer questions about company policies:

- Build a custom model in Microsoft Foundry.
- From Copilot Studio, add SharePoint as a knowledge source.
- Import the PDFs into Microsoft Dataverse.
- Use AI Builder to process and feed SharePoint content.

Identify which departments and policies are connected:

- Apply Microsoft Purview sensitivity labels.
- Create a Microsoft Dataverse table for the departments.
- From Copilot Studio, configure the SharePoint tool.
- Upgrade to SharePoint Premium.

-----

这是该道热点选择题（Hot Area）的正确答案与详细解析：

QUESTION 答案 (Answer Area)

1. Enable the agent to answer questions about company policies:

  - 正确选项： From Copilot Studio, add SharePoint as a knowledge source.（在 Copilot Studio 中，将 SharePoint 添加为知识源。）

2. Identify which departments and policies are connected:

  - 正确选项： From Copilot Studio, configure the SharePoint tool.（在 Copilot Studio 中，配置 SharePoint 工具。）

解析与考点分析

第一部分分析：使 Agent 能够回答有关公司政策的问题

  - 考点： Copilot Studio 原生知识源（Knowledge Sources）与 RAG 支持。
  - 解析：
      - Microsoft Copilot Studio 提供了开箱即用的**知识源（Knowledge Sources）**功能。开发者可以直接添加
        SharePoint Online 文档库作为知识源。
      - 系统会自动对文档库中的 10,000 份 PDF 政策文件建立索引，利用生成式回答（Generative
        Answers）回答用户关于公司政策的各种提问，无需编写代码，也不需要将 PDF 额外导入到 Dataverse 中或使用 AI Builder
        预处理。

第二部分分析：识别哪些部门和政策相关联

  - 考点： SharePoint 元数据（Metadata）与 Copilot Studio 工具/知识库配置。
  - 解析：
      - 背景信息： 题目明确说明 SharePoint 文档库中已经包含一个填充好的列 Department（部门）。
      - 解决方案： 在 Copilot Studio 中配置 SharePoint 工具/知识库设置（configure the SharePoint
        tool），可以配置搜索查询参数和元数据列映射（Metadata Filtering）。这样 Agent 在检索 PDF
        时能够读取并理解每个文件关联的 Department 列元数据，从而精准识别政策文件与具体部门之间的关联。

干扰项排除说明

  - Import the PDFs into Microsoft Dataverse / Build a custom model in Microsoft Foundry： 增加了不必要的架构复杂度和开发/迁移成本， Copilot Studio 本身已原生支持直接接入 SharePoint。
  - Apply Microsoft Purview sensitivity labels：  用于敏感数据的安全加密与信息保护，不用于关联和提取业务元数据（如部门列）。
  - Upgrade to SharePoint Premium： SharePoint Premium（前身为 Syntex）用于利用 AI
    自动提取无结构文档中的元数据，但题目中明确提到 Department 列已经被填充（already populated），因此无需额外升级付费。


----

Explanation/Reference:

Explanation:

Box 1: From Copilot Studio, add SharePoint as a knowledge source

Box 2: From Copilot Studio, configure the SharePoint tool.


Box 1: From Copilot Studio, add SharePoint as a knowledge source 


Enable the agent to answer user questions about company policies.

To enable a Microsoft Copilot Studio agent to answer questions from a large SharePoint Online library using the Department column as a filter, you must configure Generative Answers with specific metadata filtering.

*-> 1. Configure SharePoint as a Knowledge Source Add the Source: In Copilot Studio, go to the Knowledge tab and select Add knowledge. Choose SharePoint and provide the URL of your site or specific document library.

Authentication: Ensure Manual Authentication with Microsoft Entra ID is configured. The agent requires the Sites.Read.All and Files.Read.All scopes to access documents on behalf of the user.

Indexing: Note that indexing tens of thousands of files can take significant time (days or weeks).

2. Enable Metadata Filtering (Department Column) To ensure the agent only searches policies relevant to a user's department, you must use Advanced Settings to filter the search results based on your custom column


Box 2: From Copilot Studio, configure the SharePoint tool.

Ensure that the agent can identify which departments and policies are connected.

The SharePoint tool can be configured directly from Microsoft Copilot Studio to act as a knowledge source, allowing your AI agent to read files, documents, and lists from SharePoint to provide answers.

Note:

To ensure your Copilot Studio agent effectively identifies and connects your "Department" metadata with specific policies across tens of thousands of documents, you must address both search indexing and agent instructions.

To ensure that your Microsoft Copilot Studio agent can identify and filter documents based on the Department column from your SharePoint library, you should configure the Advanced settings of your SharePoint knowledge source to use KQL (Keyword Query Language) filters.


Incorrect:

Upgrade to SharePoint Premium Configuring a Microsoft Copilot Studio agent to filter a SharePoint knowledge source using KQL (Keyword Query Language) for a Department column typically requires advanced filtering capabilities, but "SharePoint Premium" is not a strict prerequisite for the KQL configuration itself. Instead, the primary requirement is a Microsoft 365 Copilot or Copilot Studio license to access these advanced features.


### QUESTION 6

You need to design a Microsoft Copilot Studio agent that meets the following requirements:

Supports interactive speech responses Optimizes decision-making and the accuracy of responses

What should you include in the design for each requirement? To answer, drag the appropriate options to the correct requirements. Each option may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.


**Options**

- A deep reasoning model
- Azure Language in Foundry Tools
- Azure AI Speech
- Copilot Studio voice features
- Speech Synthesis Markup Language (SSML)

**Answer Area**

- Supports interactive speech responses:
- Optimizes decision-making and response accuracy:


-----

Requirement 1

Supports interactive speech responses

关键词：

> **Supports interactive speech responses**

这里是在设计 **Microsoft Copilot Studio agent**。

题目问的是：

**在 Copilot Studio 中应该加入什么功能？**

新版 Copilot Studio 已经内建 **Voice** 能力（Voice-enabled agent）。

Microsoft 官方推荐：

> **Copilot Studio voice features**

它封装了 Azure AI Speech 的能力，让 Agent 可以直接进行语音对话。

因此考试通常会优先选：

✅ **Copilot Studio voice features**

而不是 Azure AI Speech。

如果题目问：

> 哪个 Azure 服务提供 Speech-to-Text？

才会选 Azure AI Speech。

---

Requirement 2

Optimizes decision-making and response accuracy

关键词：

* decision-making
* response accuracy

这是推理能力。

微软最新 Copilot Studio：

可以选择：

* GPT-4.1
* GPT-5
* Deep reasoning models

Reasoning Model 专门负责：

* 多步推理
* 规划
* 更准确回答
* 更好的决策

因此：

✅ **A deep reasoning model**

为什么其他选项不对？

Azure AI Speech ❌

提供：

* STT
* TTS

属于底层 Azure 服务。

题目是在设计 **Copilot Studio Agent**，优先使用：

**Copilot Studio voice features**

Azure Language in Foundry Tools ❌

负责：

* NER
* Sentiment
* Classification

不是推理。

SSML ❌

只是：

控制

* Voice
* Pitch
* Pause
* Pronunciation

不能提供 Interactive Speech，也不会提高推理。

最终答案

| Requirement                                         | Correct Answer                      |
| --------------------------------------------------- | ----------------------------------- |
| **Supports interactive speech responses**           | ✅ **Copilot Studio voice features** |
| **Optimizes decision-making and response accuracy** | ✅ **A deep reasoning model**        |

考试技巧（很容易考）

如果选项同时出现：

* Azure AI Speech
* Copilot Studio voice features

通常按下面原则选择：

* **设计 Copilot Studio Agent 功能** → ✅ **Copilot Studio voice features**
* **设计 Azure 架构 / Speech Service** → ✅ **Azure AI Speech**

因为 Copilot Studio Voice Features 底层就是基于 Azure AI Speech，但考试更偏向选择**更贴近设计层级的组件**。

**最终答案：**

* **Supports interactive speech responses:** ✅ **Copilot Studio voice features**
* **Optimizes decision-making and response accuracy:** ✅ **A deep reasoning model**



---

**Box 1: Copilot Studio voice features Supports interactive speech responses**


**Box 2: A deep reasoning model Optimizes decision-making and the accuracy of responses**

Explanation/Reference:

Explanation:

Box 1: Copilot Studio voice features Supports interactive speech responses

To support interactive speech responses in a Microsoft Copilot Studio agent, you must incorporate specialized voice features and capabilities. These features enable the agent to move beyond chat-based interactions to handle voice-based input (speech-to-text) and output (text-to-speech).

Box 2: A deep reasoning model Optimizes decision-making and the accuracy of responses

Integrating a deep reasoning model (specifically Azure OpenAI o3) into Microsoft Copilot Studio optimizes decision-making and accuracy by enabling multi-step analysis, logical deduction, and the handling of complex, multi-turn conversations. This capability, enabled via the "reason" keyword in instructions, allows agents to analyze large datasets and provide context-aware, transparent answers, ideal for scenarios like financial analysis or compliance


### QUESTION 7 


You are designing a low-code AI business solution by using Microsoft Copilot Studio.

The solution must include an agent that automates tasks by simulating user interactions across third-party apps and websites, such as clicking buttons, entering text, and extracting information from screens.

You need to recommend what to include in the agent.

What should you recommend?

A. Model Context Protocol (MCP)

B. a natural language understanding + (NLU+) model in Copilot Studio

C. Computer Use in Copilot Studio

D. Copilot skills


----

题目关键词

> automates tasks by **simulating user interactions**

> across **third-party apps and websites**

> **clicking buttons**

> **entering text**

> **extracting information from screens**

这描述的正是微软最新推出的 **Computer Use** 功能。



正确答案

✅ **C. Computer Use in Copilot Studio**


正确答案与详细解析

正确答案：

  - C. Computer Use in Copilot Studio

解析与考点分析

为什么选 C？

1.  需求分析： 题目要求智能体（Agent）能够通过模拟用户在第三方应用和网站上的交互动作来进行任务自动化，具体操作包括：
      - 模拟点击按钮（Clicking buttons）
      - 模拟输入文本（Entering text）
      - 从屏幕中提取信息（Extracting information from screens）
2.  概念匹配：
      - Computer Use in Copilot Studio（计算机使用功能）： 是 Microsoft 在 AI Agent
        领域引入的核心能力。它赋予大语言模型（LLM）“看懂屏幕”和“像人类一样操作键盘鼠标”的能力。大模型通过分析屏幕图像/UI
        画面，自主定位按钮位置并执行点击、打字和屏幕数据提取，非常适合缺乏 API 接口的第三方网站和旧版桌面应用的 UI 自动化。

为什么不选其他选项？

  - A. Model Context Protocol (MCP)： MCP 是一种基于 API/上下文通信的标准协议，用于连接 Agent 和后端数据服务，无法直接进行屏幕视觉识别和模拟鼠标/键盘的 UI 点击操作。
  - B. a natural language understanding + (NLU+) model in Copilot Studio： NLU+模型主要用于解析用户输入的自然语言意图（Intent）和提取实体（Entities），不能模拟屏幕交互。
  - D. Copilot skills（Copilot 技能）： 属于传统 Bot Framework 或 API 驱动的扩展能力，并非通过视觉/屏幕模拟交互来实现自动化。


----


Correct Answer: C

Explanation/Reference:

Explanation:

In Microsoft Copilot Studio, you can use the computer use tool (currently in preview) to build low-code agents that automate tasks by simulating human interactions on a Windows computer.

Key Capabilities of Computer Use UI Interaction: Agents can interact with any system featuring a graphical user interface (GUI), including third-party websites and desktop applications.

*-> Human-like Actions: The tool enables the agent to click buttons, select menus, enter text into fields, and scroll, mimicking a human user.

No API Required: It is particularly useful for automating legacy systems or applications that lack direct API connectors.

Vision-Based Reasoning: Powered by Computer-Using Agents (CUA), the tool uses AI to "see" the screen, allowing it to adapt in real time if button positions or layouts change.

*-> Low-Code Setup: You define what the agent should do using natural language instructions rather than complex coding.

Reference:


### QUESTION 8 

You need to recommend a solution to integrate a Microsoft Copilot agent with a Microsoft Dynamics 365 Contact Center chat channel.

The agent must respond to customer questions and hand off the conversation to a live customer service representative when the customer requests an escalation.

What should you recommend?

A. Build an agent flow.

B. Configure the Conversation Start topic.

C. Configure a skill.

D. Call a Microsoft Power Automate connector.

E. Configure the Escalate topic.


----

Correct Answer: E Section: (none)


Explanation/Reference:

Explanation:

To hand off a conversation from a Microsoft Copilot agent to a live representative in Dynamics 365 Contact Center, you must configure the Escalate system topic to include a Transfer conversation node. This ensures that when a customer requests an escalation, the agent seamlessly passes the full chat history and context to the live agent.

Steps to Configure the Escalate Topic Open the Escalate Topic: In Microsoft Copilot Studio, navigate to Topics, select the System tab, and open the Escalate topic.

Add a Transfer Node:

Delete any default "no one available" messages if they do not fit your workflow.

Select the Add node icon (+), go to Topic Management, and select Transfer conversation.

Include Context (Optional): You can add a Private message to agent within the node. This message is only visible to the live representative and helps them quickly understand the customer's needs.

Save and Publish: Save your changes and publish the agent to apply the new escalation logic.

### QUESTION 9

A company has a customer order system that creates sales orders manually.

You need to design an AI solution to automate the following tasks as part of the system:

Save the order details to a database.

Update the order status in the database.

Extract the order details from an order file.

Prepare and send a confirmation email to customers.

The solution must minimize development effort and support intelligent automation and solution integration.

What should you include in the design?

A. a workflow in Azure Logic Apps

B. a multi-agent solution that uses the Semantic Kernel SDK

C. a multi-agent solution that uses Microsoft Foundry Agent Service

D. a Microsoft Copilot Studio agent that uses Microsoft Power Automate workflows

-----

正确答案与详细解析

正确答案：

  - D. a Microsoft Copilot Studio agent that uses Microsoft Power Automate
    workflows（使用 Microsoft Power Automate 工作流的 Microsoft Copilot Studio Agent）

解析与考点分析

为什么选 D？

1.  业务需求分解：

      - 从订单文件中提取订单明细（Extract order details）： 使用 Power Automate 中内置的 AI  Builder（文档处理 / 表单识别模型） 可以无需代码快速提取文件内容。
      - 将订单明细保存至数据库并更新状态（Save and update database）： 使用 Power Automate 的内置数据库连接器（如 Dataverse 或 SQL Server Connector）进行操作。
      - 准备并向客户发送确认电子邮件（Prepare and send confirmation email）： 使用 Power Automate 的  Office 365 Outlook 连接器自动化发送邮件。
      - 流程编排与智能交互： 使用 Copilot Studio Agent 负责触发和调度整个流程。

2.  核心限制条件：

      - 题目明确要求：“最小化开发工作量（minimize development effort）” 并支持 “智能自动化与解决方案集成（intelligent automation and solution integration）”。
      - Copilot Studio + Power Automate 是微软 Power Platform  体系下的**低代码/无代码（Low-code/No-code）**智能自动化标准组合，提供数百种现成的连接器与 AI  模块，能以最少的人工编码成本快速构建端到端的业务流。

为什么不选其他选项？

  - B. a multi-agent solution that uses the Semantic Kernel SDK（使用 Semantic
    Kernel SDK 的多 Agent 方案）：
  - C. a multi-agent solution that uses Microsoft Foundry Agent Service（使用
    Microsoft Foundry Agent Service 的多 Agent 方案）：
      - 这两个选项都属于**专业代码（Pro-code）**开发方案。需要编写代码（C#/Python）、维护 API
        端点和自定义集成，极大地增加了开发和维护成本，直接违背了“最小化开发工作量”的要求。
  - A. a workflow in Azure Logic Apps（Azure Logic Apps 工作流）： 属于 Azure
    开发者级别的集成工具，虽然类似于 Power Automate，但缺乏 Copilot Studio 的智能 Agent 编排交互能力以及 Power
    Platform 内置开箱即用的 AI 文档处理集成。


------


Correct Answer: D Section: (none)

Explanation/Reference:

Explanation:

To create this system, you'll need to integrate Microsoft Copilot Studio with Power Automate and AI Builder. This combination allows your agent to not only "talk" but also "act" by executing complex backend workflows.

Solution Architecture Front-end: A Copilot Studio agent serves as the interface, receiving order requests or files from customers.

Brain (Logic): Power Automate cloud flows act as the "skills" for your agent, handling all database and email operations.

Data Extraction: AI Builder (Document Processing) extracts specific fields (like Item ID, Quantity, or Customer Name) from uploaded order files.

Storage: Microsoft Dataverse or SQL Server functions as the database to save and update order records


### QUESTION 10 

You are designing an AI strategy for Microsoft Dynamics 365 finance and operations apps. You are evaluating the use of Microsoft Copilot Studio to provide in-app help and guidance based on generative AI general knowledge.

You need to recommend which knowledge sources to include in the generative help and guidance agent. The solution must minimize the risk of generating inaccurate responses.

What should you recommend? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.


**Hot Area:**

**Answer Area**

*   **Custom knowledge sources:**
    *   [ ] Must be uploaded to the agent *(必须上传到智能体)*
    *   [ ] Must be excluded from the agent *(必须从智能体中排除)*
    *   [ ] Are not supported *(不支持)*
*   **AI general knowledge:**
    *   [ ] Must be enabled for the agent *(必须为智能体启用)*
    *   [ ] Must be disabled for the agent *(必须为智能体禁用)*
    *   [ ] Is not supported *(不支持)*


----

**答案：**

| Requirement                  | Correct Answer                       | 原因                                                                            |
| ---------------------------- | ------------------------------------ | ----------------------------------------------------------------------------- |
| **Custom knowledge sources** | ✅ **Must be uploaded to the agent**  | 上传企业内部知识（如文档、Dataverse、SharePoint 等），让 Agent 基于可信数据回答问题。                      |
| **AI general knowledge**     | ✅ **Must be disabled for the agent** | 题目要求**降低生成不准确回答的风险**，禁用 AI General Knowledge 可减少幻觉（Hallucination），让回答仅基于企业知识。 |

考试关键点

* **企业知识问答** → **上传 Custom knowledge sources**
* **减少幻觉 / 提高准确性** → **Disable AI general knowledge**

**最终答案：**

* **Custom knowledge sources:** ✅ **Must be uploaded to the agent**
* **AI general knowledge:** ✅ **Must be disabled for the agent**

-----

 
Explanation/Reference: 

Explanation:

Box 1: Must be uploaded to the agent Custom knowledge sources

Box 2: Must be enabled for the agent AI general knowledge


To implement a generative AI agent for in-app help in Dynamics 365 Finance and Operations while minimizing inaccuracies, you must configure the agent in Microsoft Copilot Studio by uploading specific knowledge sources and enabling general AI knowled


1. Upload Custom Knowledge Sources To ensure the agent provides accurate, organization-specific guidance, upload your internal documentation directly to the agent

2. Enable General AI Knowledge To allow the agent to use its own broad generative AI knowledge for general inquiries:

Open Microsoft Copilot Studio and select the Dataverse environment linked to your Finance and Operations apps.

Navigate to Agents and open the specific agent named Copilot for finance and operations apps.

On the Overview tab, find the Knowledge section and set Allow the AI to use its own general knowledge to Enabled.

Publish the changes to make this capability available in the D365 F&O sidecar.


### QUESTION 11

You need to design a multi-agent solution that will include a custom agent. The solution must meet the following requirements:

Define the rules and constraints that the agent must follow.

Automate a backend process that involves data movement between services and runs independently of the agent's reasoning steps.

What should you include in the design for each requirement? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.

Answer Area

*   **Define rules and constraints:**
    *   [ ] Agent flows
    *   [ ] Conversation topics
    *   [ ] Microsoft Power Automate cloud flow

*   **Automate a backend process:**
    *   [ ] Conversation topics
    *   [ ] Microsoft Power Automate cloud flow
    *   [ ] Microsoft Power Pages


----


这是该道热点选择题（Hot Area）的**正确答案与详细解析**：

---
**QUESTION 答案 (Answer Area)**

**1. Define rules and constraints:**

* **正确选项：** **Conversation topics**（对话主题）

**2. Automate a backend process:**

* **正确选项：** **Microsoft Power Automate cloud flow**（Microsoft Power Automate 云端流）

---

**解析与考点分析**

**第一部分分析：定义 Agent 必须遵循的规则和约束**

* **考点：** Copilot Studio Agent 的对话控制与边界约束机制。
* **解析：**
  * 在 Microsoft Copilot Studio 中，**Conversation topics（对话主题）** 是定义特定业务场景下对话逻辑、条件分支节点、变量规则以及确定性限制（Guardrails & Constraints）的核心组件。即使在使用生成式 AI 编排（Generative Orchestration）时，通过配置 Topic（主题），开发者依然能够明确限定 Agent 在处理特定业务时的触发规则和行为边界，防止 Agent 偏离预定业务规则。

**第二部分分析：自动化跨服务数据迁移且独立于 Agent 推理步骤的后台流程**

* **考点：** 后台集成与流程自动化工具。
* **解析：**
  * **Microsoft Power Automate cloud flow（云端流）：** 专为跨系统/服务（如 Dataverse、SharePoint、SQL、第三方 API）的数据迁移、异步处理和后台工作流自动化而设计。
  * 题目明确要求“独立于 Agent 的推理步骤（runs independently of the agent's reasoning steps）”，这意味着该流程属于确定性的后台数据同步或批处理，不需要大语言模型（LLM）参与思考，因此使用 **Power Automate 云端流** 是标准且高效的解决方案。
  * **Power Pages** 是面向外部用户的网站构建工具，与后台流程自动化无关。


Box 1: Conversation topics

Box 2: Microsoft Power Automate cloud flow


Box 1: Conversation topics Define the rules and constraints that the agent must follow.

In a Microsoft AI project using Microsoft Copilot Studio, you define the rules, constraints, and dialogue paths for a custom agent primarily through Topics. Topics act as the agent's "competencies," determining how a conversation plays out based on specific user intents.

To use topics for defining agent behavior and constraints, follow these core principles:

Define Conversation Paths: Use topics to map out discrete, structured paths for the agent to follow. This allows you to enforce specific procedures, such as user verification, before providing sensitive information.

Set Triggers: Each topic begins with a trigger (phrases, keywords, or events) that signals when the agent should switch to a specific set of rules or logic.

Enforce Logic via Nodes: Within a topic, use nodes—such as questions, conditions, and actions—to define the logic, variables, and branching paths the agent must follow.

Modularize with "Bite-size" Topics: Break down complex agent logic into smaller, manageable topics. You can use the Redirect node to pass the conversation (and its constraints) from one topic to another.

Handle Errors and Fallbacks: Use System Topics (like On Error or Escalate) to define how the agent should behave when it hits a constraint it cannot resolve or fails to understand a query.


Box 2: Microsoft Power Automate cloud flow Automate a backend process that involves data movement between services and runs independently of the agent's reasoning steps.

In a Microsoft multi-agent project, you can use Power Automate cloud flows to handle backend data movement independently of an agent's reasoning steps. This approach is often referred to as classic orchestration.

By offloading structured, rule-based tasks to a cloud flow, you ensure that high-volume data operations or multi-service integrations remain deterministic and reliable, while your custom agents focus on dynamic, probabilistic decision-making.


### QUESTION 12

A company uses Microsoft 365 and Dynamics 365.

You need to recommend a solution to automatically summarize email threads, generate suggested replies in Microsoft Outlook, and provide meeting preparation summaries that include relevant customer relationship management (CRM) data.

**Solution: You recommend Microsoft 365 Copilot for Sales.**

Does this meet the goal?

A. Yes

B. No

----

正确答案与详细解析

正确答案：

  - A. Yes（是的，满足目标）

解析与考点分析

为什么选 A（Yes）？

对照题目提出的三项核心功能需求与 Microsoft 365 Copilot for Sales 的原生功能：

1.  自动总结 Outlook 邮件会话（Summarize email threads in Microsoft Outlook）：

      - **Copilot for Sales 原生支持：** 在 Outlook 中打开包含客户交易相关信息的邮件时，Copilot for Sales 会在侧边栏自动提取并生成邮件会话摘要（Email Summaries）。

2.  在 Outlook 中生成建议回复（Generate suggested replies in Microsoft Outlook）：

      - **Copilot for Sales 原生支持：** 结合 Dynamics 365 Sales 中的 CRM 数据（如产品报价、商机状态、客户历史），在 Outlook 中自动撰写包含专业 CRM 上下文的建议回复邮件草稿（Email Replies）。

3.  提供包含相关 CRM 数据的会议准备摘要（Provide meeting preparation summaries that include
    relevant CRM data）：

      - **Copilot for Sales 原生支持：** 在 Outlook 日程和 Teams 中，Copilot for Sales 会为即将到来的客户会议生成会议准备简报（Meeting Preparation Summaries），汇总该客户在 Dynamics 365
        中的最新商机记录、最近联系历史和关键关注点。

因此，推荐 Microsoft 365 Copilot for Sales 完全且精准地满足了所有需求。

----

Correct Answer: A


Explanation/Reference:


Explanation:

Correct:

* You recommend Microsoft 365 Copilot for Sales.

Incorrect:

* You recommend a classic Microsoft Dataverse workflow.
* You recommend a Microsoft 365 Copilot agent template.


Note:

In the described scenario, Microsoft 365 Copilot for Sales acts as the primary bridge between your productivity tools and CRM data. It integrates directly into Microsoft Outlook and Teams to surface realtime insights from Dynamics 365 Sales or Salesforce.

Key capabilities for this specific workflow include:

Automated Email Summarization: Copilot scans long email threads in Outlook to extract key points, highlights, and BANT (Budget, Authority, Need, Timeline) data. If the sender is an external contact recognized in your CRM, the summary is automatically enriched with relevant account and opportunity data.

Suggested Email Replies: When replying to customer emails, Copilot generates drafts based on the context of the conversation and existing CRM data. You can use predefined response categories (e.g., "Reply to an inquiry," "Offer a proposal") or custom prompts to include specific opportunity details in the draft.

Meeting Preparation Summaries: Before a scheduled meeting, Copilot for Sales provides a "preparation card" in Teams or Outlook. This summary includes:

- CRM Data: Matched opportunity and account attributes.

- Contextual History: Summaries of past email exchanges and the last three seller notes.

- Strategic Insights: Key risks, follow-up actions, and discussion points from previous interactions.


### QUESTION 13

A company uses Microsoft 365 and Dynamics 365.

You need to recommend a solution to automatically summarize email threads, generate suggested replies in Microsoft Outlook, and provide meeting preparation summaries that include relevant customer relationship management (CRM) data.

**Solution: You recommend a classic Microsoft Dataverse workflow.**

Does this meet the goal?

A. Yes

B. No


-----

正确答案与详细解析

正确答案：

  - B. No（不满足目标）

解析与考点分析

为什么选 B（No）？

1.  题目需求： 需要自动总结邮件会话（Summarize email threads）、生成智能建议回复（Generate suggested
    replies）以及提供包含 CRM 数据的生成式会议准备摘要（Meeting preparation summaries）。这些都需要**生成式
    AI（Generative AI / LLM）**和与 Outlook 的原生 UI 交互能力。
2.  解决方案分析：
      - Classic Microsoft Dataverse workflow（传统的 Dataverse 工作流）： 是 Dynamics 365
        / Dataverse 中用于后台确定性数据操作的传统旧版工作流引擎（如：当状态变更时更新某个字段、按照固定模板发送一条通知邮件等）。
      - 传统 Dataverse 工作流不具备生成式 AI 大模型能力，无法阅读并理解自然语言文本以生成总结，也无法在 Outlook
        客户端界面中为销售人员提供智能回复和会议准备摘要。

正确答案应为上题中的 Microsoft 365 Copilot for Sales。


----


Correct Answer: B


Explanation/Reference:

Explanation:

Correct:

* You recommend Microsoft 365 Copilot for Sales.

Incorrect:

* You recommend a classic Microsoft Dataverse workflow. * You recommend a Microsoft 365 Copilot agent template.

Note:

In the described scenario, Microsoft 365 Copilot for Sales acts as the primary bridge between your productivity tools and CRM data. It integrates directly into Microsoft Outlook and Teams to surface realtime insights from Dynamics 365 Sales or Salesforce.

Key capabilities for this specific workflow include:

Automated Email Summarization: Copilot scans long email threads in Outlook to extract key points, highlights, and BANT (Budget, Authority, Need, Timeline) data. If the sender is an external contact recognized in your CRM, the summary is automatically enriched with relevant account and opportunity data.

Suggested Email Replies: When replying to customer emails, Copilot generates drafts based on the context of the conversation and existing CRM data. You can use predefined response categories (e.g., "Reply to an inquiry," "Offer a proposal") or custom prompts to include specific opportunity details in the draft.

Meeting Preparation Summaries: Before a scheduled meeting, Copilot for Sales provides a "preparation card" in Teams or Outlook. This summary includes:

- CRM Data: Matched opportunity and account attributes.

- Contextual History: Summaries of past email exchanges and the last three seller notes.

- Strategic Insights: Key risks, follow-up actions, and discussion points from previous interactions.


### QUESTION 14

A company uses Microsoft 365 and Dynamics 365.

You need to recommend a solution to automatically summarize email threads, generate suggested replies


in Microsoft Outlook, and provide meeting preparation summaries that include relevant customer relationship management (CRM) data.

Solution: You recommend a Microsoft 365 Copilot agent template.

Does this meet the goal?

A. Yes

B. No

----

正确答案与详细解析

正确答案：

  - B. No（不满足目标）

解析与考点分析

为什么选 B（No）？

1.  核心需求： 自动在 Outlook 中基于 Dynamics 365（CRM）数据总结邮件会话、生成建议回复以及准备会议摘要。
2.  解决方案分析：
      - Microsoft 365 Copilot agent template（Microsoft 365 Copilot 智能体模板）： 是用于在
        Copilot Studio 中构建自定义声明式 Copilot（Declarative Copilot）或扩展插件的起点模板。
      - 模板本身并不包含现成的 Dynamics 365 CRM 业务逻辑、数据集集成以及 Outlook
        内置的销售场景工作流。如果使用智能体模板，开发人员需要进行大量自定义编码与数据连接开发，而无法直接实现开箱即用的 CRM
        邮件总结和会议准备功能。
3.  正确方案： 微软针对此场景提供的开箱即用的官方产品是 Microsoft 365 Copilot for Sales（即本系列连续题的第一题方案）。


-----
Correct Answer: B

Explanation:

Correct:

* You recommend Microsoft 365 Copilot for Sales.

Incorrect:

* You recommend a classic Microsoft Dataverse workflow. * You recommend a Microsoft 365 Copilot agent template.

Note:

In the described scenario, Microsoft 365 Copilot for Sales acts as the primary bridge between your productivity tools and CRM data. It integrates directly into Microsoft Outlook and Teams to surface realtime insights from Dynamics 365 Sales or Salesforce.

Key capabilities for this specific workflow include:

Automated Email Summarization: Copilot scans long email threads in Outlook to extract key points, highlights, and BANT (Budget, Authority, Need, Timeline) data. If the sender is an external contact recognized in your CRM, the summary is automatically enriched with relevant account and opportunity data.

Suggested Email Replies: When replying to customer emails, Copilot generates drafts based on the context of the conversation and existing CRM data. You can use predefined response categories (e.g., "Reply to an inquiry," "Offer a proposal") or custom prompts to include specific opportunity details in the draft.

Meeting Preparation Summaries: Before a scheduled meeting, Copilot for Sales provides a "preparation card" in Teams or Outlook. This summary includes:

- CRM Data: Matched opportunity and account attributes.

- Contextual History: Summaries of past email exchanges and the last three seller notes.

- Strategic Insights: Key risks, follow-up actions, and discussion points from previous interactions.


### QUESTION 15 

You need to design an application lifecycle management (ALM) process for a Microsoft Power Platform environment that contains a solution named Solution1.

Solution1 must include a custom connector for Copilot in Microsoft Dynamics 365 Customer Service. Solution1 must meet the following requirements:

Ensure that the custom connector can be deployed consistently across environments as part of the ALM process.

Allow the custom connector to be edited only in the development environment.

What should you include in the design?

A. Add the custom connector to GitHub.

B. Share the custom connector.

C. Create the custom connector in the default solution.

D. Add the custom connector to Solution1.

----

正确答案与详细解析

正确答案：

  - D. Add the custom connector to Solution1.（将自定义连接器添加到 Solution1 中。）

解析与考点分析

为什么选 D？

1.  Power Platform ALM 核心机制：
      - 在 Microsoft Power Platform 中，解决方案（Solution） 是包装、承载和跨环境迁移组件（包括应用、工作流、Dataverse 表以及自定义连接器 Custom Connectors）的唯一标准载体。
2.  满足题目两大要求：
      - 要求一：能够跨环境一致地部署（Deployed consistently across environments）： 将自定义连接器（Custom Connector）添加到 Solution1 中，使其成为“解决方案感知（Solution-aware）”组件。后续只需将 Solution1
        导出并导入到目标环境（测试/生产环境），即可实现跨环境的一致自动化部署。
      - 要求二：仅允许在开发环境中编辑（Edited only in the development environment）： 当包含该自定义连接器的
        Solution1 以**托管解决方案（Managed Solution）**的形式部署到测试和生产环境时，该连接器在目标环境中将自动变为只读状态，确保只能在开发环境（Dev）中的未托管 Solution1 中进行修改。

为什么不选其他选项？

  - A. Add the custom connector to GitHub（将自定义连接器添加到 GitHub）： GitHub 是源码托管仓库。虽 ALM 流水线可以使用 GitHub，但如果连接器本身没有被打包进 Power Platform 的 Solution1 中，流水线也无法将其作为解决方案的一部分在环境间迁移。
  - B. Share the custom connector（共享自定义连接器）： 共享只是赋予当前环境中其他用户使用或编辑该连接器的权限，无法实现跨环境的 ALM 部署和托管锁定。
  - C. Create the custom connector in the default solution（在默认解决方案中创建自定义连接器）：绝对不能在 Default Solution 中创建业务组件！ 默认解决方案（Default Solution）无法作为独立的干净包导出并部署到其他环境，这是 ALM 中的严重违规操作。


----

Correct Answer: D Section: (none)

Explanation/Reference:

Explanation:

To implement a consistent and secure Application Lifecycle Management (ALM) process for your custom connector, you should add the custom connector to the solution.

Adding the custom connector as a component of a solution is the standard method for ensuring it can be packaged and deployed across environments.





### QUESTION 16 

A company uses a Microsoft Copilot Studio agent to automate tasks in a web app.

During testing, you discover that the automation sometimes fails because of frequent changes to the app's user interface.

You need to recommend a solution to ensure that the agent successfully automates the tasks. The solution must minimize changes to the agent.

What should you include in the recommendation?

A. Computer Use in Copilot Studio

B. custom models in Azure AI Studio

C. conversation topics in Copilot Studio

D. an agent flow in Copilot Studio

----

正确答案与详细解析

正确答案：

  - A. Computer Use in Copilot Studio

解析与考点分析

为什么选 A？

1.  业务痛点： 传统的前端自动化（如基于 DOM 元素、XPath 或特定选择器的 RPA/Web 自动化）在目标 Web 应用的 UI
    界面频繁发生变更（frequent changes to the app's user interface） 时极易失效，需要不断人工维护和重新录制。
2.  解决方案：
      - Computer Use（计算机使用/视觉 UI 交互能力）： 是生成式 AI Agent
        的一项突破性能力（允许大语言模型结合多模态视觉能力，像人类一样通过“看”屏幕截图来识别按钮、文本框并操作鼠标/键盘）。
      - 即使 Web 应用的前端代码、样式（CSS）或元素 ID 频繁改变，Computer Use
        依然能够通过视觉语义识别目标位置并完成自动化任务，从而无需频繁去修改 Agent
        的底层规则或重新配置选择器，完美满足**“确保任务成功且最小化对 Agent 的修改（minimize changes to the
        agent）”**这一要求。

为什么不选其他选项？

  - B. custom models in Azure AI Studio（Azure AI Studio 中的自定义模型）：
    需要自行训练或微调模型，开发和维护成本极高，无法“最小化对 Agent 的修改”。
  - C. conversation topics in Copilot Studio（Copilot Studio 中的对话主题）：
    用于定义对话分支和提示词逻辑，无法解决 Web 应用 UI 元素改变导致的自动化操作失败问题。
  - D. an agent flow in Copilot Studio（Copilot Studio 中的 Agent 流 / 自动化流）：
    如果使用标准的 Flow 或 Desktop Flow，其底层依然依赖确定的 API 或 DOM 选择器。UI 改变后 Flow
    依然会报错，导致需要频繁手动维护。

-----


Correct Answer: A

Explanation/Reference:

Explanation:

The Computer Use tool in Microsoft Copilot Studio is specifically designed to remedy automation failures caused by UI changes with minimal manual intervention.

Unlike traditional Robotic Process Automation (RPA), which relies on rigid selectors or fixed coordinates that break when a layout shifts, Computer Use is powered by Computer-Using Agents (CUA). This AI model combines computer vision with advanced reasoning to "see" the screen like a human, allowing it to adapt to interface changes in real-time.

Why Computer Use Fixes UI Fragility Visual Reasoning: Instead of looking for a specific HTML tag that might change, the agent looks for the visual concept of a button (e.g., "Submit" or a "plus icon").

Real-Time Adaptation: If a button moves from the left side of the screen to the right, the agent simply scans the screen and finds its new location without requiring you to update any code or scripts.

Natural Language Instructions: You describe the task in plain English (e.g., "Log into the portal and download the latest invoice"). If the portal changes its navigation menu, the AI reasons through the new layout to find the invoice link.

Self-Healing Properties: Because the agent makes decisions at each step based on the current visual state, it effectively "self-heals" during execution, overcoming obstacles that would typically crash a legacy bot.


### QUESTION 17 

A company processes invoices stored across multiple systems in multiple formats. You need to implement an AI solution to automate the invoice processing. The solution must meet the following requirements:

Automate multi-step invoice processing tasks, including document analysis, data validation, and approval routing.

Enable users to interact directly via Microsoft Teams to review and approve invoices.

Minimize development efforts to define and customize approval workflows.

What should you include in the solution?

A. Azure Document Intelligence in Foundry Tools and Azure Logic Apps

B. a SharePoint agent

C. Microsoft Copilot Studio and AI Builder

D. Azure OpenAI and Azure Functions

----

Correct Answer: C

Explanation/Reference:

Explanation:

To automate invoice processing using Microsoft Copilot Studio and AI Builder, you can build an "Intelligent Invoicing Agent" that serves as the central orchestration layer. This solution combines AI-driven data extraction with low-code approval workflows accessible directly within Microsoft Teams.

Solution Architecture The most efficient approach uses Copilot Studio as the "brain" and AI Builder as the "eyes" to read documents.

Extraction Layer (AI Builder): Uses the Prebuilt Invoice Model to automatically identify and extract data like vendor name, date, and total amount without manual training.

Orchestration Layer (Copilot Studio): Hosts "Agent Flows" (advanced workflows) that manage the end-to-end logic, from receiving a file to routing it for approval.

Interaction Layer (Microsoft Teams): Users upload invoices or receive approval cards directly in a chat window, eliminating the need to switch between different accounting apps.


### QUESTION 18 

You need to design a Microsoft Copilot Studio agent for customer support.

The agent must securely retrieve product warranty data from a REST API. The solution must minimize development effort.

What should you include in the design?

A. Export the agent as a managed solution and customize the agent in Power Apps.

B. Create a custom connector in Copilot Studio and use the connector to call the API.

C. Use a Microsoft Power Automate desktop flow to screen scrape the warranty data.

D. Add the warranty data to the Fallback topic.

----

Correct Answer: B


Explanation/Reference:

Explanation:

To securely retrieve data from a REST API for a customer support agent in Microsoft Copilot Studio while minimizing development, creating a custom connector is a highly efficient approach. This method acts as a no-code/low-code wrapper around your API, allowing the agent to perform actions or fetch real-time information.


Implementation Steps

1. Create the Custom Connector

You can build this within Power Apps or Power Automate under the Data or Custom Connectors menu.

2. Add the Connector as an Action

Once the connector is created and published, you can add it directly to your agent.


### QUESTION 19

A company has an ecommerce support portal that uses Microsoft Dataverse.

You are designing a Microsoft Copilot Studio agent for the portal. The agent must meet the following requirements:

- Respond with a default help message when the user input is unclear.

- Initiate external processes, such as retrieving the order status, when users make specific requests. Generative orchestration will be enabled for the solution.

You need to recommend a feature for each requirement.

What should you recommend? To answer, drag the appropriate features to the correct requirements. Each feature may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.

NOTE: Each correct selection is worth one point.


Answer Area

*   **Define rules and constraints:**
    *   [ ] Agent flows
    *   [ ] Conversation topics
    *   [ ] Microsoft Power Automate cloud flow

*   **Automate a backend process:**
    *   [ ] Conversation topics
    *   [ ] Microsoft Power Automate cloud flow
    *   [ ] Microsoft Power Pages

----

Box 1: The Fallback topic

Box 2: A tool (connector)


**Box 1: The Fallback topic**

Respond with a default help message when the user input is unclear.

To ensure your Microsoft Copilot Studio agent responds with a default help message when user input is unclear, you must configure the System Fallback topic. This topic is specifically designed to trigger when the agent cannot match the user's intent to any existing topics or knowledge sources.


**Box 2: A tool (connector)**

Initiate external processes, such as retrieving the order status, when users make specific requests.

In Microsoft Copilot Studio, when generative orchestration is enabled, you use Actions (specifically those powered by Power Platform Connectors) to initiate external processes like retrieving an order status. When a user asks a specific request (e.g., "What is the status of my order?"), the generative orchestrator identifies that it cannot fulfill the request with its existing knowledge and looks for an available Action or Tool to bridge the gap.

Key Tool: Power Platform Connectors To retrieve data from an external system, you would typically use one of the following:

Prebuilt Connectors: Microsoft offers over 1,400 ready-to-use connectors for popular systems like SAP, Oracle, or SQL Server.

Custom Connectors: If your order data is in a proprietary or niche API, you can create a custom connector to define exactly how the agent should talk to that external service.

Power Automate Flows: You can wrap complex logic (like multi-step lookups or data formatting) into a flow and add it as an action. The agent can then "call" this flow, pass it an Order ID, and receive the status back.


### QUESTION 20 

A company uses Microsoft Dynamics 365 to manage service operations. Dispatchers coordinate service requests, and technicians perform scheduled on-site work.

You need to design a solution that will use Microsoft Copilot to improve the efficiency of the service operations. The solution must meet the following requirements:

Provide AI-driven assistance to help staff organize and resolve work orders.

Deliver contextual AI support to frontline workers as they prepare for and complete customer appointments.

Which two components should you include in the design? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

A. Copilot Service workspace

B. Copilot in Outlook

C. Dynamics 365 Customer Service

D. Copilot in Customer Service

E. Copilot in Field Service

F. the Dynamics 365 Field Service mobile app


----

正确答案与详细解析

正确答案：

  - E. Copilot in Field Service
  - F. the Dynamics 365 Field Service mobile app

解析与考点分析

为什么选 E 和 F？

题目描述的是典型的 Dynamics 365 Field Service（现场服务） 业务场景，涉及两个核心角色：调度员（Dispatchers） 和
一线技术人员（Frontline Workers / Technicians）。

对照题目的两大核心需求：

1.  需求一：“提供 AI 驱动的帮助，协助员工组织和解决工单（organize and resolve work orders）”

      - 对应选项 E (Copilot in Field Service)： 专为 Field Service 调度员和管理者设计。Copilot 可以自动汇总工单内容、提取客户需求、智能推荐调度排程，并自动生成工单总结，极大地提升调度员管理和组织工单的效率。

2.  需求二：“在一线员工准备和完成客户预约时，为其提供上下文 AI 支持（Deliver contextual AI support to
    frontline workers...）”

      - 对应选项 F (the Dynamics 365 Field Service mobile app)： 一线技术人员在前往客户现场（On-site）执行任务时，使用的是 Dynamics 365 Field Service 移动应用。移动应用中嵌入了 Copilot AI 功能，技术人员可以在现场查看 AI 汇总的工单历史、快速撰写客户跟进更新、获取操作步骤指导，从而高效完成现场预约任务。

为什么不选其他选项？

  - A, C, D (Dynamics 365 Customer Service 相关组件)： 适用于呼叫中心/客服代表（Customer Service Agents）处理在线咨询和热线工单，不适用于现场上门服务（Scheduled on-site work）、调度员排程以及一线现场技术人员场景。
  - B (Copilot in Outlook)： 属于通用的 Outlook 邮件处理助手，无法为现场技术人员在移动端执行上门服务预约时提供专用的现场工作流上下文支持。







### QUESTION 21 

A company uses Microsoft Foundry agents.

You need to ensure that an agent can dynamically use external tools at runtime without updating the agent.

What should you include in the solution?

A. a Microsoft Foundry hub

B. a Model Context Protocol (MCP) server

C. Azure AI Search

D. Microsoft Copilot Studio

-----



**正确答案：**

* **B. a Model Context Protocol (MCP) server**

**解析与考点分析**

**为什么选 B？**

1. **概念与核心特性：**
   * **Model Context Protocol (MCP，模型上下文协议)：** 是当前 AI 领域用于连接 AI Agent 与外部数据源/工具的开放标准协议（在 Azure AI Foundry 中被原生支持）。
   * **MCP 服务器（MCP Server）：** 充当 Agent 与外部系统之间的适配器。它将外部工具、数据库和 API 统一封装并公开。
2. **满足题目需求：**
   * 题目要求 Agent 能够在**运行时动态使用外部工具，且无需更新 Agent 本身（dynamically use external tools at runtime without updating the agent）**。
   * 通过接入 MCP 服务器，当后台新增、修改或扩展外部工具时，Agent 会在运行时通过 MCP 协议自动动态发现（Dynamic Discovery）并调用这些新工具，而**不需要**对 Agent 的代码或模型配置进行重新部署和更新。

**为什么不选其他选项？**

* **A. a Microsoft Foundry hub（Microsoft Foundry 枢纽）：** 是 Azure AI Foundry 的顶层管理资源，用于组织团队资源、共享连接和安全治理，不提供运行时动态工具发现和调用的协议能力。
* **C. Azure AI Search：** 是检索增强生成（RAG）中的向量数据库和全文搜索服务，属于数据源，而非用于动态执行外部工具的协议/服务器。
* **D. Microsoft Copilot Studio：** 是 Power Platform 体系下的低代码 SaaS 智能体构建工具，与 Azure AI Foundry 下开发的代码级/Pro-code Agent 属于不同的平台体系。

-----

Correct Answer: B

Explanation/Reference:

n Microsoft Foundry, the Model Context Protocol (MCP) is the architectural standard used to decouple an agent's logic from its toolset, allowing it to discover and use external tools at runtime without requiring code updates or re-deployment.

Why an MCP Server is Required Traditionally, integrating a tool required "hardcoding" its schema into the agent's definition. MCP replaces this with a dynamic discovery model:

Decoupling: The agent is only configured with the MCP server endpoint rather than individual tool definitions.

Runtime Discovery: When the agent starts a session, it queries the MCP server for a manifest of available tools, their parameters, and descriptions.

Zero-Update Scaling: You can add new capabilities to the MCP server (e.g., a new database query or API connection), and the agent will automatically "see" and use them in the next turn without any changes to the agent itself.


### QUESTION 22


A company has a Microsoft Dynamics 365 Sales environment that has Microsoft Copilot enabled.

You need to customize Copilot by tailoring how opportunity summaries are generated or how they are presented to users.

Solution: You add fields to the opportunity summary.

Does this meet the goal?

A. Yes

B. No

------

Correct Answer: A

Explanation/Reference:


Correct:

* You add fields to the opportunity summary.

Incorrect:

* You build Microsoft Power Automate flows to trigger customized Copilot summaries.
* You configure AI Builder lead scoring models to influence opportunity summaries.

Note:

To customize Microsoft Copilot opportunity summaries and incorporate AI Builder lead scoring data, you must configure the specific fields Copilot uses to ground its generative AI outputs.

By default, Copilot for Sales generates summaries using a set of predefined fields. To "influence" these summaries with scoring data, you need to add the predictive score and grade fields to the Opportunity summary configuration.

Step-by-Step Configuration Switch Area: In the Sales Hub app, select the Change area menu in the bottom-left corner and choose App Settings.

Navigate to Copilot: Under General Settings, select Copilot.

Select Entity: Choose the Opportunities tab.

Add Fields:

- Click Add fields.
- Select the checkboxes for the fields you want to include.
- You can select out-of-the-box, custom, and related table fields.
- Save: Click Add and then Save your changes to update the summary configuration.


### QUESTION 23

A company has a Microsoft Dynamics 365 Sales environment that has Microsoft Copilot enabled.

You need to customize Copilot by tailoring how opportunity summaries are generated or how they are presented to users.

Solution: You build Microsoft Power Automate flows to trigger customized Copilot summaries.

Does this meet the goal?

A. Yes

B. No

---

Correct Answer: B

Explanation/Reference:

Explanation:

Correct:

* You add fields to the opportunity summary.

Incorrect:

* You build Microsoft Power Automate flows to trigger customized Copilot summaries.
* You configure AI Builder lead scoring models to influence opportunity summaries.

Note:

To customize Microsoft Copilot opportunity summaries and incorporate AI Builder lead scoring data, you must configure the specific fields Copilot uses to ground its generative AI outputs.

By default, Copilot for Sales generates summaries using a set of predefined fields. To "influence" these summaries with scoring data, you need to add the predictive score and grade fields to the Opportunity summary configuration.

Step-by-Step Configuration Switch Area: In the Sales Hub app, select the Change area menu in the bottom-left corner and choose App Settings.

Navigate to Copilot: Under General Settings, select Copilot.

Select Entity: Choose the Opportunities tab.

Add Fields:

- Click Add fields.

- Select the checkboxes for the fields you want to include.

- You can select out-of-the-box, custom, and related table fields.

- Save: Click Add and then Save your changes to update the summary configuration.


### QUESTION 24

A company has a Microsoft Dynamics 365 Sales environment that has Microsoft Copilot enabled.

You need to customize Copilot by tailoring how opportunity summaries are generated or how they are presented to users.

Solution: You configure AI Builder lead scoring models to influence opportunity summaries.

Does this meet the goal?

A. Yes

B. No

---

Correct Answer: B

Explanation/Reference:



Correct:

* You add fields to the opportunity summary.

Incorrect:

* You build Microsoft Power Automate flows to trigger customized Copilot summaries.
* You configure AI Builder lead scoring models to influence opportunity summaries


Note: To customize Microsoft Copilot opportunity summaries and incorporate AI Builder lead scoring data, you must configure the specific fields Copilot uses to ground its generative AI outputs.

By default, Copilot for Sales generates summaries using a set of predefined fields. To "influence" these summaries with scoring data, you need to add the predictive score and grade fields to the Opportunity summary configuration.


Step-by-Step Configuration Switch Area: In the Sales Hub app, select the Change area menu in the bottom-left corner and choose App Settings.

Navigate to Copilot: Under General Settings, select Copilot.

Select Entity: Choose the Opportunities tab.

Add Fields:

- Click Add fields.

- Select the checkboxes for the fields you want to include.

- You can select out-of-the-box, custom, and related table fields.

- Save: Click Add and then Save your changes to update the summary configuration.


### QUESTION 25

A company has a Microsoft Dynamics 365 Sales environment that has Microsoft Copilot enabled.

You need to customize Copilot by tailoring how opportunity summaries are generated or how they are presented to users.

Solution: You add the opportunity summary widget to the Opportunity form.

Does this meet the goal?

A. Yes

B. No

---


Correct Answer: B 

**Explanation/Reference:**


Explanation:

Correct:

* You add fields to the opportunity summary.

Incorrect:

* You add the opportunity summary widget to the Opportunity form.

* You build Microsoft Power Automate flows to trigger customized Copilot summaries.

* You configure AI Builder lead scoring models to influence opportunity summaries


Note:

To customize Microsoft Copilot opportunity summaries and incorporate AI Builder lead scoring data, you must configure the specific fields Copilot uses to ground its generative AI outputs.

By default, Copilot for Sales generates summaries using a set of predefined fields. To "influence" these summaries with scoring data, you need to add the predictive score and grade fields to the Opportunity summary configuration.

Step-by-Step Configuration Switch Area: In the Sales Hub app, select the Change area menu in the bottom-left corner and choose App Settings.

Navigate to Copilot: Under General Settings, select Copilot.

Select Entity: Choose the Opportunities tab.

Add Fields:

Click Add fields.

Select the checkboxes for the fields you want to include.

You can select out-of-the-box, custom, and related table fields.

Save: Click Add and then Save your changes to update the summary configuration.


## Deploy AI-powered business solutions

Testlet 1

**Overview** 

Contoso, Ltd. is a high-tech manufacturing company that uses Microsoft Dynamics 365 Finance. Dynamics 365 Supply Chain Management, and Dynamics 365 Commerce for its North American operations. The company designs and develops innovative products that have many patents and proprietary technologies. The patents and engineering designs are closely guarded secrets.

Contoso executives want to integrate and adopt AI solutions to help scale the company in preparation for an anticipated period of rapid growth.

The company has multiple legal entities and Azure subscriptions that will be used in the adopted AI solutions.

**Requirements**

- AI Adoption The following executives will have specific responsibilities in the overall AI adoption:

- Chief Technology Officer (CTO): Select one Dynamics 365 Finance, Dynamics 365 Supply Chain Management or Dynamics 365 Commerce prebuilt AI agent and one custom Microsoft Copilot Studio AI agent to prioritize and deploy during the initial AI adoption phase.

- Chief Information Officer (CIO): Ensure that appropriate security labels are assigned to the data used by the AI agents.

- Chief Financial Officer (CFO): Analyze the return on investment (ROI) for the AI agents being deployed. Chief Information Security Officer (CISO): Discover and inventory AI resources for auditing.

- Chief Executive Officer (CEO): Ensure that all solutions adhere to industry-standard responsible AI practices


All AI initiatives and agents will have a detailed business use case, a defined audience profile, and an estimated ROI that will compare the cost savings of the current process against the estimated costs of using the new AI solutions.

The company's research and development (R&D) department already has a custom Model Context Protocol (MCP) server that contains comprehensive product specifications and compliance data



**Prebuilt AI Agent**

The CTO has NOT yet selected which prebuilt AI agent to use in Dynamics 365 Supply Chain Management. The CTO wants to view available agent templates to identify which agent will add the most business value.

Depending on which high-priority AI agents are identified, its agent capabilities must be previewed in a discovery meeting with the relevant business operation stakeholders.


**Custom AI Agent**

Contoso has identified the following custom AI agent requirements:

- The custom AI agent will use data from Dynamics 365 Supply Chain Management to answer questions for the manufacturing team as a low-code solution.

- The custom AI agent will be accessible from within Microsoft Teams.

- The custom AI agent must be designed to eventually connect to other agents that can be selected based on their description.

- The topics used in the custom AI agent will be selected based NOT on a trigger phrase, but on a description of the purpose of the query, to make the interactions more conversational.

- The custom AI agent must be able to answer questions about product specifications by using existing technologies. The product specifications are maintained by the R&D department.

- The custom AI agent must be integrated with and accessible from Dynamics 365 Supply Chain Management.

- The custom AI agent must be able to use Dynamics 365 Supply Chain Management business logic that is stored outside of the application.

**Analysis, Reporting, and Troubleshooting**

Contoso has identified the following analysis, reporting, and troubleshooting requirements:

- The CFO will analyze all the AI solutions quarterly to compare the estimated ROI against actual measured efficiencies and adoption. The CFO will use the Copilot Studio agent usage estimator to perform this analysis.

- The CISO wants to identify how much sensitive data was accessed for a given AI agent run and who accessed the data. Too much sensitive data accessed by a single user might indicate a high security risk.

- The CTO wants to track user feedback on the quality of the AI agent responses during user interactions with the agents. Consistently poor feedback will trigger an escalated reengineering discussion.

- The CEO wants a quarterly assessment of all the required metrics for their specific responsibilities. The tools used for the assessments must be Microsoft-recommended and must verify reliability, interpretability, fairness, and compliance.

- The CFO wants to identify how many interactions with the AI agents are abandoned on a given day as compared to resolved conversations. Too many abandoned sessions might indicate that Copilot Studio credits are being used inefficiently by end users.


### QUESTION 1 

Which two components for the custom AI agent should you include in the application lifecycle management (AIM) process? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

A. an Azure package

B. a ZIP package

C. a Microsoft Power Platform solution

D. a Cloud Scale Unit (CSU) package

E. an X++model


---

Correct Answer: BC Section: (none)

Explanation/Reference: 

- [C] A Microsoft Power Platform solution is the standard container for transporting and managing customizations across the Power Suite (Copilot Studio, Power Automate, and Power Apps). It perfectly aligns with the specific requirements.

- [B] Based on the application lifecycle management (ALM) process for a Microsoft Power Platform solution that integrates with Dynamics 365 Supply Chain Management, you should use a ZIP package.

Recommended ALM Component In the Microsoft Power Platform ecosystem, the standard unit of deployment for ALM is a Solution, which is exported and transported as a ZIP package.

ZIP package: This is the standard format for Power Platform solutions containing Copilot Studio agents, Power Automate flows, and custom connectors used to bridge Dynamics 365 and Teams.

Incorrect:

[Not A] Azure package: Typically refers to Azure-native resources; while used for custom coding, the Power Platform solution itself is handled via ZIP exports.

[Not D] Cloud Scale Unit (CSU) package: Specifically for commerce or edge workloads, not for deploying general AI agents.

[Not E] X++ model is used for core code changes inside Dynamics 365 Finance & Operations, but not for the lowcode Power Platform/Copilot Studio orchestration described.


### QUESTION 2

Which tools should you recommend to assist the CISO and the CIO with their specific responsibilities? To answer, drag the appropriate tools to the correct executives. Each tool may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.

| Tools (待拖拽选项) |
| :--- |
| Azure Blob Storage |
| Azure Resource Graph Explorer |
| Copilot Studio |
| Microsoft Purview |

**Answer Area (答题区)**

*   **CISO (首席信息安全官):** 
    *   [ 拖拽目标位置 1 ]
*   **CIO (首席信息官):** 
    *   [ 拖拽目标位置 2 ]


----

Box 1: Microsoft Purview

Box 2: Microsoft Purview

Box 1: Microsoft Purview CISO

Scenario:

The CISO will audit all the AI solutions monthly for compliance and security.

The CISO wants to identify how much sensitive data was accessed for a given AI agent run and who accessed the data. Too much sensitive data accessed by a single user might indicate a high security risk.

-Microsoft Purview is the primary tool for this scenario. It provides a unified governance and security platform that integrates directly with Microsoft Agent 365 and Dynamics 365 AI agents to audit interactions, track sensitive data access, and identify high-risk user behaviors.

Auditing Sensitive Data in AI Agent Runs Purview uses a combination of automated classification and audit logging to provide a granular view of every AI interaction.

Unified Audit Log: Automatically captures user and agent activities, including who initiated the interaction and when it occurred.

Resource Tracking: Audit records reference specific files, SharePoint sites, or Dataverse tables accessed by the agent during a run.

Data Classification: Identifies Sensitive Information Types (SITs)—such as credit card numbers, PII, or internal trade secrets—within both the user prompt and the agent's response.

Sensitivity Labels: Captures if accessed files have existing sensitivity labels, ensuring protection is maintained even when data is summarized by an agent.


Box 2: Microsoft Purview CIO

Scenario:

Chief Information Officer (CIO): Ensure that appropriate security labels are assigned to the data used by the AI agents.

Microsoft Purview is the primary tool for managing and assigning security labels to data used by AI agents in Microsoft Dynamics 365.

Within the Microsoft ecosystem, these "security labels" are formally known as Sensitivity Labels, and they are configured and published via the Microsoft Purview Information Protection service.


### QUESTION 3 


What should you recommend to assist the CEO with their specific responsibilities?

A. the Microsoft Service Trust Portal

B. Microsoft Foundry Tools

C. Microsoft Purview

D. the Responsible AI dashboard

E. Compliance Center

---


Correct Answer: D


**Explanation/Reference:**

Explanation:

Scenario: The CEO wants a quarterly assessment of all the required metrics for their specific responsibilities. The tools used for the assessments must be Microsoft-recommended and must verify reliability, interpretability, fairness, and compliance.

To ensure your Microsoft Dynamics 365 AI agent meets quarterly compliance and ethical standards, the Responsible AI (RAI) Dashboard in Azure Machine Learning is the primary recommended tool.

Microsoft recommends aligning quarterly assessments with their Responsible AI Standard v2, which focuses on six core principles: fairness, reliability, safety, privacy, security, inclusiveness, transparency, and accountability.

### QUESTION 4 

Which Copilot Studio analytics metrics should you recommend to assist the executives with their specific responsibilities? To answer, drag the appropriate metrics to the correct executives. Each metric may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.

NOTE: Each correct selection is worth one point.


Select and Place:

**Metrics** (Options):
*   [ Effectiveness ]
*   [ Tool use ]
*   [ Satisfaction ]
*   [ Use ]

**Answer Area:**

*   **CFO concerns about Copilot Studio credit usage:**  [ ____________________ ]
*   **CTO concerns about poor feedback on AI agent responses:**  [ ____________________ ]

----

Box 1: Effectiveness


Box 2: Satisfaction

**Box 1: Effectiveness** 

CFO concerns about Copilot Studio credit usage

Scenario: The CFO wants to identify how many interactions with the AI agents are abandoned on a given day as compared to resolved conversations. Too many abandoned sessions might indicate that Copilot Studio credits are being used inefficiently by end users.

To identify how many interactions with AI agents are abandoned compared to resolved, you should use the Effectiveness metrics.

In Microsoft Copilot Studio, Effectiveness specifically tracks Session Outcomes, which categorize every engaged conversation into one of three primary states:

Resolved: The user's issue was addressed, and the session ended successfully.

Abandoned: The user stopped interacting without reaching a resolution or escalation, or the session timed out.

Escalated: The conversation was handed over to a human agent.

**Box 2: Satisfaction** 

CTO concerns about poor feedback on AI agent responses

Scenario: The CTO wants to track user feedback on the quality of the AI agent responses during user interactions with the agents. Consistently poor feedback will trigger an escalated reengineering discussion.

AI Overview To track user feedback on the quality of AI agent responses in Microsoft Copilot Studio (and Dynamics 365), you should use the Satisfaction analytics metric. Specifically, the Reactions chart within the Satisfaction section tracks user-provided feedback, which measures user perception of response quality.

Satisfaction (Reactions): This section captures direct user feedback (thumbs up/down) on individual answers and provides a ratio of positive to negative feedback, including specific user comments for detailed analysis.


## Deploy AI-powered business solutions Testlet 2

**Background** 

Fabrikam, Inc., is a global consumer goods company that is undergoing a digital transformation initiative to migrate its entire infrastructure to the Microsoft cloud. As a key element of this cloud migration, the company will implement Microsoft Dynamics 365 Sales, moving away from the current on-premises proprietary technologies used by its business-to-business (B2B) sales team.

As part of the cloud migration, Fabrikam will adopt an AI-first approach to its business solutions and implement AI solutions, wherever possible, to streamline operations.


**Problem Statements** 

Fabrikam's infrastructure currently relies on various on-premises systems that require sales executives to use corporate computers with physical keyboards to access business information during customer interactions. Mobile phones cannot be used for these purposes, as the systems depend on keyboard input. As a result, the sales executives spend a lot of time using keyboards to search for data on several disparate systems and file servers, rather than focusing on the customers. This affects the customer experience.

Fabrikam stakeholders are concerned that users will be hesitant to adopt AI. If the AI initiatives are NOT adopted, cost savings will never be realized. Additionally, funding for future AI initiatives will depend on demonstrating an increase in AI adoption month over month. As the AI agent initiative for the sales team will be the first for Fabrikam, the rapid adoption of the agent is a high priority.


**Planned Initiatives General**

Fabrikam management has prioritized AI-driven projects to improve efficiency, customer engagement, and responsible AI adoption. The current application infrastructure is on-premises and must be migrated to the cloud to support the adoption of these technologies.

**Infrastructure Migration** 

Fabrikam plans to migrate from its current on-premises infrastructure to a completely cloud-based topology; this will include user authentication, the security framework, and, primarily, the adoption of the services by end users.

All the data from the different systems will be consolidated into a single data source - a common data model that will use a Microsoft Dataverse environment as a single source of truth (SSOT) for the sales team.

**Sales Cycle Enablement** 

To achieve the company's objectives, Fabrikam intends to implement the following strategies to enhance the sales cycle:

Use low-code development to create a single AI agent that has Dataverse as its core component. Ensure that sales managers can access unanswered correspondence from prospects and intervene as appropriate.

Replace the previous proprietary software with Dynamics 365 Sales to track sales cycles and customer interactions.

Have the sales executives use Dynamics 365 Sales to track interactions for open opportunities and send follow-up communications to prospects.

Have the sales executives use handsfree headsets to interact with an AI agent when they have questions about internal policies or customer data.


**Requirements** 

**Infrastructure Migration**

Fabrikam has identified the following infrastructure migration requirements:

- Azure must be used for all future infrastructure workloads.
- The company must follow Microsoft-recommended methodologies for infrastructure migration to the cloud.
- Any created AI agents must have their return on investment (ROI) calculated to ensure that the solution will save the company money.

Sales Cycle Enablement 

Fabrikam has identified the following requirements for sales cycle enablement:


- The final AI agent must follow Microsoft recommendations for a conversational user experience.

- A designated checklist must be reviewed to ensure that the AI agent follows Microsoft deployment recommendations for a compliant solution.

- Detailed telemetry must be logged for the first created AI agent to help troubleshoot and optimize the agent during the initial AI agent adoption process.

- Unexpected AI agent actions must end in an escalation to a live representative. For example, a sales executive must be rerouted to a representative if the agent cannot answer a question after two failed attempts.

- The return on investment (ROI) of switching from the current process to the future process is required for stakeholder sign off.

- The sales team must use Dynamics 365 Sales to correspond with prospects more quickly and efficiently than currently.

- Sales managers must report on the adoption of the AI agent to key Fabrikam stakeholders on a monthly basis.

- Any sensitive information, such as user IDs and names, shared via the AI agent must be tracked for future auditing.


A. the Analytics tab in Microsoft Copilot Studio 

B. Model Context Protocol (MCP)

C. Application Insights

D. Microsoft Foundry Tracing UI

E. Monitoring in Microsoft Foundry

----

Correct Answer: D

Explanation/Reference:



Fabrikam has identified the following requirements for sales cycle enablement:

Any sensitive information, such as user IDs and names, shared via the AI agent must be tracked for future auditing.

In a Microsoft AI solution involving an agent where you must track sensitive information for auditing, you should use the Microsoft Foundry Tracing UI.

Tracking and Auditing with Microsoft Foundry Tracing The Microsoft Foundry Tracing UI (part of Microsoft Foundry) provides end-to-end visibility into agent runs by capturing detailed telemetry through OpenTelemetry.

What is Captured: It automatically logs user inputs, model outputs, and tool arguments, which often contain sensitive information like names or IDs.

Auditing and Debugging: You can search, filter, and sort traces from the last 90 days to observe exactly how your agent responded during specific sessions.

Infrastructure: Traces are stored in Azure Application Insights, allowing you to apply standard enterprise access controls and retention policies.


###  QUESTION 2

Which existing tool and data should you use to gather the required metrics for stakeholder signoff for the AI agents? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.


*   **Tool:**
    *   [ ] Microsoft Foundry
    *   [ ] Azure Resource Monitor (ARM)
    *   [ ] Dynamics 365 Sales
    *   [ ] Microsoft Copilot Studio

*   **Data required for the tool:**
    *   [ ] the cumulative time spent on the task over the past year
    *   [ ] the current cost to complete the tasks per instance
    *   [ ] the current time to complete the task today per instance
    *   [ ] the current cost of the Dynamics 365 Sales licenses

----


- Box 1: Microsoft Foundry

- Box 2: the current time to complete the task today per instance


Explanation/Reference:

Explanation:

Scenario:

The return on investment (ROI) of switching from the current process to the future process is required for stakeholder sign off.

Box 1: Microsoft Foundry Tool

To secure stakeholder sign-off for a Microsoft AI solution using AI agents and Dataverse, Azure AI Foundry (formerly Azure AI Studio) provides a structured framework to gather metrics across five key "ROI levers":

1. Identify Key ROI Metrics via Foundry Use the Foundry ROI Framework to categorize and collect data that compares the current manual process to the future AI-driven state.

2. Gather Data using Foundry Tools Foundry offers specific technical features to generate the evidence needed for your business case.

3. Calculate the ROI Once metrics are gathered, apply the standard Microsoft-recommended formula for the business case.

Box 2: the current time to complete the task today per instance Data required for the tool

In the Microsoft Foundry ROI framework, the metric for current time required to complete a task today is typically referred to as the Current Time per Instance or Task Duration (Baseline). This value serves as the primary "Before" benchmark to calculate the efficiency gains of the new AI agent solution.


### QUESTION 3 


Which tool should you recommend to help secure funding for future AI agent development?

A. Evaluations in Microsoft Foundry

B. the Azure Cost Optimization workbook

C. Azure Operator Insights 

D. the Analytics tab in Microsoft Copilot Studio

E. Direct Preference Optimization (DPO)


---

Correct Answer: D 

Explanation/Reference:

Explanation:

Scenario Requirements Any created AI agents must have their return on investment (ROI) calculated to ensure that the solution will save the company money.

-In a Microsoft AI migration, calculating the Return on Investment (ROI) for AI agents is essential for justifying costs and securing future funding. You can utilize the Analytics tab in Microsoft Copilot Studio to track these financial and performance metrics directly.

Calculating ROI with Copilot Studio Analytics The Analytics tab provides a dedicated Savings tile (ROI) that allows you to quantify the impact of your agents:

Define Savings Parameters: You can input estimated time saved (in seconds, minutes, or hours) and money saved per successful agent run.

Real-Time Tracking: Total savings are calculated automatically for your selected period based on successful runs of resolved conversations.

Retroactive Application: If you update your savings estimates, the system can apply these changes to previous runs to provide an accurate historical view.

Granular Insights: Savings can be defined at the overall agent-run level or for specific tools used within a run.


## Deploy AI-powered business solutions - Question Set 3

### QUESTION 1 


You are designing a Microsoft Copilot Studio agent that uses a custom Microsoft Foundry model to generate responses.

You need to ensure that the agent can securely connect to and invoke the custom model during user interactions.

What should you include in the design?

A. Configure the agent to use classic orchestration.

B. Create a connection to Microsoft Foundry in the agent.

C. Add the Microsoft Foundry model as a Copilot Studio skill.

D. Create a custom engine agent.

—--

Correct Answer: B 

Section: (none) 


Explanation/Reference:

Explanation:

To create a connection to Microsoft Foundry within a Microsoft Copilot Studio agent and securely invoke a custom model, follow these steps:

1. Connect via the "External Agent" Method This method allows your Copilot Studio agent to orchestrate and call a specific Microsoft Foundry agent directly.

2. Connect via "Bring Your Own Model" (BYOM) If you want to use a specific model from the Foundry model catalog for individual prompt actions.

3. Security and Governance Connecting to Microsoft Foundry ensures enterprise-grade security through:

Entra ID Integration: Agents are assigned a unique Microsoft Entra Agent ID, allowing IT teams to enforce Conditional Access and Identity Governance.

Unified Management: Both your Copilot Studio and Foundry agents can be managed centrally in the Microsoft Entra admin center.


### QUESTION 2 

You are designing an AI business solution that contains the following components:

A Microsoft Power Automate workflow A Microsoft Copilot Studio agent A Microsoft Dataverse database A Microsoft Power Apps app

As part of the application lifecycle management (ALM) process, you plan to package the components, so that they can be deployed to other environments as a group.

You need to recommend a solution that supports versioning, dependencies, and deployments.

What should you include in the recommendation?

A. GitHub Actions

B. Azure DevOps

C. Microsoft Power Platform solutions

----

Correct Answer: C Section: (none)

Explanation/Reference:

Explanation:

To package your AI business solution components—including the Power Automate workflow, Copilot Studio agent, Dataverse database, and Power Apps app—you should use Microsoft Power Platform solutions.

While GitHub Actions and Azure DevOps are powerful tools for automating the deployment process (CI/ CD), Solutions are the actual "containers" or packaging mechanism required to bundle these specific Power Platform assets together so they can be moved as a single unit between environments.


### QUESTION 3 

A company has Microsoft 365 Copilot agents.

You need to design a security solution for the agents. The solution must meet the following requirements:

- Identify and mitigate potential risks that relate to AI use.

- Protect AI apps and the sensitive data processed or generated by the agents.

- Support responsible AI governance by retaining and logging interactions, detecting policy violations, and investigating incidents.

Which two components should you include in the design? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

A. Microsoft Purview

B. Azure AI Content Safety

C. role-based access control (RBAC) in Microsoft Foundry

D. Microsoft Defender

----


正确答案与详细解析

正确答案：

  - A. Microsoft Purview
  - D. Microsoft Defender

解析与考点分析

为什么选 A 和 D？

在微软的 AI 安全与治理统一框架（Security for AI）中，Microsoft Purview 与 Microsoft Defender 构成了针对
Microsoft 365 Copilot 及 AI Agent 的双壁核心安全解决方案：

1.  Microsoft Purview（数据治理、合规与日志追踪，选 A）：

      - 满足需求： 保留和记录交互（Retaining and logging interactions）、检测策略违规（Detecting policy violations）、保护敏感数据（Protect sensitive data）。
      - 功能作用：
          - Purview AI Hub / Audit（审计）： 自动记录并保留用户与 AI Copilot/Agent 交互的提示词（Prompts）和生成回答（Responses）日志，供合规审查与事件调查（eDiscovery）。
          - Data Loss Prevention (DLP) & Information Protection： 识别并保护 Agent 处理或生成的敏感数据（如防止敏感数据泄露到 Agent 回答中），检测违反企业策略的操作。

2.  Microsoft Defender（AI 应用威胁防护与风险缓解，选 D）：

      - 满足需求： 识别并缓解与 AI 相关的潜在风险（Identify and mitigate AI risks）、保护 AI
        应用程序（Protect AI apps）、安全事件调查（Investigating incidents）。
      - 功能作用：
          - Defender for Cloud / Defender for Cloud Apps： 提供针对 AI 应用和 AI 工作负载的全面安全防护（AI Security Posture Management, AISPM）。
          - 监控针对 AI 智能体和应用的恶意威胁、影子 AI（Shadow AI）使用风险、越狱（Jailbreak）攻击以及安全事件响应与调查。

为什么不选其他选项？

  - B. Azure AI Content Safety（Azure AI 内容安全）： 侧重于生成式 AI 文本/图像内容的中台实时审核（如过滤暴恐、仇恨言论或实时越狱检测），但不提供日志长期保留、数据防泄漏（DLP）、合规审查或跨系统安全事件调查。
  - C. role-based access control (RBAC) in Microsoft Foundry（Microsoft Foundry 中的 RBAC）： 仅用于控制开发者在 Azure AI Foundry 平台内部的底层项目权限，无法提供全局的 M365 Copilot Agent 交互日志保留、敏感数据治理或合规事件调查。

---

Section: (none)

Explanation/Reference:

Explanation:

To secure Microsoft 365 Copilot agents, you can implement a unified solution using Microsoft Purview for data governance and Microsoft Defender for real-time threat protection. This combination identifies risks, protects sensitive data, and ensures responsible AI governance through continuous monitoring and incident investigation.


### QUESTION 4 

You are creating validation criteria for a custom generative AI model that produces business reports based on internal enterprise data.

You need to assess whether the model's outputs are appropriate and meaningful for the business reports.

Which metric should you use?

A. the number of active users interacting with the model

B. alignment of the output to domain-specific tasks

C. the average system resource usage during inference

D. the model training duration

---

**正确答案与详细解析**

**正确答案：**

* **B. alignment of the output to domain-specific tasks**（输出与特定领域任务的对齐度）

**解析与考点分析**

**为什么选 B？**

1. **题目要求：** 需要评估自定义生成式 AI 模型输出的商业报告是否**合适且有意义（appropriate and meaningful for the business reports）**。
2. **生成式 AI 的领域评估标准：** 
   * 企业内部的商业报告通常包含特定行业的术语、业务逻辑、合规要求和特定的格式（即领域特定知识，Domain-specific knowledge）。
   * 评估生成的报告是否“合适”且“有意义”，核心指标就是评估模型的输出是否与**特定领域任务的要求相匹配/对齐（alignment to domain-specific tasks）**，包括内容的准确性、专业相关性以及是否符合业务规范。

**为什么不选其他选项？**

* **A. the number of active users interacting with the model（与模型交互的活跃用户数量）：** 这是**产品采用率/用户活跃度指标（Product Adoption/Usage Metric）**，无法反映模型生成的报告内容本身是否准确或有意义。
* **C. the average system resource usage during inference（推理期间的平均系统资源使用率）：** 这是**系统性能/运维指标（Infrastructure Performance Metric）**，关注的是 CPU/GPU/内存消耗和成本，与生成文本的质量无关。
* **D. the model training duration（模型训练时长）：** 这是**模型训练阶段的技术指标（Training Metric）**，反映的是算力消耗和训练效率，无法衡量训练出来的模型输出质量。





---
Correct Answer: B


Explanation/Reference:

Explanation:

To validate a custom generative AI model for business reports based on internal data, you should focus on alignment with domain-specific tasks through a mix of automated and human-centric metrics.

Validation Criteria for Business Reports *-> Task-Specific Quality Evaluation (TSQE): This is your primary metric for assessing whether outputs are meaningful for specific business tasks.

* Groundedness and Factuality: Measure the model's ability to provide information strictly referenced from your internal enterprise data. This prevents "hallucinations" that could lead to poor business decisions.

* Domain-Specific Benchmarking: Compare AI outputs against "ground truth" data—verified, accurate reports previously created by human experts.


### QUESTION 5 


A company has Microsoft Foundry agents that generate responses by using Azure OpenAI resources. The agents are deployed to both the United States and Europe.

A company mandate states that the agents and their grounding data must adhere to data residency and movement regulations.

You need to recommend a governance solution for the agents.

What should you include in the recommendation?

A. Microsoft Defender for Cloud

B. Azure Policy

C. Azure Monitor

D. Microsoft Purview


----

正确答案与详细解析

正确答案：

  - D. Microsoft Purview

解析与考点分析

为什么选 D？

1.  核心需求： 公司部署在跨国区域（美国和欧洲）的 AI Agent 及其接地数据（Grounding data）必须符合数据驻留（Data residency）和跨国数据流动法规（Data movement regulations）（如 GDPR、欧洲数据边界 EU Data Boundary 等）。
2.  产品功能匹配：
      - Microsoft Purview： 是微软企业级数据治理、风险管理与合规控制的核心平台。
      - 针对 AI 与 Grounding Data 的治理：
          - Purview AI Hub & Data Map： 专门用于分类、跟踪和监控 AI 智能体调用的接地数据资产，跟踪数据血缘与数据流动路径。
          - 数据驻留与跨国传输合规： 检测并限制敏感数据的跨国界流动（Data  movement），确保接地数据在处理和回答生成过程中严格遵循当地的数据驻留法规。

为什么不选其他选项？

  - A. Microsoft Defender for Cloud（云安全态势管理）： 侧重于基础设施与 AI 应用的云安全威胁防护、漏洞扫描与攻击防御，不负责数据层面的法律合规与跨国数据流动治理。
  - B. Azure Policy（Azure 策略）： 侧重于基础设施资源（Resource Level）的部署位置限制（如只能在特定 Azure  区域创建 Azure OpenAI 资源），但无法治理和管控数据内容本身及其流向（Grounding Data Movement）。
  - C. Azure Monitor（Azure 监控）： 用于收集系统运行日志、性能指标与告警，不具备数据治理和合规控制功能。


---

Correct Answer: D 

Section: (none)


Explanation/Reference:

Explanation:

In this scenario, Microsoft Foundry agents and Azure OpenAI resources generate responses by using the Responses API. To ensure these agents adhere to data residency and movement regulations across the United States and Europe, Microsoft Purview should be included to provide the following governance and security controls:

Unified Data Discovery & Classification: Purview's discovery REST API allows orchestrator agents to identify relevant data assets (e.g., in Fabric or Databricks) across the organization's entire data landscape.

Sensitivity Label Enforcement: It ensures that AI-generated responses respect existing access controls by checking document label metadata at query time. This prevents oversharing of sensitive data and restricts users to authorized content.

Data Loss Prevention (DLP): By integrating Purview DLP policies, organizations can monitor, block, or warn when sensitive data is used in AI prompts or responses in real-time.

Data Residency Compliance: For strict European residency (e.g., GDPR), Azure OpenAI resources should be deployed using Data Zone (DZ) SKUs (such as in Sweden Central or Germany West Central), which contractually guarantee that both data storage and processing remain within the specified geography.

Embedded Governance: Admins can enable a native integration within Microsoft AI Foundry at the subscription level. This automatically sends prompt and response data to Purview for auditing and compliance without requiring additional developer code.


### QUESTION 6 

A company has a Microsoft Copilot Studio agent that uses custom connectors to interact with enterprise APIs.

You need to recommend an application lifecycle management (ALM) process to ensure that the connectors are deployed consistently across development, test, and production environments and meet governance and traceability requirements.

What should you recommend?

A. Deploy the APIs as Azure Functions.

B. Manage the connectors as solution components and deploy the components by using ALM pipelines.

C. Maintain connector definitions in environment variables.

D. Export and import the connectors between the environments as unmanaged solutions.

---

正确答案与详细解析

正确答案：

  - B. Manage the connectors as solution components and deploy the components by using ALM pipelines.（将连接器作为解决方案组件进行管理，并使用 ALM 管道部署这些组件。）

解析与考点分析

为什么选 B？

1.  业务需求： 需要确保自定义连接器（Custom Connectors）在开发（Dev）、测试（Test）和生产（Prod）环境中能够一致性地部署（Deployed consistently），并且满足治理与可追溯性要求（Governance and traceability）。
2.  微软 ALM 最佳实践：
      - 解决方案组件化（Solution Components）： 在 Power Platform / Copilot Studio 体系中，将自定义连接器包含在解决方案包（Solution）中，使其支持版本控制与依赖管理。
      - ALM 流水线部署（ALM Pipelines）： 使用自动化的 ALM 管道（如 Power Platform Pipelines、Azure DevOps 或 GitHub Actions）将解决方案（在目标环境部署为托管解决方案 Managed Solutions）自动分发到测试和生产环境。
      - 自动化管道能够提供完整的审计日志、版本发布轨迹（Traceability），避免人工手动导入操作，满足企业级治理规范。

为什么不选其他选项？

  - A. Deploy the APIs as Azure Functions（将 API 部署为 Azure Functions）： Azure Functions 用于托管后端 API 的代码逻辑，但并不能解决 Power Platform 层面的自定义连接器打包、跨环境 ALM 部署和治理问题。
  - C. Maintain connector definitions in environment variables（在环境变量中维护连接器定义）：环境变量（Environment Variables）用于存储连接器的环境差异化配置（如目标 API 的 Base URL），但它本身不能替代自定义连接器组件的打包和 ALM 部署。
  - D. Export and import the connectors between the environments as unmanaged  solutions（导出并作为非托管解决方案导入）： 严重违规！ 在测试和生产环境中导入**非托管解决方案（Unmanaged  Solutions）**违背了 ALM 治理规范，会导致生产环境代码混乱且缺乏版本掌控与追溯性（生产环境必须部署托管解决方案）。

----

Correct Answer: C

Explanation/Reference:

Explanation:

To implement a robust Application Lifecycle Management (ALM) process for Microsoft Copilot Studio agents using custom connectors, you must leverage Solutions and Environment Variables to ensure consistency and governance.

1. Solution-Based Management

Always develop your custom connectors and Copilot Studio agents within a Power Platform Solution. This allows you to package all related components (connectors, environment variables, and agents) as a single unit for deployment across your ALM pipeline (Dev → Test → Prod).

4. Implementing Environment Variables

To maintain consistent definitions and meet governance requirements, externalize environment-specific values using Environment Variables:

Host and Base URL: Use environment variables for the API endpoint (e.g., api.dev.enterprise.com vs. api.prod.enterprise.com) to avoid manual edits during deployment.

Security Credentials: For OAuth settings like Client ID and Client Secret, use environment variables with the Secret data type.

Azure Key Vault Integration: For high-security enterprise APIs, store secrets in Azure Key Vault and reference them via secret environment variables to ensure traceability and governance.


### UESTION 7

A company plans to implement an AI solution that will contain a Microsoft Copilot Studio agent and a Microsoft Foundry agent. The solution will be stored in a source code repository.

You need to recommend a deployment method for each agent. The solution must meet the following requirements:

A test environment must be used before a deployment to production. Production must be isolated from development and testing.

The deployment must be repeatable and fully automated.

The solution must NOT require manual intervention.

Which deployment method should you recommend for each agent? To answer, select the appropriate options in the answer area.


Answer Area

*   **Copilot Studio:**
    *   [ ] Export from the source code repository and import to the target environment.
    *   [ ] Use a Bicep file.
    *   [ ] Use a Microsoft Power Platform deployment pipeline.

*   **Microsoft Foundry:**
    *   [ ] Use a Bicep file.
    *   [ ] Use a Microsoft Power Platform deployment pipeline.
    *   [ ] Use an Azure DevOps pipeline.


----

这是该道热点选择题（Hot Area）的正确答案与详细解析：

QUESTION 7 答案 (Answer Area)

  - Copilot Studio: 👉 Use a Microsoft Power Platform deployment pipeline.（使用
    Microsoft Power Platform 部署管道。）

  - Microsoft Foundry: 👉 Use an Azure DevOps pipeline.（使用 Azure DevOps 管道。）

解析与考点分析

1. Copilot Studio 智能体的部署方法

  - 需求分析： 自动从源码仓库部署，跨 Dev -> Test -> Prod 环境隔离，无须人工干预（NOT require manual
    intervention）。
  - 正确选择： Use a Microsoft Power Platform deployment pipeline
  - 解析：
      - Copilot Studio 构建在 Microsoft Power Platform 极低代码平台上。
      - 微软推荐的自动化 ALM（应用生命周期管理）方式是使用 Power Platform Deployment Pipelines（Power
        Platform
        部署管道）。它可以实现从开发环境到测试/生产环境的全自动、无缝、可重复的解决方案（Solution）发布，完全不需要手动导出和导入文件。

2. Microsoft Foundry 智能体的部署方法

  - 需求分析： 存储在源码仓库中的 Azure AI Foundry 专业代码/架构，需实现自动化 CI/CD 跨环境发布。
  - 正确选择： Use an Azure DevOps pipeline
  - 解析：
      - Microsoft Foundry（Azure AI Foundry）： 属于 Azure 云端的代码级/专业开发者 AI
        平台（Pro-code）。其 Agent 代码、Prompt 模板和底层配置存储在 Git 源码仓库中。
      - 要从源码仓库触发完全自动化（fully automated）且无需人工干预的部署，最标准的方式是使用 Azure DevOps
        pipeline（或 GitHub Actions）。流水线会自动拉取代码并部署到隔离的 Azure 生产环境中。

干扰项排除说明

  - Export from the source code repository and import to the target
    environment（手动导出导入）： 需要人工手动介入，违背了“NOT require manual intervention”的要求。
  - Use a Bicep file（使用 Bicep 文件）： Bicep 是 Azure 声明式基础设施即代码（IaC）模板文件。虽然 Bicep
    用于定义 Azure 资源，但 Bicep 文件本身不是部署执行工具；必须借助 Azure DevOps pipeline 才能自动触发并运行
    Bicep 脚本完成无人工干预的部署。






Explanation/Reference:

Explanation:

Box 1: Use a Microsoft Power Platform deployment pipeline

Box 2: Use a Bicep file


Box 1: Use a Microsoft Power Platform deployment pipeline 

Copilot Studio agent The preferred deployment method is to use a Microsoft Power Platform deployment pipeline.

Microsoft Power Platform pipelines are specifically designed to meet your requirements for a secure, automated, and repeatable application lifecycle management (ALM) process for Copilot Studio agents: Box 2: Use a Bicep file Microsoft Foundry agent In the scenario described for a Microsoft Foundry agent, the preferred deployment method is to use a Bicep file.

This approach is best suited for your requirements because:

Infrastructure as Code (IaC): Azure Bicep allows you to define your entire environment—including the Foundry hub, projects, and model deployments—as code stored in your source repository.

Automation & Repeatability: Bicep files integrate directly with GitHub Actions or Azure Pipelines, enabling fully automated, repeatable deployments without manual intervention.

Environment Isolation: You can use Bicep to provision distinct, isolated resources for development, testing, and production by parameterizing the deployment for each environment.

Suitability: While Power Platform pipelines are used for Copilot Studio agents, Foundry-based agents are Azure resources where Bicep is the native and more powerful automation tool for managing the underlying infrastructure and model endpoints


Box 2: Use a Bicep file 


Microsoft Foundry agent 


In the scenario described for a Microsoft Foundry agent, the preferred deployment method is to use a Bicep file.

This approach is best suited for your requirements because:

Infrastructure as Code (IaC): Azure Bicep allows you to define your entire environment—including the Foundry hub, projects, and model deployments—as code stored in your source repository.

Automation & Repeatability: Bicep files integrate directly with GitHub Actions or Azure Pipelines, enabling fully automated, repeatable deployments without manual intervention.

Environment Isolation: You can use Bicep to provision distinct, isolated resources for development, testing, and production by parameterizing the deployment for each environment.

Suitability: While Power Platform pipelines are used for Copilot Studio agents, Foundry-based agents are Azure resources where Bicep is the native and more powerful automation tool for managing the underlying infrastructure and model endpoints.


### QUESTION 8 

A company has a Microsoft Copilot Studio prompt-and-response agent. You need to ensure that the agent meets the following requirements:

Provides effective and relevant responses

Provides conversational outcomes Which metric should you use for each requirement? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.

Answer Area

*   **Copilot Studio:**
    *   [ ] Export from the source code repository and import to the target environment.
    *   [ ] Use a Bicep file.
    *   [ ] Use a Microsoft Power Platform deployment pipeline.

*   **Microsoft Foundry:**
    *   [ ] Use a Bicep file.
    *   [ ] Use a Microsoft Power Platform deployment pipeline.
    *   [ ] Use an Azure DevOps pipeline.


----

Box 1: Generated answers rate and quality

Box 2: Satisfaction


**Box 1: Generated answers rate and quality** 

Provides effective and relevant responses:

To ensure your Microsoft Copilot Studio agent provides effective and relevant responses, you should focus on the Generated Answer Rate and Quality metrics found in the Analytics dashboard. These metrics help you identify where the agent is succeeding and where knowledge gaps exist.

Key Quality Metrics Generated Answer Rate: Measures the frequency with which the agent successfully triggers a generative response from its knowledge sources.

Response Quality (Good vs. Poor): Copilot Studio automatically labels a sample of responses as "Good" or "Poor" quality based on AI assessment of relevance, completeness, and grounding.

Poor Quality Reasons: If a response is labeled "Poor," the system provides specific reasons, such as being incomplete, irrelevant, or not fully grounded.

Unanswered Questions: Tracks queries the agent could not answer, helping you identify missing documentation or topics.



**Box 2: Satisfaction**

Provides conversational outcomes

To ensure your Microsoft Copilot Studio prompt-and-response agent provides optimal conversational outcomes, you should use the Customer Satisfaction (CSAT) metric.


### QUESTION 9 

A company extends Copilot in Microsoft Dynamics 365 Customer Service.

You need to recommend an automated application lifecycle management (ALM) process so that the Copilot components can be safely developed, tested, and promoted to production.

Which two actions should you include in the ALM process? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

A. Use an unmanaged solution in production.

B. Rebuild the agents in each environment.

C. Use Microsoft Power Platform pipelines.

D. Include the components in a solution.

E. Store the agent transcripts in source control.


-----


Correct Answer: CD Section: (none)

Explanation/Reference:

Explanation:

To implement an automated Application Lifecycle Management (ALM) process for extending Microsoft Dynamics 365 Customer Service with Copilot, you should leverage Power Platform solutions and pipelines. This approach ensures that custom agents, knowledge sources, and connector actions are developed and promoted safely across environments.

Tools used include:

Power Platform Pipelines: Automates the deployment process across environments.

To automate the application lifecycle management (ALM) for Copilot components within Microsoft Dynamics 365 Customer Service, follow this structured process using Power Platform pipelines and solutions:

1. Solution-Centric Development

All Copilot components (agents, topics, custom actions, and connector plugins) must be developed within a Power Platform solution.

Create or Select a Solution: In Copilot Studio or the Power Apps maker portal, ensure you are working within an unmanaged solution in your Development environment.

Add Components: When you create new agents or actions in Microsoft Copilot Studio, they are automatically associated with the preferred solution you have set, ensuring they are portable.

2. Pipeline Configuration

Power Platform pipelines democratize ALM by providing a built-in CI/CD experience directly within the maker portal.


Incorrect:

[Not A] Use Managed Solutions for Production: Export and deploy solutions as managed when promoting to test or production environments to prevent unauthorized direct changes in those environments and ensure a consistent state.

### QUESTION 10 

You are designing a testing solution for a Microsoft Copilot Studio agent that integrates with Microsoft Dynamics 365 Customer Service and Dynamics 365 Sales.

You need to design end-to-end scenarios to test the agent's ability to perform the following actions:

- Coordinate tasks and data interactions across both Dynamics 365 apps.
- Interpret user input and provide contextually relevant outputs.

Which test scenario and metric should you include in the design? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.



*   **Copilot Studio:**
    *   [ ] Export from the source code repository and import to the target environment.
    *   [ ] Use a Bicep file.
    *   [ ] Use a Microsoft Power Platform deployment pipeline.

*   **Microsoft Foundry:**
    *   [ ] Use a Bicep file.
    *   [ ] Use a Microsoft Power Platform deployment pipeline.
    *   [ ] Use an Azure DevOps pipeline.


----

Box 1: Run task-based scenarios that involve both apps

Box 2: Track the successful completion of cross-app tasks


Box 1: Run task-based scenarios that involve both apps 

Test scenario

Task-Based Testing Scenarios Run these end-to-end scenarios to verify the agent's ability to interpret context and coordinate data: Scenario 1: Cross-Sell Opportunity Discovery Task: While resolving a support case in Customer Service, ask the agent: "Are there any active sales opportunities for this account?".

Success Criteria: The agent retrieves the relevant Opportunity from Sales, summarizes it, and suggests a follow-up action for the sales team.

Scenario 2: Integrated Case/Lead Creation Task: A user mentions a new product interest during a support chat. Command the agent: "Create a lead in Sales based on this support conversation".

Success Criteria: The agent parses the conversation history and creates a Lead record in Sales with the correct customer context.

Scenario 3: Proactive Account Health Check Task: 


Before a sales meeting, ask: "Summarize recent support issues for this account".

Success Criteria: The agent identifies open tickets in Customer Service and provides a summary to the Sales professional to prevent walking into a "blind" meeting.

Box 2: Track the successful completion of cross-app tasks Metric

Key Metrics for Success Track these specific metrics in the Copilot Studio Analytics tab or the Power Platform Admin Center:

*-> Resolution Rate (Cross-App): The percentage of sessions where the agent successfully completed a task requiring data from both apps without manual intervention.

Deflection Rate: Reduction in human handoffs for tasks that previously required an agent to switch manually between Sales and Service hubs.

Task Success Threshold: Define a minimum quality score for LLM-based responses to ensure the context provided from the "other" app is accurate.

Agent Assisted Hours Gained: Measure the time saved by the agent performing these cross-app queries versus a human doing so manually.


### QUESTION 11 

A company has multiple AI models that support generation of sales transactions.

Each release of the models must be reviewed by a security and compliance team before being deployed to the production environment. The security and compliance team must have access to prior versions to properly determine potential exposures introduced.

You need to recommend a solution to evaluate the impact of each deployment to production. The solution must enhance business continuity.

What should you recommend?

A. Create a central model registry that uses version history.

B. Establish a promotion process by using a quality gate.

C. Implement version control for all the AI system components.

D. Track model retirement schedules to prevent service disruptions.


---


Correct Answer: C


Explanation/Reference:

Explanation:

To ensure business continuity and minimize risks in AI-driven sales transaction systems, implementing comprehensive version control across all system components is a critical requirement. This provides reviewers with a stable baseline to evaluate new releases against older versions, helping identify potential exposures or regressions before they reach production.

Strategic Implementation for AI Version Control Version All Components: Do not limit version control to application code. You must track: *-> Models: Managed iterations including weights and architecture.

Etc.

Benefits for Business Continuity Predictability: Standardized versioning makes AI behavior more auditable and scalable.

Disaster Recovery: Allows teams to quickly reproduce or restore any previous environment state during a failure.

Regulatory Compliance: Provides the necessary evidence of "what the AI was instructed to do" at any given point, which is mandatory for regulated financial environments.


### QUESTION 12 

A company has an AI solution that uses a Microsoft Copilot Studio agent.

You need to monitor the agent's performance. The solution must meet the following requirements:

- Monitor the agent's telemetry in near-real-time (NRT).
- Download transcripts of full conversations.
- Monitor the agent's usage and performance.

What should you use for each requirement? To answer, drag the appropriate options to the correct requirements. Each option may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.

NOTE: Each correct selection is worth one point.


**Options**

- Application Insights
- Copilot Studio
- Log Analytics
- Microsoft Power Apps

**Answer Area**

- Monitor the agent's telemetry in NRT:
- Download transcripts of full conversations:
- Monitor the agent's usage and performance:

**Options**

--------

Box 1: Application Insights

Box 2: Microsoft Power Apps


**Box 1: Application Insights **


Monitor the agent's telemetry in near-real-time (NRT).

To monitor Microsoft Copilot Studio agent performance and telemetry in near-real-time (NRT), the best tool to use is Azure Application Insights.

By connecting your Copilot Studio agent to an Azure Application Insights instance, you can capture detailed runtime data, including user messages, topics triggered, and custom events as they happen.

**Box 2: Microsoft Power Apps**


Download transcripts of full conversations.

To monitor Microsoft Copilot Studio agent performance, you can download full conversation transcripts for the last 29 days using the Power Apps portal to analyze user interactions. Access Dataverse via Power Apps, navigate to tables, select ConversationTranscript, and export the data as a CSV file to identify engagement, resolution, and escalation patterns.

Steps to Download Transcripts via Power Apps:

1. Sign in to make.powerapps.com.

2. Select the correct environment in the top right corner.

3. In the side menu, select Tables (or Data > Entities in older views).

4. Search for and select the ConversationTranscript table.

5. Select Export data from the top menu.

6. Once compiled, select Download exported data to save the file.

**Box 3: Copilot Studio** 

Monitor the agent's usage and performance.

To monitor a Microsoft Copilot Studio agent's usage and performance, you can use the built-in Analytics page in Copilot Studio, which provides comprehensive data on key metrics, conversation outcomes, and user satisfaction.


### QUESTION 13 

A company deploys a Microsoft Copilot Studio agent that integrates with a Microsoft Power Automate desktop flow.

You need to recommend a testing solution that meets the following requirements:

Test cases must validate the most recent changes to the agent before the agent is released.

The flow must be validated as part of the agent's orchestration.

What should you recommend for each requirement? To answer, select the appropriate options in the answer area.


NOTE: Each correct selection is worth one point.

Hot Area:

Answer Area

Validate the most recent changes to the agent before release:

- Publish the agent to a channel and test the agent on live users.
- Run tests against the latest unpublished version of the agent.
- Run tests against the production version of the agent.

Validate the flow as part of the agent's orchestration:

- Add the flow to the agent as a tool.
- Add the flow to a canvas app.
- Use the Power Automate for desktop console.

------


这是该道热点选择题（Hot Area）的正确答案与详细解析：

QUESTION 答案 (Answer Area)

1. Validate the most recent changes to the agent before release:

  - 正确选项： **Run tests against the latest unpublished version of the agen**t.（针对最新的未发布版本 Agent 运行测试。）

2. Validate the flow as part of the agent's orchestration:

  - 正确选项： Add the flow to the agent as a tool.（将 Flow 作为工具添加给 Agent。）

解析与考点分析

第一部分分析：在发布前验证 Agent 的最新更改

  - 考点： Copilot Studio 的版本与测试机制。
  - 解析：
      - 未发布版本（Unpublished Version/Draft）： 在 Microsoft Copilot Studio
        中，做出的任何修改都是保存在未发布的草稿状态（Draft）中。Copilot Studio 内置的测试面板（Test Canvas）或自动化测试套件（如 Power CAT Copilot Studio
        Kit）可以让你直接针对**未发布（Unpublished）的版本运行测试用例。这能确保在正式Publish（发布）**给终端用户之前验证最新更改。
      - 错误选项排除：
          - Publish the agent to a channel and test the agent on live users：
            直接发布给线上真实用户测试属于违规操作，无法控制风险。
          - Run tests against the production version of the agent：
            生产环境运行的是旧的已发布版本，无法测试到“最新未发布的修改”。

第二部分分析：验证 Flow 作为 Agent 编排的一部分

  - 考点： Copilot Studio 的 Generative Orchestration（生成式编排）与 Action/Tool（工具）集成。
  - 解析：
      - 将 Flow 作为 Tool 添加： 在 Copilot Studio 中，要让 AI Agent
        在编排逻辑（Orchestration）中调用 Power Automate（无论是 Cloud Flow 还是 Desktop
        Flow），必须将其注册为 Agent 的 Tool（工具） 或 Action（动作）。这样，Agent
        的生成式编排器（Orchestrator）才能在运行时识别该 Flow 的功能描述（Description），并自动决定何时触发该
        Desktop Flow。添加为 Tool 后，才能在 Agent 的整体编排中对其进行端到端测试。
      - 错误选项排除：
          - Add the flow to a canvas app： 这是在 Canvas App 中测试 Flow，无法测试 Copilot
            Studio Agent 的 AI 编排逻辑。
          - Use the Power Automate for desktop console： 控制台只能单独测试 Desktop Flow
            本身是否能正常运行，无法测试 Agent 编排（Orchestration）调用 Flow 的过程。



### QUESTION 14 


A company has a Microsoft Copilot Studio agent that provides answers based on a knowledge base for customer support.

Users report that, occasionally, the agent provides inaccurate answers.

You need to use metrics from the Analytics tab in Copilot Studio to identify the cause of the inaccuracies.

Which two options should you use? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

A. survey results

B. session information and session outcomes

C. topic usage and topics with low resolution

D. engagement, resolution, and escalation rates

E. quality of generated answers

----

正确答案与详细解析

正确答案：

  - C. topic usage and topics with low resolution（主题使用情况及低解决率的主题）
  - E. quality of generated answers（生成式回答的质量）

解析与考点分析

为什么选 C 和 E？

题目背景是：Agent 基于知识库回答问题，但用户反映偶发性提供不准确的回答（inaccurate answers）。我们需要通过 Copilot Studio
中的 Analytics（分析） 选项卡来定位导致回答不准确的具体原因。

1.  C. topic usage and topics with low resolution（选 C）：

      - 作用： 在 Copilot Studio 的 Analytics -> Topic Analytics（主题分析） 中，系统会列出所有 Topic 的触发频率和解决率。
      - 分析原因： **低解决率（Low resolution）**或高转人工率（High escalation）的主题通常意味着该主题包含不准确、过期或有误导性的回答。作者可以通过筛选低解决率主题，直接调出具体的对话轨迹（Transcripts），定位是哪些答案导致了问题。

2.  E. quality of generated answers（选 E）：

      - 作用： 由于 Agent 是基于**知识库（Knowledge Base）**提供回答的，这使用了 Copilot Studio 的生成式回答（Generative Answers）功能。
      - 分析原因： 在 Analytics -> Generative AI（生成式 AI 分析） 选项卡中，系统专门记录了生成式回答的质量（Quality of generated answers），包括用户点赞/点踩（Thumbs up / Thumbs down）的反馈、知识源检索失败率等。这能直接定位是否是知识库文档本身内容不准确或 AI 生成回答时产生了幻觉。

为什么不选其他选项？

  - A. survey results（调查结果）： 仅显示用户满意的宏观分数（如 CSAT评分），能告诉你用户“不满意”，但无法告诉你具体是“哪一条知识或哪个回答不准确”。
  - B. session information and session outcomes（会话信息与会话结果）： 提供整体会话的状态分类（Resolved/Escalated/Abandoned），属于宏观运营数据，无法精细化定位内容准确度问题。
  - D. engagement, resolution, and escalation rates（参与率、解决率和升级率）： 属于 Analytics 首页（Summary）上的顶层宏观 KPI 指标，用于衡量整体运行健康度，无法精细定位到具体的错误回答内容。

---

Correct Answer: CD

Explanation/Reference:

Explanation:

[C] You can use the Analytics dashboard to identify and fix inaccurate responses by focusing on specific performance signals:

*-> Topics with Low Resolution: This metric identifies individual topics where sessions frequently end without a successful outcome. A low resolution rate often indicates that the topic's logic is flawed, the content is outdated, or it fails to address the user's specific intent.

*-> Topic Usage: High usage of certain topics combined with low resolution or high escalation rates points to critical knowledge gaps. Use this to prioritize which parts of your knowledge base need immediate refinement.


Unrecognized Utterances: Review these to find user phrases that didn't trigger any custom topic, indicating missing content or the need for new trigger phrases.

Analyze User Questions by Theme: Copilot Studio uses AI to group generative responses into themes. You can review these clusters to see which themes have poor response quality and need better grounding or data hygiene.

User Feedback (Thumbs Up/Down): Review specific messages with negative feedback in the Analytics tab to understand exactly where the AI is hallucinating or providing incomplete data.


[D] In Microsoft Copilot Studio, you can use analytics to pinpoint why your agent is providing inaccurate answers by following a structured improvement checklist.

Using Metrics to Locate Problems *-> Engagement Rate: A low engagement rate often indicates that your triggers are misconfigured or too broad, causing the agent to initiate the wrong topic or fail to recognize user intent entirely.

*-> Resolution Rate: Identify specific topics with low resolution. If a topic has a high volume of sessions but fails to reach a "Resolved" state, it usually means the knowledge source is outdated, mismatched, or the generative answers are not grounded properly.

*-> Escalation Rate: High escalation rates for particular topics are "red flag" drivers. Use the Escalation Rate Drivers chart to see which topics most frequently force a hand-off to a human agent, indicating where the AI's knowledge or logic is insufficient.


Incorrect:

[Not B] To locate and resolve inaccuracies in your Microsoft Copilot Studio agent, you can leverage the Analytics tab to examine session data and outcomes.

1. Use Session Outcomes to Identify Failure Points The Analytics dashboard categorizes "Engaged" [D] sessions into three primary outcomes that highlight where the agent is failing:

Escalated: These sessions reached the "Escalate" [D] system topic or a "Transfer Conversation" node. High escalation rates for specific topics often indicate that the knowledge base lacks the depth to answer those queries.

Abandoned: These sessions ended without being resolved or escalated [D]. This often happens when users get frustrated by repetitive or inaccurate answers and close the chat.

Resolved [D]: These are successful sessions. If a session is marked Resolved (Confirmed), the user explicitly verified the answer was helpful. If it is Resolved (Implied), the agent assumed success because the user didn't ask further questions, which can sometimes mask inaccuracies.


#### QUESTION 15


A company uses a fine-tuned Microsoft Foundry model that requires frequent updates as new customer feedback becomes available.

You need to design an application lifecycle management (ALM) process that meets the following requirements:

- Data changes must be tracked and versioned.

- The model must be retrained consistently by using approved training data.

Which two actions should you include in the design? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point. 


A. Associate the storage location to the fine-tuning job.

B. Create a content filter.

C. Store the training data in Azure Files.

D. Upload the training data to Microsoft Foundry data files

E. Store the training data in Azure Blob Storage that has version control enabled.

-----

D. Upload the training data to Microsoft Foundry data files

E. Store the training data in Azure Blob Storage that has version control enabled.


是的，DE 这个答案是正确的，并且解释非常准确！

比起 A，选 D 和 E 更符合 Microsoft Foundry (Azure AI Studio) 的具体实现机制。以下是为什么 D 比 A 更精准的技术原因：

为什么选择 D 而不是 A？

1.  Microsoft Foundry 模型微调的具体机制（关键点）：

      - 在 Microsoft Foundry / Azure OpenAI 中发起模型微调（Fine-tuning job）时，系统并不支持直接给微调任务关联一个“存储位置/文件夹（Storage location）”。
      - 实际上，微调任务接收的输入是一个明确的、经过验证的数据文件（Data File / File ID，例如 file-abc123...）。
      - 因此，标准的工作流程是：在启用了版本控制的 Blob Storage (E) 中准备好数据后，将该特定的受信任数据上传/注册到
        Microsoft Foundry data files (D) 中生成 Data Asset，再由微调任务调用该文件。

2.  完整的工作流逻辑（E + D）：

      - 满足需求 1（版本控制与追踪）： E (Store in Azure Blob Storage with version control) — Blob 存储负责底层原始数据文件的版本快照与历史追溯。
      - 满足需求 2（受信任数据的可重复微调）： D (Upload to Microsoft Foundry data files) — 将每次版本控制后经批准的数据集导入到 Foundry 数据文件中，作为模型微调任务的确定性输入（Training File）。

总结

- 正确答案确定为：D 和 E
- 之前的分析中 A 属于概念性的误判，D 才是符合微软 Azure AI Foundry 接口规范的标准操作。

----

Correct Answer: DE Section: (none)

Explanation/Reference:

Explanation:

To implement a new Application Lifecycle Management (ALM) process for your fine-tuned Microsoft Foundry model, you can leverage Azure Blob Storage for raw data versioning and Azure AI Foundry (formerly Azure AI Studio) for managed data assets and model retraining.

1. Data Tracking and Versioning in Azure Blob Storage Enable blob versioning to automatically maintain a history of your training data.

Enable Versioning: In the Azure portal, navigate to your storage account under Data management > Data protection and select Enable versioning for blobs.

Immutable Tracking: This ensures that every update to a training file creates a new version, allowing you to restore or reference specific historical states of your dataset for auditability.

2. Uploading and Managing Data in Microsoft Foundry Integrate your versioned blob storage with Microsoft Foundry to create "Data assets" that the model can use for retraining.

Reference:

### QUESTION 16

A company deploys agents that generate responses by using Azure OpenAI resources. The agents are deployed to both the United States and Europe.

You need to recommend a governance solution that meets the following requirements:

- Enforces the deployment of the resources to only approved Azure regions 
- Provides continuous compliance verification of the resources

What should you include in the recommendation for each requirement? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.

Hot Area:

Answer Area

Enforces the deployment of the resources to only approved regions:

- Azure Monitor
- Azure Policy
- Microsoft Defender for Cloud
- Microsoft Purview
- Microsoft Sentinel

Provides continuous compliance verification of the resources:

- Azure Monitor
- Azure Policy
- Microsoft Defender for Cloud
- Microsoft Purview

----

这是一道典型的 **Azure Governance** 考题，考的是 **Azure Policy** 和 **Microsoft Defender for Cloud** 的职责区分。

**Requirement 1**

> **Enforces the deployment of the resources to only approved Azure regions**

关键词：

* **Enforces（强制执行）**
* **Deployment（部署时）**
* **Approved Azure regions（允许的区域）**

能够在**创建资源时阻止**不符合规则的资源部署的是：

✅ **Azure Policy**

例如可以创建策略：

* Allowed locations
* Allowed resource types
* Allowed SKUs

如果有人尝试在未批准的区域（如 East Asia）创建 Azure OpenAI 资源，Azure Policy 可以直接拒绝部署。

**为什么其他选项不对？**

* **Azure Monitor** ❌：监控，不负责治理。
* **Microsoft Defender for Cloud** ❌：评估安全状态，不会阻止部署。
* **Microsoft Purview** ❌：数据治理与数据目录。
* **Microsoft Sentinel** ❌：SIEM/SOAR 安全事件分析。

**Requirement 2**

> **Provides continuous compliance verification of the resources**

关键词：

* **Continuous compliance verification（持续合规验证）**

这里不是要求阻止部署，而是**持续检查**资源是否符合安全与合规要求。

最符合的是：

✅ **Microsoft Defender for Cloud**

它提供：

* Continuous assessment（持续评估）
* Regulatory compliance dashboard（法规合规仪表板）
* Secure Score
* Security recommendations

可以持续检查 Azure OpenAI 等资源是否符合既定安全与合规要求。

为什么不是 Azure Policy？

Azure Policy 也可以评估资源是否符合策略（显示 Compliant / Non-compliant），但考试中：

* **Enforce Governance** → Azure Policy
* **Continuous Compliance / Security Posture / Regulatory Compliance** → **Microsoft Defender for Cloud**

微软官方文档也强调 Defender for Cloud 会聚合 Azure Policy 的评估结果，并提供持续的合规报告，因此题目强调 **continuous compliance verification** 时，最佳答案是 Defender for Cloud。

最终答案

| Requirement                                                           | Correct Answer                     |
| --------------------------------------------------------------------- | ---------------------------------- |
| **Enforces the deployment of the resources to only approved regions** | ✅ **Azure Policy**                 |
| **Provides continuous compliance verification of the resources**      | ✅ **Microsoft Defender for Cloud** |

考试速记

| 服务                               | 主要职责                                     |
| -------------------------------- | ---------------------------------------- |
| **Azure Policy**                 | **预防性治理（Prevent）**：限制区域、SKU、资源类型，部署时强制执行 |
| **Microsoft Defender for Cloud** | **持续评估（Assess）**：安全态势、法规合规、持续验证          |
| **Azure Monitor**                | 监控指标、日志、告警                               |
| **Microsoft Purview**            | 数据治理、数据分类、数据血缘                           |
| **Microsoft Sentinel**           | SIEM/SOAR，安全事件检测与响应                      |

**答案：**

* **Enforces the deployment of the resources to only approved regions:** ✅ **Azure Policy**
* **Provides continuous compliance verification of the resources:** ✅ **Microsoft Defender for Cloud**




----

Box 1: Azure Policy

Box 2: Microsoft Purview


Box 1: Azure Policy 


Enforces the deployment of the resources to only approved Azure regions To enforce the deployment of Azure OpenAI resources to only approved Azure regions (e.g., specific regions in Europe and the USA), you should use Azure Policy with the "Allowed locations" policy definition.

Here is the breakdown of how to implement this control:

Primary Tool: Azure Policy Azure Policy allows you to define rules that restrict where resources can be created.

Policy Rule: Use the Allowed locations policy definition.

Implementation: Assign this policy at the Subscription or Resource Group level to restrict developers to only using permitted regions (e.g., East US, West Europe).

Effect: If a user attempts to deploy an Azure OpenAI resource in a non-approved region, the deployment will be blocked.


**Box 2: Microsoft Purview** 

Provides continuous compliance verification of the resources To provide continuous compliance verification for Azure OpenAI resources across Europe and the USA, you should use Microsoft Purview Compliance Manager and Azure Policy.

Microsoft Purview Compliance Manager: This tool provides a risk-based compliance score and continuous monitoring against global regulations such as the EU AI Act, GDPR, and various US standards. It offers specific regulatory templates to help you assess and implement controls for generative AI applications. Azure Policy: Use this to enforce organizational standards and assess compliance at scale. You can apply built-in policy definitions for Azure AI services to automatically audit or deny non-compliant resource configurations, such as ensuring resources are restricted to specific regions (e.g., only EU or USA) or have private network access enabled.


### QUESTION 17 

A company has an AI solution that uses Azure OpenAI models.

You need to recommend a governance solution that monitors and audits changes to model configurations and data usage. The solution must minimize administrative effort.

What should you include in the recommendation?

A. Azure Monitor

B. Azure Stream Analytics

C. Azure API Management

D. Azure Policy

E. Microsoft Purview


----


Correct Answer: A Section: (none) Explanation/Reference:

Explanation:

Azure Monitor is the primary service for monitoring and auditing Azure OpenAI model configurations and data usage. By combining Azure Monitor with diagnostic settings, you can track management operations, analyze token consumption, and audit prompt/response data.


### QUESTION 18 

A company uses Azure OpenAI models that use grounding data from Microsoft Fabric for agents. The models are fine-tuned by using proprietary datasets.

You need to design a governance solution that meets the following requirements:

- Restricts access to the grounding data to only assigned roles
- Restricts model fine-tuning to only the AI engineering team

What should you include in the design? To answer, select the appropriate options in the answer area. NOTE: Each correct selection is worth one point.

**Answer Area**

Restricts access to the grounding data:

- Azure AI Content Safety  
- Azure Monitor alerts  
- Azure Policy compliance rules  
- Microsoft Purview access policies  

Restricts model fine-tuning:

- Azure Policy compliance rules  
- Azure Resource Manager (ARM) resource locks  
- Microsoft Entra Conditional Access  
- Role-based access control (RBAC) in Microsoft Foundry

-------


这是该道热点选择题（Hot Area）的正确答案与详细解析：

QUESTION 答案 (Answer Area)

1. Restricts access to the grounding data:

  - 正确选项： Microsoft Purview access policies（Microsoft Purview 访问策略）

2. Restricts model fine-tuning:

  - 正确选项： Role-based access control (RBAC) in Microsoft Foundry（Microsoft Foundry 中的基于角色的访问控制）

解析与考点分析

第一部分分析：限制对接地数据（Grounding Data）的访问

  - 考点： 企业数据资产的数据平面访问控制（Data-plane Access Control）。
  - 解析：
      - 题目说明 grounding data 来自 Microsoft Fabric。
      - Microsoft Purview access policies（Microsoft Purview 访问策略）： 允许企业集中管理和定义针对 Microsoft Fabric、Azure Data Lake 等数据资产的细粒度访问控制策略。通过 Purview 访问策略，可以确保只有获得授权角色（Assigned roles）的人员或 Agent 才能读取和访问这些接地数据。

第二部分分析：限制模型微调（Model Fine-tuning）权限

  - 考点： AI 平台管理操作权限控制（Control-plane & Data-plane RBAC）。
  - 解析：
      - 模型微调（Fine-tuning）是 Microsoft Foundry（Azure AI Foundry / Azure OpenAI） 内部的一种高算力消耗且涉及核心资产的操作。
      - Role-based access control (RBAC) in Microsoft Foundry： 微软在 Foundry 平台中提供了专门的 RBAC 角色（如 Azure AI Developer、Cognitive Services OpenAI Contributor 等）。通过为 AI 工程团队（AI engineering team）分配特定的 Foundry RBAC 角色，可以精准限制只有该团队拥有发起和运行模型微调任务的权限，对其他普通用户进行隔离。

干扰项排除说明

  - Azure AI Content Safety： 用于实时检测和过滤违规内容（如暴恐、仇恨言论），不用于数据访问控制或用户权限管理。
  - Azure Resource Manager (ARM) resource locks： 用于防止 Azure 资源被意外删除（CanNotDelete）或修改（ReadOnly），无法精细化控制“谁可以进行模型微调”这一业务操作。
  - Microsoft Entra Conditional Access： 侧重于用户登录时的身份认证条件限制（如 MFA 强制、IP 限制、设备合规要求），不直接管理 Foundry 内部的具体 AI 模型微调权限。



**Explanation/Reference:**

Explanation:

Box 1: Microsoft Purview Access Policies Restricts access to the grounding data to only assigned roles

To secure and manage grounding data from Microsoft Fabric for Azure OpenAI agents and fine-tuned models, you can use Microsoft Purview to enforce role-based access and data protection policies.

Note:

Securing Data with Microsoft Purview & RBAC

Access Control Policies: Microsoft Purview enables role-based access controls (RBAC) over Fabric items, ensuring that when an AI agent retrieves data, it only accesses information the user is permitted to see.

Sensitivity Labels: Data in Fabric can be labeled (e.g., "Confidential"). Purview policies can restrict AI agents from accessing or acting upon content that violates these security labels.

OneLake Security: Fine-grained security in Fabric (Row-Level Security and Column-Level Security) is automatically honored by agents, guaranteeing that even with access to a dataset, sensitive PII (Personally Identifiable Information) can be restricted.

Incorrect:

* Azure AI Content safety

You cannot use Azure AI Content Safety to restrict access to grounding data based on assigned roles. Azure AI Content Safety is used for content filtering (detecting harmful text/images, jailbreak attempts, and ungroundedness/hallucinations).

* Azure Policy compliance rules.

Azure Policy can be used to enforce compliance rules, such as restricting model deployments to specific regions or ensuring private networking is used.

Box 2: Role-based access control (RBAC) in Microsoft Foundry Restricts model fine-tuning to only the AI engineering team

Azure role-based access control (Azure RBAC) is used to manage and restrict access to AI resources, including the ability to perform fine-tuning operations. Platform administrators can assign specific roles and permissions (e.g., to AI engineers or data scientists) and use Azure Policy to implement fine-grained control over who can initiate fine-tuning jobs or deploy custom models within the Azure AI Foundry environment. This ensures the governance of the fine-tuning process.


### QUESTION 19

A company has a Microsoft Copilot Studio agent that has been in production for three months.

The agent has received positive feedback from users.

You need to identify the number of questions unanswered by the agent and the number of abandoned sessions between the users and the agent.

Which Copilot Studio insights should you use? To answer, drag the appropriate insights to the correct requirements. Each insight may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.

NOTE: Each correct selection is worth one point.

Select and Place:

Insights

- Conversation outcomes  
- Generated answer rate and quality  
- Reactions  
- Survey results  

Answer Area

- The number of unanswered questions:  
- The number of abandoned sessions:  

Insight

----


Explanation/Reference:

Explanation:

**Box 1: Generated answer, rate and quality** 

The number of questions unanswered

In Microsoft Copilot Studio, you can find the number of unanswered questions by navigating to the Analytics page and viewing the Generated answer rate and quality section.

This specific analytics area provides insights into how often the agent successfully generates a response versus when it fails to do so.


Box 2: Conversation outcomes 

The number of abandoned sessions between the users and the agent

To find the number of abandoned sessions in a Microsoft Copilot Studio agent's analytics, you can use the Conversation outcomes chart within the Analytics dashboard. 

This chart specifically tracks and visualizes sessions with an "Abandoned" outcome.


### QUESTION 20 

You are evaluating a Microsoft Copilot Studio agent that supports Microsoft Dynamics 365 Customer Service representatives.

You need to recommend a testing solution that meets the following requirements:

- Evaluates agent effectiveness during active sessions
- Validates whether the agent delivers accurate and helpful responses
- Provides measurable, actionable insights for continuous improvement

What should you recommend?

A. Track resolution, deflection, and accuracy by using dashboards and use scripts to ensure consistent responses.

B. Perform load testing to validate how the agent scales under a high chat volume.

C. Review historical tickets to find agents that have the shortest resolution times.

D. Measure uptime and page load times.

----

**正确答案：**

* **A. Track resolution, deflection, and accuracy by using dashboards and use scripts to ensure consistent responses.**（使用仪表板跟踪解决率、偏转率和准确性，并使用脚本确保一致的响应。）

**解析与考点分析**

**为什么选 A？**

对照题目提出的三项核心需求：

1. **评估活动会话期间的 Agent 有效性（Evaluates agent effectiveness during active sessions）：**
   * Copilot Studio 内置的**分析仪表板（Analytics Dashboards）**可以实时追踪会话，分析**解决率（Resolution rate）**和**偏转率（Deflection rate，即无需转人工即可自主解决问题的比例）**。
2. **验证 Agent 是否提供准确且有帮助的回答（Validates whether the agent delivers accurate and helpful responses）：**
   * 通过使用**测试脚本（Scripts）**和内容准确度评估，可以验证生成式回答和主题回复的一致性与正确性。
3. **提供可衡量、可操作的持续改进洞察（Provides measurable, actionable insights for continuous improvement）：**
   * 仪表板提供的核心 KPI（解决率、放弃率、CSAT 满意度评分、未解决问题主题分类）能够为后续的 Prompt 优化和知识库扩充提供直接的数据支撑。

**为什么不选其他选项？**

* **B. Perform load testing to validate how the agent scales under a high chat volume（进行压力测试以验证高并发下的扩容能力）：** 这是**性能与并发测试（Performance/Load Testing）**，关注的是系统吞吐量和并发响应，无法评估回答的“准确度”和“内容有用性”。
* **C. Review historical tickets to find agents that have the shortest resolution times（审查历史工单以寻找解决时间最短的客服人员）：** 评估的是**人类客服（Human Representatives）**的历史工单处理速度，而不是 AI Copilot Agent 的性能。
* **D. Measure uptime and page load time（测量在线时间与页面加载时间）：** 这是**基础架构的可用性与网络性能指标（Infrastructure Metrics）**，与 AI Agent 的对话质量和解答准确性无关。

----

Correct Answer: A


Explanation/Reference:

Explanation:

To establish a testing and evaluation setup for your Microsoft Copilot Studio agent within Dynamics 365 Customer Service, you should leverage specialized AI-driven evaluation agents and integrated analytics dashboards.

1. Evaluate Effectiveness and Accuracy Use the Quality Evaluation Agent in Dynamics 365 to automate the assessment of agent performance during and after active sessions.

2. Track Measurable Insights with Dashboards Utilize the built-in and customizable dashboards to monitor key performance indicators (KPIs) like resolution and deflection.

3. Ensure Consistency with Agent Scripts To maintain uniform and company-endorsed communication, implement Agent Scripts within the Customer Service Admin center.


### QUESTION 21 

A company uses multiple Microsoft Copilot Studio agents across different channels.

You need to recommend a monitoring solution that provides comprehensive telemetry data and performance insights for the agents.

What should you include in the recommendation?

A. Application Insights

B. Azure Advisor

C. Azure DevOps

D. Microsoft Dynamics 365 Customer Voice


----

正确答案与详细解析

正确答案：

  - A. Application Insights

解析与考点分析

为什么选 A？

1.  业务场景： 公司在不同渠道上部署了多个 Microsoft Copilot Studio
    Agent，需要一个能够提供**全面遥测数据（Comprehensive telemetry data）和性能洞察（Performance
    insights）**的监控解决方案。
2.  官方原生集成：
      - Azure Application Insights（Azure 应用程序洞察） 是 Microsoft 推荐且与 Copilot Studio
        原生集成的遥测与监控服务。
      - 通过配置 Application Insights，系统会自动捕获并记录 Agent 的详细遥测日志，包括：
          - 对话事件（Events）与会话轨迹（Traces）
          - 各 Topic（主题）的执行情况与触发频率
          - 系统响应延迟、API 调用耗时与性能瓶颈
          - 运行时的错误日志与异常信息（Exceptions）

为什么不选其他选项？

  - B. Azure Advisor（Azure 顾问）： 针对 Azure 基础设施架构提供最佳实践建议（如成本优化、安全性、合规性），不能收集和分析
    Copilot Studio Agent 的对话遥测数据。
  - C. Azure DevOps： 用于 DevOps 流程（代码托管、CI/CD 自动化构建与部署
    pipelines、项目工作项追踪），不具备实时监控和运行时遥测分析功能。
  - D. Microsoft Dynamics 365 Customer Voice：
    用于创建和分发用户满意度（CSAT/NPS）调查问卷，只能收集用户的主观反馈，无法提供技术维度的底层遥测数据和系统性能洞察。

----

Correct Answer: A Section: (none)

Explanation/Reference:

Explanation:

To achieve comprehensive monitoring, telemetry, and performance insights for Microsoft Copilot Studio agents across different channels, you should integrate them with Azure Application Insights.

Integrating Application Insights provides a centralized view of agent health, user interactions, topic performance, and latency, which is crucial for monitoring multi-channel deployments.


### QUESTION 22 

A company has an AI solution built by using Microsoft Copilot Studio and Power Platform. The solution is used by the company's sales, marketing, and customer service teams.

You are performing a return on AI investment (ROAI) analysis to evaluate the impact of the solution.

You need to identify which measurable business drivers to include in the analysis.

Which two business drivers should you identify? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

A. the reduced average case resolution time

B. market capitalization

C. economic market predictability

D. increased employee productivity

E. brand awareness


------

正确答案与详细解析

正确答案：

  - A. the reduced average case resolution time（平均案件解决时间的缩短）
  - D. increased employee productivity（员工生产力的提高）

解析与考点分析

为什么选 A 和 D？

在评估 AI 投资回报率（ROAI, Return on AI Investment）时，需要引入**可量化（Measurable）**且能直接归因于 AI
解决方案落地的业务驱动因素（Business Drivers）：

1.  A. the reduced average case resolution time（平均案件解决时间的缩短）：

      - 适用团队： 客户服务团队（Customer Service Team）。
      - 可量化分析： 属于标准的客服核心指标（MTTR, Mean Time to Resolution）。使用 Copilot Studio 智能体协助客服人员快速检索知识库并生成回复后，每个工单的处理时长（如从 15 分钟缩短至 5 分钟）可以被系统精准记录，从而直接换算为节省的人工工时成本与财务收益。

2.  D. increased employee productivity（员工生产力的提高）：

      - 适用团队： 销售、营销和客服团队（Sales, Marketing & Customer Service Teams）。
      - 可量化分析： 属于 AI 投资回报率模型中最核心的驱动指标。例如：销售人员准备会议的时间减少、营销人员生成邮件草稿的速度加快、客服人员每日处理工单量增加。通过“每周节省的工时 × 员工时薪成本”，可以非常直观地计算出 ROAI 中的经济回报。

为什么不选其他选项？

  - B. market capitalization（总市值）： 受宏观经济、股市波动、利率等多重复杂外部因素影响，无法归因并量化为单个 Copilot Studio AI 项目的回报。
  - C. economic market predictability（经济市场可预测性）： 属于宏观经济学指标，非企业内部 AI 项目的业务驱动力。
  - E. brand awareness（品牌知名度）： 属于难以精准量化且难以直接与内部 AI 效率提升挂钩的软性指标，不适合作为量化 ROAI 分析的核心财务/运营驱动因子。

----

Correct Answer: AD Section: (none)

Explanation/Reference:

Explanation:

[A] Reducing the average case resolution time is a high-impact, measurable business driver for an AI investment (ROAI) analysis, particularly when implementing Microsoft Copilot Studio and Power Platform for local sales, marketing, and customer service teams.

According to Microsoft and industry research, this metric directly translates to reduced operational costs, increased agent productivity, and higher customer satisfaction.

[D] Increased employee productivity is a primary and highly measurable business driver for an AI investment (ROAI) analysis involving Microsoft Copilot Studio and Power Platform, particularly for sales, marketing, and customer service teams. These tools allow organizations to automate manual tasks, streamline workflows, and enhance content generation, directly resulting in time savings and efficiency gains.

Incorrect:

[Not B] While market capitalization is a macro-level indicator that reflects investor confidence in a company's AI maturity, it is generally not considered a direct, measurable business driver for a specific internal project's Return on AI Investment (ROAI). Market cap is influenced by many external factors beyond a single implementation of Microsoft Copilot Studio or Power Platform.


### QUESTION 23 

A company has a Microsoft Foundry agent that summarizes customer feedback and recommends products to customers. The agent references data from multiple knowledge sources.

Users report that the agent response time is slow.

Telemetry data shows that the agent frequently reaches its token usage limit.

You need to recommend a solution to reduce token usage without degrading the quality of the generated responses.

What should you recommend?

A. Chunk documents during indexing.

B. Reduce the number of knowledge sources used by the agent.

C. Reconfigure the prompts to limit the amount of retrieved content from the knowledge sources.

D. Lower the maximum token usage limit for the responses.


-----


Correct Answer: C Section: (none)

Explanation/Reference:

Explanation:

To reduce token usage and improve performance in a Microsoft Foundry agent with slow response times and high token usage, reconfigure the prompts to limit the amount of retrieved content from the knowledge sources. This directly reduces the input token count in the prompt, addressing the bottleneck without removing valuable sources.

To reduce token usage while maintaining quality, you must transition from a "wide-net" retrieval strategy to a highly filtered, multi-stage retrieval process. The goal is to ensure that every token entering the prompt adds unique, high-value information.

The Root Cause Redundancy: Multiple knowledge sources often contain overlapping feedback.

Noise: Raw data often includes metadata or conversational filler.

Context Bloat: Large retrieval windows push the agent toward its limit and slow down processing.


## QUESTION 24 

A company has Microsoft Power Platform development, staging, and production environments. Each environment has its own Microsoft Dataverse tables and Azure AI Search index.

You are designing an application lifecycle management (AIM) process to deploy a Microsoft Copilot Studio agent between the environments.

The company has a Copilot Studio agent named Agent1 in development. Agent1 uses the following grounding data sources:

- A Dataverse table named CustomerOrders
- An Azure AI Search index named customer-knowledge

You need to deploy Agent1 to production. The solution must ensure that the agent uses the production grounding data sources, minimizes downtime, and handles credentials and endpoints securely.

What should you include in the deployment package solution, and what should you reconfigure after the deployment? 

To answer, select the appropriate options in the answer area. NOTE: Each correct selection is worth one point.


**Include in the deployment package solution:**

- Agent1 only  
- The data sources only  
- Agent1 and the data source connections  
- Agent1 and references to the data sources  
- Agent1, the data sources, and the data source connections  

**Reconfigure after the deployment:**

- The Dataverse connection only  
- The Azure AI Search connection only  
- The Dataverse and Azure AI Search connections  
- The Agent1 configuration  
- The environment variables


-----

正确答案

**Include in the deployment package solution**

✅ **Agent1 and references to the data sources**

**Reconfigure after the deployment**

✅ **The environment variables**

为什么其他答案不对？

| 选项                                      | 为什么错                                          |
| --------------------------------------- | --------------------------------------------- |
| Agent1 only                             | ❌ 丢失数据源引用                                     |
| Data sources only                       | ❌ Agent 不会部署                                  |
| Agent1 + data source connections        | ❌ Connection 不应跨环境迁移，涉及凭据                     |
| Agent1 + data sources + connections     | ❌ 不会迁移 Dataverse 数据和 AI Search Index，也不建议迁移连接 |
| Dataverse connection only               | ❌ 还需要 Azure AI Search 的环境配置                   |
| Azure AI Search connection only         | ❌ 同理                                          |
| Dataverse + Azure AI Search connections | ❌ 推荐通过 Environment Variables 管理，而不是修改连接       |
| Agent1 configuration                    | ❌ Agent 配置无需修改，引用会通过环境变量解析                    |


📌 考试记忆口诀

**Copilot Studio ALM：**

* **Solution** → Agent + References（引用）
* **不要打包** → 数据、Search Index 内容、凭据
* **跨环境切换** → **Environment Variables**
* **Secrets / Endpoints** → Environment Variables + Connection References

**最终答案：**

* **Include in the deployment package solution:** ✅ **Agent1 and references to the data sources**
* **Reconfigure after the deployment:** ✅ **The environment variables**

-----

Box 1: Agent1 and references to the data sources

Box 2: The environment variables


Box 1: Agent1 and references to the data sources 


Include in the deployment package solution

To deploy a Microsoft Copilot Studio agent with Dataverse and Azure AI Search dependencies across environments, you must use a Managed Solution as your primary deployment package. This ensures environment-specific configurations are handled without hardcoding, maintaining security and minimizing downtime.

Key Components of the Deployment Package Your solution package must include the following components to ensure a seamless transition between development, staging, and production:


*-> Copilot Studio Agent: The core bot configuration and its topics.

*-> Connection References: Placeholders that link the agent to specific connectors (e.g., Azure AI Search, Dataverse) in each environment.

Environment Variables: Used to store the Azure AI Search Endpoint URL and Index Name. Dataverse Table Metadata: If using custom tables, include the table definitions (schema) within the solution.

Power Automate Flows: If flows are used to bridge the agent and search index, they must be included in the same solution.


**Box 2: The environment variables** 

Reconfigure after the deployment

To successfully deploy a Copilot Studio agent across environments while maintaining the integrity of its data grounding, you must reconfigure the Connection References and Environment Variables within the target environment.

In a professional ALM (Application Lifecycle Management) pipeline, you should not manually "edit" the agent after deployment. Instead, the solution should be designed to use placeholders that are updated during the import process.

Update Environment Variables Purpose: Swaps out API endpoints and resource names.

Action: Provide the production values for:

Azure AI Search Endpoint: (e.g., https://windows.net) Index Name: The specific name of the production index.

API Keys: Ideally stored in Azure Key Vault and referenced via an environment variable.

Benefit: Allows the same agent logic to run in any environment by simply changing the variable values


### QUESTION 25 

A company has a Microsoft Copilot Studio agent that uses generative AI to assist Microsoft Dynamics 365 Customer Service representatives.

The agent currently exhibits a low resolution rate and a high escalation rate.

You need to identify the issue.

What should you use?

A. the Agent dashboard of Dynamics 365 Customer Service historical analytics

B. the Insights tab from the Search & intelligence settings of the Microsoft 365 admin center

C. the Copilot hub in the Power Platform admin center

D. the Analytics tab in Copilot Studio

----

Correct Answer: D Section: (none)

Explanation/Reference:

Explanation:

To locate the problem behind a low resolution and high escalation rate in your Copilot Studio agent, you should focus on a multi-layered diagnostic approach. High escalation typically signals that the agent is hitting a "Fallback" trigger or failing to find grounded answers in its knowledge base.

Core Diagnostic Steps Analyze Analytics Dashboards *-> Use the built-in Copilot Studio Analytics tab to identify high-level trends.

Escalation Rate Drivers: Look for the top 5–10 topics causing escalations. Improving these key topics by even 10% can significantly boost overall deflection

Outcome Reason: Check the outcomeReason in the ConversationTranscript table in Dataverse to see if sessions end due to abandonment, system errors, or explicit user requests for a human.


### QUESTION 26 

A company has a Microsoft Foundry generative AI model.

You need to evaluate the model's output to measure the overall quality and coherence of generated responses. The evaluation must use GPT-4o as a judge and return a numeric score for each output. Which type of metric should you use?

A. AI quality (NLP)

B. risk and safety

C. Groundedness

D. AI quality (AI assisted) Correct Answer: D Section: (none) Explanation/Reference:

Explanation:

To evaluate overall quality and coherence in Microsoft Foundry, use AI-assisted quality evaluators. These metrics use a "judge" model (like GPT-4o) to score responses on a numeric Likert scale (typically 1 to 5). Recommended Metric: Coherence The Coherence evaluator is the most direct fit for measuring how well-structured and logical a response is.

What it measures: The collective quality of all sentences and how they flow together.

Numeric Score: Returns an integer from 1 (Poor) to 5 (Excellent).

Output: Includes a coherence score, a coherence_reason (explanation from the judge), and a pass/fail result based on a threshold (default is 3).


QUESTION 27 


You use Microsoft Copilot Studio analytics to analyze the performance of a deployed Copilot Studio agent. 

You need to identify which performance metrics to use to measure the following:

- The percentage of engaged sessions that are escalated to a live customer service representative 

- The number of agent queries that cause a knowledge source error What should you identify for each requirement?

To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.


The percentage of engaged sessions that are escalated to a representative:

- Answer quality
- Customer Satisfaction (CSAT) score
- Engagement rate
- Escalation rate

The number of agent queries that cause a knowledge source error:

- Answer quality
- Engagement rate
- Escalation rate

------


Box 1: Escalation rate


Box 2: Answer quality


Box 1: Escalation rate 


The percentage of engaged sessions that are escalated to a live customer service representative To measure the percentage of engaged sessions that are escalated to a live customer service representative in Microsoft Copilot Studio analytics, you should use the Escalation rate metric.

Lowering this percentage is a key objective to improve the overall deflection rate and enhance agent performance.

Definition: An escalated session is an engaged session that ends when the Escalate topic is triggered, or when a Transfer to agent node is reached.

Context: This metric helps you understand the proportion of users who requested to speak to a human or were passed to a representative because the agent couldn't solve their issue.

Where to find it: It is available in the Analytics dashboard within Copilot Studio, specifically under "Escalation Rate Drivers" which shows which topics cause the most escalations.


Box 2: Answer quality 

The number of agent queries that cause a knowledge source error When analyzing Microsoft Copilot Studio agent performance, the answer quality performance metric should be used to measure queries that cause a knowledge source error. This AI-driven metric assesses if responses are grounded in provided knowledge, helping to identify, evaluate, and reduce errors in generative answers.

Key Aspects of Copilot Studio Analytics:

Answer Quality: Utilizes Large Language Models (LLMs) to categorize chat messages, focusing on grounding, relevance, and accuracy.


Explanation/Reference:

Explanation:

To implement an Application Lifecycle Management (ALM) process for Microsoft Foundry agent deployment, you must integrate Foundry Control Plane Observability into your CI/CD pipeline. This ensures the agent is validated against baseline metrics before reaching production and monitored for drift thereafter.

Pre-Deployment: Baseline Evaluation Before a new agent version is deployed, it must pass a rigorous evaluation stage within your ALM pipeline to prevent performance regressions.

Post-Deployment: Drift & Continuous Monitoring Once deployed, the agent’s performance must be continuously validated against the pre-deployment baseline using Observability in the Control Plane.

Continuous Evaluation: Configure the Control Plane to sample live production traffic and run the same evaluators used during development.

Drift Detection: Monitor for changes in Quality Scores and Accuracy Metrics over time. Significant drops indicate "drift," where real-world usage differs from your training/testing assumptions.

Unified Dashboard: Use the Foundry Monitoring Dashboard to visualize trends in latency, token usage, and accuracy side-by-side.

Alerting: Set up Azure Monitor alerts to notify developers immediately if evaluation scores fall below the established baseline.


### QUESTION 29 

You need to recommend a security solution for agents in a Microsoft Power Platform environment.

The agents must use only approved connectors and services. The solution must prevent the agents from accessing sensitive data.

What should you recommend?

A. Configure Azure Monitor to capture connector activity logs.

B. Enable a Microsoft Dataverse audit.

C. Deploy data loss prevention (DLP) policies in Power Platform. 

D. Enable customer-managed keys in Microsoft Dataverse.


------

Correct Answer: C Section: (none)

Explanation/Reference:

Explanation:

To secure Microsoft Power Platform agents, deploy DLP policies via the Power Platform Admin Center to categorize connectors as Business, Non-business, or Blocked. This prevents unauthorized data exfiltration by separating sensitive connectors and restricting approved services, ensuring agents only use compliant actions.

Note Key Actions for Agent DLP Policies:

Create Policy: Create a new policy in the Power Platform Admin Center and define its scope.

Categorize Connectors: Classify connectors used by agents (e.g., HTTP, SQL) into Business/Nonbusiness to prevent data sharing between them.

Block High-Risk Connectors: Block unauthorized or risky connectors (e.g., public social media, unapproved AI tools).

Configure Endpoint Filtering: Block specific URLs for HTTP connectors to ensure data only travels to trusted domains.

Apply to Agents: According to Platforms of Power, specific connectors for Copilot Studio can be blocked to limit agent capabilities, such as preventing autonomous triggers.

Quarantine Agents: If agents violate Microsoft Learn policies, 365 Copilot Studio allows quarantining the agents to prevent further data exposure.


### QUESTION 30 

A company has an AI business solution that uses Microsoft Copilot Studio agents.

You need to recommend prompt best practices to improve the effectiveness of agent interactions.

Which two actions should you include in the recommendation? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

A. Track the duration of the average user session.

B. Analyze the prompt length distribution.

C. Regularly test and refine the prompts based on user input.

D. Use clear and specific instructions in the prompts.

E. Measure system resource usage during prompt processing.


----


Correct Answer: CD

Explanation/Reference:

Explanation:

To maximize the effectiveness of Microsoft Copilot Studio agents through prompt engineering, the two best practices you mentioned are critical, along with several key refinements:

1. Use Clear and Specific Instructions in Prompts

Define Goal, Context, and Persona: Provide a clear objective (what to do), necessary context (background information), and a defined persona (e.g., "You are an HR assistant...") to set the tone.

Be Specific and Actionable: Use precise verbs like "search," "summarize," "draft," or "list." Avoid vague instructions. For example, instead of "tell me about sales," use "Summarize Q3 sales performance in the North region".

Use Structured Formats: Utilize Markdown (headings, bullet points, numbered lists) to make instructions easy to scan and parse. Organize instructions into sections like # PURPOSE, ## RESTRICTIONS, and ## ACTIONS.

Provide Examples (Few-Shot Prompting): Include examples of inputs and desired outputs to help the agent understand complex tasks or required formatting.

Define Constraints: Explicitly state what the agent should not do, what information to exclude, or when to decline a request.


2. Regularly Test and Refine Prompts Based on User Input

Test within Copilot Studio: Utilize the testing pane to simulate user queries and review agent responses. Experiment with different prompt variations to see which yields the best result.

Use Prompt Advisor: Leverage the Prompt Advisor feature to get a confidence score and feedback on your prompts, which helps identify areas for improvement.

Review Analytics: Regularly check conversation logs, customer feedback (thumbs up/down), and user queries in the analytics dashboard to find where the agent struggles.

Iterate and Improve: Treat prompting as a conversation with the agent. If the first output isn't perfect, refine the instructions, add more context, and try again.

Monitor Performance (Red Teaming): Test edge cases and potential failure modes to ensure the agent remains reliable and secure.

By following these practices, you can make agent behavior more predictable, accurate, and useful for end-users


### QUESTION 31 

A company has a cloud-based AI solution that uses Azure OpenAI models.

You need to design a monitoring solution that meets the following requirements:

Monitors performance metrics and operational health for the models

Monitors AI apps and agents for compliance

Uses Azure-native capabilities

Minimizes development effort What should you use for each requirement? To answer, drag the appropriate options to the correct requirements. Each option may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.

NOTE: Each correct selection is worth one point.

Select and Place:

**Options**

- Azure API Management
- Azure Policy
- Microsoft Defender
- Azure Monitor
- Azure Stream Analytics
- Microsoft Purview

**Answer Area**

Monitors AI app and agents for compliance: [______]

Monitors performance metrics and operational health: [______]


-----


这是该道拖拽匹配题（Select and Place）的正确答案与详细解析：

QUESTION 答案 (Answer Area)

  - Monitors AI app and agents for compliance: 👉 Microsoft Purview

  - Monitors performance metrics and operational health: 👉 Azure Monitor

解析与考点分析

1. 监控 AI 应用和 Agent 的合规性 (Monitors AI app and agents for compliance)

  - 正确选择： Microsoft Purview
  - 解析：
      - 在微软的原生云架构中，Microsoft Purview（Purview AI Hub） 是专门用于针对 AI 应用、Azure OpenAI模型及 Copilot Agent 进行合规性监控（Compliance Monitoring）、敏感数据审计、策略违规检测以及交互日志保留的官方原生服务。

2. 监控模型的性能指标和运行健康状况 (Monitors performance metrics and operational health)

  - 正确选择： Azure Monitor
  - 解析：
      - Azure Monitor 是 Azure 原生的运维监控服务。
      - 它原生集成了 Azure OpenAI 模型与 AI 服务，能够自动收集、分析并可视化呈现性能指标与运行健康度（Performance  metrics & operational health），例如：API 响应延迟（Latency）、每分钟 Token  消耗量（TPM）、HTTP 错误率（429 Rate Limit 超限告警）以及服务可用性（Uptime）。

干扰项排除说明

  - Azure API Management： 用于 API 网关控制、限流与路由，非合规监控或原生运维分析服务。
  - Azure Policy： 用于定义资源部署规则和预防性合规约束，不用于持续监控 AI 应用运行时的合规内容。
  - Microsoft Defender： 侧重于安全威胁防御与漏洞检测（Security/Threat  Protection），而非合规审计（Compliance）。
  - Azure Stream Analytics： 用于实时流数据分析处理，需要大量开发工作（违背了 Minimize development effort 的要求）。

----


Explanation/Reference:

Explanation:

**Box 1: Microsoft Purview Monitors** 


AI apps and agents for compliance

To monitor Azure OpenAI models and agents for compliance with minimal effort, you can leverage Microsoft Purview through its native integration with Azure AI Foundry. This "turn-key" approach allows security administrators to capture and audit AI interactions without requiring developers to write extensive custom code.

Native Integration: The "Zero-Code" Approach The most efficient way to achieve your goal is by enabling the Microsoft Purview integration directly within your Azure subscription or AI Foundry project.

Turn-on-and-go: Azure Admins can enable a single setting at the subscription level.

Automatic Data Flow: Once enabled, prompts and responses from Azure AI-based apps flow into Purview immediately.

Centralized Hub: Use the Microsoft Purview AI Hub to visualize AI activity and detect sensitive data leaks across your entire tenant.

**Box 2: Azure Monitor** 


Monitors performance metrics and operational health for the models

For monitoring Azure OpenAI models with an Azure-native approach and minimal effort, the most adequate solution is Azure Monitor. Specifically, utilizing the Azure OpenAI Insights workbook provides a pre-built, comprehensive dashboard for tracking operational health and performance metrics without custom code.

Azure Monitor (Platform Metrics) Azure Monitor automatically collects "Platform Metrics" for every Azure OpenAI resource at no additional cost or configuration. These provide near real-time visibility into basic operational health:

Total Requests: Track volume and status codes (e.g., 200 Success vs. 429 Rate Limited).

Latency: Monitor "Time to Response" to ensure performance meets user expectations.

Token Consumption: View "Processed Inference Tokens" and "Generated Completion Tokens" to manage costs and quota limits.


### QUESTION 32 


A company has Microsoft Copilot Studio agents.

The company plans to deploy custom connectors across development, test and production environments. You need to design an application lifecycle management (ALM) process to ensure consistency and prevent direct editing in production.

Which two actions should you include in the design? Each correct answer presents part of the solution. NOTE: Each correct selection is worth one point.

A. Deploy managed solutions to production.

B. Deploy unmanaged solutions to production.

C. Manually rebuild the agents in each environment.

D. Move the agents between the environments by using data export and import.

E. Include agents and connectors in a solution.


-----

Correct Answer: AD Section: (none) Explanation/Reference:

Explanation:

Core ALM Actions To ensure consistency and governace, include these actions in your design:

1. Environment & Solution Strategy

[A] *-> Three-Environment Model: Establish a dedicated Development (unmanaged), Test/UAT (managed), and Production (managed) environment.

Solution Packaging: Create agents and custom connectors directly inside a Power Platform Solution.

[D] *-> Managed Solutions: Always export your solution as Managed when moving to Test and Production. This locks the components, preventing direct editing in those environments.


### QUESTION 33 

A company uses multiple Microsoft Copilot Studio agents across different channels.

You need to recommend a monitoring solution that provides comprehensive telemetry data and performance insights for the agents.

What should you include in the recommendation?

A. Application Insights

B. Microsoft Dynamics 365 Customer Voice

C. Log Analytics

D. Microsoft Purview 

----

Correct Answer: A

Explanation/Reference:

Explanation:

Azure Application Insights (part of Azure Monitor) is the best Microsoft solution for monitoring comprehensive telemetry and performance for Copilot Studio agents across multiple channels.

While Copilot Studio has built-in analytics, Application Insights allows you to centralize data from many different agents and channels into one unified view.

Why Use Azure Application Insights?

Connecting your agents to Application Insights provides deeper technical and operational visibility that the standard dashboard lacks:

Centralized Monitoring: View telemetry for all your agents in a single Azure resource rather than checking each agent individually in Copilot Studio.

Custom Kusto Queries: Use KQL (Kusto Query Language) to run complex analyses, such as identifying common errors, measuring specific topic latency, or tracking custom events.

Real-Time Alerts: Set up proactive alerts to notify you if an agent has a high error rate, spike in latency, or fails to respond.

Enhanced Transcripts: Capture detailed message-level logs, including user prompts and agent responses, to troubleshoot specific conversation failures.


### QUESTION 34 

A company has an AI solution named Solution1 that is deployed to the production environment. Solution1 uses an Azure OpenAI model to generate marketing emails for existing customers.

During an internal review, you identify that Solution1 creates different emails depending on the customers’ traits.

You need to recommend a strategy to mitigate the bias. The strategy must adhere to Microsoft responsible AI principles.

What should you recommend?

A. Modify Solution1 to randomly generate emails for different traits.

B. Modify the system instructions of Solution1.

C. Retrain the model by using a larger dataset.

D. Modify the contents of the training dataset.

----


Correct Answer: B Section: (none) 

Explanation/Reference:

Explanation:

To reduce bias in your Azure OpenAI email generation system while adhering to Microsoft’s Responsible AI (RAI) Principles, you should implement a multi-layered approach within your System Instructions.

The goal is to move from generic prompts to specific, constraint-based instructions that enforce Fairness and Inclusiveness.


### QUESTION 35 

A company has a canvas app named App1 in a Microsoft Power Platform environment named Env1. Env1 uses a customer-managed key for data encryption. App1 connects to multiple data sources to retrieve and update customer and order information.

You need to recommend a solution to add Microsoft Copilot components to App1. 

The solution must NOT modify the current security or encryption configurations of Env1.

What should you include in the recommendation?

A. Modify the data sources of App1 to make them compatible with Copilot.

B. Duplicate App1 and republish the app in Env1.

C. Enable Copilot features for Env1.

D. Move App1 to a new environment that uses Microsoft-managed keys.


---

正确答案与详细解析

正确答案：

  - C. Enable Copilot features for Env1.（为 Env1 启用 Copilot 功能。）

解析与考点分析

为什么选 C？

1.  业务需求与限制条件：

      - 需要在 Canvas App（App1）中添加 Microsoft Copilot 组件（控件）。
      - 限制条件：绝对不能修改 Env1 当前的安全或加密配置（NOT modify the current security or encryption configurations）。当前 Env1 使用的是客户托管密钥（CMK, Customer-Managed Keys）。

2.  微软 Power Platform 配置规范：

      - 要在特定环境中的 Canvas App 中加入 Copilot 控件或让用户使用 Copilot 功能，前提条件是在 Power Platform 管理中心（PPAC） 中对该环境（Env1）开启 Copilot 特性开关（Enable Copilot features for the environment）。
      - Power Platform 完全支持在开启了 CMK（客户托管密钥）加密的环境中使用 Copilot 功能。
      - 直接为 Env1 开启 Copilot 开关，既能在不破坏现有 CMK 加密配置和安全架构的前提下满足需求，又是实现该功能的最简单、最符合规范的做法。

为什么不选其他选项？

  - A. Modify the data sources of App1 to make them compatible with Copilot（修改 App1 的数据源）： Copilot 控件能够基于 Canvas App 现有的多种标准数据源工作，无需修改或替换底层数据源。
  - B. Duplicate App1 and republish the app in Env1（复制 App1 并重新发布）： 如果环境层面的 Copilot 功能开关未开启，复制应用没有任何作用。
  - D. Move App1 to a new environment that uses Microsoft-managed keys（将 App1  迁移到使用微软托管密钥的新环境）： 这直接违背了“不修改当前加密配置”的要求，属于不必要且破坏现有安全合规性的错误操作。

----

Correct Answer: D Section: (none)

Explanation/Reference:

Explanation:

To add Microsoft Copilot components to your canvas app without changing the current environment's security or encryption (Customer-Managed Key), you should move the app to a new environment that uses Microsoft-managed keys.

Core Technical Limitation Microsoft Power Platform environments configured with a Customer-Managed Key (CMK) currently do not support certain Copilot and generative AI features. These features continue to rely on Microsoft-managed encryption keys for their specific internal data processing.


### QUESTION 37 


After you answer a question in this section, you will NOT be able to return. As a result, these questions do not appear on the Review Screen.

A company has a team that analyzes its customers by using a manual process.

You are designing an AI-based agent to automate and improve the process.

You need to recommend on which platform to build the agent. The solution must meet the following requirements:

Use generative AI to answer common questions. Provide analytics to review AI performance. Identify customer demographics.

Minimize custom development.

Solution: You recommend Microsoft Security Copilot.

Does this meet the goal?

A. Yes

B. No

Correct Answer: B Section: (none)

Explanation/Reference:

Explanation:

Correct:

* You recommend Microsoft Copilot Studio.

Copilot Studio is specifically designed to create customizable AI agents that automate business workflows with minimal coding.

Generative AI Answers: It uses "Generative Answers" to scan your specific data (websites, files, or SharePoint) to answer customer-related questions instantly.

Analytics Dashboard: It includes built-in analytics to track resolution rates, customer satisfaction (CSAT), and overall AI performance.

Customer Demographics: You can configure the agent to extract specific entities (like age, location, or industry) from conversations to build demographic profiles.'

Low-Code/No-Code: It minimizes custom development by providing a visual interface to build logic, rather than writing raw code.

Incorrect:

* You recommend GitHub Copilot.

* You recommend Microsoft Security Copilot.


Low-Code/No-Code: It minimizes custom development by providing a visual interface to build logic, rather than writing raw code.

Incorrect:

* You recommend GitHub Copilot.

* You recommend Microsoft Security Copilot.


### QUESTION 38

After you answer a question in this section, you will NOT be able to return. As a result, these questions do not appear on the Review Screen.

A company has a team that analyzes its customers by using a manual process.

You are designing an AI-based agent to automate and improve the process.

You need to recommend on which platform to build the agent. The solution must meet the following requirements:

Use generative AI to answer common questions. Provide analytics to review AI performance. Identify customer demographics.

Minimize custom development.

Solution: You recommend Microsoft Copilot Studio.

Does this meet the goal?

A. Yes

B. No


----

Correct Answer: A Section: (none)

Explanation/Reference:

Explanation:

Correct:

* You recommend Microsoft Copilot Studio.

Copilot Studio is specifically designed to create customizable AI agents that automate business workflows with minimal coding.

Generative AI Answers: It uses "Generative Answers" to scan your specific data (websites, files, or SharePoint) to answer customer-related questions instantly.

Analytics Dashboard: It includes built-in analytics to track resolution rates, customer satisfaction (CSAT), and overall AI performance.

Customer Demographics: You can configure the agent to extract specific entities (like age, location, or industry) from conversations to build demographic profiles.' Low-Code/No-Code: It minimizes custom development by providing a visual interface to build logic, rather than writing raw code.

Incorrect:

* You recommend GitHub Copilot.

* You recommend Microsoft Security Copilot.


### QUESTION 39 

A company uses multiple Microsoft Copilot Studio agents across different channels.

You need to recommend a monitoring solution that provides comprehensive telemetry data and performance insights for the agents.

What should you include in the recommendation?

A. Microsoft Power BI

B. the Analytics tab in Copilot Studio

C. Log Analytics

D. Azure Advisor

Correct Answer: A Section: (none)

Explanation/Reference:

Explanation:

Correct:

* Application Insights To achieve comprehensive monitoring, telemetry, and performance insights for Microsoft Copilot Studio agents across different channels, you should integrate them with Azure Application Insights.

Integrating Application Insights provides a centralized view of agent health, user interactions, topic performance, and latency, which is crucial for monitoring multi-channel deployments.

* Microsoft Power BI is the best tool for monitoring comprehensive telemetry data and performance insights across multiple Copilot Studio agents and various channels.

Analytics tab within Copilot Studio offers quick, high-level insights for individual agents, Power BI provides the necessary scalability for enterprise-level, multi-agent monitoring.

Centralized Multi-Agent View: Power BI allows you to create custom dashboards that aggregate data from multiple agents and environments (e.g., using the Power-CAT Agent Insights Hub).

Deep Telemetry Integration: Power BI can ingest detailed session data and chat transcripts, enabling deep analysis of topic triggers, tool execution, and user satisfaction (CSAT) across channels.

Customization and Reporting: You can leverage Power BI templates, such as the Copilot Studio agent report, to analyze trends over long periods, which the built-in analytics tab does not support.Enhanced Monitoring with Application Insights: By connecting agents to Azure

*-> Application Insights, you can export detailed telemetry to Power BI for comprehensive, long-term monitoring, including conversation transcripts and custom events.

Incorrect:

* Azure Advisor * Azure DevOps * Log Analytics * Microsoft Dynamics 365 Customer Voice * Microsoft Purview * the Analytics tab in Copilot Studio The built-in Analytics tab within Copilot Studio offers quick, high-level insights for individual agents only.