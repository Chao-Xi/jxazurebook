# 1 AI Agent Builder Associate (AB-620)

## AGENDA

**Agent Orchestration**

- 3 Pieces of Every Agent
- Agent Ecosystem
- Perfecting Performance

**Agent Knowledge**

- Copilot Connectors
- Generative Answers
- Content Moderation

**Agent Tools**

- Inputs & Outputs
- Authentication
- What is Available

**Evaluations & ALM**

- Evaluations
- Environments
- Solutions

## 1 WHAT IS AGENT ORCHESTRATION?

Agent orchestration is the process of coordinating **multiple specialized tools, capabilities, and Al agents** to work together efficiently on **complex tasks, ensuring seamless collaboration, task allocation, and workflow management.**

### 1-1 3 PIECES OF EVERY AGENT

#### **Knowledge**

**Knowledge sources ground your agent's responses in authoritative information from the content and data sources you configure.** 

Knowledge sources are the integration type for answering questions.

#### Tools

**Tools enable your agent to take action in external systems.** 

Tools are the integration type for doing things.

#### Agents

**Agents allow your agent to delegate tasks to other specialized agents.** 

Agent connections are the integration type for handing off reasoning.

### 1-2 AGENT ORCHESTRATION

#### AGENT LEVEL

- You can add **knowledge, tools, and agents directly to your agent**
- This gives the model (or orchestrator) the ability to call on that resource when it thinks it is necessary
- **Some tools can only be called by the agent**
- *More Indeterministic*

#### TOPIC/NODE LEVEL

- You can add **knowledge, tools, and agents to the flow of a topic**
- This gives you, the author, **the ability to define when specific resources are called on**
- Some tools can only be called inside a topic
- More **Deterministic**

### 1-3 AGENT ORCHESTRATION

#### CHILD AGENTS

- A child agent is a focused workflow created directly **within your parent agent in Copilot Studio**.
- **Child agents have their own set of instructions, tools, and knowledge**, and the **parent agent calls it as a subroutine when a relevant request arrives.**
- **Child agents share the parent's context, which makes passing conversation state and variables between them straightforward**
- They don't have an independent publishing lifecycle, so when you update or deploy the parent, the children go with it.
- **The same team that builds the parent agent co-owns and co-manages all its child agents.**

#### CONNECTED AGENTS

- A connected agent is a separately published agent with its **own orchestration, tools, knowledge, and deployment lifecycle.**
- **From your main agent's perspective, a connected agent looks like a "tool with a description”:**
  - your agent routes to it based on that description, and the connected agent uses its own reasoning layer to handle what's been delegated.
- Connected agents can be owned by a different team, released through standard/release processes, and made available to the orchestrating agent.

#### **CHILD AGENTS**

Build child agents when:

- Your team builds and maintains the full agent solution
- **Components don't need to be published separately or accessed directly by users**
- **No separate authentication, model configuration, or ALM process is required**
- **The capabilities are specific to this solution and won't be reused by other agents**

#### **CONNECTED AGENTS**

Build connected agents when:

- Another team already owns and maintains the capability you need
- The agent is already published and should continue operating independently
- You need separate deployment, configuration, or testing cycles for that component
- The capability should be reusable a orchestrators

### 1-3 AGENT2AGENT PROTOCOL

The **AgentAgent (A2A)** protocol is an open standard for agent-to-agent communication across platform boundaries.

A2A is purpose-built for agent-to-agent delegation: 

scenarios where one agent needs to hand off a task to **another agent that manages its own reasoning, tools, and responses independently.**

When a Copilot Studio orchestrator connects to an **A2A-enabled agent, it doesn't call a function and receive a value back**. 

**Instead, it delegates to the external agent that works through it using its own capabilities and its own logic, and returns an agent-generated response.**


#### CONNECTED AGENTS


Because the Connected Agent is completely separate from the Parent Agent, **the prompt is processed a second time by the Connected Agent.**

This means:

- Higher Token Usage
- Delays in Performance

Child agents do not have this consideration.

### 1-4 IS YOUR AGENT CALLING INCORRECT RESOURCES?

- **Update resource descriptions**

The names and descriptions of tools is what tells the agent when to call on each resource.

- **Segment tasks into child or connected agents**

If your agent has access to too many options, **it has a higher likelihood of making a mistake**.


#### UPDATE RESOURCE DESCRIPTIONS

- **If your agent isn't using the right tools, knowledge, or resources, review their descriptions**.
  - Clear descriptions help the agent understand when each item should be used.
- **The agent doesn't rely on names alone**.
- **Think of descriptions as instructions for the agent.**
  - The more accurate and specific they are, the more likely the agent is to select the correct resource at the right time.
- **Poor descriptions can lead to missed or incorrect resource calls.**
  - Updating them can significantly improve your agent's responses and behavior.

> When a prompt routes to the wrong child agent, the activity map shows which agent was called instead.
>
> For Fabrikam, the prompt "Can I track my package?" unexpectedly calls a different agent rather than Order Status.
>
> A closer look at the descriptions reveals why: "track" and "package" appear in another agent's description but not in Order Status's,
>
> so the orchestrator found the closest textual match and chose incorrectly.

### 1-5 SEGMENT TASKS TO RELATED AGENTS

- The most reliable signal that **a multi-agent architecture is worth considering is routing accuracy degradation in your main agent**.
- As a rule of thumb, when an agent reaches 30-40 choices of action (including topics, tools, and connected agents), the orchestration layer starts to struggle with precision.
- **This threshold isn't a hard limit, and agents with fewer actions but similarly described tools can hit the same ceiling**.
- It's a practical threshold, and one you should validate against your own evaluations.



## 2 AGENT KNOWLEDGE

### 2-1 POWER PLATFORM CONNECTORS

- Real-time knowledge
- **The connector reaches out to the source system on demand**.
- Instead of replicating data into Microsoft Graph, **each query triggers a live API call through the connector at the moment the agent needs an
answer.**
- **No data moves into Microsoft 365.**

### 2-2 COPILOT CONNECTORS

- **<mark>Ingesting and semantically indexing external content into Microsoft Graph</mark>**.
- **Because the content lives in the Graph index, agents retrieve it using semantic search and can cite specific items in their responses.**
- **An administrator must configure the Copilot connector in the Microsoft 365 admin center before you**, as a maker, can add it to an agent.
- Think of Copilot connectors as a "search and index" pattern:
  - **content is ingested once and becomes broadly searchable and citable across Microsoft 365 experiences.**


### 2-3 GENERATIVE ANSWERS

- **You can only use generative answers inside of topics**.
- When a user asks a question, t**he node searches configured knowledge sources and generates a grounded response**.
- When using generative answers, you are effectively answering, " What does our content say about this?"
- The output is always drawn from a defined corpus of information.
- When a generative answers node has its own sources configured, those sources take priority over the agent-level sources for that node.
  - <mark>**Agent-level sources act as a fallback, used only when a node has no sources of its own**.</mark>


### 2-4 AZURE AI SEARCH

**Description:** **A retrieval service that enables agents to ground responses using indexed enterprise content** for more accurate and relevant answers.


#### Business Value / When to Use

- Used when organizations maintain their own search indexes and vector stores.
- **Improves answer quality through Retrieval Augmented Generation (RAG).**
- **Ideal for large document repositories and enterprise knowledge bases.**
- **Supports highly relevant responses using semantic and vector search.**

#### **Exam Tips & Gotchas**

- Used when content exists outside Microsoft Graph.
- Often selected when organizations have already invested in Azure search infrastructure.
- Focuses on helping agents answer questions, not perform actions.



### 2-5 CONTENT MODERATION


In Copilot Studio, Content Moderation is the safety layer that evaluates both user inputs and Al-generated outputs **to help prevent harmful, unsafe, offensive, or policy-violating content from entering or leaving your agent.**

You'll encounter content moderation in several places:

- **Agent-level Generative Al settings**
- **Al Prompt tools (Prompt Builder)**
- Generative Answer nodes


Microsoft states that content is evaluated both:

- **When the user submits a prompt/input**.
- Before the Al response is returned to the user.

## **3 Agent Tools**

### 3-1 UNDERSTANDING & INPUTS & OUTPUTS

Every action an agent **performs requires inputs and produces outputs** -variables and topics allow you to capture, store, transform, and reuse that information throughout the conversation.

#### **How it works**

1. **Gather Inputs** - Collect information from users through conversation, questions, previous actions, or adaptive cards.
2. **Store in Variables** - Use topic variables and global variables to hold user responses, action parameters, and business data.
3. **Execute Actions** - Pass variables as inputs to tools.
4. **Capture Outputs** - Store returned values such as records, status codes, approvals, or summaries in variables.
5. **Transform and Reuse** -** Format, parse, combine, conditionally evaluate, or enrich outputs before presenting them to users or the next action.**

**For example:**

- User provides an Employee ID.
- Store Employee ID in a variable.
- **Pass the variable to an HR connector action**.
- Capture the employee record returned by the connector.
- **Extract the employee name, department, and manager.**
- Use those values in subsequent actions or responses.

> EVERY TOOL MUST AUTHENTICATE WITH THE SYSTEM IT IS CALLING.

HOW IS ACCESS TO EACH TOOL MANAGED?

#### **Run as the Maker (Maker Connection)**

How it works: The action executes using the credentials or connection owned by the agent creator. **All users leverage the same underlying access context.**

#### **Business Value:** 

- Simplifies access to shared systems.
- Allows users to interact with data sources they may not have direct access to.

### 3-2 Run as a Service Account Connection) (Application Identity)

- **How it works:**

**Actions execute using a dedicated service principal, managed identity, or service account rather than an individual person**.


- **Business Value:**

  - Most scalable and enterprise-ready option.
  - Eliminates dependency on a specific employee account.


### 3-3 AUTHENTICATION

#### No Authentication

No credentials are required and suitable for **when the target endpoint is publicly accessible.**

#### Auth 2.0 (Most Common)

Users sign in with their Microsoft Entra ID and access tokens are issued and used when the agent executes actions.

#### API Key Authentication

A static API key is passed with each request that identifies the application rather than the individual user.


### 3-4 AGENT TOOLS

- **Connectors**

Prebuilt integrations that allow a Copilot Studio agent to **securely access data and perform actions in Microsoft and third-party applications**.

- **Custom Connectors**

User-defined connectors that **expose proprietary, internal, or unsupported APis as tools that an agent can invoke**.

- **MCP**

Standardized tool endpoints that allow agents to discover and interact with external systems, data sources, and capabilities through the **Model Context Protocol.**

- **Agent Flows**

Structured, automated workflows that allow agents to execute business processes, orchestrate actions, and manage complex tasks across systems.

- **REST APIs and HTTP**

Direct web service calls that enable agents to interact with virtually any application or service that expose an HTTP-based API.

- **AgentAgent Protocol**

A communication framework that allows one Al agent to securely collaborate, delegate tasks, and exchange information with other agents.


### 3-5 CONNECTORS

**Description** Prebuilt integrations that allow a Copilot Studio agent to securely **access data and perform actions in Microsoft and third-party applications.**

**Business Value / When to Use**

- Fastest way to integrate with existing business systems.
- Ideal when a Microsoft or Power Platform connector already exists.
- Allows agents to perform actions such as creating tickets, sending emails, updating records, or retrieving business data.
- Common examples include Outlook, Teams, SharePoint, Dataverse, Salesforce, ServiceNow, and Dynamics 365.


**Exam Tips & Gotchas**

- Always check whether a prebuilt connector exists before considering a custom connector or API integration.
- **Connectors can use End User Authentication or Maker-Provided Authentication**.
- **Power Platform connectors provide real-time access to data at runtime.**
- **Authentication strategy is an important design consideration during solution planning**.

### 3-6 REST API

**Description:** 

- Reusable agent tools that expose an external application's functionality through 

- REST endpoints, allowing Copilot Studio to invoke business capabilities and exchange structured data.

#### **Business Value / When to Use**

- **Expose application capabilities as reusable agent tools**.
- Allow orchestration to dynamically determine when an API should be called.
- Reduce the need to build extensive topic logic for external system interactions.
- **Execute agent-specific integrations**


#### Exam Tips & Gotchas

- **REST APIs are exposed as agent-level tools that can be reused across conversations and topics.**
- **Most enterprise systems expose REST APIs.
- REST APIs can accept inputs and return structured outputs that become agent variables.
- Authentication considerations (Auth, API Keys, Service Principals) are often part of the design.

### 3-7 HTTP

**Description:** A direct integration method that allows topics and agent flows to send web requests to external services **using HTTP methods such as GET, POST, PUT, and DELETE.**

**Business Value / When to Use**

- Rapidly integrate with an external endpoint.
- Call APIs when a connector doesn't exist without building reusable assets.
- Prototype integrations before investing in a custom connector.
- Integrate with niche or internal applications

**Exam Tips & Gotchas**

- **HTTP requests are often implemented directly within Topics**.
- The maker is responsible for defining: **URL, HTTP Method, Headers, Authentication, Request Body, Response Handling**
- API responses frequently need parsing and transformation before use.
- HTTP requests as a good option when:
  - No connector exists,
  - A simple API call is needed,
  - The integration is not expected to be broadly reused


### 3-8 CONNECTORS

#### Custom Connectors

When multiple components (apps, flows, agents, etc.) need to use it.

#### REST APIs

When one agent needs to use it multiple times.

#### HTTP

When one agent needs to only use it once.(and it is not foreseeable for this to change)

### 3-9 MODEL CONTEXT PROTOCOL (MCP)

Description: **Standardized tool endpoints that allow agents to discover and interact with external systems, data sources, and capabilities through the Model Context Protocol**.

**Business Value / When to Use**


- **Provides a standardized mechanism for exposing tools to Al agents**.
- Reduces custom integration work.
- Promotes interoperability between Al systems and enterprise capabilities.
- **Enables agents to discover available tools and invoke them dynamically**.

**Exam Tips & Gotchas**

- MCP is about tool access and capability exposure in a scalable way.
- **You configure MCP tools directly within Copilot Studio.**
- **MCP is rapidly becoming a preferred integration standard for Al systems**.

### 3-10 AGENT FLOWS

Description: **Structured, automated workflows that allow agents to execute business Processes, orchestrate actions, and manage complex tasks across systems.**

#### Business Value / When to Use

- **Best for multi-step business processes**.
- **Coordinates actions across multiple systems**.
- **Enables approvals, human-in-the-loop scenarios, and automation.**
- Allows logic, branching, error handling, and orchestration to be separated from the conversation layer.

#### Exam Tips & Gotchas

- Agent Flows **can accept inputs and return outputs to topics.**
- Agent Flows **must respond back to the agent within approximately 100 seconds**.
- **A flow can return a response early while additional processing continues in the background**.
- Error handling should be incorporated into flow design.
- **Think of Agent Flows as the "process automation" layer.**


<mark>**BE CAUTIOUS OF AGENT FLOW TIMEOUT.  (100 SECONDS)**</mark>

### 3-11 AGENTAGENT PROTOCOL

Description: A communication framework that allows one Al agent to securely collaborate, delegate tasks, and exchange information with other agents.

#### Business Value / When to Use

- Enables multi-agent architectures.
- **Allows specialized agents to perform work on behalf of another agent**.
- Creates scalable agent ecosystems where agents focus on specific domains.
- **Useful when individual agents become too large or too complex.**

#### Exam Tips & Gotchas

- A2A is an open standard for agent-to-agent communication.
- When using A2A, the task is fully delegated to the target agent.
- The target agent is responsible for reasoning, execution, security, and tool usage.
- Key concepts:
  - **Agent Cards = Agent metadata and capabilities (Usually located at /.well-known/agent.json)**
  - **Tasks = Unit of work being delegated**
  - **Context IDs = Conversation tracking across agent boundaries**

> What do you do AFTER building your agent?



## 4 EVALUATIONS

- Run evaluations and analyze the results to **optimize your agent's behavior and validate that your agent meets your business and quality requirements.**
- You can also run a test set multiple times **to see changes over time as you improve your agent.**
- **An evaluation takes a few minutes to run. Test results are processed in real-time, line by line**.
- You see the result of each evaluation test case appear sequentially as they're generated.
- Live processing of test cases gives you immediate visibility into quality trends and potential failures while the evaluation is running.


### 4-1 EVALUATIONS

These questions came a surprised and were the most challenging (at least in my opinion)

(Exercise) Ask yourself:

### 4-2 ENVIRONMENTS

**Environments are isolated containers within Power Platform that store and manage your Copilot Studio agents, flows, connections, Dataverse data, and related components.**

Why they matter for ALM:

- Separate development, testing, and production workloads.
- Enable safe testing without impacting production users.
- Help enforce governance, security, compliance, anc access controls.
- Support solution-based deployments and promotion between environments.
- Provide environment-specific configurations through environment variables.

### 4-3 UNDERSTANDING SOLUTIONS

**Solutions are the primary ALM mechanism in Power Platform, used to package, transport, and manage Copilot Studio agents and related components across environments.**

- **Unmanaged Solutions**:
  - Used during development and allow makers to modify components.
- **Managed Solutions**
  - Used for production deployments and protect deployed components from direct modification.


> All Solutions should be exported as MANAGED
>
> You cannot "convert" solutions to managed.
>
> This option is selected on export and cannot be changed.


### 4-4 ENVIRONMENT VARIABLES

Environment Variables allow you to store configuration values separately from your agent's logic, making solutions portable across Development, Test, and Production environments.

Instead of hard-coding values such as URLs, IDs, API endpoints, or configuration settings, your agent references a variable whose value can change from one environment to another.

**Common Use Cases**

- API endpoints
- Service URLs
- SharePoint site addresses
- Azure resource names
- Agent configuration settings
- Dataverse table references
- Feature flags
- Custom connector configuration

> Not all environment variables behave the same way when their values change.

### 4-5 ENVIRONMENT VARIABLES

#### Non-Secret Environment Variables

**Purpose**: Store standard (not sensitive) configuration values.

**Examples include**: API URLs, SharePoint site URLs, Environment names, Feature flags, Dataverse table names

**When the Value Changes**

- After updating a non-secret environment variable, the change is not immediately reflected in a live Copilot Studio agent.
- The agent must be republished for the updated value to be incorporated into the published version of the agent.

#### Secret Environment Variables

**Purpose**: Store sensitive values securely.

**Examples include**: API Keys, Client Secrets, Access Tokens, Integration Credentials

**When the Value Changes**

- Unlike standard environment variables, secret environment variable updates are typically available immediately to actions and connections that reference them.
- No agent republishing is required.


## 目录

1. 智能体编排（Agent Orchestration）
2. 智能体知识（Agent Knowledge）
3. 智能体工具（Agent Tools）
4. 评估与应用生命周期管理（Evaluations & ALM）


## 1. 智能体编排（Agent Orchestration）

### 1.1 什么是智能体编排？

智能体编排是**协调多个专业化工具、能力和 AI 智能体协同工作**的过程，以高效完成复杂任务，确保无缝协作、任务分配和工作流管理。

### 1.2 每个智能体的三大组成

| 组成 | 作用 | 集成类型 |
|------|------|----------|
| **知识（Knowledge）** | 将智能体回答**扎根于**权威信息源 | 用于"回答问题"的集成 |
| **工具（Tools）** | 让智能体在外部系统中**执行操作** | 用于"做事"的集成 |
| **智能体（Agents）** | 将任务**委托**给其他专业智能体 | 用于"交接推理"的集成 |

### 1.3 编排的两个层级

**智能体级别（Agent Level）**

- **直接在智能体上添加知识、工具和智能体**
- 由模型（编排器）自行判断何时调用资源
- **部分工具只能在智能体级别调用**
- **更不确定（Indeterministic）**

**主题/节点级别（Topic/Node Level）**

- 在主题流程中添加知识、工具和智能体
- 由**作者**定义何时调用特定资源
- 部分工具只能在主题内调用
- **更确定（Deterministic）**

### 1.4 子智能体 vs 连接智能体（重点考点）

| 对比项 | 子智能体（Child Agent） | 连接智能体（Connected Agent） |
|--------|------------------------|------------------------------|
| 定义 | 在父智能体内直接创建的聚焦工作流 | 独立发布的智能体，有自己的编排、工具、知识和部署生命周期 |
| 上下文 | 共享父智能体上下文，状态/变量传递简单 | 完全独立，提示会被**二次处理** |
| 发布生命周期 | 无独立发布周期，随父智能体一起部署 | 独立发布、独立部署 |
| 归属 | 同一团队共同拥有和管理 | 可由不同团队拥有 |
| 对父智能体而言 | 子程序（subroutine） | "带描述的工具"——按描述路由 |

**何时用子智能体：**

- 团队构建并维护完整解决方案
- 组件无需单独发布或直接供用户访问
- 无需单独认证、模型配置或 ALM 流程
- 能力专属本解决方案，不会被其他智能体复用

**何时用连接智能体：**

- 能力已由其他团队拥有和维护
- 智能体已发布，应继续独立运行
- 需要单独的部署、配置或测试周期
- 能力应可被多个编排器复用

**连接智能体的代价（考点）：**

- 提示被连接智能体二次处理 → **更高的 Token 消耗** + **性能延迟**
- 子智能体没有这个问题

### 1.5 Agent2Agent 协议（A2A）

- **开放标准**，用于跨平台边界的智能体间通信
- 专为**智能体间委托**设计：一个智能体将任务交给另一个拥有自己推理、工具和响应的智能体
- Copilot Studio 编排器连接 A2A 智能体时，**不是调用函数拿返回值**，而是委托给外部智能体，由其用自己的能力处理并返回智能体生成的响应

**核心概念（考点）：**

- **Agent Cards** = 智能体元数据和能力（通常位于 `/well-known/agent.json`）
- **Tasks** = 被委托的工作单元
- **Context IDs** = 跨智能体边界的对话跟踪

### 1.6 智能体调用了错误的资源怎么办？

**方法一：更新资源描述**

- 智能体不只依赖名称，**描述就是给智能体的指令**
- 描述越准确具体，越可能选对资源；描述差会导致漏调或错调
- 当提示路由到错误的子智能体时，**活动图（Activity Map）**会显示实际调用了哪个智能体

**方法二：将任务拆分到子/连接智能体**

- **经验法则：当智能体达到 30–40 个动作选项（主题、工具、连接智能体）时，编排层开始难以保证精度**
- 这不是硬性上限；动作更少但描述相似的智能体也可能触顶
- 应结合自己的评估验证该阈值

## 2. 智能体知识（Agent Knowledge）

### 2.1 Power Platform 连接器（实时知识）

- 按需实时访问源系统，**不复制数据**到 Microsoft Graph
- 每次查询触发连接器的实时 API 调用
- 数据不进入 Microsoft 365

### 2.2 Copilot 连接器（摄取 + 语义索引）

- 将外部内容**摄取并语义索引**到 Microsoft Graph
- 内容存在于 Graph 索引中，智能体用**语义搜索**检索并可**引用**具体条目
- **管理员必须先**在 Microsoft 365 管理中心配置 Copilot 连接器，制作者才能将其添加到智能体
- 模式："搜索与索引"——内容摄取一次，即可在 Microsoft 365 体验中广泛搜索和引用

### 2.3 生成式答案（Generative Answers）

- **只能在主题（Topic）内使用**
- 节点搜索已配置的知识源并生成有依据的响应
- 本质是回答："我们的内容对此怎么说？"——输出始终来自**定义好的语料库**
- **源优先级（考点）：**
  - 节点有自己的源时，**节点源优先于智能体级源**
  - 智能体级源作为**回退（fallback）**，仅在节点无自己的源时使用

### 2.4 Azure AI Search

- **描述：** 检索服务，让智能体用已索引的企业内容扎根响应，获得更准确相关的答案
- **业务价值/何时使用：**
  - 组织维护自己的搜索索引和向量存储时
  - 通过 **RAG（检索增强生成）**提升答案质量
  - 适合大型文档库和企业知识库
  - 支持语义和向量搜索
- **考试提示与陷阱：**
  - 内容存在于 **Microsoft Graph 之外**时使用
  - 组织已投资 Azure 搜索基础设施时常选
  - 重点是帮智能体**回答问题**，不是执行操作

### 2.5 内容审核（Content Moderation）

- Copilot Studio 中的**安全层**，评估用户输入和 AI 生成输出，防止有害、不安全、冒犯或违规内容进出智能体
- 出现位置：
  - 智能体级生成式 AI 设置
  - AI Prompt 工具（Prompt Builder）
  - 生成式答案节点
- Microsoft 规定内容在**两个时机**被评估：
  1. 用户提交提示/输入时
  2. AI 响应返回用户之前

## 3. 智能体工具（Agent Tools）

### 3.1 输入与输出（Inputs & Outputs）

每个动作都需要输入并产生输出——变量和主题用于捕获、存储、转换和复用信息。

**工作流程：**

1. **收集输入**——通过对话、问题、先前动作或自适应卡片
2. **存入变量**——主题变量和全局变量保存用户响应、动作参数、业务数据
3. **执行动作**——将变量作为输入传给工具
4. **捕获输出**——将记录、状态码、审批、摘要等存入变量
5. **转换与复用**——格式化、解析、组合、条件判断或丰富输出后再呈现或传给下一动作

**示例：** 用户提供员工 ID → 存入变量 → 传给 HR 连接器动作 → 捕获返回的员工记录 → 提取姓名、部门、经理 → 用于后续动作或响应。

> **每个工具都必须向所调用的系统进行身份验证。**

### 3.2 工具访问权限管理（两种模式）

**以制作者身份运行（Maker Connection）**

- 使用智能体创建者拥有的凭据/连接执行
- 所有用户共享同一底层访问上下文
- 价值：简化共享系统访问；让用户能与无直接访问权限的数据源交互

**以服务账户运行（Application Identity）**

- 使用专用服务主体、托管标识或服务账户执行，而非个人
- 价值：**最具扩展性和企业就绪**；消除对特定员工账户的依赖

### 3.3 身份验证方式

| 方式 | 说明 |
|------|------|
| **无身份验证** | 目标端点公开可访问时适用 |
| **Auth 2.0（最常见）** | 用户用 Microsoft Entra ID 登录，签发并使用访问令牌 |
| **API 密钥** | 每次请求携带静态 API 密钥，标识**应用**而非个人用户 |

### 3.4 智能体工具全景

- **连接器（Connectors）**——预构建集成，安全访问 Microsoft 及第三方应用
- **自定义连接器（Custom Connectors）**——将专有、内部或不支持的 API 暴露为工具
- **MCP**——标准化工具端点，通过 Model Context Protocol 发现和交互外部系统
- **智能体流（Agent Flows）**——结构化自动工作流，执行业务流程、编排动作
- **REST API 和 HTTP**——直接 Web 服务调用，几乎可对接任何 HTTP API
- **Agent2Agent 协议**——智能体间安全协作、委托任务、交换信息

### 3.5 各工具详解与选择

**连接器（Connectors）**

- 集成现有业务系统**最快**的方式；已有 Microsoft/Power Platform 连接器时首选
- 常见：Outlook、Teams、SharePoint、Dataverse、Salesforce、ServiceNow、Dynamics 365
- **考点：** 考虑自定义连接器或 API 前，**先检查是否有预构建连接器**；支持终端用户认证或制作者提供认证；运行时实时访问数据

**REST API**

- 通过 REST 端点将外部应用功能暴露为**可复用**的智能体工具
- 智能体级工具，可跨对话和主题复用；可接受输入、返回结构化输出成为智能体变量
- 认证（Auth、API Key、服务主体）常是设计的一部分

**HTTP**

- 主题和智能体流直接用 GET/POST/PUT/DELETE 发送 Web 请求
- **制作者负责定义：** URL、HTTP 方法、请求头、认证、请求体、响应处理
- API 响应常需解析和转换
- 适用：无连接器、只需简单 API 调用、集成不预期广泛复用

**三者选择口诀（考点）：**

- **自定义连接器** → 多个组件（应用、流、智能体等）都要用
- **REST API** → 一个智能体要**多次**使用
- **HTTP** → 一个智能体只**用一次**（且预计不会改变）

**MCP（Model Context Protocol）**

- 标准化工具端点，让智能体发现并动态调用外部系统能力
- 价值：标准化工具暴露机制、减少自定义集成、促进互操作、支持动态发现工具
- 在 Copilot Studio 中直接配置 MCP 工具；正快速成为 AI 系统首选集成标准

**智能体流（Agent Flows）**

- 适合**多步骤业务流程**；跨系统协调动作；支持审批、人在回路、自动化
- 将逻辑、分支、错误处理、编排与对话层分离
- **考点（重要）：**
  - 可接受输入并向主题返回输出
  - **必须在约 100 秒内响应智能体**（警惕超时！）
  - 流程可**提前返回响应**，后台继续处理
  - 设计中应包含错误处理
  - 定位为"流程自动化层"

**Agent2Agent 协议（A2A）**
- 支持多智能体架构；专业智能体代另一智能体工作；构建可扩展智能体生态
- 单个智能体过大或过复杂时适用
- **考点：** 开放标准；任务**完全委托**给目标智能体，由其负责推理、执行、安全和工具使用

## 4. 评估与应用生命周期管理（Evaluations & ALM）

### 4.1 评估（Evaluations）

- 运行评估并分析结果，优化智能体行为，验证其满足业务和质量要求
- 可多次运行同一测试集，观察改进随时间的变化
- **评估只需几分钟**；测试结果**实时逐行处理**
- 每个测试用例结果按顺序生成显示——运行中即可即时洞察质量趋势和潜在失败

### 4.2 环境（Environments）

- Power Platform 中的**隔离容器**，存储和管理智能体、流、连接、Dataverse 数据等
- 对 ALM 的意义：
  - 分离开发、测试、生产工作负载
  - 安全测试不影响生产用户
  - 强制治理、安全、合规和访问控制
  - 支持基于解决方案的部署和环境间提升
  - 通过环境变量提供环境特定配置

### 4.3 解决方案（Solutions）

- Power Platform 中的**主要 ALM 机制**，用于打包、传输和管理智能体及相关组件
- **非托管解决方案（Unmanaged）**：开发期间使用，允许制作者修改组件
- **托管解决方案（Managed）**：生产部署使用，保护已部署组件不被直接修改
- **所有解决方案都应导出为托管（Managed）**
- **不能"转换"为托管**——此选项在**导出时**选择，之后不可更改（考点）

### 4.4 环境变量（Environment Variables）

- 将配置值与智能体逻辑分离，使解决方案可在开发/测试/生产间移植
- 避免硬编码 URL、ID、API 端点等
- **常见用途：** API 端点、服务 URL、SharePoint 站点地址、Azure 资源名、智能体配置、Dataverse 表引用、功能标志、自定义连接器配置
- **并非所有环境变量在值变更时行为相同**（考点）

### 4.5 非机密 vs 机密环境变量（重点考点）

| 类型 | 用途 | 示例 | 值变更后的行为 |
|------|------|------|----------------|
| **非机密** | 标准（非敏感）配置 | API URL、SharePoint 站点 URL、环境名、功能标志、Dataverse 表名 | **不会立即生效**，必须**重新发布智能体** |
| **机密** | 安全存储敏感值 | API 密钥、客户端密钥、访问令牌、集成凭据 | **通常立即可用**，引用它们的动作和连接**无需重新发布** |


