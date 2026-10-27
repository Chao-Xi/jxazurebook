# AB-620 Designing and Building Integrated AI Agent Solutions Studio in Copilot

## Testlet 1 Case Study

**Background**

Blue Yonder Airlines is a global carrier headquartered in Los Angeles, California, operating domestic and international flights. The company serves millions of passengers annually through its website, mobile app, and call centers. To improve customer service efficiency and reduce call center volume, Blue Yonder is deploying an AI agent in Microsoft Copilot Studio.

**The agent will handle customer inquiries across multiple channels – web chat, mobile app, and Microsoft Teams (for internal support staff)**. It will answer questions, retrieve data from enterprise systems, and escalate to human agents when needed.


The project is led by a cross-function team:

* **Product manager**: Defines requirements and success metrics.

* **Lead agent author**: Designs topics, intents, and generative behavior.

* **Flow designers**: Build agent flows and integrations.

* **IT/security and compliance:** Oversees identity, data protection, and Responsible AI (RAI) compliance.

**Current environment**

Channels

* **Public website**: Embedded web chat 
* **Mobile app:** In-app chatbot 
* **Microsoft Teams**: Internal support agent access

**Identity and access**

* **Customers**: Anonymous access for general inquiries (e.g., flight status, baggage policy). 
* Authentication is required for personal data access (e.g., bookings, loyalty points). 
* **Internal staff: Authenticate via Microsoft Entra ID.**


**Data sources**


- **Reservation and Ticketing System (internal):** REST API, no prebuilt connector with custom enterprise database.
- **Flight Status and Weather APIs (external)**: REST APIs with API keys.
- **Customer Support Knowledge Base**: SharePoint library with PDFs and policy documents. Loyalty Program Data: Stored in Dynamics 365 and Dataverse.
- **Travel Advisory Content**: Uses REST API with partner services.


**Integration mechanisms**

* Custom connectors must be used for internal APIs that lack prebuilt connectors. 
* HTTP request nodes may be used for lightweight external APIs.
* Knowledge sources must be used for unstructured content.
* Agent flows must be used to encapsulate reusable logic (e.g., rebooking).


**Business requirements**

**Omnichannel support**

Deploy the agent across web, mobile, and Teams with a consistent user experience. The Teams deployment must also support internal staff.


**Self-service capabilities** 


- The agent must handle common inquiries such as:

- Flight status

- Booking and rebooking

- Loyalty program questions

- Travel policies and baggage rules


**Human escalation** 

- If the agent cannot resolve an issue or the user requests help, it must:
- Escalate to a human agent.
- Transfer the conversation transcript and relevant context.
- Redact any sensitive personal data before escalation.


**Knowledge integration**

The agent must use scalable methods for knowledge integration and must not rely on manually authored Q&A topics for each document.


**Performance metrics**

- **First-contact resolution:** +25% 
- **Tier-1 call deflection**: ≥20% 
- **Response time**: 90% of queries answered within 30 seconds 
- **Accuracy**: ≥95% for known FAQs 
- **CSAT**: ≥85% for AI-handled interactions


**Technical requirements** 

**Platform constraints**

* No custom code is permitted; only Copilot Studio's built-in tools may be used.
* All backend logic must be implemented using agent flows.
* Markdown must be used for formatting (e.g., bold, bullet points); HTML is not supported.

**Authentication** 

- Sign-in is required for personal data access.
- Anonymous access is allowed for general inquiries.
- User identity must be used for data access; shared or builder credentials must not be used.

**Compliance and security**

- Power Platform DLP policies must be enforced to block unauthorized data flows.
- Responsible AI content moderation filters must be enabled.
- Prompt modifications must be added to enforce tone, disclaimers, and refusal behavior. 
- Disclaimers must be applied consistently across all generative responses. Manual edits to individual topics must be avoided.


**Monitoring and maintenance**

* All conversations and actions must be logged for auditing.
* Weekly reviews of transcripts and metrics must be conducted.
* Topics, flows, and knowledge sources must be updated as policies or systems evolve.


**Issues and constraints**

* **API rate limits:** External APIs (e.g., flight status) have usage limits. Agent flows must handle retries and caching to avoid exceeding quotas.

* **Knowledge base limits:** Copilot Studio has limits on the number and size of indexed documents. Large files must be split or summarized.
 
* **Generative answer risks:** Generative responses must be constrained to avoid policy violations. Prompt modifications and filters must be used to enforce tone, safety, and compliance.
 
* **User input variability:** Users phrase questions in diverse ways. Topics must include varied trigger phrases and fallback handling.
 
* **Authentication UX:** The agent must clearly explain when sign-in is required and handle transitions smoothly across channels.


**Problem statement** 

Blue Yonder Airlines must deploy a secure, scalable, and policy-compliant AI agent using Microsoft Copilot Studio. 

The agent must deliver accurate, helpful, and safe responses across multiple channels, integrate with enterprise systems, and support both anonymous and authenticated users. 

It must adhere to strict data protection and Responsible AI standards while improving customer service efficiency and satisfaction


### QUESTION 1

You need to configure the agent in Copilot Studio to meet Blue Vender's Responsible AI and data protection requirements.

Which three actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.

Select and Place:


Responsible AI and data protection requirements

1. Add custom prompt modifications.
2. Conduct adversarial testing.
3. Define Data Loss Prevention (DLP) policies.
4. Integrate with Microsoft Purview.
5. Disable generative answers.
6. Configure content moderation filters.

**Answer Area**

1. []
2. [] 
3. []


------


Explanation/Reference:

Explanation:

Scenario: Problem statement: The agent must adhere to strict data protection and Responsible AI standards while improving customer service efficiency and satisfaction.

**Step 1: Define Data Loss Prevention (DLP) policies** 

Security and compliance must be established at the foundation level. Admins use the Power Platform admin center to configure DLP policies. This establishes environmental guardrails by restricting unauthorized data connectors or preventing the agent from leaking sensitive data.

**Step 2: Add custom prompt modifications** 

Once the environment is secure, the maker configures the specific behavior of the agent. Custom prompt modifications and agent instructions shape the tone, define conversational topics, and establish explicit boundaries for the generative model (e.g., instructing the model to strictly stay within its knowledge base).

**Step 3: Conduct adversarial testing**

This is the final evaluation phase before deployment. After the guardrails and custom prompts are in place, you simulate real-world attacks (such as jailbreaks, prompt injections, or malicious user inputs) to verify that the agent reliably adheres to your corporate guidelines and Microsoft's Responsible AI standards.


### QUESTION 2

You need to evaluate whether the current configuration decisions for the Blue Yonder Copilot agent comply with the company's security and governance policies.

Which compliance status should you assign to each configuration decision? To answer, move the appropriate compliance statuses to the correct configuration decisions. You may use each compliance status once, more than once, or not at all. You may need to move the split bar between panes or scroll to view content.


NOTE: Each correct selection is worth one point.


**Compliance statuses**

- Compliant
- Non-compliant

**Compliance configuration**

| # | Configuration decision                                                           | Compliance status |
|---|---|---|
| 1 | The agent allows anonymous access to general inquiries such as baggage policies. |                   |
| 2 | The agent uses an open web search to answer questions beyond internal knowledge. |                   |
| 3 | The team relies only on default content filters without custom RAI instructions. |                   |
| 4 | The agent uses one shared admin credential for all internal data access.         |                   |


------

**Correct Answers**

| # | Configuration Decision | Compliance Status | Explanation |
|---|---|---|---|
| 1 | The agent allows anonymous access to general inquiries such as baggage policies. | **Compliant** | Anonymous access is permitted for general inquiries. Authentication is required only when accessing personal data. |
| 2 | The agent uses an open web search to answer questions beyond internal knowledge. | **Non-compliant** | Open web search may introduce unverified information and conflict with requirements to constrain generative responses. |
| 3 | The team relies only on default content filters without custom RAI instructions. | **Non-compliant** | Custom prompt modifications are required to enforce tone, disclaimers, and refusal behavior consistently. |
| 4 | The agent uses one shared admin credential for all internal data access. | **Non-compliant** | Internal data access must use the user's identity rather than shared or builder credentials. |

                             
> **explanation/Reference:**

Explanation:

Box 1: Compliant Anonymous access is allowed for general inquiries.

Box 2: Non-compliant Should use only internal sources.

The agent must handle common inquiries such as:

Flight status Booking and rebooking Loyalty program questions Travel policies and baggage rules

Box 3: Non-compliant Responsible AI content moderation filters must be enabled.

Box 4: Non-compliant User identity must be used for data access; shared or builder credentials must not be used. 


### QUESTION 3 


You need to deploy the Blue Yonder Copilot agent to the public website and Microsoft Teams while ensuring compliance with the company's security and Responsible AI requirements.

Which two actions should you perform before making the agent available on both channels? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

A. Configure prompt modifications to enforce tone, disclaimers, and refusal behavior at the system level.

B. Manually add disclaimers to each topic before publishing.

C. Embed the web channel and then rely on channel-level settings to enforce content moderation.

D. Configure Power Platform DLP policies to restrict unauthorized data connectors.

E. Publish the agent and then enable Responsible AI filters individually for each channel.                           
                             
        
------                     
       
**QUESTION 3 — Correct Answers**

**Correct answers: A and D**

- A. Configure prompt modifications to enforce tone, disclaimers, and refusal behavior at the system level.
- D. Configure Power Platform DLP policies to restrict unauthorized data connectors.

Why not the other options?

- B: Disclaimers should be applied consistently through shared/system-level configuration, not manually added to every topic.
- C: Embedding the web channel does not replace agent-level Responsible AI configuration.
- E: Responsible AI safeguards should be configured before publication, not postponed until afterward.



Exam tip: When the question emphasizes both consistent generative behavior and data protection, choose prompt modifications + DLP policies.  

**逐项分析**

| 选项 | 判断     | 原因    |
| --- | ----| --- |
| A  | ✅ 正确   | 使用系统级或 Agent 级 prompt modifications，统一控制语气、免责声明和拒绝行为。   |
| B  | ❌ 错误   | 场景明确要求统一配置，避免逐个 Topic 手动添加免责声明。    |
| C  | ❌ 错误   | Web channel 的嵌入设置不能代替 Responsible AI 内容安全配置。                |
| D  | ✅ 正确   | 场景明确要求强制实施 Power Platform DLP policies，限制未经授权的数据连接器和数据流。    |
| E  | ⚠️ 有争议 | 启用 Responsible AI 内容过滤符合场景要求，但选项要求先发布，再逐个 Channel 启用，顺序不合理。 |

**最终判断**

- 按照题目给出的完整场景和选项措辞：A、D 更合理。
- 如果官方答案确实是 A、E： 出题者可能想考查 prompt modifications 和 Responsible AI content moderation filters 这两个功能，而忽略了 E 中发布顺序的问题。

考试记忆重点：

- Prompt modifications → 统一控制生成式回答的行为。
- Content moderation filters → 过滤不安全内容。
- DLP policies → 管控连接器及数据流。

因此，如果你正在准备考试并且已有可靠的官方答案来源，可以暂时记录 A、E（题库答案），但需要注意：从严格的技术和安全部署顺序来看，E 的措辞并不严谨。


### QUESTION 4 

You need to configure the Blue Yonder Copilot agent's responses in accordance with the company's content control and platform requirements.

Which two actions should you perform? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

A. Add required disclaimer text inside each individual topic.

B. Configure prompt instructions that include disclaimer text.

C. Use Markdown syntax within response content.

D. Insert HTML formatting directly into topic responses.

E. Duplicate disclaimer text across reusable topics.


----

**QUESTION 4 — Correct Answers: B and C**

- B. Configure prompt instructions that include disclaimer text.
- C. Use Markdown syntax within response content.

Explanation

- B — Correct: Prompt instructions can define consistent disclaimer text for generative responses, avoiding manual edits to each individual topic.
- C — Correct: The scenario explicitly requires Markdown formatting and states that HTML is not supported.
- A — Incorrect: Adding disclaimers to every topic creates unnecessary manual work and does not ensure consistent handling across all generative responses.
- D — Incorrect: HTML formatting is not supported by the platform requirements.

Exam tip: Consistent disclaimers → prompt instructions; supported formatting → Markdown.


Correct Answer: BC Section: (none) Explanation/Reference:

**Explanation:**

Scenario: **Platform constraints** No custom code is permitted; only Copilot Studio's built-in tools may be used.

**All backend logic must be implemented using agent flows.**

**[C] Markdown must be used for formatting (e.g., bold, bullet points); [Not D] HTML is not supported.**

**[B] Disclaimer text.**

The best approach is to configure prompt instructions that include disclaimer text.

This method ensures the disclaimer is applied universally to all AI-generated responses without manual duplication across topics. It scales effectively and reduces maintenance overhead.

### QUESTION 5 


You need to configure the agent in Copilot Studio to use internal and external partner knowledge sources to answer user questions about the airline services.

Which two actions should you perform? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

A. Use a Microsoft Graph connector to index the partner's travel advisory content.

B. Write individual Q&A pairs for each document as separate topics.

C. Enable unrestricted web search for the agent.

D. Add the internal policy documents as a knowledge source.

----

**[A] External Scenario:**

Data sources include:

Travel Advisory Content: Uses REST API with partner services.

Configuring a Microsoft Graph connector to index your external data and utilizing REST APIs are highly effective and distinct strategies for supplying knowledge and actions in Microsoft Copilot Studio.

**[D] Internal Scenario:**

The agent will handle customer inquiries across multiple channels – web chat, mobile app, and Microsoft Teams (for internal support staff). It will answer questions, retrieve data from enterprise systems, and escalate to human agents when needed.

Data sources include: Customer Support Knowledge Base: SharePoint library with PDFs and policy documents.

---

Correct Answers: A and D

- A. Use a Microsoft Graph connector to index the partner's travel advisory content.
- D. Add the internal policy documents as a knowledge source.

 Explanation

- A — Correct: A Microsoft Graph connector can make external partner content available through Microsoft Graph-based search and knowledge integration, when the partner source and connector are supported.
- D — Correct: Internal policy documents should be added as a knowledge source so the agent can answer questions using unstructured content.

Why the other options are incorrect

- B: Creating individual Q&A topics for every document is not scalable and contradicts the requirement to use knowledge sources.
- C: Unrestricted web search risks introducing unverified information and conflicts with the requirement to constrain generative responses.

Exam tip: Use knowledge sources for internal documents and supported connectors for external partner content.

### QUESTION 6 

You need to ensure that every AI-generated response from the agent in Copilot Studio includes a disclaimer that complies with the company's security and governance policies.

Which two actions should you perform? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

A. Add a greeting message that includes the disclaimer.

B. Add a prompt modification in the generative answers node settings.

C. Create a disclaimer topic that always runs first.

D. Disable generative answers and use only pre-authored responses.

E. Edit every topic's first message to include the disclaimer.

-----

**Correct Answer: AB Section: (none)**

Explanation/Reference: 

Explanation:

[A]   Adding a mandatory disclaimer to your greeting message is the best practice for agent governance. You can enforce this by configuring your Greeting System Topic **and adding formal "Output Rules" to the agent's core instructions.**

[B] Using prompt modification in the Generative Answers node settings is an excellent and highly effective strategy for embedding compliance disclaimers into your agent's responses.

### QUESTION 7 

You need to determine which authentication model should be applied to each Blue Yonder Copilot interaction scenario to comply with the company's security and governance requirements.

Which authentication requirement should you apply to each scenario? To answer, move the appropriate authentication requirements to the correct user scenarios. You may use each authentication requirement once, more than once, or not at all. You may need to move the split bar between panes or scroll to view content.

NOTE: Each correct selection is worth one point.



**Authentication requirements (Options)**

* Allow anonymous access.
* Require customer sign-in using an account.
* Require internal agent sign-in using Microsoft Entra ID.
* Use agent author credentials for authenticated data calls.


| User scenario | Authentication requirement |
| :--- | :--- |
| A customer asks, "What is the baggage allowance for international flights?" | [ 空白框 ] |
| A customer asks, "Can I review my upcoming trips?" | [ 空白框 ] |
| An internal support agent accesses the Copilot agent from Microsoft Teams to look up a loyalty member's profile. | [ 空白框 ] |

----

**Correct Answers — Authentication Requirements**

| User scenario        | Correct authentication requirement                       |
| ---- | ---  |
| 1. A customer asks, “What is the baggage allowance for international flights?”                                      | Allow anonymous access.                                  |
| 2. A customer asks, “Can I review my upcoming trips?”                                                               | Require customer sign-in using an account.               |
| 3. An internal support agent accesses the Copilot agent from Microsoft Teams to look up a loyalty member's profile. | Require internal agent sign-in using Microsoft Entra ID. |

**Explanation**

1. General information: Baggage policies are public information, so authentication is not required.
2. Personal booking information: Upcoming trips contain personal data, so the customer must sign in.
3. Internal staff access: Employees must authenticate through Microsoft Entra ID to access internal customer information.

Unused option: Use agent author credentials for authenticated data calls.

This option is incorrect because the scenario explicitly requires user identity for data access, not shared or maker credentials.


**Box 1: Allow anonymous access.**

Scenario: **Customers**: Anonymous access for general inquiries (e.g., flight status, baggage policy).

**Box 2: Require customer sign-in using an account.**

Scenario: Authentication is required for personal data access (e.g., bookings, loyalty points).

**Box 3: Require internal agent sign-in using Microsoft Entra ID.**

Scenario: **Internal staff:** Authenticate via Microsoft Entra ID.


## Question Set 2

### QUESTION 1 


A company has an existing custom connector that is approved and available in the environment. A builder wants an agent in Copilot Studio to call the connector during a conversation to retrieve information from an internal system.

To meet the business needs, the solution must meet the following requirements:

* The agent must make the connector available for topic steps.
* The agent must run the connector call with a valid connection.
* The connector call must receive the required input values at runtime.

You need to configure the agent so the custom connector can be used as a tool.

What should you configure for each requirement? To answer, move the appropriate configurations to the correct requirements. You may use each configuration once, more than once, or not at all. You may need to move the split bar between panes or scroll to view content.

NOTE: Each correct selection is worth one point.



**Configurations (Options)**

* Map topic variables to the tool inputs.
* Add the connector as a tool in the agent.
* Add the connector as a knowledge source.
* Create or reuse a connection for the connector.


| Requirement | Configuration |
| :--- | :--- |
| The agent must make the connector available for topic steps. | [ 空白框 ] |
| The agent must run the connector call with a valid connection. | [ 空白框 ] |
| The connector call must receive the required input values at runtime. | [ 空白框 ] |


----

**Correct Answers**

| Requirement                                                              | Configuration                                   |
| ------------------------------------------------------------------------ | ----------------------------------------------- |
| 1. The agent must make the connector available for topic steps.          | Add the connector as a tool in the agent.       |
| 2. The agent must run the connector call with a valid connection.        | Create or reuse a connection for the connector. |
| 3. The connector call must receive the required input values at runtime. | Map topic variables to the tool inputs.         |

**Explanation**

1. Add the connector as a tool in the agent — makes the custom connector available for the agent to invoke.
2. Create or reuse a connection for the connector — provides the authenticated connection required to execute the API operation.
3. Map topic variables to the tool inputs — passes the required runtime values to the connector.

Unused option: Add the connector as a knowledge source. A connector used to execute API actions is a tool, not a knowledge source.


**Correct Answers**

| Requirement                                                              | Configuration                                   |
| ------------------------------------------------------------------------ | ----------------------------------------------- |
| 1. The agent must make the connector available for topic steps.          | Add the connector as a tool in the agent.       |
| 2. The agent must run the connector call with a valid connection.        | Create or reuse a connection for the connector. |
| 3. The connector call must receive the required input values at runtime. | Map topic variables to the tool inputs.         |

**Explanation**

1. Add the connector as a tool in the agent — makes the custom connector available for the agent to invoke.
2. Create or reuse a connection for the connector — provides the authenticated connection required to execute the API operation.
3. Map topic variables to the tool inputs — passes the required runtime values to the connector.

Unused option: Add the connector as a knowledge source. A connector used to execute API actions is a tool, not a knowledge source.


### QUESTION 2 

A company needs to ground an agent in Copilot Studio answers using live enterprise data from a supported system via a Microsoft Power Platform connector.

To meet the business needs, the builder must meet the following requirements:

Authenticate using a valid connection.

Add the connector as a real-time knowledge source.

Select the tables for knowledge grounding.

You need to add a Power Platform connector as a real-time knowledge source for the agent.

In which order should you perform the actions? To answer, move all actions from the list of actions to the answer area and arrange them in the correct order.


以下是提取并整理为 Markdown 格式的内容，您可以直接复制：

Select and Place:

**REST API (Options)**

1. Select Sign in and create a new connection or reuse an existing connection.
2. Select the tables to include as the knowledge source.
3. Select Add knowledge from the agent Knowledge experience.
4. Select the real-time connector from the Add knowledge dialog.
5. Select Add to agent to complete the connection.


| Answer Area |
| :--- |
| **1** [ 空白框 ] |
| **2** [ 空白框 ] |
| **3** [ 空白框 ] |
| **4** [ 空白框 ] |
| **5** [ 空白框 ] |


----

**Correct Order**

| Step | Action                                                                      |
| ---- | --------------------------------------------------------------------------- |
| 1    | Select Add knowledge from the agent Knowledge experience.                   |
| 2    | Select the real-time connector from the Add knowledge dialog.               |
| 3    | Select Sign in and create a new connection or reuse an existing connection. |
| 4    | Select the tables to include as the knowledge source.                       |
| 5    | Select Add to agent to complete the connection.                             |

**Sequence to remember**

Add knowledge → Select connector → Sign in → Select tables → Add to agent

This sequence first starts the knowledge-source setup, then selects the connector, establishes authentication, chooses the data to ground answers, and completes the configuration.


Step 1: Select Add knowledge from the agent Knowledge experience Initiate: You start in the Knowledge tab to trigger the addition.

Step 2: Select the real-time connector from the Add knowledge dialog Identify: You pick the specific system/connector from the menu.

Step 3: Select Sign in and create a new connection or reuse an existing connection Authenticate: You log in to ensure permissions to the enterprise data.

Step 4: Select the tables to include as the knowledge source Configure: You isolate the exact tables needed for grounding.

Step 5: Select Add to agent to complete the connection Finalize: You save and bind the source to your agent.

### QUESTION 3

You deploy an agent in Microsoft Copilot Studio that triggers a cloud flow to update customer records in Microsoft Dataverse.

You observe the following after deploying the agent:

* Several runs fail due to a temporary authentication issue.

* The flow continues to trigger and generate additional failed runs. 

You must:

* Stop additional failed executions while troubleshooting.
* Process a failed execution after resolving the authentication issue.
* Validate if the most recent executions succeeded immediately after resolution.

You need to use the appropriate monitoring and management actions to restore normal flow operation and validate successful execution.

Which action should you perform for each requirement? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.


**Flow monitoring actions**

| Requirement | Action |
| :--- | :--- |
| Stop additional failed executions while troubleshooting. | [ 下拉选项框 ]<br>- Delete the flow.<br>- Disable the flow.<br>- Cancel the most recent run.<br>- Modify the trigger condition. |
| Process a failed execution after resolving the authentication issue. | [ 下拉选项框 ]<br>- Restart the flow.<br>- Refresh the flow.<br>- Resubmit the run.<br>- Recreate the trigger. |
| Validate if the most recent executions succeeded immediately after resolution. | [ 下拉选项框 ]<br>- Republish the flow.<br>- Review the Activity history.<br>- Export the flow to a solution.<br>- Inspect the Analytics summary. |

---

Correct Answers

| Requirement                                                                       | Correct action               |
| --------------------------------------------------------------------------------- | ---------------------------- |
| 1. Stop additional failed executions while troubleshooting.                       | Disable the flow.            |
| 2. Process a failed execution after resolving the authentication issue.           | Resubmit the run.            |
| 3. Validate if the most recent executions succeeded immediately after resolution. | Review the Activity history. |

 Explanation

1. Disable the flow — temporarily stops the flow from triggering new executions while you troubleshoot the authentication issue.
2. Resubmit the run — reruns a failed execution after the authentication issue has been resolved.
3. Review the Activity history — checks recent flow executions and their statuses to confirm whether the runs succeeded.

Exam tip: Disable → Resubmit → Review Activity history.


**Box 1: Disable the flow**

The most appropriate action to address this specific issue is to disable the flow. Immediate Stop: Turning off or disabling the flow completely prevents any new instances from triggering. This satisfies your urgent requirement to halt additional failed executions immediately while you troubleshoot.

Safe Troubleshooting: It pauses all activity without deleting or altering the internal logic of your automation, allowing you to safely fix the authentication token or connection issues.

**Box 2: Resubmit the run** 

The best action to address this specific issue is to resubmit the run.

Efficiency: Resubmitting a failed run starts the cloud flow again from the exact same trigger point using the original data.

No Data Loss: It eliminates the need for the user or the Copilot Studio agent to manually recreate the request.

Targeted Fix: Since the root cause was a temporary authentication error that is now resolved, the original payload is valid and will now process successfully.

**Box 3: Review the Activity history **

In Microsoft Copilot Studio, the Activity history (specifically within the integrated Power Automate cloud flow management or the Copilot's topic run history) allows you to see the real-time execution status of individual runs. This is the only option that lets you immediately validate if the most recent executions succeeded right after resolving the authentication error.


### QUESTION 4 

A company is preparing an agent flow so that it can be invoked by an agent during conversations.

The agent flow must meet the following requirements:

The agent must be able to trigger the flow. The agent flow must be verified.

You need to prepare an agent flow so that it can be used by the agent.

In which order should you perform the actions to prepare the agent flow? To answer, move all actions from the list of actions to the answer area and arrange them in the correct order.


以下是提取并整理为 Markdown 格式的内容，您可以直接复制：

Select and Place:

**Agent flow readiness steps (Options)**

* Configure the invocation trigger that allows the agent to call the agent flow.
* Make the agent flow available for agent usage.
* Validate the agent flow behavior with representative test runs.
* Configure the actions that implement the required behavior.
* Create a new agent flow artifact in the environment.



| Answer Area |
| :--- |
| **1** [ 空白框 ] |
| **2** [ 空白框 ] |
| **3** [ 空白框 ] |
| **4** [ 空白框 ] |
| **5** [ 空白框 ] |


----


Correct Order

| Step | Action                                                                         |
| ---- | ------------------------------------------------------------------------------ |
| 1    | Create a new agent flow artifact in the environment.                           |
| 2    | Configure the invocation trigger that allows the agent to call the agent flow. |
| 3    | Configure the actions that implement the required behavior.                    |
| 4    | Validate the agent flow behavior with representative test runs.                |
| 5    | Make the agent flow available for agent usage.                                 |

Sequence to remember

**Create → Configure trigger → Add actions → Test and validate → Make available**

Explanation: First create the flow, then configure the agent-invocation trigger and required actions. Test the flow to verify its behavior, and finally make it available for the agent to use.


**Step 1: Create a new agent flow artifact in the environment **

You must first initialize the flow container within your Copilot Studio workspace before adding any logic.

**Step 2: Configure the invocation trigger that allows the agent to call the agent flow **

You must set up the specialized trigger first (i.e., "When an agent calls the flow"), because this defines the required input variables that the downstream behavioral actions will rely on.

**Step 3: Configure the actions that implement the required behavior **

With the trigger and input variables established, you build the functional core of the flow (e.g., pulling data, sending approvals) and finalize it with the "Respond to the agent" action.

**Step 4: Validate the agent flow behavior with representative test runs**

The workflow needs to be tested and verified directly within the flow authoring interface using test data to check for errors before exposing it to the orchestrator.

**Step 5: Make the agent flow available for agent usage** 

Once verified, you publish the flow and add it to your agent as an active tool so the conversational orchestrator can dynamically call it during live interactions.


### QUESTION 5 

A company uses an agent flow that occasionally requires human input before continuing execution.

Some automated actions must pause until a human provides a decision or additional information. The flow must be configured to:

* Capture a human response for use in later steps.

* Continue processing within the same flow run after the response is submitted. Wait for a manual decision before proceeding.

* You need to configure a human-in-the-loop agent flow.

Which setting should you configure for each requirement? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.



Hot Area:

**Human-in-the-loop flow configuration**

| Requirement | Configuration |
| :--- | :--- |
| Capture a human response for use in downstream logic. | [ 下拉选项框 ]<br>- Send a notification to a user.<br>- Use the action's response outputs in subsequent steps.<br>- Enable analytics logging for the response. |
| Continue processing within the same flow run after a response is submitted. | [ 下拉选项框 ]<br>- Republish the flow after the decision is submitted.<br>- Trigger a new flow run when a response is received.<br>- Allow the action to wait for and return a response before continuing. |
| Wait for a manual decision before proceeding. | [ 下拉选项框 ]<br>- Add a human approval action.<br>- Add a manual trigger to the flow.<br>- Send a message that asks for input. |


-----


Correct Answers — Human-in-the-Loop Agent Flow

| Requirement                                                                    | Correct configuration                                                 |
| ------------------------------------------------------------------------------ | --------------------------------------------------------------------- |
| 1. Capture a human response for use in downstream logic.                       | Use the action's response outputs in subsequent steps.                |
| 2. Continue processing within the same flow run after a response is submitted. | Allow the action to wait for and return a response before continuing. |
| 3. Wait for a manual decision before proceeding.                               | Add a human approval action.                                          |

**Explanation**

1. Use the action's response outputs in subsequent steps — makes the human's response available to downstream actions and conditions.
2. Allow the action to wait for and return a response before continuing — pauses execution until the response is received, then continues the same flow run.
3. Add a human approval action — introduces an explicit approval or rejection decision before the flow proceeds.

Exam tip: Capture the response → wait and resume → use an approval action for the manual decision.


Explanation/Reference:

Explanation:

**Box 1: Use the action's response outputs in subsequent steps**.

The correct configuration is to use the action's response outputs in subsequent steps.

Data Persistence: Pausing for human intervention (often via a Power Automate "Approval" or "Wait for an Action" step) generates dynamic output variables based on the human's decision.

Flow Continuity: To use the decision or additional information later, the flow must explicitly capture these response outputs and map them to subsequent steps or variables within Copilot Studio.

**Box 2: Allow the action to wait for and return a response before continuing **

The valid configuration is to allow the action to wait for and return a response before continuing.

Same Flow Run: This setting explicitly pauses the current execution thread and waits for the human interaction to complete. Once the response is submitted, it resumes processing exactly where it left off within the same run.

**Box 3: Add a human approval action.**

The correct configuration is to add a human approval action.

Built-in pausing: An approval action natively pauses the workflow execution.

State preservation: The flow holds its current state and waits until the user selects an outcome (e.g., Approve or Reject). Simplicity: It does not require complex logic to save data and restart the process from


### QUESTION 6

A company uses an agent that invokes an agent flow to exchange information during a conversation. The company requires that the agent send data into the flow and receive structured results back from the same flow run. To support this business need, the flow must be configured to do the following:

* Capture the data provided by the agent.

* Return data results to the agent.

You need to configure the flow so that it can exchange data with the agent.

What should you configure for each requirement? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.




Hot Area:

**Agent flow input and output configuration**

| Requirement | Configuration |
| :--- | :--- |
| Capture the data provided by the agent. | [ 下拉选项框 ]<br>- Use an internal variable.<br>- Add a text input parameter.<br>- Store values only in the topic. |
| Return data results to the agent. | [ 下拉选项框 ]<br>- Log values to run history.<br>- Store values only in the flow.<br>- Add a text output parameter. |

-----

**Correct Answers**

| Requirement                                | Correct configuration        |
| ------------------------------------------ | ---------------------------- |
| 1. Capture the data provided by the agent. | Add a text input parameter.  |
| 2. Return data results to the agent.       | Add a text output parameter. |

 Explanation

1. Text input parameter: Defines an input that the agent passes to the agent flow when invoking it.
2. Text output parameter: Defines an output that the flow returns to the agent after execution.

Exam tip: Agent → Flow = Input parameter; Flow → Agent = Output parameter.


Explanation/Reference:

Explanation:

**Box 1: Add a text input parameter**

To allow a Copilot Studio agent to pass data into a flow and receive structured results back, you must configure a Power Automate flow triggered by the "Run a flow from Copilot" trigger with custom input variables, and concluding with the "Respond to Copilot" action containing structured output parameters.

**Box 2: Add a text output parameter **

To return structured results from an agent flow to your agent in Microsoft Copilot Studio, you should configure the "Respond to the agent" action in your flow with an output parameter.

In Microsoft Copilot Studio, when a topic or bot calls a Power Automate flow, data is sent into the flow via input parameters. To pass data, objects, or structured results back to the copilot during the exact same flow run, you must explicitly define one or more output parameters (such as a text, number, or boolean output) in the "Return value(s) to Power Virtual Agents/Copilot Studio" final step of the flow.


### QUESTION 7 

You are configuring an agent in Copilot Studio for an organization. The organization uses Microsoft Dataverse, Dynamics 365, and SharePoint Online.

The agent must retrieve information from enterprise systems and internal documents. The agent must meet the following requirements:

* Must retrieve the current balance of a customer account stored in Dataverse.

* Must retrieve the real-time shipping status of an order that updates throughout the day in Dynamics 365.

* Must answer questions based on the content of a static PDF policy document.

* Must provide a welcome message that does NOT depend on enterprise data.

* You need to configure the agent to meet the requirements.

How should the agent retrieve the data? To answer, move the appropriate solutions to the correct requirements. You may use each solution once, more than once, or not at all. You may need to move the split bar between panes or scroll to view content.

NOTE: Each correct selection is worth one point.



Select and Place:

**Solutions (Options)**

* Create a manual response in the topic.
* Connect to a Power Platform connector.
* Upload a file to Agents Knowledge Base.
* Configure a generative answer without enterprise data.



| Requirement | Solution |
| :--- | :--- |
| Retrieve the current balance of a customer account stored in Dataverse. | [ 空白框 ] |
| Retrieve the real-time shipping status of an order that updates throughout the day in Dynamics 365. | [ 空白框 ] |
| Answer questions based on the content of a static PDF policy document. | [ 空白框 ] |
| Provide a welcome message that does **NOT** depend on enterprise data. | [ 空白框 ] |


-----

答案

| Requirement | Solution |
| :--- | :--- |
| Retrieve the current balance of a customer account stored in Dataverse. | **Connect to a Power Platform connector.** |
| Retrieve the real-time shipping status of an order that updates throughout the day in Dynamics 365. | **Connect to a Power Platform connector.** |
| Answer questions based on the content of a static PDF policy document. | **Upload a file to Agents Knowledge Base.** |
| Provide a welcome message that does **NOT** depend on enterprise data. | **Create a manual response in the topic.** |


解析与考点说明

1. **Retrieve the current balance... (Dataverse) & Retrieve the real-time shipping status... (Dynamics 365)**
   * **选择：** `Connect to a Power Platform connector.`（连接到 Power Platform 连接器）
   * **原因：** Dataverse 和 Dynamics 365 都有现成的 Power Platform 预构建连接器。当需要获取**实时数据**（如当前余额、全天更新的物流状态）时，必须使用连接器实时查询后端系统。不能使用知识库（知识库通常用于静态的非结构化文档）或手动回复。**注意：在此类“选择并放置”题型中，选项可以被重复使用。**

2. **Answer questions based on the content of a static PDF policy document.**
   * **选择：** `Upload a file to Agents Knowledge Base.`（将文件上传到智能体知识库）
   * **原因：** 静态的 PDF 文件属于非结构化数据。将其上传到知识库并配合生成式答案（Generative Answers），是 Copilot Studio 处理此类文档并基于其内容回答问题的标准做法。不需要为文档中的每一段内容手动创建主题。

3. **Provide a welcome message that does NOT depend on enterprise data.**
   * **选择：** `Create a manual response in the topic.`（在主题中创建手动回复）
   * **原因：** 欢迎语是固定的文本，不需要连接任何企业系统去检索数据。直接在主题（通常是系统默认的问候主题）中添加一个“消息（Message）”节点并输入文本即可。

**未使用的选项：** `Configure a generative answer without enterprise data.`（配置不含企业数据的生成式答案）在这个场景中不需要用到。生成式答案应当与知识库配合使用以提供有依据的回答，而纯粹的固定欢迎语用不上生成式节点。


**Box 1: Connect to a Power Platform connector **


To enable your Copilot agent to fetch specific, real-time structured data (such as a customer's current balance) directly from Dataverse or Dynamics 365, you should connect to a Power Platform connector (or use native Dataverse plugins/tools).

**Box 2: Connect to a Power Platform connector **

Real-Time Data Access: Dynamics 365 data resides in Microsoft Dataverse. Power Platform connectors (like the Dataverse connector) fetch data live from the source, ensuring the shipping status is perfectly accurate and updated throughout the day.

Box 3: Upload a file to Agents Knowledge Base.

Box 4: Create a manual response in the topic.


### QUESTION 8 

An agent calls a flow. The agent requires structured output values to be returned.

The agent receives unexpected or empty values.

You need to configure the agent so that data is exchanged correctly between the agent and the flow.

What should you do?

A. Validate parameter definitions.

B. Change the trigger schema.

C. Review the flow run history.

D. Add a Parse JSON inside the flow.

E. Republish the agent.

---

**Correct Answer: A. Validate parameter definitions.**

Explanation

The agent and flow must have matching input and output parameter definitions to exchange data correctly.

- A. Validate parameter definitions — Correct. Check that the flow's input and output parameters have the correct names, data types, and mappings so the agent receives the expected values.
- B. Change the trigger schema — Incorrect. The trigger schema is not the first thing to change when the issue may be caused by mismatched input/output definitions.
- C. Review the flow run history — Incorrect. Useful for troubleshooting, but it does not directly configure the data exchange.
- D. Add a Parse JSON inside the flow — Incorrect. Only necessary when JSON parsing is required; it does not fix general parameter mapping issues.
- E. Republish the agent — Incorrect. Republishing alone will not fix incorrect parameter definitions.

Exam tip: Unexpected or empty values between an agent and a flow → first validate the input/output parameter definitions and mappings.


**Explanation/Reference:**  Correct Answer: A

Explanation:

Validating your parameter definitions is the correct first step. Unexpected or empty values typically occur because of a schema mismatch or because unsupported, nested data types are passed directly between the agent and the Power Automate flow.

### QUESTION 9 

A company is building an agent in Copilot Studio.

The agent must meet the following requirements:

* Responses must be grounded in approved internal content.

* The agent must be able to retrieve information from configured data sources in a topic.

You need to configure the agent so that topic responses are grounded from custom data sources.

What should you configure?

A. Enable analytics to review which topics users trigger most often.

B. Add a custom prompt that tells the agent to answer only from company data.

C. Configure knowledge sources in a generative answers node.

D. Add SharePoint as a knowledge source only at the agent level.

E. Increase the response length limit to improve answer completeness.

----

**Correct Answer: C Section: (none)**

Explanation/Reference:

Explanation:

To configure a Microsoft Copilot Studio agent so its topic responses are exclusively grounded in your custom data sources, you should leverage the Create generative answers node within a targeted custom topic. This setup ensures the agent strictly retrieves information from your approved internal content.


**Correct Answer: C. Configure knowledge sources in a generative answers node.**

Explanation

- C — Correct: Configuring knowledge sources in a generative answers node grounds the topic's responses in approved internal content and lets the node retrieve information from those sources.
- A — Incorrect: Analytics monitors usage; it does not ground responses.
- B — Incorrect: Prompt instructions guide behavior but do not configure or connect the actual data sources.
- D — Incorrect: Agent-level SharePoint knowledge alone does not meet the specific requirement to configure data sources within a topic.
- E — Incorrect: Increasing response length does not improve grounding or data retrieval.

Exam tip: When a question specifically says “in a topic” and “custom data sources,” choose Generative answers node → Configure knowledge sources.


### QUESTION 10

A company is building an agent in Copilot Studio topic that must retrieve real-time status information from an external REST API using a Send HTTP request node.

To meet the business needs, the topic must meet the following requirements:

The request must include the required authentication header.

The request must call the endpoint using the correct HTTP method.

The response must be configured with an appropriate response data type based on a schema and saved so the topic can reuse the returned values.

You need to configure the Send HTTP request node.

Which configuration should you use for each requirement? To answer, move the appropriate configurations to the correct requirements. You may use each configuration once, more than once, or not at all. You may need to move the split bar between panes or scroll to view content.



Select and Place:

**Configurations (Options)**

* Add required headers to the HTTP request.
* Set the method to GET in the HTTP request.
* Select JSON data type and save response to a variable.
* Set the method to POST and send JSON in a request body.

**HTTP Request node configuration**

| Requirement | Configuration |
| :--- | :--- |
| Configure authentication for the request. | [ 空白框 ] |
| Select the correct HTTP method for retrieving data. | [ 空白框 ] |
| Configure structured data handling and storage of data for reuse in the topic. | [ 空白框 ] |


-----

| Requirement                                                                    | Correct configuration                                  |
| ------------------------------------------------------------------------------ | ------------------------------------------------------ |
| Configure authentication for the request.                                      | Add required headers to the HTTP request.              |
| Select the correct HTTP method for retrieving data.                            | Set the method to GET in the HTTP request.             |
| Configure structured data handling and storage of data for reuse in the topic. | Select JSON data type and save response to a variable. |

Explanation:

- Headers: Include the required authentication header, such as an API key or bearer token.
- GET: Retrieves real-time status information from the API.
- JSON + variable: Parses the structured response and saves it in a variable for reuse in subsequent topic steps.

Unused option: Set the method to POST and send JSON in a request body. POST is typically used to submit data, not retrieve status information.

Explanation/Reference:

Explanation:

**Box 1: Add required headers to the HTTP request**

To configure the Send HTTP request node to include the required authentication header, you should add required headers to the HTTP request.

Authentication details for external REST APIs (such as API keys or Bearer tokens) are almost universally passed inside the metadata of the call, which is managed in the Headers.

**Box 2: Set the method to GET in the HTTP request.**

To retrieve real-time status information from an external REST API using a Send HTTP request node in Copilot Studio, you should set the method to GET in the HTTP request.

The standard HTTP GET method is specifically designed to fetch or retrieve data from a server without modifying it.

**Box 3: Select JSON data type and save response to a variable**

When retrieving real-time data, the primary configuration requirement is telling Copilot Studio how to interpret the incoming data (JSON) and storing it in a custom variable so subsequent nodes in your topic can use it.