## Azure AZ400 Test

### Question 1

You are configuring project metrics for dashboards in Azure DevOps. You need to configure a chart widget that measures the **elapsed time** to **complete work items once they become active**. Which of the following is the widget you should use?

* A. Cumulative Flow Diagram
* B. Burnup
* C. Cycle time
* D. Burndown

---

The correct answer is:

**C. Cycle time**

Why:

The **Cycle time** widget in Azure DevOps measures the **elapsed time from when a work item becomes active until it is completed** — exactly matching your requirement.

Quick comparison:

* **A. Cumulative Flow Diagram** → Shows work distribution across states over time (bottlenecks, WIP), not individual elapsed time.
* **B. Burnup** → Tracks scope completed vs total scope over time.
* **C. Cycle time** ✅ → Measures time from *Active → Done*.
* **D. Burndown** → Tracks remaining work over time.

So for tracking how long it takes to complete work after activation → **Cycle time** is the correct widget.


> Correct Answer: C- Cycle time
> 
> measures the time it takes for your team to complete work items once they begin actively working on them. Use below link for more details

You are configuring project metrics for dashboards in Azure DevOps. You need to configure a chart widget that measures the elapsed time to complete work items once they become active. Which of the followina is the widaet vou should use?


| Option | Explanation |
|---|---|
| **A. Cumulative Flow Diagram** | Graphical representation showing the flow of work items through different process stages over time. |
| **B. Burnup** | Visualization tool tracking completed work over time, often used in Agile project management. |
| **C. Cycle time** | **Total time for a work item to move through a process, from start to finis**h. |
| **D. Burndown** | Graphical representation showing remaining work versus time, commonly used in Agile methodologies. |


### Question 2

You need to consider **the underlined segment** to **establish whether it is accurate.** 

**The Burnup widget measures the elapsed time from creation of work items to their completion**. 

Select "No adjustment required' if the underlined segment is accurate. If the underlined segment is inaccurate, select the accurate

* A. No adjustment required.
* **B. Lead time**
* C. Test results trend
* D. Burndown

---

> Correct Answer: B. Lead time

The correct answer is:

**B. Lead time**

**Explanation:**

The statement is **inaccurate**.

* The **Burnup** widget **does not** measure elapsed time from creation to completion.
* <mark>That metric is called **Lead time**, which measures the time from **work item creation → completion**.</mark>

**Why the others are wrong:**

* **A. No adjustment required** ❌ → The statement is incorrect.
* **B. Lead time** ✅ → Correct metric for creation → completion time.
* **C. Test results trend** ❌ → QA/testing metrics only.
* **D. Burndown** ❌ → Tracks remaining work over time, not elapsed time.

✅ Final answer: **B. Lead time**


You need to consider the underlined segment to establish whether it is accurate. The Burnup widget measures the elapsed time from creation of work items to their completion. Select "No adjustment required' if the underlined segment is accurate. If the underlined segment is inaccurate, select the accurate option.


| Term | Explanation |
|----|----|
| **A. No adjustment required** | Indicates that no changes or modifications are necessary. |
| **B. Lead time** | **The total time it takes for a work item to be completed from the moment it's requested**. |
| **C. Test results trend** | The pattern or direction in which test results are moving over a period of time. |
| **D. Burndown** | Graphical representation showing remaining work versus time, commonly used in Agile methodologies. |

### Question 3

You are making use of Azure DevOps manage build pipelines, and also deploy pipelines. The development team is quite large, and is regularly added to. You have been informed that the management of users and licenses must be automated when it can be. Which of the following is a task that can't be automated?

* A. Group membership changes
* B. License assignment
* C. Assigning entitlements
* D. License procurement

---

The correct answer is:

**D. License procurement**

Explanation:

In Azure DevOps, many user and access management tasks **can be automated** via APIs, scripts, or Azure AD integration:

* **A. Group membership changes** ✅ → Can be automated (Azure AD groups, scripts, APIs).
* **B. License assignment** ✅ → Can be automated via Azure DevOps REST APIs and Azure AD.
* **C. Assigning entitlements** ✅ → Can be automated (entitlements API, Azure AD integration).
* **D. License procurement** ❌ → **Cannot be automated** — purchasing licenses/subscriptions requires manual business/financial processes.

So the task that **can’t be automated** is **License procurement**.


You are making use of Azure DevOps manage build pipelines, and also deploy pipelines. The development team is quite large, and is regularly added to. You have been informed that the management of users and licenses must be automated when it can be. Which of the following is a task that can't be automated?


| Term | Explanation |
|---|---|
| **A. Group membership changes** | Modifications or updates made to the membership of a specific group within an organization. |
| **B. License assignment** | The process of allocating or assigning software licenses to users or devices. |
| **C. Assigning entitlements** | Granting specific rights or privileges to users or entities based on their entitlements. |
| **D. License procurement** | **The process of obtaining or acquiring software licenses, typically through purchasin**g. |



### Question 4

You have been tasked with strengthening the security of your team's development process. You need to suggest a security tool type for the Continuous Integration (CI) phase of the development process. Which of the following is the option you would suggest?

* A. Penetration testing
* B. Static code analysis
* C. Threat modeling
* D. Dynamic code analysis

---

The correct answer is:

**B. Static code analysis**

Explanation:

For the **Continuous Integration (CI)** phase, the best security tool type is **Static Code Analysis** because it:

* Analyzes source code **without executing it**
* Can be **automated in build pipelines**
* Detects vulnerabilities early (e.g., insecure patterns, secrets, injection risks)
* Fits naturally into CI workflows (pre-build or build steps)

Why the others are less suitable for CI:

* **A. Penetration testing** ❌ → Manual/heavyweight, suited for later stages (pre-release, production).
* **C. Threat modeling** ❌ → Design-phase activity, not CI.
* **D. Dynamic code analysis** ❌ → Requires running the application, more suited for CD/testing environments.

✅ **Final answer: B. Static code analysis**


**Correct Answer: B**

Validation in the CI/CD begins before the developer commits his or her code. Static code analysis tools in the IDE provide the first line of defense to help ensure that security vulnerabilities are not introduced into the CI/CD process. 


You have been tasked with strengthening the security of your team's development process. You need to suggest a security tool type tor the Continuous Integration (CI) phase of the development process. Which of the following is the option you would suggest?



| Term | Explanation |
|---|---|
| **A. Penetration testing** | A method of evaluating the security of a computer system or network by simulating an attack. |
| **B. Static code analysis** | Examination of source code to identify potential vulnerabilities without executing the code. |
| **C. Threat modeling** | A process of identifying and prioritizing potential threats to a system and assessing defenses. |
| **D. Dynamic code analysis** | Analysis of software while it is executing to identify vulnerabilities or errors in real-time. |



### Question 5

Your company is currently making use of Team Foundation Server 2013 (TFS 2013), but intend to migrate to Azure

You have been tasked with supplying a migration approach that allows for the preservation of Team
Foundation Version Control changesets dates, as well as the changes dates of work items revisions.

 The approach should also allow for the migration of all TFS artifacts, while keeping migration effort to a minimum. You have suggested upgrading TFS to the most recent RTW release. Which of the following should also be suggested?

* A. Installing the TFS kava SDK
* B. Using the TFS Database Import Service to perform the upgrade.
* C. Upgrading PowerShell Core to the latest version.
* D. Using the TFS Integration Platform to perform the upgrade.

---

**Correct Answer: B**

Your company is currently making use of Team Foundation Server 2013 (TFS 2013), but intend to migrate to Azure DevOps. You have been tasked with supplying a migration approach that allows for the preservation of Team Foundation Version Control changesets dates, as well as the changes dates of work items revisions. The approach should also allow for the migration of all TFS artifacts, while keeping migration effort to a minimum. You have suggested upgrading TFS to the most recent RTW release.

Which of the following should also be suggested?


| Term | Explanation |
|---|---|
| **A. Installing the TFS kava SDK** | The process of installing the TFS (Team Foundation Server) kava SDK (Software Development Kit). |
| **B. Using the TFS Database Import Service to perform the upgrade** | Utilizing a service provided by TFS to import data from databases to upgrade the system. |
| **C. Upgrading PowerShell Core to the latest version** | Updating the PowerShell Core software to its most recent release, potentially for compatibility reasons or to access new features. |
| **D. Using the TFS Integration Platform to perform the upgrade** | Employing a platform designed for integrating and managing changes during the upgrade process in TFS. |

### Question 5

You intend to manage the build and release processes using Azure DevOps. 

This plan requires you to integrate Azure DevOps and Bitbucket. Which of the following will allow for this integration? Answer by dragging the correct options from the list to the answer area.

**Options**

- A self-hosted agent
- A Microsoft-hosted agent
- An External Git service connection
- Service hooks

------

To integrate **Azure DevOps** with **Bitbucket** for managing build and release processes, the correct options are:

✅ **An External Git service connection**
✅ **Service hooks**


Explanation

1️⃣ **External Git service connection**

In Azure DevOps, a **service connection** allows pipelines to authenticate and connect to external repositories such as Bitbucket.

* Used to connect Azure Pipelines to **Bitbucket repositories**
* Enables pipelines to **clone, build, and deploy code** from Bitbucket.

2️⃣ **Service hooks**

**Service hooks** allow external services like Bitbucket to notify Azure DevOps when events occur.

Examples:

* Code push
* Pull request creation
* Repository updates

These events can trigger **build pipelines automatically**.

Why the other options are incorrect

| Option                       | Reason                                                                       |
| ---------------------------- | ---------------------------------------------------------------------------- |
| **A self-hosted agent**      | Only executes pipeline jobs; it does not integrate repositories              |
| **A Microsoft-hosted agent** | Also just runs pipeline tasks; it does not connect Azure DevOps to Bitbucket |

✅ **Final Answer:**

* **External Git service connection**
* **Service hooks**



### Question 6

You are currently developing a project for a client that will be managing work items via Azure DevOps. You want to make sure that the work item process you use for the client allows for **requirements, change requests, risks, and reviews to be tracked.**

Which of the following is the option you would choose?

* A. Basic
* B. Agile
* C. Scrum
* D. CMMI

---

The correct answer is:

**D. CMMI**

Explanation:

The **CMMI (Capability Maturity Model Integration)** process in Azure DevOps is specifically designed for **formal, enterprise-style project management** and includes built-in support for tracking:

* **Requirements**
* **Change requests**
* **Risks**
* **Reviews**

This makes it the **best fit** for clients needing structured governance and comprehensive work item tracking.

Why the others are not suitable:

* **A. Basic** ❌ → Very limited, simple tracking only.
* **B. Agile** ❌ → Focused on user stories, epics, features — not formal risk/change tracking.
* **C. Scrum** ❌ → Sprint-based, product backlog focus, no native risk/review/change request structure.

✅ **Final answer: D. CMMI**

Correct Answer: D

Choose CMMI when your team follows more formal project methods that require a framework for process improvement and an auditable record of decisions. With this process, you can track requirements, change requests, risks, and reviews

Reference: https://docs.microsoft.com/en-us/azure/devops/boards/work-items/guidance/choose-process?view=azure-devops

You are currently developing a project for a client that will be managing work items via Azure DevOps. You want to make sure that the work item process you use for the client allows for requirements, change requests, risks, and reviews to be tracked.

Which of the following is the option you would choose?



| Term | Explanation |
|---|---|
| **A. Basic** | Choose Basic when your team wants the simplest model that uses Issues, Tasks, and Epics to track work. |
| **B. Agile** | This process works great if you want to track user stories and (optionally) bugs on the Kanban board, or track bugs and tasks on the task board. |
| **C. Scrum** | This process works great if you want to track product backlog items (PBIs) and bugs on the Kanban board, or break PBIs and bugs down into tasks on the task board |
| **D. CMMI** | Choose CMMI when your team follows more formal project methods that require a framework for process improvement and an auditable record of decisions. With this process, you can track requirements, change requests, risks, and reviews |


### Question 7

You run the Register-AzureRm AutomationDscNode command in your company's environment. 

**You need to make sure that your company's test servers remain correctly configured, regardless of configuration drift.**

Solution: You set the -Configuration Mode parameter to ApplyOnly. Does the solution meet the goal?

* A. Yes
* B. No

————

Correct Answer: B

* ApplyAndMonitor: focuses on monitoring for drift without automatic correction, 
* **ApplyAndAutocorrect: combines application and continuous correction of configurations** 
* *ApplyOnly: is a one-time application of configurations without any ongoing monitoring or correction.*

**No, the solution does NOT meet the goal.**

Explanation:

Setting the DSC **ConfigurationMode** to **`ApplyOnly`** means:

* The configuration is applied **once**
* **No monitoring** for drift
* **No automatic correction** if configuration changes

So if configuration drift occurs, the servers will **not be remediated automatically** ❌

What is required instead:

To ensure servers **remain correctly configured despite drift**, you must use:

**`ApplyAndAutoCorrect`** ✅
This mode:

* Continuously monitors configuration
* Automatically re-applies configuration if drift is detected

Summary:

| Mode                    | Drift Detection | Auto-Fix |
| --- | --- | -- |
| ApplyOnly               | ❌ No            | ❌ No     |
| ApplyAndMonitor         | ✅ Yes           | ❌ No     |
| **ApplyAndAutoCorrect** | ✅ Yes           | ✅ Yes    |

✅ **Correct answer: No**
The solution does **not** meet the goal.



### Question 8

You run the Register-AzureRm AutomationDscNode command in your company's environment. 

You need to make sure that your company's test servers remain correctly configured, regardless of configuration drift.

Solution: You set the -ConfigurationMode parameter to **ApplyAndMonitor**, Does the solution meet the goal?

* A. Yes
* B. No

------

**Answer: B - No**


* <mark>**ApplyAndMonitor**: focuses on monitoring for drift without automatic correction,</mark>
* **ApplyAndAutocorrect**: combines application and continuous correction of configurations
* **ApplyOnly:** is a one-time application of configurations without any ongoing monitoring or correction.

Correct Answer: You set the -ConfigurationMode parameter to ApplyAndAutocorrect


**B. No**

Explanation:

`ApplyAndMonitor` mode:

* ✅ Applies the configuration
* ✅ Monitors for configuration drift
* ❌ **Does NOT automatically fix drift**

Your requirement is that servers **remain correctly configured regardless of drift**, which implies **automatic remediation**.

That requires:

➡️ **`ApplyAndAutoCorrect`**

So:

* **ApplyAndMonitor** → Detects drift but does not fix it ❌
* **ApplyAndAutoCorrect** → Detects and auto-fixes drift ✅

✅ **Correct answer: B. No**

**B. No**

### Question 9

You run the Register-AzureRmAutomationDscNode command in your company's environment. You need to make sure that

your company's test servers remain correctly configured, regardless of configuration drift.

Solution: You set the -ConfigurationMode parameter to **ApplyAndAutocorrect**, Does the solution meet the goal?


* A. Yes
* B. No

------

**Correct Answer: A**

* ApplyAndMonitor: focuses on monitoring for drift without automatic correction,
* **ApplyAndAutocorrect**: combines application and continuous correction of configurations
* ApplyOnly: is a one-time application of configurations without any ongoing monitoring or correction


**A. Yes**

Explanation:

Setting the DSC **`-ConfigurationMode`** to **`ApplyAndAutoCorrect`**:

* ✅ Applies the desired configuration
* ✅ Continuously monitors for configuration drift
* ✅ **Automatically re-applies the configuration when drift is detected**

This exactly meets the requirement:

> ensure test servers remain correctly configured, regardless of configuration drift

So the solution **does meet the goal**.

✅ **Correct answer: A. Yes**


### Question 7,8,9-Explain

**ApplyAndMonitor:**

1. This mode appliesthe desired configuration to the node and continuously monitorsit to ensure compliance.
2. If any drift from the desired state is detected, it generates alerts or logs, notifying administrators of the noncompliance without attempting to correct the configuration automatically.
3. It's useful for environments where administrators want to be notified of configuration changes but prefer to manually correct any deviations.

**ApplyAndAutocorrect:**

1. This mode appliesthe desired configuration to the node and continuously monitors it.
2. If any drift from the desired state is detected, it automatically attempts to correct the configuration to bring it back into compliance.
3. It's suitable for environments where administrators want automatic correction of configuration drift without manual intervention.

**ApplyOnly:**

1. This mode appliesthe desired configuration to the node but does not perform any monitoring or autocorrection.
2. It's a one-time application of configuration, without any ongoing monitoring or drift correction.
3. It's useful for scenarios where administrators want to apply configurations but do not need continuous monitoring or correction.


Note: The choice between these modes depends on the specific requirements and preferences of the environment and administrators.

### Question - 9 

You need to consider the underlined segment to establish whether it is accurate.

To compile an Internet Information Services (IIS) web application that runs docker, you should use a Default build agent pool.

Select `No adjustment required` if the underlined segment is accurate. If the underlined segment is inaccurate, select the accurate option.

A. No adjustment required.

B. Hosted Windows Container

C. Hosted

D. Hosted macOS

-----

The correct answer is **B. Hosted Windows Container**.

Explanation:

To build a Docker image for an **Internet Information Services (IIS)** web application, you must use **Windows Containers**. 

1.  **Windows Dependency:** IIS is a feature of the Windows operating system. Therefore, the Docker image must be based on a Windows base image (such as `mcr.microsoft.com/windows/servercore/iis`).
2.  **The Agent Requirement:** To build a Windows-based Docker image, the build agent must be running on a Windows host that has the **Docker engine configured for Windows Containers**. 
3.  **Why "Hosted Windows Container":** In Azure DevOps, the specific Microsoft-hosted agent pool that provides the environment necessary to build these images is the **Hosted Windows Container** pool.

Why other options are incorrect:

*   **A. Default build agent pool:** The "Default" pool is typically used for **self-hosted agents**. While you *could* configure a self-hosted agent to build IIS containers, the question asks for the specific type required, and "Default" does not guarantee the necessary Windows Container capabilities.
*   **C. Hosted:** This is a legacy/generic term for Microsoft-hosted agents. It does not specify whether it is Linux or Windows, or if it supports containers.
*   **D. Hosted macOS:** macOS agents are used for building iOS and Mac applications. They cannot build or run Windows-based IIS containers.

### Question -10

Your company has an Azure DevOps environment that can only be accessed by Azure Active Directory users. 

You are instructed to make sure that the Azure DevOps environment **can only be accessed from devices connected to the company's on-premises network**. Which of the following actions should you take?

* A. Assign the devices to a security group.
* B. Create a GPO.
* C. Configure Security in Project Settings from Azure DevOps.
* D. Configure conditional access in Azure Active Directory.

--------------------

Your company has an Azure DevOps environment that can only be accessed by Azure Active Directory users.

You are instructed to make sure that the Azure DevOps environment can only be accessed from devices connected to the company's on-premises network. Which of the following actions should you take?

* A. Assign the devices to a security group.
* B. Create a GPO.
* C. Configure Security in Project Settings from Azure DevOps.
* D. Configure conditional access in Azure Active Directory.


**Correct Answer: D - Configure conditional access in Azure Active Directory**

Conditional Access is a capability of Azure Active Directory. With Conditional Access, you can implement automated access control decisions for accessing your cloud apps that are based on conditions.

Conditional Access policies are enforced after the first-factor authentication has been completed.


### Question -11

Your company has an Azure DevOps environment that can only be accessed by Azure Active Directory users. 

You are instructed to make sure that the Azure DevOps environment can only be accessed from devices connected to the company's on-premises network. Which of the following actions should you take?

A. Assign the devices to a security group.

B. Create a GPO.

C. Configure Security in Project Settings from Azure DevOps.

**D. Configure conditional access in Azure Active Directory.**

> Correct Answer: D - Configure conditional access in Azure Active Directory


Conditional Access is a capability of Azure Active Directory. 

With Conditional Access, you can implement automated access control decisions for accessing your cloud apps that are based on conditions. Conditional Access policies are enforced after the first-factor authentication has been completed.

### Question -11

You are making use of Azure DevOps to configure Azure Pipelines for project, named PROJ-01. 

You are preparing to use a version control system that allows for source code to be stored on a managed Windows server located on the company network. Which of the following is the version control system you should use?

* A. Github Enterprise
* B. Bitbucket cloud
* C. Github Professional
* D. Git in Azure Repos

----

Correct Answer: A Github Enterprise


The correct answer is:

**A. GitHub Enterprise**

**Explanation:**

You need a version control system that allows source code to be stored on a **managed Windows server located on the company’s on-premises network**.

**GitHub Enterprise** (specifically GitHub Enterprise Server) is designed for exactly this scenario:

* Self-hosted on **on-premises infrastructure**
* Can run on **Windows Server**
* Fully managed internally by the company
* Integrates with Azure DevOps pipelines

Why the others are incorrect:

* **B. Bitbucket Cloud** ❌ → Cloud-hosted only (Atlassian-managed).
* **C. GitHub Professional** ❌ → SaaS cloud version, not self-hosted.
* **D. Git in Azure Repos** ❌ → Hosted in Azure DevOps (cloud), not on an on-prem Windows server.

**Summary:**

| Option              | On-prem | Windows Server | Managed internally |
| --- | --- | --- | --- |
| GitHub Enterprise   | ✅       | ✅              | ✅                  |
| Bitbucket Cloud     | ❌       | ❌              | ❌                  |
| GitHub Professional | ❌       | ❌              | ❌                  |
| Azure Repos Git     | ❌       | ❌              | ❌                  |

✅ **Final answer: A. GitHub Enterprise**


### Question - 11

You need to consider the underlined segment to establish whether it is accurate.

When moving to Azure DevOps, JIRA must be replaced with the build pipelines Azure DevOps service.

Select `No adjustment required` if the underlined segment is accurate. If the underlined segment is inaccurate, select the accurate option.

A. No adjustment required.

B. repos

C. release pipelines

D. boards

---


The correct answer is:

✅ **D. boards**


Explanation

Jira is primarily used for:

* Issue tracking
* Agile planning
* Work item management
* Backlog and sprint tracking

In Azure DevOps, the equivalent service is **Azure Boards**.

**Azure Boards provides:**

* Work items
* Backlogs
* Kanban boards
* Sprint planning
* Issue tracking

Therefore, when moving from Jira to Azure DevOps, **Jira should be replaced by Azure Boards**, not build pipelines.

Why the other options are incorrect

| Option                        | Reason                                                      |
| ----------------------------- | ----------------------------------------------------------- |
| **A. No adjustment required** | Incorrect because Jira is not equivalent to build pipelines |
| **B. Repos**                  | Used for source code repositories                           |
| **C. Release pipelines**      | Used for deployments, not issue tracking                    |


✅ **Final Answer:** **D. boards**




### Question -12

You scan a Node.js application using WhiteSource Bolt. 

**The scan finds numerous libraries with invalid licenses**, but are only used during development. 

You have to make sure that only production dependencies are scanned by WhiteSource

Bolt. Which of the following is a command you should run?

* A. npm edit
* B. npm publish
* C. npm install
* D. npm update

------

> Correct Answer: **C. npm install**

The correct answer is:

**C. `npm install`** ✅

**Explanation:**

WhiteSource Bolt for Node.js scans the **installed `node_modules` folder**. By default, if you run:

```bash
npm install
```

without the `--dev` flag, only **production dependencies** (those listed under `"dependencies"` in `package.json`) are installed. Development dependencies (under `"devDependencies"`) are skipped.

This ensures that **WhiteSource Bolt only scans production dependencies**, ignoring dev-only libraries that might have invalid licenses.



Why the other options are incorrect:

* **A. `npm edit`** ❌ → Opens package.json in an editor, does not affect installed dependencies.
* **B. `npm publish`** ❌ → Publishes the package to npm registry, irrelevant for scanning dependencies.
* **D. `npm update`** ❌ → Updates packages to latest versions; doesn’t control which dependencies are scanned.



✅ **Command to use:**

```bash
npm install --production
```

This installs only production dependencies for WhiteSource Bolt scanning.

### Question -12

You are currently defining a release strategy for an app, named APP-01.

The strategy should allow you to keep the time it takes to deploy new releases of the app to a minimum. The strategy should also allow you to roll back in the shortest time required.

Which of the following is the release strategy you should use?

A. Red/Black deployment

B. Rolling deployment

C. Big Bang deployment

D. Canary deployment 

-------

✅ **Correct answer: A. Red/Black deployment**

Explanation

**Red/Black deployment** (often called **Blue/Green deployment**) maintains **two identical production environments**:

* **Red** → current live version
* **Black** → new version

Deployment process:

1. Deploy the new release to the **inactive environment**.
2. Test it.
3. **Switch traffic instantly** to the new environment.

Advantages:

* ⚡ **Very fast deployment**
* 🔁 **Instant rollback** (switch traffic back)
* 🚫 **Near-zero downtime**

Because the requirement is:

* **Minimum deployment time**
* **Fastest rollback**

Red/Black deployment is the best choice.

Why the others are not correct

| Option                  | Reason                                                |
| ----------------------- | ----------------------------------------------------- |
| **Rolling deployment**  | Updates instances gradually; rollback takes longer    |
| **Big Bang deployment** | High risk and downtime; rollback slow                 |
| **Canary deployment**   | Gradual rollout to a subset of users; slower rollback |


✅ **Final Answer:** **A. Red/Black deployment**



### Question -13

Your company hosts a web application in Azure, and makes use of Azure Pipelines for managing the build and release of the application. When stakeholders report that system performance has been adversely affected by the most recent releases, you configure alerts in Azure Monitor. 

You are informed that new releases must satisfy specified performance baseline conditions in the staging environment before they can be deployed to production. 

You need to make sure that releases not satisfying the performance baseline are prevented from being deployed.

Which of the following actions should you take?

* A. You should make use of a branch control check.
* B. You should make use of an alert trigger.
* C. You should make use of a gate.
* D. You should make use of an approval check.

------


Correct Answer: **C. You should make use of a gate.**

The correct answer is:

**C. You should make use of a gate.** ✅



**Explanation:**

In **Azure Pipelines**, if you want to **prevent a release from being deployed to production unless certain conditions are met** (such as satisfying a performance baseline in the staging environment), the appropriate mechanism is a **gate**.

**Gates** allow you to:

* Automatically evaluate **predefined conditions** before a deployment proceeds.
* Pull data from **Azure Monitor, Application Insights, REST APIs, or other sources**.
* Stop the deployment if conditions (like performance thresholds) are **not met**.



Why the other options are incorrect:

* **A. Branch control check** ❌ → Used to enforce policies on source code branches, not release deployment conditions.
* **B. Alert trigger** ❌ → Alerts notify you when something happens; they don’t automatically **block a release**.
* **D. Approval check** ❌ → Requires **manual approval**; you want **automated enforcement** of performance baselines.



✅ **Final answer: C. You should make use of a gate.**


### Question -14

You need to consider the underlined segment to establish whether it is accurate. To deploy an application to a number of Azure virtual machines, you should create a universal group. Select 'No adjustment required' if the underlined segment is accurate. If the underlined segment is inaccurate, select the accurate option.

Which of the following actions should you take?

* A. No adjustment required.
* B. Security
* C. Deployment
* D. Resource

----

The correct answer is:

**C. Deployment** ✅



Explanation:

The statement:

> "To deploy an application to a number of Azure virtual machines, you should create a **universal group**."

is **inaccurate**.

In Azure:

* **Deployment groups** are used to **target a set of virtual machines** for application deployment in Azure Pipelines.
* A **universal group** is an Active Directory concept and is **not used for deployment purposes**.

Correct terminology:

* **Deployment group** → A collection of target machines for deployment tasks.



✅ **Final answer: C. Deployment**


When authoring an Azure Pipelines or TFS Release pipeline, you can specify the deployment targets for a job using a deployment group If the target machines are Azure VMs, you can quickly and easily prepare them by installing the Azure Pipelines Agent Azure VM extension on each of the VMs, or by using the Azure Resource Group Deployment task in your release pipeline to create a deployment group dynamically.

### Question -14

You are preparing to deploy an Azure resource group via Terraform.

To achieve your goal, you have to install the necessary frameworks.

Which of the following are the frameworks you should use? 

Options

- Yeoman
- Vault
- Terratest
- Tiller

To achieve the goal of deploying an Azure resource group via Terraform while following the standard development practices recommended by Microsoft (specifically for the AZ-400: DevOps Engineer Expert curriculum), you should use:

1.  **Yeoman**
2.  **Terratest**

Explanation:

*   **Yeoman:** This is a scaffolding framework used to generate the boilerplate code and directory structure for a Terraform project. By using the `generator-az-terraform` with Yeoman, you can quickly create a consistent project that includes the necessary files (`main.tf`, `variables.tf`, etc.) pre-configured for Azure.
*   **Terratest:** This is a Go-based framework used for writing automated tests for your Infrastructure as Code (IaC). In a professional DevOps pipeline, you use Terratest to validate that your Terraform templates correctly provision the Azure resource group and its properties before or during the deployment process.

Why the other options are incorrect:

*   **Vault:** While Vault (by HashiCorp) is an excellent tool for managing secrets, it is considered an auxiliary security tool rather than a core "framework" required to support the deployment of a resource group.
*   **Tiller:** This was the server-side component for Helm v2 (a Kubernetes package manager). It is deprecated in Helm v3 and is completely unrelated to deploying Azure resources using Terraform.


You intend to make use of Azure Artifacts to share packages that you wrote, tested, validated, and deployed.

### Question -14

You want to use a solitary feed to release several builds of each package. You have to make sure that the release of packages that are in development is restricted.

Which of the following actions should you take?

A. You should make use of static code analysis.

B. You should make use of views.

C. You should make use of dynamic code analysis.

D. You should make use of upstream sources.


✅ **Correct answer: B. You should make use of views.**

Explanation

In Azure Artifacts, **views** allow you to control which package versions are visible to different consumers while using **a single feed**.

Typical views include:

* **@Local** → packages being developed
* **@Prerelease** → testing versions
* **@Release** → stable packages

Using **views**, you can:

* Publish all builds to the same feed
* **Promote stable packages to the Release view**
* **Restrict development packages** so they are not visible to production consumers

This directly satisfies the requirement:

* Use **one feed**
* Restrict **development packages**

Why the other options are incorrect

| Option                    | Reason                                                                                       |
| ------------------------- | -------------------------------------------------------------------------------------------- |
| **Static code analysis**  | Used for code quality checks, not package visibility                                         |
| **Dynamic code analysis** | Runtime testing of applications                                                              |
| **Upstream sources**      | Used to connect to external package feeds (e.g., npm, NuGet), not control release visibility |


✅ **Final Answer:** **B. Views**


### Question -15

You need to consider the underlined segment to establish whether it is accurate. To find when common open source libraries are added to the code base, you should add Jenkins to the build pipeline. 

Select '**No adjustment required**' if the underlined segment is accurate. 

If the underlined segment is inaccurate, select the accurate option.

* A. No adjustment required.
* B. SourceGear Vault
* C. WhiteSource
* D. OWASP ZAP


------

The correct answer is:

**C. WhiteSource**


**Explanation:**

The statement is **inaccurate**.

> “To find when common open source libraries are added to the code base, you should add **Jenkins** to the build pipeline.”

<mark>**Jenkins** is a CI/CD automation server — it does **not** analyze dependencies or detect open source libraries.</mark>

To detect and track when **open-source libraries** are added (including license and vulnerability scanning), you should use:

<mark>**WhiteSource** (now known as Mend)</mark>

WhiteSource:

* Scans dependencies
* Detects open-source components
* Tracks when libraries are introduced
* Monitors licenses and vulnerabilities



**Why the others are wrong:**

* **A. No adjustment required** ❌ → Jenkins is not the correct tool
* **B. SourceGear Vault** ❌ → Version control system, not OSS scanning
* **C. WhiteSource** ✅ → Correct tool
* **D. OWASP ZAP** ❌ → Dynamic web app security scanner, not dependency analysis

✅ **Final answer: C. WhiteSource**


Azure DevOps integration with White Source Bolt will enable you to:

1. Detect and remedy vulnerable open source components.
2. Generate comprehensive open source inventory reports per projector build.
3. Enforce open source license compliance, including dependencies' licenses.
4. Identify outdated open source libraries with recommendationsto update.

> **WhiteSource** is the leader in continuous open source software security and compliance management. WhiteSource integrates into your build process, irrespective of your programming languages, build tools, or development environments.
> 
> It works automatically, continuously, and silently in the background, checking the security, licensing, and quality of your open source components against White Source constantly updated definitive database of open source repositories.

### Question -16

Your company has an Azure DevOps project, which includes a build pipeline that **makes use of roughly fifty open source libraries.** 

You have been tasked with making sure that you are able to **scan project for common security weaknesses in the open source libraries**. 

Which of the following actions should you take?

* A. You should create a build task and use the White Source Bolt service.
* B. You should create a deployment task and use the WhiteSource Bolt service.
* C. You should create a build task and use the Chef service.
* D. You should create a deployment task and use the Chef service.

------

Correct Answer: **A. You should create a build task and use the WhiteSource Bolt service.**


The correct answer is:

**A. You should create a build task and use the WhiteSource Bolt service.** ✅

**Explanation:**

To scan **open source libraries** for **common security weaknesses** (such as known vulnerabilities and license issues), you should integrate **WhiteSource Bolt** into your **build pipeline** in Azure DevOps.

**WhiteSource Bolt** is designed specifically for:

* **Scanning open-source dependencies**
* **Detecting CVEs and vulnerabilities**
* **License compliance checks**
* Running automatically during **CI builds**



**Why the others are incorrect:**

* **B. Deployment task + WhiteSource Bolt** ❌ → Scanning should happen in the **build stage**, not during deployment.
* **C. Chef service** ❌ → Chef is configuration management, not security scanning.
* **D. Deployment task + Chef** ❌ → Wrong tool + wrong stage.


✅ **Final answer: A. You should create a build task and use the WhiteSource Bolt service.**


### Question -17

You need to consider the underlined segment to establish whether it is accurate. 

Black Duck can be used to make sure that all the open source libraries conform to your company's licensing criteria. 

Select "No adjustment required' if the underlined segment is accurate. If the underlined segment is inaccurate, select the accurate option.


A. No adjustment required.

B. Maven

C. Bamboo

D. CMAKE


-------


The statement is **accurate**.

**Black Duck** is specifically designed to:

* Scan open-source libraries
* <mark>Enforce **license compliance policies**</mark>
* **Detect license violations and risks**
* Ensure OSS usage aligns with **company licensing criteria**

So the correct logical choice is:

> ✅ **No adjustment required**


⚠️ **Note:**

The provided options (A–D) are unrelated to the statement and appear to be from a different question. Since the statement about **Black Duck** is correct, the proper answer conceptually is **No adjustment required**, even though it is not listed.


> Secure and Manage Open Source Software Black Duck helps organizations identify and mitigate open source security, license compliance and code-quality risks across application and container portfolios. 


Black Duck Hub and its plugin for Team Foundation Server (TFS) allows you to automatically find and fix open source security vulnerabilities during the build process, so you can proactively manage risk. The integration allows you to receive alerts and fail builds when any Black Duck Hub policy violations are met.


### Question -17


You have created an Azure DevOps project for a new application that will be deployed to a number of Windows Server 2016 Azure virtual machines.

You are preparing a deployment solution that allows for the virtual machines to maintain a uniform configuration, and also keep administrative effort with regards to configuring the virtual machines to a minimum.

Which of the following should be part of your solution? (Choose two.)


A. Azure Resource Manager templates

B. The PowerShell Desired State Configuration (DSC) extension for Windows

C. Azure pipeline deployment groups

D. The Custom Script Extension for Windows

E. Azure pipeline stage templates


-------

✅ **Correct answers:**

- **B. The PowerShell Desired State Configuration (DSC) extension for Windows**
- **C. Azure pipeline deployment groups**

Explanation

The goal is to:

* Keep **Windows Server VMs configured consistently**
* **Minimize administrative effort**
* Deploy the application to **multiple Azure VMs**

1️⃣ PowerShell Desired State Configuration (DSC)

PowerShell Desired State Configuration ensures that machines maintain a **consistent configuration state**.

Benefits:

* Automatically enforces configuration
* Ensures all VMs have the same setup
* Ideal for **Windows Server environments**

Using the **DSC extension for Windows** allows Azure VMs to automatically apply these configurations.

2️⃣ Azure Pipeline Deployment Groups

Azure DevOps **deployment groups** allow you to deploy applications to multiple VMs simultaneously.

Benefits:

* Target multiple Azure VMs
* Centralized deployment management
* Easy integration with Azure Pipelines

This reduces manual administration when deploying to many machines.

Why the other options are incorrect

| Option                       | Reason                                                                                  |
| ---------------------------- | --------------------------------------------------------------------------------------- |
| **ARM templates**            | Used for provisioning infrastructure, not maintaining VM configuration after deployment |
| **Custom Script Extension**  | Executes scripts once but does not maintain ongoing configuration                       |
| **Pipeline stage templates** | Reusable pipeline logic, not related to VM configuration                                |

---

✅ **Final Answer:** **B and C**


### Question -18

Your company has an application that contains a number of Azure App Service web apps and Azure functions. **You would like to view recommendations with regards to the security of the web apps and functions.**

You plan to navigate to Compute and Apps to achieve your goal. Which of the following should you access to make use of Compute and Apps?

* A. Azure Log Analytics
* B. Azure Event Hubs
* C. Azure Advisor
* D. Azure Security Center


------------

The correct answer is:

**D. Azure Security Center** ✅

(now known as **Microsoft Defender for Cloud**)


**Explanation:**

To view **security recommendations** for:

* **Azure App Service web apps**
* **Azure Functions**
* Other compute and application resources

You should use **Azure Security Center** (Microsoft Defender for Cloud).

It provides:

* Security posture management
* Vulnerability assessments
* Security recommendations
* A dedicated **“Compute and Apps”** section for:

  * App Services
  * Functions
  * VMs
  * Containers

This is exactly where **Compute and Apps** is located.


**Why the others are incorrect:**

* **A. Azure Log Analytics** ❌ → Monitoring and logs, not security recommendations
* **B. Azure Event Hubs** ❌ → Event streaming platform
* **C. Azure Advisor** ❌ → Cost, performance, reliability recommendations (not deep security posture for apps)


✅ **Final answer: D. Azure Security Center**


Monitor compute and app services: Compute & apps include the App Services tab, which App services: list of your App service environments and current security state of each.


### Question -19

You need to consider the underlined segment to establish whether it is accurate. 

Your company has a multi-tier application that has its front end hosted in Azure App Service. To pinpoint the average load times of the application pages, you should make use of Azure Event Hubs. 


Select 'No adjustment required' if the underlined segment is accurate. If the underlined segment is inaccurate, select the accurate option.

* A. No adjustment required.
* B. Azure Application Insights
* C. Azure Log Analytics
* D. Azure Advisor



The correct answer is:

**B. Azure Application Insights** ✅


**Explanation:**

The statement is **inaccurate**.

> “To pinpoint the average load times of the application pages, you should make use of **Azure Event Hubs**.”

**Azure Event Hubs** is used for **event streaming and ingestion**, not performance monitoring or page load analytics.

To measure **average page load times**, performance, and user experience for an **Azure App Service** application, you should use:

**Azure Application Insights**

Application Insights provides:

* Page load times
* **Request/response times**
* **Application performance metrics**
* **End-user experience monitoring**
* Dependency tracking


Why the others are incorrect:

* **A. No adjustment required** ❌ → Event Hubs is not correct
* **C. Azure Log Analytics** ❌ → Log aggregation/analysis, not page performance focus
* **D. Azure Advisor** ❌ → Optimization recommendations, not telemetry analytics


✅ **Final answer: B. Azure Application Insights**


Application Insights will tell you about any performance issues and exceptions, and help you find and diagnose the root causes.

Application Insights can monitor both Java and ASPNET web applications and services, WCF services. They can be hosted on-premises, on virtual machines, or as Microsoft Azure websites. On the client side, Application Insights can take telemetry from web pages and a wide variety of devices including iOS, Android, and Windows Store apps.


### Question -20

Your company makes use of Azure SQL Database Intelligent Insights and Azure Application Insights for monitoring purposes. You have been tasked with analyzing the monitoring using ad-hoc queries. You need to utilize the correct query
language. 

Solution: You use the Contextual Query Language (CQL)


####  Question - 20(1)

Solution: You use the Transact-SQL.


####  Question - 20(2)

Solution: You use Azure Log Analytics.

Does the solution meet the goal?

* A. Yes
* B. No

-----------

**Correct Answer: B**

**Correct Answer: B**

**Correct Answer: B**


Explanation:

The solution does **not** meet the goal.

Azure monitoring services such as:

* **Azure Application Insights**
* **Azure SQL Database Intelligent Insights**

use **KQL (Kusto Query Language)** for ad-hoc querying and analytics.

❌ **CQL (Contextual Query Language)** is **not used** in Azure monitoring services.

Correct query language:

* ✅ **KQL (Kusto Query Language)** → Used by:

  * Azure Monitor
  * Application Insights
  * Log Analytics
  * Intelligent Insights
  * Microsoft Sentinel


Conclusion:

Since **CQL** is incorrect and **KQL** is required, the solution does **not** meet the goal.

✅ **Correct answer: B. No**


### Question -22

You manage an Azure web app that supports an e-commerce website. You need to increase the logging level when the web app exceeds normal usage patterns. The solution must minimize administrative overhead.

Which two resources should you include in the solution? Each correct answer presents part of the solution.


* A. an Azure Automation runbook
* B. an Azure Monitor alert that has a dynamic threshold
* C. an Azure Monitor alert that has a static threshold
* D. the Azure Monitorautoscale settings
* E. an Azure Monitoralert that uses an action group that has an email action

----------

**Correct Answer: AB**

A: You can use Azure Monitor to monitor base-level metrics and logs for most services in Azure. You can call Azure Automation runbooks by using action groups or by using classic alerts to automate tasks based on


B: Metric Alert with Dynamic Thresholds detection leverages advanced machine learning (ML) to learn metrics' historical behavior, identify patterns and anomalies that indicate possible service issues. It provides support of both a simple Ul and operations at scale by allowing users to configure alert rules through the Azure Resource Manager API, in a fully automated manner.

The correct answers are:

**A. an Azure Automation runbook**
**B. an Azure Monitor alert that has a dynamic threshold**



Explanation:

To **automatically increase the logging level** when the web app exceeds **normal usage patterns**, and to **minimize administrative overhead**, you need:

✅ **B. Azure Monitor alert with a dynamic threshold**

* Detects **abnormal behavior** automatically (baseline-driven)
* Adapts to changing traffic patterns (perfect for e-commerce workloads)
* No manual tuning required → low admin overhead

✅ **A. Azure Automation runbook**

* Executes automated actions (e.g., **change logging level** in the web app)
* Can be triggered via an **Azure Monitor alert action group**
* Fully automated response

Why the others are incorrect:

* **C. Static threshold alert** ❌ → Requires manual tuning and maintenance
* **D. Azure Monitor autoscale settings** ❌ → Scales resources, not logging levels
* **E. Email action group** ❌ → Not automation, increases manual work


Architecture Flow:

1. **Dynamic threshold alert** detects abnormal usage
2. Alert triggers **Action Group**
3. Action Group triggers **Azure Automation runbook**
4. Runbook increases **logging level automatically**


✅ **Final answer: A and B**

### Question - 22

You have recently created a web application for your company.


You have been tasked with making sure that a summary of the exceptions that transpire in the application is automatically sent to Microsoft Teams on a daily basis.

Which of the following Azure services should you use? Answer by dragging the correct two options from the list to the answer area.

Select and Place:

Options

- Azure DevOps Project
- Azure Logic Apps
- Azure Pipelines
- Azure Application Insights

------

The correct two services are:

- ✅ **Azure Application Insights**
- ✅ **Azure Logic Apps**

Explanation

1. **Azure Application Insights**

   * Monitors the web application.
   * Collects telemetry including **exceptions, failures, and performance data**.
   * Provides the **exception summary** that you want to send.

2. **Azure Logic Apps**

   * Automates workflows and integrations.
   * Can be scheduled **daily**.
   * Retrieves data from Application Insights and **sends a message to Microsoft Teams**.

Why the others are incorrect

* **Azure DevOps Project** – Used for development lifecycle management, not for monitoring application exceptions.
* **Azure Pipelines** – Used for CI/CD, not for collecting runtime exception summaries.

✅ **Final Answer:**

- **Azure Logic Apps**
- **Azure Application Insights**

### Question -22

You are in the process of building a mobile app aimed at Android and iOS devices.

All work items and release cycles are managed via Azure DevOps.

You want to make sure that crash reports for issue analysis is collected, and that beta releases are distributed to your testers. Also, you want to ensure that user feedback on the functionality of new apps is received.

Which of the following must be part of your solution?

A. The Microsoft Test & Feedback extension.

B. OWASP ZAP

C. TFS Integration Platform

D. Code Style

---------------

The correct answer is:

✅ **A. The Microsoft Test & Feedback extension**

Explanation

Your requirements include:

1. **Collect crash reports**
2. **Distribute beta releases to testers**
3. **Collect tester/user feedback**
4. Integration with **Azure DevOps**

The **Microsoft Test & Feedback extension** supports:

* Submitting **bugs and crash information**
* Collecting **feedback from testers**
* Creating **work items directly in Azure DevOps Boards**
* Allowing testers to report issues while using the app

Why the other options are incorrect

* **OWASP ZAP** – A security vulnerability scanning tool for web apps, not for crash reporting or beta distribution.
* **TFS Integration Platform** – Used for migrating or synchronizing TFS/Azure DevOps environments.
* **Code Style** – Refers to coding conventions, not testing, feedback, or crash reporting.

✅ **Final Answer: A**

If you'd like, I can also show the **common AZ-400 exam combo for mobile apps (App Center + Test & Feedback)** because that pattern appears frequently in certification questions.



## Topic 2 - Question Set 2

### Question -1

You need to recommend project metrics for dashboards in Azure DevOps.

![Alt Image Text](../images/az400_2_1.png "Body image")

Which chart widgets should you recommend for each metric? To answer, drag the appropriate chart widgets to the correct metrics. Each chart widget may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.

NOTE: Each correct selection is worth one point.

-----------

Correct mapping of **Azure DevOps dashboard metrics**:

| Metric                                                               | Chart Widget   |
| -------------------------------------------------------------------- | -------------- |
| The elapsed time from the creation of work items to their completion | **Lead Time**  |
| The elapsed time to complete work items once they are active         | **Cycle Time** |
| The remaining work                                                   | **Burndown**   |

Explanation

* **Lead Time**
  Measures the **total time from work item creation until completion**.

* **Cycle Time**
  Measures **how long work takes once development actually starts** (Active → Done).

* **Burndown Chart**
  Shows **remaining work over time**, typically in sprints.

* **Velocity** (not used here) measures how many **story points are completed per sprint**, not the metrics asked in the question.

✅ **Final Answer**

- 1️⃣ Creation → Completion → **Lead Time**
- 2️⃣ Active → Completion → **Cycle Time**
- 3️⃣ Remaining Work → **Burndown**

### Question -2

You plan to create alerts that will be triggered based on the page load performance of a home page. 

You have the Application Insights log query shown in the following exhibit.

![Alt Image Text](../images/az400_2_2.png)

Use the drop-down menus to select the answer choice that completes each statement based on the information presented in the graphic. NOTE: Each correct selection is worth one point.

Hot Area:

![Alt Image Text](../images/az400_2_3.png)

Correct selections

**1️⃣ To create an alert based on the page load experience of most users:**
✅ **percentile_duration_90**

**2️⃣ To only create an alert when an authentication error occurs on the server:**
✅ **resultCode**

Explanation

Page load experience of most users

In Azure Application Insights performance metrics:

* **percentile_duration_50 (P50)** → median (half of users faster/slower)
* **percentile_duration_90 (P90)** → performance experienced by **most users**
* **percentile_duration_95 (P95)** → focuses on worst cases/outliers

To represent **most users’ experience**, monitoring usually uses **P90 latency**.

✔ Therefore: **percentile_duration_90**

Detecting authentication errors

Authentication failures correspond to HTTP status codes like:

* **401 – Unauthorized**
* **403 – Forbidden**

These are captured in the **result code field** of requests.

✔ Therefore the query must filter on **resultCode**.


✅ **Final Answer**

| Requirement                        | Selection                  |
| ---------------------------------- | -------------------------- |
| Page load experience of most users | **percentile_duration_90** |
| Authentication error occurs        | **resultCode**             |


### Question -4

You have an Azure Kubernetes Service (AKS) pod.

You need to configure a probe to perform the following actions:

✑ Confirm that the pod is responding to service requests.

✑ Check the status of the pod four times a minute.

✑ Initiate a shutdown if the pod is unresponsive.

How should you complete the YAML configuration file? To answer, select the appropriate options in the answer area. NOTE: Each correct selection is worth one point.

![Alt Image Text](../images/az400_2_4.png)

----------

Based on the requirements provided, here is how you should complete the YAML configuration:

Answer Area

**Box 1: `livenessProbe:`**

*   **Reasoning:** The requirement states the probe must **"initiate a shutdown if the pod is unresponsive."** In Kubernetes, a `livenessProbe` is used to determine if a container is still running correctly. If the liveness probe fails, Kubernetes kills the container, and the container is subjected to its restart policy. A `readinessProbe`, by contrast, only stops sending network traffic to the pod but does not restart/shut it down.

**Box 2: `periodSeconds: 15`**

*   **Reasoning:** The requirement is to **"check the status of the pod four times a minute."** There are 60 seconds in a minute. To perform a check 4 times, you must run the check every 15 seconds ($60 \div 4 = 15$). The `periodSeconds` field specifies the frequency of the probe.


**Summary of selections:**

1.  **livenessProbe:**
2.  **periodSeconds: 15**


### Question -9

Your company is building a new web application.

You plan to collect feedback from pilot users on the features being delivered.

All the pilot users have a corporate computer that has Google Chrome and the Microsoft Test & Feedback extension installed. The pilot users will test the application by using Chrome.

You need to identify which access levels are required to ensure that developers can request and gather feedback from the pilot users. The solution must use the principle of least privilege.

Which access levels in Azure DevOps should you identify? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.
  
![Alt Image Text](../images/az400_2_5.png)

Based on the requirements and the Principle of Least Privilege in Azure DevOps, here are the correct access levels:

-------

Answer Area

**Developers: `Basic`**

*   **Reasoning:** To **request** feedback from users within the Azure DevOps interface, a user must have at least the **Basic** access level. Stakeholders do not have the permissions required to initiate feedback requests or manage the comprehensive test plans associated with gathering feedback.

**Pilot users: `Stakeholder`**

*   **Reasoning:** Users with the **Stakeholder** access level can provide feedback in response to a request using the Microsoft Test & Feedback extension. Since Stakeholder is a lower-privilege level (and is free for unlimited users), it is the correct choice under the **principle of least privilege** for users who are only testing and providing input rather than developing or managing the project.


### Question -10

Your company wants to use Azure Application Insights to understand how user behaviors affect an application.

Which Application Insights tool should you use to analyze each behavior? To answer, drag the appropriate tools to the correct behaviors. Each tool may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.

NOTE: Each correct selection is worth one point.


![Alt Image Text](../images/az400_2_6.png)

-------

- **Feature usage:** User Flows  
- **Number of people who used the actions and its features:** Users  
- **The effect that the performance of the application has on the usage of a page or a feature:** Impact


To analyze user behavior in Azure Application Insights, you should match the tools as follows:

**Answer Area**

*   **Feature usage:** **User Flows**
    *   *Reasoning:* **User Flows** visualizes the paths users take through your application. It helps you understand which features are used and the sequence in which users interact with different parts of your site.
*   **Number of people who used the actions and its features:** **Users**
    *   *Reasoning:* The **Users** tool provides data on the count of unique individuals who interact with your application, allowing you to see how many distinct people are using specific actions or features.
*   **The effect that the performance of the application has on the usage of a page or a feature:** **Impact**
    *   *Reasoning:* The **Impact** tool is specifically designed to analyze how various properties—most notably performance metrics like page load times—affect conversion rates and the frequency of feature usage.


### Question - 13

Your company is building a mobile app that targets Android and iOS devices. Your team uses Azure DevOps to manage all work items and release cycles. You need to recommend a solution to perform the following tasks:

✑ Collect crash reports for issue analysis.

✑ Distribute beta releases to your testers.

✑ Get user feedback on the functionality of new apps.

What should you include in the recommendation?

A. the Microsoft Test & Feedback extension

B. Microsoft Visual Studio App Center integration

C. Azure Application Insights widgets

D. Jenkins integration

----------


The correct answer is **B. Microsoft Visual Studio App Center integration**.

Explanation:

**Microsoft Visual Studio App Center** is specifically designed for mobile application lifecycles (iOS, Android, Windows, and macOS) and perfectly addresses all three requirements:

*   **Collect crash reports:** App Center's **Diagnostics** service provides real-time crash reports, stack traces, and error logging to help you prioritize and fix issues.
*   **Distribute beta releases:** App Center's **Distribute** service allows you to quickly get your builds onto the devices of testers (Beta distribution) or even deploy directly to the App Store or Google Play.
*   **Get user feedback:** App Center includes analytics and integrated feedback mechanisms to help developers understand how users are interacting with the application.

Why other options are incorrect:

*   **A. Microsoft Test & Feedback extension:** This is primarily used for exploratory testing of **web applications** from within a browser. It is not designed for mobile app crash reporting or distribution.
*   **C. Azure Application Insights widgets:** While Application Insights can monitor apps, Microsoft's official recommendation for mobile-specific scenarios (like distribution and crash reporting for iOS/Android) is App Center.
*   **D. Jenkins integration:** Jenkins is a general-purpose automation server. While it can build the app, it does not provide the specific mobile-hosting services for crash analytics or tester distribution out-of-the-box.


### Question - 14

You have an Azure DevOps project named Project1 and an Azure subscription named Sub1. Sub1 contains an Azure virtual machine scale set named VMSS1.

VMSS1 hosts a web application named WebApp1. WebApp1 uses stateful sessions.

The WebApp1 installation is managed by using the Custom Script extension. The script resides in an Azure Storage account named sa1.

You plan to make a minor change to a UI element of WebApp1 and to gather user feedback about the change.

You need to implement limited user testing for the new version of WebApp1 on VMSS1.

Which three actions should you perform? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

A. Modify the load balancer settings of VMSS1.

B. Redeploy VMSS1.

C. Upload a custom script file to sa1.

D. Modify the Custom Script extension settings of VMSS1.

E. Update the configuration of a virtual machine in VMSS1.

----------

To implement limited user testing for a new version of WebApp1 on VMSS1, you need to deploy the updated UI to a subset of instances and ensure that only a portion of users are routed to them. The custom script extension manages the installation, so you must update the script and apply it to specific VMs.

- **C. Upload a custom script file to sa1.** – The new version requires an updated script stored in the storage account.
- **D. Modify the Custom Script extension settings of VMSS1.** – This points the scale set to the new script, updating the model.
- **E. Update the configuration of a virtual machine in VMSS1.** – After updating the model, manually upgrade one or more instances to apply the new script, creating a test group.

The load balancer will naturally distribute traffic to the updated instances, providing limited exposure for user feedback.

**Selected actions: C, D, E**

### Question #18

You have several Azure virtual machines that run Windows Server 2019.

You need to identify the distinct event IDs of each virtual machine as shown in the following table.


![Alt Image Text](../images/az400_2_7.png)

-----

Based on the requirement to identify **distinct** event IDs and present them in a list grouped by each virtual machine, here is the correct completion of the Azure Monitor (KQL) query:

**Answer Area**

| | | | |
| :--- | :--- | :--- | :--- |
| **\|** | **`summarize`** | **`makeset(EventID)`** | **by Computer** |

 **Explanation:**

1.  **`summarize`**: This operator is required to group the data by a specific column (in this case, `Computer`).
2.  **`makeset(EventID)`**: This aggregation function is the key to the solution. It creates a dynamic (JSON) array of the **distinct** values of a column within the group. The requirement specifically asks for "distinct event IDs"; if you used `makelist(EventID)`, the result would include duplicate IDs for every time an event occurred.

**The complete query would look like this:**

```kusto
Event
| where TimeGenerated > ago(12h)
| order by TimeGenerated desc
| summarize makeset(EventID) by Computer
```

To identify distinct event IDs per virtual machine, you need to use the `summarize` operator with the `makeset` aggregation function. This creates an array of unique event IDs for each computer.

- First blank: **summarize**
- Second blank: **makeset(EventID)**

### Question -19

You have an Azure web app named Webapp1.

You need to use an Azure Monitor query to create a report that details the top 10 pages of Webapp1 that failed. How should you complete the query? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point

![Alt Image Text](../images/az400_2_9.png)

----------

Based on the requirements to identify the top 10 failed pages of a web application, here is how you should complete the Azure Monitor query:

**Answer Area**

**Box 1 (Source Table): `requests`**
*   **Reasoning:** In Application Insights, server-side requests (including the processing of web pages) are stored in the **`requests`** table. This table includes columns for the page/operation `name` and the `resultCode`, both of which are used in the subsequent `summarize` line of the query.

**Box 2 (Filter Condition): `success == false`**
*   **Reasoning:** The goal is to report on pages that **failed**. The most efficient and standard way to filter for failures in Application Insights is to use the **`success`** boolean field. When `success == false`, it indicates the request resulted in an error (typically a 4xx or 5xx HTTP status code).

***

**The complete query would look like this:**
```kusto
requests
| where success == false
| summarize failedCount=sum(itemCount) by name, resultCode
| top 10 by failedCount desc
| render barchart
```


### Question -21

You have a project in Azure DevOps named Contoso App that contains pipelines in Azure Pipelines for GitHub repositories. 

You need to ensure that developers receive Microsoft Teams notifications when there are failures in a pipeline of Contoso App. What should you run in Teams? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.


![Alt Image Text](../images/az400_2_10.png)


To ensure that developers receive Microsoft Teams notifications for failures in the Contoso App project, you should use the following command syntax in the Teams channel:

**Answer Area**

**Box 1: `subscribe`**

*   **Reasoning:** The `subscribe` command is the specific action used to create a new notification subscription. The `subscriptions` command (plural) is used to list or manage existing ones, while `signin` is only for authentication.

**Box 2: `https://dev.azure.com/contoso/contoso-app/`**

*   **Reasoning:** To subscribe to all pipelines within a project, you provide the **base project URL**. While the bot can also accept URLs for specific pipelines, the project URL is the standard way to initiate the configuration for the entire "Contoso App" project. The other URLs provided (`_build`, `_packaging`, `_work-items`) point to specific sub-features and are not the standard project identifiers for the subscription command.


**The complete command entered would be:**

`@azure pipelines subscribe https://dev.azure.com/contoso/contoso-app/`


### Question -23

You have a Microsoft ASP.NET Core web app in Azure that is accessed worldwide. You need to run a URL ping test once every five minutes and create an alert when the web app is unavailable from specific Azure regions. The solution must minimize development time. What should you do?

* A. Create an Azure Monitor Availability metric and alert.
* B. Create an Azure Application Insights availability test and alert.
* C. Write an Azure function and deploy the function to the specific regions.
* D. Create an Azure Service Health alert for the specific regions.

---------

**Correct Answer: B. Create an Azure Application Insights availability test and alert.**

The correct answer is:

**B. Create an Azure Application Insights availability test and alert.** ✅

Explanation:

To run a **URL ping test every five minutes** and generate **alerts when the app is unavailable from specific Azure regions**, with **minimal development time**, the best solution is to use **Azure Application Insights availability tests**.

**Application Insights Availability Tests** provide:

* Built-in **URL ping tests**
* Configurable **test frequency** (e.g., every 5 minutes)
* Ability to select **specific Azure regions**
* Native **alerting integration**
* **No custom code** required → minimal development effort



Why the other options are incorrect:

* **A. Azure Monitor Availability metric and alert** ❌
  Azure Monitor alone doesn’t provide built-in multi-region URL ping testing.

* **C. Write an Azure Function** ❌
  Requires custom development, deployment, and maintenance → high overhead.

* **D. Azure Service Health alert** ❌
  Monitors Azure service outages, **not your specific web app URL availability**.


**Best-practice solution flow:**

**Application Insights → Availability Test → Multi-region probes → Alert rule**



✅ **Final answer: B. Create an Azure Application Insights availability test and alert.**


There are three types of Application Insights availability tests:

* 1) URL ping test a simple test that you can create in the Azure portal. 
* 2) Multi-step webtest. 
* 3) Custom Track Availability Test.

Note: After you've deployed your web app/website, you can set up recurring tests to monitor availability and responsiveness. Azure Application Insights sends web requests to your application at regular intervals from points around the world. It can alert you if your application isn't responding, or if it responds too slowly. You can set up availability tests for any HTTP or HTTPS endpoint that is accessible from the public internet. You don't have to make any changes to the website you're testing. In fact, it doesn't even have to be a site you own. You can test the availability of a REST API that your service depends on

### Question #23

You are integrating Azure Pipelines and Microsoft Teams.

You install the Azure Pipelines app in Microsoft Teams.

You have an Azure DevOps organization named Contoso that contains a project name Project1. You subscribe to Project1 in Microsoft Teams.

You need to ensure that you only receive events about failed builds in Microsoft Teams.

What should you do first?

A. From Microsoft Teams, run @azure pipelines subscribe https://dev.azure.com/Contoso/Project1.

B. From Azure Pipelines, add a Publish Build Artifacts task to Project1.

C. From Microsoft Teams, run @azure pipelines subscriptions.

D. From Azure Pipelines, enable continuous integration for Project1

-------


The correct answer is **C. From Microsoft Teams, run @azure pipelines subscriptions.**

Explanation:

When you first subscribe to an Azure DevOps project in Microsoft Teams using the `@azure pipelines subscribe [URL]` command, the app creates several **default subscriptions** (such as "Build completed," which includes both successes and failures).

To meet the requirement of receiving **only** events about **failed builds**, you need to manage and filter these subscriptions:

1.  **View Current Subscriptions:** Running `@azure pipelines subscriptions` lists all the active subscriptions for that specific Teams channel.
2.  **Modify/Add:** From the resulting list, you can see the default "Build completed" subscription. You can then click to **Add** a new subscription specifically for **"Build failed"** and **Remove** the generic "Build completed" one that includes successful builds.

Why other options are incorrect:

*   **A. @azure pipelines subscribe...:** The prompt states you have already subscribed to Project1. Running the base subscribe command again is redundant and does not allow you to filter for failures only.
*   **B. Add a Publish Build Artifacts task:** This is a task within the build pipeline to save files. it has no impact on how notifications are sent to Microsoft Teams.
*   **D. Enable continuous integration:** CI ensures that builds start automatically when code is pushed. While this triggers builds, it does not control the logic of the notification system in Teams.


### Question -24

You have an Azure DevOps organization named Contoso.

You need to receive Microsoft Teams notifications when work items are updated. What should you do?

A. From Azure DevOps, configure a service hook subscription

B. From Microsoft Teams, configure a connector

C. From the Microsoft Teams admin center, configure external access

D. From Microsoft Teams, add a channel

E. From Azure DevOps, install an extension


--------

The correct answer is **A. From Azure DevOps, configure a service hook subscription.**

Explanation:

**Service Hooks** are the standard mechanism used by Azure DevOps to send notifications to external services (like Microsoft Teams, Slack, or Trello) when specific events occur.

1.  **The Process:** To set up these notifications, you go to **Project Settings** in Azure DevOps, select **Service Hooks**, and create a new subscription.
2.  **The Trigger:** You select **Microsoft Teams** as the service and choose the specific trigger: **"Work item updated."**
3.  **The Result:** Whenever a user modifies a work item, Azure DevOps sends a JSON payload to the configured Teams webhook, which then displays the notification in the selected channel.

Why other options are incorrect:

*   **B. Configure a connector:** While Teams "Connectors" were a valid method in the past, Microsoft has deprecated legacy connectors in favor of the **Azure Boards App** (which manages service hooks automatically) or direct **Service Hook** configuration.
*   **C. Configure external access:** This is an administrative setting in the Teams Admin Center that controls whether users can chat with people in other companies; it has nothing to do with automation or bots.
*   **D. Add a channel:** This provides a destination for the notifications, but it does not configure the logic to actually send them from Azure DevOps.
*   **E. Install an extension:** Most Azure DevOps-to-Teams integrations require installing an **App in Teams**, not an **Extension in Azure DevOps**. The core functionality for the notification itself is built directly into the Service Hooks feature.




### Question -24

You have a multi-tier application. The front end of the application is hosted in Azure App Service.

You need to **identify the average load times** of the application pages. What should you use?


* A. Azure Application Insights
* B. the activity log of the App Service
* C. the diagnostics logs of the App Service
* D. Azure Advisor

---------

**Correct Answer: A. Azure Application Insights**


Application Insights will tell you about any performance issues and exceptions, and help you find and diagnose the root causes. Application Insights can monitor both Java and ASP.NET web applications and services, WCF services. They can be hosted on-premises, on virtual machines, or as Microsoft Azure websites. On the client side, Application Insights can take telemetry from web pages and a wide variety of devices including ios, Android, and Windows Store apps.

The correct answer is:

**A. Azure Application Insights** ✅



Explanation:

To identify **average page load times** and performance metrics for a web application hosted in **Azure App Service**, you should use **Azure Application Insights**.

Application Insights provides:

* **Page load time metrics**
* **End-user performance monitoring**
* Request/response times
* Dependency tracking
* Application performance analytics
* Real-time telemetry and dashboards



Why the others are incorrect:

* **B. Activity log of the App Service** ❌ → Tracks management operations (start/stop, config changes), not performance metrics.
* **C. Diagnostics logs of the App Service** ❌ → Logs requests/errors, not user-experience performance analytics.
* **D. Azure Advisor** ❌ → Provides recommendations, not performance telemetry.



✅ **Final answer: A. Azure Application Insights**


### Question #25

You create an alert rule in Azure Monitor as shown in the following exhibit.

![Alt Image Text](../images/az400_2_11.png)

Which action will trigger an alert?

A. a failed attempt to delete the ASP-9bb7 resource

B. a change to a role assignment for the ASP-9bb7 resource

C. a successful attempt to delete the ASP-9bb7 resource

D. a failed attempt to scale up the ASP-9bb7 resource

-------

Based on the exhibit of the Azure Monitor alert rule, the correct answer is **A. a failed attempt to delete the ASP-9bb7 resource.**

**Explanation:**

To determine which action triggers the alert, we look at the **Condition** defined in the image:

1.  **Category:** `Administrative`
    *   In Azure, the **Administrative** category in the Activity Log records all *create, update, delete,* and *action* operations performed on a resource through Azure Resource Manager (ARM).
2.  **Signal name:** `All Administrative operations`
    *   This means the alert is not restricted to a single type of action (like just "Delete"); it covers any task classified as an administrative operation.
3.  **Status:** `failed`
    *   The alert will *only* trigger if the operation does not succeed.

**Evaluating the Options:**

*   **A is correct:** Attempting to **delete** a resource is a standard administrative operation. Because the attempt **failed**, it matches all three criteria of the alert rule.
*   **B is incorrect:** Changing a role assignment is typically categorized under the `Security` or `Administrative` category at a higher scope, but the alert rule specifically filters for **failed** status. A "change" (implying it happened) would be a "Success."
*   **C is incorrect:** The alert rule is specifically set to trigger on `Status == 'failed'`. A **successful** attempt will not trigger this specific rule.
*   **D is incorrect (in the context of exam logic):** While scaling up an App Service Plan is technically an administrative "update" operation, **Delete** is the most definitive and commonly tested example of an "Administrative" lifecycle event in the Activity Log. In most standardized Azure examinations (like AZ-400 or AZ-104), "Delete" is the intended answer for the "Administrative" category.

### Question -25


Your company uses ServiceNow for incident management. You develop an application that runs on Azure.

The company needs to generate a ticket in ServiceNow when the application fails to authenticate.

Which Azure Log Analytics solution should you use?

* A. Application Insights Connector
* B. Automation & Control
* C. IT Service Management Connector (ITSM)
* D. Insight & Analytics

--------

Correct Answer: **C. IT Service Management Connector (ITSM)**

The correct answer is:

**C. IT Service Management Connector (ITSM)** ✅


Explanation:

To automatically **create a ticket in ServiceNow** when an application running on Azure fails to authenticate, you should use the **IT Service Management Connector (ITSM)** in Azure Log Analytics / Azure Monitor.

**IT Service Management Connector**:

* Integrates Azure Monitor and Log Analytics with **ServiceNow**
* Automatically creates **incidents, problems, and change requests**
* Supports alert-based ticket creation
* Designed specifically for **ITSM workflows**



Why the others are incorrect:

* **A. Application Insights Connector** ❌ → Integrates telemetry, not ITSM ticketing.
* **B. Automation & Control** ❌ → Focuses on automation/config management, not ServiceNow integration.
* **D. Insight & Analytics** ❌ → Analytics/visualization, not incident ticket creation.


Flow:

**Azure Logs / Alerts → Azure Monitor → ITSM Connector → ServiceNow Ticket**


✅ **Final answer: C. IT Service Management Connector (ITSM)**


### Question -26

You use **Azure SQL Database Intelligent Insights and Azure Application Insights for monitoring**.

You need to write ad-hoc queries against the monitoring data. Which query language should you use?


* A. Kusto Query Language (KQL)
* B. PL/pgSQL
* C. PL/SQL
* D. Transact-SQL


--------

**Correct Answer: A. Kusto Query Language (KQL)**

The correct answer is:

**A. Kusto Query Language (KQL)** ✅


Explanation:

Both **Azure Application Insights** and **Azure SQL Database Intelligent Insights** store and analyze telemetry data using **Azure Monitor / Log Analytics**, which uses:

👉 **Kusto Query Language (KQL)** for **ad-hoc querying and analytics**.

KQL is designed for:

* Log and telemetry analysis
* Time-series data
* Monitoring and diagnostics
* Security and performance analytics

Why the others are incorrect:

* **B. PL/pgSQL** ❌ → PostgreSQL procedural language
* **C. PL/SQL** ❌ → Oracle database language
* **D. Transact-SQL** ❌ → SQL Server query language (used for relational data, not Azure Monitor logs)


✅ **Final answer: A. Kusto Query Language (KQL)**


### Question -27

Your company creates a web application. You need to recommend a solution that **automatically sends to Microsoft Teams a daily summary of the exceptions that occur in the application**. 

Which two Azure services should you recommend?

Each correct answer presents part of the solution.

* A. Azure Logic Apps
* B. Azure Pipelines
* C. Microsoft Visual Studio App Center
* D. Azure DevOps Project
* E. Azure Application Insights


------

Correct Answer: **AE (Azure Logic Apps and Azure Application Insights)**

A: You can programmatically query Application Insights data to generate custom reports on a schedule. The following options can help you get started quickly: Automate reports with Microsoft Flow, Automate reports with Logic Apps

E: Exceptions in your live web app are reported by Application Insights.

The correct answers are:

**A. Azure Logic Apps**
**E. Azure Application Insights** ✅


Explanation:

To **automatically send a daily summary of application exceptions to Microsoft Teams**, you need:

✅ **E. Azure Application Insights**

Use **Azure Application Insights** to:

* Collect application telemetry
* Track **exceptions, failures, and errors**
* Store monitoring data
* Query exceptions using KQL

✅ **A. Azure Logic Apps**

Use **Azure Logic Apps** to:

* Run on a **daily schedule**
* Query Application Insights
* Format the exception summary
* Send the report to **Microsoft Teams** via a connector


Why the others are incorrect:

* **B. Azure Pipelines** ❌ → CI/CD, not monitoring or notifications
* **C. Visual Studio App Center** ❌ → Mobile/dev analytics, not Azure production telemetry automation
* **D. Azure DevOps Project** ❌ → Project scaffolding, not monitoring automation


Solution architecture:

**Application → Application Insights → Logic App (daily trigger) → Microsoft Teams message**


✅ **Final answer: A and E**


### Question -28

You are monitoring the health and performance of an Azure web app by using Azure Application Insights.

You need to ensure that an alert is sent when **the web app has a sudden rise in performance issues and failures**.

What should you use?


* A. Custom events
* B. Application Insights Profiler
* C. Usage analysis
* D. Smart Detection
* E. Continuous export

The correct answer is:

---------

**D. Smart Detection** ✅



Explanation:

To automatically send an alert when there is a **sudden rise in performance issues and failures** in an Azure web app monitored by Application Insights, you should use **Azure Application Insights Smart Detection**.

**Smart Detection**:

* Uses built-in **machine learning**
* Detects **anomalies** such as sudden spikes in:

  * Failures
  * Exceptions
  * Response times
  * Performance degradation
* Automatically generates **alerts**
* Requires **no custom configuration**
* Minimizes administrative overhead


Why the others are incorrect:

* **A. Custom events** ❌ → Used for custom telemetry, not anomaly detection
* **B. Application Insights Profiler** ❌ → Performance profiling, not alerting
* **C. Usage analysis** ❌ → User behavior analytics, not failure detection
* **E. Continuous export** ❌ → Data export mechanism, not alerting



✅ **Final answer: D. Smart Detection**


Correct Answer: D. Smart Detection

Smart Detection automatically warns you of potential performance problems and failure anomalies in your web application. It performs proactive analysis of the telemetry that your app sends to Application Insights. If there is a sudden rise in failure rates, or abnormal patterns in client or server performance, you get an alert.


### Question #27

You use Azure DevOps to manage the build and deployment of an app named App1.

You have a release pipeline that deploys a virtual machine named VM1.

You plan to monitor the release pipeline by using Azure Monitor.

You need to create an alert to monitor the performance of VM1. The alert must be triggered when the average CPU usage exceeds 70 percent for five minutes.

The alert must calculate the average once every minute.

How should you configure the alert rule? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.

![Alt Image Text](../images/az400_2_13.png)

-------------

Based on the requirements described for the Azure Monitor alert rule, here is the correct configuration:

**Answer Area**

**Aggregation granularity (Period): `5 minutes`**
*   **Reasoning:** The requirement states the alert must be triggered when the average CPU usage exceeds the threshold **"for five minutes."** In Azure Monitor, the "Aggregation granularity (Period)" defines the time window over which the data is averaged. Therefore, to evaluate a 5-minute average, the period must be set to 5 minutes. 
*   *Note:* The requirement to "calculate the average once every minute" refers to the **Frequency of evaluation**, which is a separate setting in Azure Monitor not shown in the dropdowns.

**Threshold value: `Static`**
*   **Reasoning:** A **Static** threshold is used when you have a specific, fixed number as a target (in this case, **70 percent**). **Dynamic** thresholds are used for anomaly detection where the system learns the "normal" behavior of the metric over time.

**Operator: `Greater than`**
*   **Reasoning:** The requirement uses the word **"exceeds."** In mathematical terms, to exceed a value means to be strictly **Greater than** that value.


**Summary of selections:**
1.  **5 minutes**
2.  **Static**
3.  **Greater than**

### Question -29


You have a private GitHub repository. You need to display the commit status of the repository on Azure Boards.

What should you do first?

* A. Configure multi-factor authentication (MFA) for your GitHub account.
* B. Add the Azure Pipelines app to the GitHub repository.
* C. Add the Azure Boards app to the repository.
* D. Create a GitHub action in GitHub.


-------

The correct answer is:

**C. Add the Azure Boards app to the repository.** ✅


Explanation:

To display **GitHub commit status and link commits/work items** in **Azure Boards**, the first required step is to integrate the repository with Azure Boards by installing the **Azure Boards app** in GitHub.

Specifically, you must add the:

**Azure Boards app** to your **GitHub repository**.

This enables:

* Linking commits and PRs to work items
* Displaying commit status in Azure Boards
* **Traceability between code and project management**



Why the others are incorrect:

* **A. Configure MFA** ❌ → Security best practice, but unrelated to Azure Boards integration.
* **B. Add the Azure Pipelines app** ❌ → Used for CI/CD, not work item/commit tracking in Azure Boards.
* **D. Create a GitHub Action** ❌ → Automation workflow, not required for Azure Boards commit visibility.



Correct integration order:

1. **Add Azure Boards app to GitHub repo** ✅
2. (Optional next steps) Configure pipelines, policies, etc.



✅ **Final answer: C. Add the Azure Boards app to the repository.**


To connect Azure Boards to GitHub.com,

connect and configure from Azure Boards. Or, alternatively, install and configure the Azure Boards app from GitHub.

Both methods have been streamlined and support authenticating and operating via the app rather than an individual.

### Question -30

You have a web app hosted on Azure App Service. The web app stores data in an Azure SQL database. 

You need to generate an alert when there are 10,000 simultaneous connections to the database. 


**The solution must minimize development effort**. Which option should you select in the Diagnostics settings of the database?


* A. Send to Log Analytics
* B. Stream to an event hub
* C. Archive to a storage account

The correct answer is:

**A. Send to Log Analytics** ✅


Explanation:

To generate an **alert when there are 10,000 simultaneous connections** to an **Azure SQL Database**, with **minimal development effort**, you should send diagnostics data to **Log Analytics**.

**Azure Log Analytics** enables you to:

* Collect **diagnostic and performance metrics** from Azure SQL Database
* Run **Kusto Query Language (KQL)** queries on connection metrics
* Create **Azure Monitor alert rules** directly from queries
* Trigger alerts automatically when thresholds (e.g., 10,000 connections) are reached

This is the **native, low-code Azure monitoring + alerting path**.



Why the others are incorrect:

* **B. Stream to an event hub** ❌ → For real-time streaming/integration, requires custom processing and code.
* **C. Archive to a storage account** ❌ → For long-term storage/compliance, not alerting or real-time monitoring.

Minimal-effort architecture:

**Azure SQL Diagnostics → Log Analytics → Azure Monitor Alert Rule**


✅ **Final answer: A. Send to Log Analytics**


Correct Answer: A. Send to Log Analytics

HOW TO ENABLE DIAGNOSTICS TO LOG ANALYTICS (This configuration is done PER DATABASE)

1. Click on Diagnostics Settings and then Turn On Diagnostics
2. Selectto Sendto Log Analytics and selectthe Log Analytics workspace. For this sample I will selected only Errors


### Question-31


You have an Azure virtual machine that is monitored by using Azure Monitor, The virtual machine has the Azure Log Analytics agent installed, You plan to **deploy the Service Map solution from the Azure Marketplace** What should you deploy to the virtual machine to support the Service Map solution?

* A. the Dependency agent
* B. the Telegraf agent
* C. the Windows Azure diagnostics extension (WAD)
* D. the Azure monitor agent

------


**Correct Answer: A. the Dependency agent**

The correct answer is:

**A. the Dependency agent** ✅


Explanation:

To support the **Service Map** solution from the Azure Marketplace, in addition to the Log Analytics agent, you must deploy the **Dependency agent** on the virtual machine.

**Azure Monitor Service Map** requires:

* **Log Analytics agent** → collects logs and performance data
* **Dependency agent** → collects **process and network dependency data** (connections between services, ports, and processes)

Together, these enable Service Map to visualize:

* Application dependencies
* Inter-process communication
* Network connections
* Service relationships across VMs


Why the others are incorrect:

* **B. Telegraf agent** ❌ → Used mainly with InfluxDB/monitoring stacks, not Service Map
* **C. Windows Azure Diagnostics extension (WAD)** ❌ → Legacy diagnostics, not Service Map
* **D. Azure Monitor agent** ❌ → New unified agent, but **Service Map specifically requires the Dependency agent**



Requirement summary:

**VM must have:**

* Log Analytics agent ✅ (already installed)
* **Dependency agent** ✅ (missing piece)



✅ **Final answer: A. the Dependency agent**


Use the Dependency agent if you need to use the Map feature VM insights or the Service Map solution.
Note: Consider the following when using the Dependency agent:

The Dependency agent requires the Log Analytics agent to be installed on the same machine. On Linux computers, the Log Analytics agent must be installed before the Azure Diagnostic Extension. On both the Windows and Linux versions of the Dependency Agent, data collection is done using a user-space service and a kernel driver.

### Question-32

**You have multiple teams that work on multiple projects in Azure DevOps**. You need to plan and manage the consumers and producers for each project. The solution must provide an overview of all the projects. What should you do?

* A. Add a Predecessor or Successor link to the feature or user story for the items of each project.
* B. Add a Parent or Child link to the feature or user story for the items of each project.
* C. Install the Dependency Tracker extension and create dependencies for each project.
* D. Create a custom query to show the consumers and producers and add a widget to a dashboard


---

Correct Answer: C


The correct answer is:

**C. Install the Dependency Tracker extension and create dependencies for each project.** ✅


**Explanation:**

You need to **plan and manage consumer/producer relationships across multiple teams and multiple projects** in **Azure DevOps**, with a solution that provides a **single overview of all projects**.

The **Dependency Tracker extension** is purpose-built for this scenario:

* Visualizes **cross-team and cross-project dependencies**
* Models **consumer/producer relationships**
* Provides **roadmap and timeline views**
* Centralized dependency management
* Portfolio-level overview



**Why the other options are incorrect:**

* **A. Predecessor/Successor links** ❌ → Simple relationships, no global visibility.
* **B. Parent/Child links** ❌ → Hierarchy modeling, not dependency planning.
* **D. Custom query + dashboard** ❌ → Limited visibility, not dependency management tooling.


Conclusion:

Only the **Dependency Tracker extension** meets all requirements:

* Multi-team
* Multi-project
* Consumer/producer planning
* Centralized overview



✅ **Final answer: C. Install the Dependency Tracker extension and create dependencies for each project.**


### Question-33

Your company has multiple microservices-based apps that use the following tracing libraries:

Open Telemetry | OpenCensus | OpenTracing | Honeycomb | Jaeger

The company purchases an Azure subscription and implements Application Insights in Azure Monitor.

You plan to centralize distributed tracing for the apps. You need to identify which libraries can  integrate directly with Application Insights.

Which two libraries should you identify? Each correct answer presents a complete solution.

* A. Honeycomb
* B. Open Tracing
* C. Jaeger
* **D. Open Telemtry**
* **E. OpenCensus**

The correct answers are:

**D. OpenTelemetry**
**E. OpenCensus** ✅



Explanation:

To **centralize distributed tracing** in **Azure Monitor / Application Insights**, you need libraries that **can export telemetry directly to Application Insights**.

* **OpenTelemetry**

  * Industry-standard for distributed tracing and metrics
  * Provides **exporters** for Application Insights
  * Actively supported in Azure Monitor

* **OpenCensus**

  * Predecessor to OpenTelemetry
  * Has **native support for Application Insights**



Why the others are incorrect:

* **A. Honeycomb** ❌ → Proprietary tracing system, does **not directly integrate** with Application Insights
* **B. OpenTracing** ❌ → Specification only, requires an implementation (like OpenTelemetry)
* **C. Jaeger** ❌ → Open-source tracing backend, **cannot export directly** to Application Insights



Summary Table:

| Library       | Direct Integration with Application Insights? |
| --- | --- |
| OpenTelemetry | ✅                                             |
| OpenCensus    | ✅                                             |
| OpenTracing   | ❌                                             |
| Jaeger        | ❌                                             |
| Honeycomb     | ❌                                             |



✅ **Final answer: D. OpenTelemetry and E. OpenCensus**


### Question-34

You have an Azure web app named webapp1 that uses the NET Core runtime stack. 

You have an Azure Application Insights resource named AppInsights1. Webapp1 sends telemetry data to Applnsights1. You need to ensure that webapp1 sends the telemetry data at a fixed sampling rate.

What should you do?


* A. From the code repository of webapp1, modify the Applicationinsights.config file.
* **B. From the code repository of webapp1, modify the Startup.cs file.**
* C. From Applnsights1, modify the Usage and estimated costs settings.
* D. From Appinsights1, configure the Continuous export settings.

**Correct Answer: B**

The correct answer is **B. From the code repository of webapp1, modify the Startup.cs file.**

Explanation:

For **.NET Core** applications, Application Insights configuration is handled primarily through code rather than external configuration files like `ApplicationInsights.config` (which is used for classic ASP.NET Framework apps).

1.  **Adaptive vs. Fixed Sampling:** By default, .NET Core apps use **Adaptive Sampling**, which automatically adjusts the volume of telemetry sent to stay within quota limits.
2.  **Configuring Fixed Sampling:** To use a fixed sampling rate in .NET Core, you must explicitly disable the default adaptive sampling and configure the sampling telemetry processor in the `ConfigureServices` method of the **Startup.cs** file (or `Program.cs` in newer versions of .NET).

**Example of the code change required in Startup.cs:**
```csharp
public void ConfigureServices(IServiceCollection services)
{
    // Disable Adaptive Sampling
    var options = new ApplicationInsightsServiceOptions();
    options.EnableAdaptiveSampling = false;
    services.AddApplicationInsightsTelemetry(options);

    // Set Fixed Rate Sampling (e.g., 50%)
    services.AddApplicationInsightsTelemetryProcessor<SamplingTelemetryProcessor>(next => 
        new SamplingTelemetryProcessor(next) { SamplingPercentage = 50 });
}
```

Why other options are incorrect:

*   **A. Applicationinsights.config:** This file is not used by .NET Core. It is only used by ASP.NET Framework applications.
*   **C. Usage and estimated costs:** This is where you configure **Ingestion Sampling**. Ingestion sampling happens at the Azure service endpoint *after* the data has been sent from the app. The question asks to ensure the web app **sends** the data at a fixed rate (SDK-side sampling), which reduces network traffic and is configured in code.
*   **D. Continuous export:** This feature is used to export telemetry data to Azure Storage or SQL for long-term retention or analysis; it does not control the rate at which telemetry is collected or sent.



### Question-35

You use Azure Pipelines to build and deploy an app named App1. You plan to monitor App1 by using Application Insights. You create an Application Insights instance named Al1. **You need to configure App1 to use Al1.** Which file should you modify?

* **A. appsettings.json**
* B. launchSettings.json
* C. startup.cs
* D. project.json


**Correct Answer: A. appsettings.json**

The correct answer is:

**A. appsettings.json** ✅



Explanation:

For a **.NET Core application**, Application Insights is typically configured via the **`appsettings.json`** file.

* You specify the **Instrumentation Key** of your Application Insights resource (Al1) in `appsettings.json`:

```json
{
  "ApplicationInsights": {
    "InstrumentationKey": "YOUR_INSTRUMENTATION_KEY_HERE"
  }
}
```

* The application reads this configuration at startup and sends telemetry to **Al1**.



Why the others are incorrect:

* **B. launchSettings.json** ❌ → Used for local debugging and environment variables, not Application Insights configuration
* **C. Startup.cs** ❌ → Optional; you can add Application Insights SDK here, but the question asks which file to modify for configuration
* **D. project.json** ❌ → Legacy .NET Core project file (pre-.NET Core 2.0), not used for runtime configuration



✅ **Final answer: A. appsettings.json**


### Question-36

You have an Azure subscription that contains multiple Azure services. **You need to send an SMS alert when scheduled maintenance is planned for the Azure services**.

Which two actions should you perform? Each correct answer presents part of the solution.

* A. Enable Azure Security Center.
* B. Create and configure an Azure Monitor alert rule.
* C. Create an Azure Service Health alert.
* D. Create and configure an action group.


**Correct Answer: CD**


The correct answers are:

**C. Create an Azure Service Health alert** ✅
**D. Create and configure an action group** ✅



Explanation:

To receive an **SMS alert when scheduled maintenance is planned** for your Azure services:

1. **Create an Azure Service Health alert** (**C**)

   * Azure Service Health monitors the health of your Azure resources.
   * You can configure alerts for:

     * **Planned maintenance**
     * **Service issues**
     * **Health advisories**

2. **Create and configure an action group** (**D**)

   * Action groups define **how alerts are delivered** (email, SMS, webhook, push, etc.).
   * To receive SMS notifications, the **SMS action** must be added to the action group.
   * Associate the **Service Health alert** with the action group.



Why the others are incorrect:

* **A. Enable Azure Security Center** ❌ → Security Center monitors security posture, not scheduled maintenance
* **B. Create an Azure Monitor alert rule** ❌ → Regular Azure Monitor alerts track metrics/logs, but **Service Health alerts** are specifically for planned maintenance and service issues



✅ **Final answer: C and D**



Creating planned maintenance alerts using Azure Service Health

1. Login into the Azure portal and select Service Health.
2. Select Health alerts followed by + Create service health alert from the top of the window on the right.
3. In the Edit Alert blade, give the alert a Name, Description, check the subscription is correct and choose a resource group.
4. The next step is to work through the Criteria section choosing which services, regions and types of event alerts should be monitored. For the purpose of this article all services and regions have been checked but only planned maintenance events.
5. Selector create an Action group. (An Action group is a group of actions to be taken, should an event be logged.)
6. Configure the actions to be taken. We are only configuring an email alert, so we first name the action, then chose Email/SMS/Push/Voice from the drop down list.



### Question-37

You are designing a **strategy to monitor the baseline metrics** of Azure virtual machines that run Windows Server. 

You need to collect detailed data about the processes running in the guest operating system.

Which two agents should you deploy? Each correct answer presents part of the solution.


* A. the Telegraf agent
* **B. the Azure Log Analytics agent**
* C. the Azure Network Watcher Agent for Windows
* **D. the Dependency agent**

Correct Answer: BD

The correct answers are:

✅ **B. the Azure Log Analytics agent**
✅ **D. the Dependency agent**

Why these are correct

To collect **detailed process-level data** from inside the **guest operating system** of Azure VMs, you need the agents used by **VM insights**:

🧩 Azure Log Analytics agent

* Collects:

  * Performance counters
  * Event logs
  * Syslogs
  * Process data (basic telemetry)
* Sends data to **Log Analytics workspace**

🔍 Dependency agent

* Collects:

  * **Detailed process information**
  * Process dependencies
  * Network connections between processes
* Enables:

  * **Service maps**
  * Deep process-level visibility

👉 Together, these two agents provide **full process monitoring and dependency mapping**.

Why the others are wrong

| Option                           | Reason                                                               |
| -------------------------------- | -------------------------------------------------------------------- |
| A. Telegraf agent ❌              | Open-source monitoring agent, not native Azure VM process monitoring |
| C. Azure Network Watcher Agent ❌ | Used for **network diagnostics**, not process-level OS monitoring    |

Exam principle

> **VM guest process monitoring = Log Analytics agent + Dependency agent**

This combo is required for:

* VM Insights
* Service Map
* Process dependency tracking

✅ Final Answer:

**B and D**


### Question-38

You configure Azure Application Insights and the shared service plan tier for a web app. **You enable Smart Detection**. You confirm that standard metrics are visible in the logs, but when you test a failure, you do not receive a Smart Detection notification. 

What prevents the Smart Detection notification from being sent?


* A. You must enable the Snapshot Debugger for the web app.
* **B. Smart Detection uses the first 24 hours to establish the normal behavior of the web app**.
* C. The web app is configured to use the shared service plan tier.
* D. You must restart the web app before Smart Detection is enabled.

**Correct Answer: B**

The correct answer is:

✅ **B. Smart Detection uses the first 24 hours to establish the normal behavior of the web app.**

Why this is correct

**Azure Application Insights Smart Detection** uses **machine learning** to detect anomalies.
To do that, it must first:

* Collect baseline telemetry
* Learn what “normal” behavior looks like
* Build a statistical model of request rates, failures, performance, etc.

This **baseline learning period takes up to 24 hours**.
During this time:

* Metrics are visible ✅
* Logs are available ✅
* **Smart Detection alerts are NOT triggered yet** ❌

So test failures during this learning window **will not generate notifications**.

 Why the other options are wrong

| Option                        | Reason                                               |
| ----------------------------- | ---------------------------------------------------- |
| A. Snapshot Debugger ❌        | Used for debugging exceptions, not anomaly detection |
| C. Shared service plan tier ❌ | Does not affect Smart Detection                      |
| D. Restart the web app ❌      | Not required for Smart Detection to function         |

 Key exam rule

> **Smart Detection requires a baseline learning period (≈ 24 hours) before alerts are generated.**

✅ Final Answer:

**B. Smart Detection uses the first 24 hours to establish the normal behavior of the web app.**




### Question-39

You have an Azure DevOps organization named Contoso and an Azure subscription. 

The subscription contains an Azure virtual machine scale set named VMSS1 that is configured for autoscaling. 

You use Azure DevOps to build a web app named App1 and deploy App1 to VMSS1. 

**App1 is used heavily and has usage patterns that vary on a weekly basis.** 

You need to recommend a solution to detect an abnormal rise in the rate of failed requests to App1. 

**The solution must minimize administrative effort.**

What should you include in the recommendation?

* **A. the Smart Detection feature in Azure Application Insights**
* B. the Failures feature in Azure Application Insights
* C. an Azure Service Health alert
* D. an Azure Monitor alert that uses an Azure Log Analytics query


The correct answer is:

**A. the Smart Detection feature in Azure Application Insights** ✅



Explanation:

You need to **detect an abnormal rise in the rate of failed requests** to a heavily used web app (App1), with **minimal administrative effort**.

**Azure Application Insights – Smart Detection** is designed for this scenario:

* Uses **machine learning** to automatically detect anomalies in telemetry data, including:

  * Exception spikes
  * Failed requests
  * Performance degradations
* Automatically generates **alerts** when unusual behavior occurs
* **No manual threshold configuration** is needed → minimizes administrative overhead


Why the other options are incorrect:

* **B. Failures feature in Application Insights** ❌

  * Provides **historical metrics and charts** for failed requests
  * Does **not automatically detect anomalies** or trigger alerts

* **C. Azure Service Health alert** ❌

  * Monitors **Azure service outages or planned maintenance**, not your application’s request failures

* **D. Azure Monitor alert with Log Analytics query** ❌

  * Could detect anomalies, but requires **manual query authoring and thresholds** → higher administrative effort



✅ **Final answer: A. the Smart Detection feature in Azure Application Insights**


**Correct Answer: A**


After setting up Application Insights for your project, and if your app generates a certain minimum amount of data, Smart Detection of failure anomalies takes 24 hours to learn the normal behavior of your app, before it is switched on and can send alerts.

### Question-40


You are automating the testing process for your company.

You need to automate Ul testing of a web application.

Which framework should you use?

* A. JaCoco
* **B. Selenium**
* C. Xamarin.UlTest
* D. Microsoft.CodeAnalysis


Correct Answer: B. Selenium


The correct answer is:

**B. Selenium** ✅


Explanation:

To **automate UI (User Interface) testing** of a web application, the most widely used and supported framework is **Selenium**.

**Selenium provides:**

* Cross-browser web automation (Chrome, Edge, Firefox, etc.)
* Scriptable interaction with HTML elements
* Integration with CI/CD pipelines (Azure DevOps, Jenkins)
* Support for multiple programming languages (C#, Java, Python, etc.)



Why the others are incorrect:

* **A. JaCoCo** ❌ → Code coverage tool for Java, not UI testing
* **C. Xamarin.UITest** ❌ → For **mobile app UI testing**, not web apps
* **D. Microsoft.CodeAnalysis** ❌ → Roslyn compiler API, used for analyzing or generating code, not UI testing


✅ **Final answer: B. Selenium**


### Question-41

You have an Azure DevOps organization named Contoso and an Azure subscription. The subscription contains an Azure virtual machine scale set named VMSS1 and an Azure Standard Load Balancer named LB1. 

LB1 distributes incoming requests across VMSS1 instances. You use Azure DevOps to build a web app named App1 and deploy App1 to VMSS1. 

App1 is accessible via HTTPS only and configured to require mutual authentication by using a client certificate. 

You need to recommend a solution for implementing a health check of App1.

The solution must meet the following requirements:

1- Identify whether individual instances of VMSS1 are eligible for an upgrade operation.

2- Minimize administrative effort.

What should you include in the recommendation?

- A. an Azure Load Balancer health probe
- B. Azure Monitor autoscale
- C. the Custom Script Extension
- **D. the Application Health extension**

**Correct Answer: D. the Application Health extension**

The correct answer is:

**D. the Application Health extension** ✅


Explanation:

You need to implement a **health check for App1** running on a **VMSS behind an Azure Standard Load Balancer**, with the following requirements:

1. Identify whether **individual VMSS instances are eligible for an upgrade operation**
2. Minimize **administrative effort**

**Azure VMSS Application Health Extension** is specifically designed for this scenario:

* **Monitors the health of application endpoints** on each VM in the scale set
* Integrates with **VMSS automatic upgrades**, marking instances as healthy/unhealthy for rolling upgrades
* Supports **HTTPS and mutual authentication** configurations
* Requires minimal setup compared to custom scripts



Why the others are incorrect:

* **A. Azure Load Balancer health probe** ❌

  * Can monitor endpoints for traffic distribution
  * **Cannot directly integrate with VMSS upgrade eligibility** in the context of application-level health

* **B. Azure Monitor autoscale** ❌

  * Scales VMSS instances based on metrics, not application health for upgrades

* **C. Custom Script Extension** ❌

  * Can implement health checks manually, but **higher administrative overhead** compared to the built-in Application Health extension



Summary:

| Requirement                 | Solution Fit                   |
| --------------------------- | ------------------------------ |
| App-level health monitoring | ✅ Application Health extension |
| VMSS upgrade eligibility    | ✅ Application Health extension |
| Minimize admin effort       | ✅ Application Health extension |



✅ **Final answer: D. the Application Health extension**



Monitoring your application health is an important signal for managing and upgrading your deployment. 

Azure virtual machine scale sets provide support for rolling upgrades including automatic OS-image upgrades, which rely on health monitoring of the individual instances to upgrade your deployment. You can also use health extension to monitor the application health of each instance in your scale set and perform instance repairs using automatic instance repairs.


### Question-42

You have a build pipeline in Azure Pipelines that occasionally fails. You discover that a test measuring the response time of an API endpoint causes the failures. 

**You need to prevent the build pipeline from failing due to the test.**

Which two actions should you perform? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

- A. Set Flaky test detection to Off.
- **B. Clear Flaky tests included in test pass percentage.**
- C. Enable Test Impact Analysis (TIA).
- **D. Manually mark the test as flaky.**
- E. Enable test slicing.

Correct Answer: BD

The correct answers are:

**D. Manually mark the test as flaky** ✅
**B. Clear Flaky tests included in test pass percentage** ✅



Explanation:

The scenario:

* A **build pipeline fails** because a **response-time test intermittently fails**.
* Goal: **Prevent the build from failing due to this flaky test**.

Azure Pipelines provides **flaky test management**:

1. **Mark the test as flaky (D)**

   * Manually mark the test so Azure DevOps knows **failures in this test shouldn’t fail the build**.

2. **Clear “Flaky tests included in test pass percentage” (B)**

   * This ensures that **flaky tests are excluded from the pass/fail calculations** of the build.


Why the others are incorrect:

* **A. Set Flaky test detection to Off** ❌

  * Turns off automated detection but doesn’t prevent the build from failing for already flaky tests

* **C. Enable Test Impact Analysis (TIA)** ❌

  * Optimizes test execution by running only impacted tests; doesn’t prevent failures

* **E. Enable test slicing** ❌

  * Distributes tests across multiple agents; doesn’t prevent build failure due to flakiness


✅ **Final answer: D and B**



### Question-43

Your company hosts a web application in Azure. 

The company uses Azure Pipelines for the build and release

Stakeholders management of the application. **Stakeholders report that the past few releases have negatively affected system performance.** You configure alerts in Azure Monitor.

You need to ensure that new releases are only deployed to production if the releases meet defined performance

baseline criteria in the staging environment first.

What should you use to prevent the deployment of releases that fall to meet the performance baseline?

- A. an Azure Scheduler job
- B. a trigger
- **C. a gate**
- D. an Azure function

Correct Answer: C. a gate

The correct answer is:

**C. a gate** ✅



Explanation:

In **Azure Pipelines**, if you want to **prevent a release from being deployed to production unless it meets defined performance baseline criteria** in a staging environment, the correct mechanism is a **gate**.

**Gates** in Azure Pipelines:

* Automatically evaluate **predefined conditions** before a deployment proceeds
* Can use **Azure Monitor metrics, Application Insights telemetry, or REST APIs** as evaluation criteria
* Stop deployments if **performance thresholds** are not met
* Minimize manual intervention (low administrative effort)


Why the other options are incorrect:

* **A. Azure Scheduler job** ❌ → Only runs scheduled tasks, doesn’t enforce release gates
* **B. Trigger** ❌ → Starts a pipeline or release; cannot block based on performance criteria
* **D. Azure Function** ❌ → Could implement custom logic, but requires manual integration and more overhead; gates provide **native support**


✅ **Final answer: C. a gate**



Scenarios and use cases for gates include: Quality validation. 


Query metrics from tests on the build artifacts such as pass rate or code coverage and deploy only if they are within required thresholds. Use Quality Gates to integrate monitoring into your pre-deployment or post-leployment. This ensures that you are meeting the key health/performance metrics (KPls) as your applications move from dev to production and any differences in the infrastructure environment or scale is not negatively impacting your KPIs.



### Question-44

You manage a project in Azure DevOps. You need to prevent the configuration of the project from changing over time.

Solution: Pertorm a subscription Health scan when packages are created 

Does this meet the goal?

A. Yes

B. No

The correct answer is:

**B. No** ✅


Explanation:

The goal is to **prevent the configuration of the Azure DevOps project from changing over time**.

Performing a **subscription health scan when packages are created**:

* Only checks the **health or compliance** of resources or packages
* Does **not prevent configuration changes**
* It is **reactive**, not preventive

To actually **prevent configuration drift**, you would need solutions such as:

* **Azure Policy** → enforce rules on resources
* **Locking project settings or using process templates** → restrict changes
* **Automation/CI/CD pipelines** → enforce desired state


✅ **Final answer: B. No**



**Instead implement Continuous Assurance for the project.**

> Incorrect Options presents in part of this series Questions are

1- Implement Continuous Integration for the project   (wrong)

2- Add a code coverage step to the build pipelines.    (wrong)
 
3- Perform a Subscription Health scan when packages are created.   (wrong)

<mark>Correct Option is Implement Continuous Assurance for the project</mark>

> Note: The Subscription Security health check features in ASK contains a set of scripts that examines a subscription and flags off security issues, 

> misconfigurations or obsolete artifacts/settings which can put your subscription at higher risk.

Reference: https://azsk.azurewebsites.net/04-Continous-Assurance/Readme.html


### Question-45

You manage a project in Azure DevOps. You need to prevent the configuration of the project from changing over time.

Solution: Add a code coverage step to the build pipelines.

Does this meet the goal?

A. Yes

B. No

The correct answer is:

**B. No** ✅


Explanation:

Adding a **code coverage step** to a build pipeline:

* Measures **how much of your code is tested**
* Improves **quality metrics** and testing insight
* **Does not prevent project configuration changes** in Azure DevOps

To **prevent configuration drift**, you would need approaches like:

* **Process templates / inherited processes** → lock work item types, states, and fields
* **Azure Policy** → enforce rules on Azure resources
* **Automation / CI enforcement** → maintain desired state of project settings


✅ **Final answer: B. No**


Instead implement Continuous Assurance for the project.

Note: The Subscription Security health check features in AzSK contains a set of scripts that examines a subscription and flags off security issues, misconfigurations or obsolete artifacts/settings which can put your subscription at higher risk.

Reference: https://azsk.azurewebsites.net/04-Continous-Assurance/Readme.html

incorrect Options presents in part of this series Questions are

- 1- Implement Continuous Integration for the project
- 2- Add a code coverage step to the build pipelines.
- 3- Perform a Subscription Health scan when packages are created.

Correct Option is Implement Continuous Assurance for the project

### Question-46

You manage a project in Azure DevOps. You need to prevent the configuration of the project from changing over time.

Solution: Implement Continuous Integration for the project

Does this meet the goal?

A. Yes

B. No


The correct answer is:

**B. No** ✅



Explanation:

**Continuous Integration (CI)**:

* Automates **building and testing code** whenever changes are pushed
* Ensures **code quality** and detects errors early
* **Does not prevent changes to project configuration** in Azure DevOps (such as process templates, work item types, permissions, or settings)

To **prevent project configuration from changing**, you would need:

* **Process templates / inherited processes** → lock work item types, states, fields
* **Automation scripts or Azure DevOps REST API enforcement** → maintain desired state
* **Policies or approvals** for configuration changes


✅ **Final answer: B. No**


**Instead implement Continuous Assurance for the project.**


* 1- Implement Continuous Integration for the project
* 2- Add a code coverage step to the build pipelines.
* 3- Perform a Subscription Health scan when packages are created.


> Note: The Subscription Security health check features in ASK contains a set of scripts that examines a subscription and flags off security issues, misconfigurations or obsolete artifacts/settings which can put your subscription at higher risk.




### Question-47

You manage a project in Azure DevOps. You need to prevent the configuration of the project from changing over time.

**Solution: Implement Continuous Assurance for the project**

Does this meet the goal?

A. Yes

B. No


The correct answer is:

**A. Yes** ✅


Explanation:

**Continuous Assurance** in Azure DevOps refers to practices and tooling that **continuously monitor and enforce the desired state of a project’s configuration**:

* Ensures **project settings, processes, and policies** remain consistent over time
* Detects **configuration drift** and can automatically remediate deviations
* Helps maintain compliance and governance for DevOps projects

By implementing **Continuous Assurance**, you can effectively **prevent unintended changes to project configuration** over time.


✅ **Final answer: A. Yes**


incorrect Options presents in part of this series Questions are

* 1- Implement Continuous Integration for the project
* 2- Add a code coverage step to the build pipelines.
* 3- Perform a Subscription Health scan when packages are created.


**Correct Option is Implement Continuous Assurance for the project**

> The basic idea behind Continuous Assurance (CA) is to setup the ability to check for "drift" from what is considered a secure snapshot of a system. Support for Continuous Assurance lets us treat security truly as a 'state' as opposed to a 'point in time' achievement.



### Question-48

You use Azure Pipelines to manage build pipelines, Github to store source code, and Dependabot to manage dependencies. You have an app named App1. Dependabot detects a dependency in App1 that requires an update. What should you do first to apply the update?

* A. Create a pull request.
* B. Approve the pull request.
* C. Create a branch.
* D. Perform a commit.


**Correct Answer: B. Approve the pull request.**

The correct answer is **B. Approve the pull request.**

**Explanation:**

Dependabot is designed to automate the dependency management process. When Dependabot is used to **manage** dependencies (as stated in the scenario), it follows an automated workflow:

1.  **Detection:** Dependabot scans your repository and detects an outdated or vulnerable dependency.
2.  **Creation:** It automatically **creates a new branch** and **performs a commit** with the updated version.
3.  **Pull Request:** It automatically **creates a pull request (PR)** that includes the changes needed to update the dependency.

Since Dependabot has already performed the detection and created the PR, the first action you (the developer/user) must take to "apply" the update to your codebase is to **review and approve the pull request** (or merge it). This allows your CI/CD pipeline (Azure Pipelines) to run tests and eventually deploy the update.

**Why other options are incorrect:**

*   **A. Create a pull request:** Dependabot does this automatically when it detects the update. You do not need to do this manually.
*   **C. Create a branch:** Dependabot creates the branch for the update automatically.
*   **D. Perform a commit:** Dependabot performs the version-bump commit within the branch it creates.


### Question-49

You are designing a configuration management solution to support five apps hosted on Azure Ap Service. Each app is available in the following three environments: development, test, and production


You need to recommend a configuration management solution that meets the following requirements 


**Supports teature flags, Tracks configuration changes from the past 30 days, Stores hierarchically structured contiguration values, Controls access to the configurations by using role-based access control (RBAC) permissions, Stores shared valur as key-value pairs that can be used by all the apps**


Which Azure service should you recommend as the configuration management solution?


* A. Azure Cosmos DB
* B. Azure App Service
* C. Azure App Configuration
* D. Azure Key Vault

**Correct Answer: C - Azure App Configuration**

The correct answer is:

**C. Azure App Configuration** ✅


Explanation:

You need a **configuration management solution** for multiple apps and environments with the following requirements:

1. **Supports feature flags** → Enable/disable features per environment or user segment.
2. **Tracks configuration changes from the past 30 days** → Provides **history and versioning**.
3. **Stores hierarchically structured configuration values** → Organizes settings logically per app/environment.
4. **Controls access using RBAC** → Can assign **read/write permissions** per app or user.
5. **Stores shared key-value pairs usable by all apps** → Provides **centralized, reusable configuration**.

**Azure App Configuration** meets all these requirements:

* Centralized configuration store for multiple apps
* Built-in **feature flags**
* **Versioning and history** for configuration changes
* Hierarchical keys and labels for environment-specific values
* Supports **RBAC and managed identities** for secure access


Why the others are incorrect:

* **A. Azure Cosmos DB** ❌ → A database for structured/unstructured data, not specialized for configuration management or feature flags.
* **B. Azure App Service** ❌ → Hosting platform, not a configuration management service.
* **D. Azure Key Vault** ❌ → Stores **secrets, keys, certificates**, not full-featured hierarchical configuration or feature flags.


✅ **Final answer: C. Azure App Configuration**


### Question-50

You have a containerized solution that runs in Azure Container Instances. 

The solution contains a frontend container named App1 and a backend container named DB1. DB1 loads a large amount of data during startup. 

You need to verify that DB1 can handle incoming requests before users can submit requests to App1. What should you configure?

* A. a liveness probe
* B. a performance log
* **C. a readiness probe**
* D. an Azure Load Balancer health probe

The correct answer is:

**C. a readiness probe** ✅


Explanation:

In **containerized applications** (like **Azure Container Instances** or Kubernetes):

* **Readiness probes** are used to indicate whether a container is **ready to serve traffic**.
* The frontend container (**App1**) should only send requests to the backend (**DB1**) **after DB1 is ready**.
* Since DB1 **loads a large amount of data on startup**, a readiness probe ensures:

  * Requests are only routed when DB1 has **finished initialization**
  * Prevents errors from early traffic



Why the others are incorrect:

* **A. Liveness probe** ❌ → Checks if a container is **alive**; restarts it if unhealthy. Does not control traffic routing.
* **B. Performance log** ❌ → For monitoring, does not affect request routing.
* **D. Azure Load Balancer health probe** ❌ → Monitors VM/container health from the load balancer perspective, but readiness probes are more precise for container **startup dependencies**.


✅ **Final answer: C. a readiness probe**


### Question-51

You have several Azure Active Directory (Azure AD) accounts.

You need to ensure that users use multi-factor authentication (MA) to access Azure apps from untrusted networks.

What should you configure in Azure

* A. access reviews
* B. managed identities
* C. entitlement management
* **D. conditional access**

Answer: D

You can configure a Conditional Access policy that requires MFA for access from untrusted networks.

The correct answer is:

**D. conditional access** ✅


Explanation:

To **require multi-factor authentication (MFA) for users accessing Azure apps from untrusted networks**, you should configure **Conditional Access** in **Azure Active Directory**.

**Conditional Access policies allow you to:**

* Apply **MFA requirements** based on conditions such as:

  * User or group membership
  * Application being accessed
  * Device or network location (trusted vs. untrusted networks)
* Block or allow access depending on risk or context
* Enforce **granular access control** without affecting all users all the time



Why the others are incorrect:

* **A. Access reviews** ❌ → Used to review and recertify user access, not enforce MFA.
* **B. Managed identities** ❌ → For granting **Azure resources access to other Azure resources**, not user authentication.
* **C. Entitlement management** ❌ → Used for managing **access packages** and lifecycle of access, not conditional MFA enforcement.



✅ **Final answer: D. conditional access**


### Question-52

You have an Azure DevOps organization named Contoso and an Azure subscription. The subscription contains an Azure virtual machine scale set named VMSS1 that is configured for autoscaling.

You have a project in Azure DevOps named Project. Project is used to build a web app named App1 and deploy App1 to VMSS1.

**You need to ensure that an email alert is generated** whenever VMSS1 scales in or out.

Solution: From Azure DevOps, configure **the Notifications settings for Project1**.

Does this meet the goal?


* A. Yes
* **B. No**


Answer: B

The correct answer is:

**B. No** ✅



Explanation:

The requirement:

* **Generate an email alert whenever VMSS1 scales in or out.**

The proposed solution:

* Configure **Notifications in Azure DevOps for Project1**

**Why this does NOT meet the goal:**

* **Azure DevOps notifications** only handle events related to **Azure DevOps activities**, such as:

  * Work item changes
  * Build pipeline results
  * Pull requests
* **VMSS scaling events** are **Azure platform events**, not DevOps project events.

**Correct approach:**

1. Use **Azure Monitor alerts** on the **VMSS metrics** (like `Capacity` or `Instances`).
2. Create an **action group** with **email notifications**.

This ensures you receive an email whenever VMSS1 scales in or out.


✅ **Final answer: B. No**


**Notifications** help you and your team stay informed about activity that occurs within your projects in Azure DevOps. You can get notified when changes occur to the following items: 

* work items 
* code reviews 
* pull requests 
* source control files 
* builds

### Question-53

You have an Azure DevOps organization named Contoso and an Azure subscription. The subscription contains an Azure virtual machine scale set named VMSS1 that is configured for autoscaling.

You have a project in Azure DevOps named Project. Project is used to build a web app named App1 and deploy App1 to VMSS1.

You need to ensure that an email alert is generated whenever VMSS1 scales in or out.

Solution: From Azure DevOps, configure the Service hooks settings for Project1.

Does this meet the goal?

* A. Yes
* **B. No**

Answer: B

The correct answer is:

**B. No** ✅


Explanation:

The requirement:

* **Generate an email alert whenever VMSS1 scales in or out.**

The proposed solution:

* Configure **Service Hooks in Azure DevOps for Project1**

**Why this does NOT meet the goal:**

* **Azure DevOps Service Hooks** are used to integrate **Azure DevOps events** (like work items, builds, pull requests) with external services (Slack, Teams, Jenkins, etc.).
* **VMSS scaling events** are **Azure platform events**, not DevOps project events.
* Service Hooks cannot natively monitor VMSS scaling or trigger alerts for it.

**Correct approach:**

1. Use **Azure Monitor** to track the **VMSS metric `Capacity` or instance count`**.
2. Create an **alert rule** that triggers when the scale set scales in or out.
3. Attach an **action group** to send an **email notification**.

This approach directly monitors **VMSS autoscaling events** and sends emails as required.



✅ **Final answer: B. No**


### Question-54

You have an Azure DevOps organization named Contoso and an Azure subscription. The subscription contains an Azure virtual machine scale set named VMSS1 that is configured for autoscaling.

You have a project in Azure DevOps named Project. Project is used to build a web app named App1 and deploy App1 to VMSS1.

You need to ensure that an email alert is generated whenever VMSS1 scales in or out.

**Solution: From Azure Monitor, create an action group**.

Does this meet the goal?

* A. Yes
* B. No

Answer: A

An action group is a collection of notification preferences defined by the owner of an Azure subscription. Azure Monitor, Service Health and
Azure Advisor alerts use action groups to notify users that an alert has been triggered.

The correct answer is:

**B. No** ✅

Explanation:

The requirement:

* **Generate an email alert whenever VMSS1 scales in or out.**

The proposed solution:

* **Create an action group in Azure Monitor**

**Why this alone does NOT meet the goal:**

* An **action group** defines **how** notifications are delivered (email, SMS, webhook, etc.)
* **By itself**, creating an action group does **not monitor or trigger alerts**
* To meet the goal, you must also:

  1. **Create an alert rule** in Azure Monitor on the **VMSS metric** (e.g., `Capacity` or `InstanceCount`)
  2. **Associate the alert rule with the action group**

Only then will **VMSS scaling events trigger emails**.


✅ **Final answer: B. No**

Why the solution fails

> “From Azure Monitor, create an action group”

❌ Missing alert rule
❌ No trigger condition
❌ No scale-event detection

### Question-55

You use GitHub for source control.

A file that contains sensitive data is committed accidentally to the Git repository of a project.

You need to delete the file and its history form the repository.

Which two tools can you use? Each correct answer presents a complete solution.

NOTE: Each correct selection is worth one point.

* A. the git filter-branch command
* B. BFG Repo-Cleaner
* C. the git rebase command
* D. GitHub Desktop

The correct answers are:

**A. the `git filter-branch` command**
**B. BFG Repo-Cleaner**


Why these are correct:

Both tools are specifically designed to **rewrite Git history** and permanently remove sensitive files from **all commits**:

✅ `git filter-branch`

* Native Git tool
* Can remove files from the entire repository history
* Powerful but slow and complex for large repos

✅ **BFG Repo-Cleaner**

* Purpose-built tool for removing secrets/files from Git history
* Much faster and safer than `filter-branch`
* Industry standard for this task



Why the others are wrong:

❌ **C. `git rebase`**

* Rewrites commit history, but **not suitable for removing a file from all historical commits**

❌ **D. GitHub Desktop**

* GUI client only
* Cannot rewrite repository history or purge sensitive data



Final Answer:

**A and B** ✅


Answer: AB

To entirely remove unwanted files from a repository's history you can use either the git filter-branch command or the BFG Repo-Cleaner open source tool.



### Question-56

You plan to provision a self-hosted Linux agent.

**Which authentication mechanism should you use to register the self-hosted agent?**

* **A. personal access token (PAT)**
* B. SSH key
* C. Alternate credentials
* D. certificate


The correct answer is:

**A. personal access token (PAT)** ✅


Explanation:

To register a **self-hosted Azure DevOps agent** (including on **Linux**), the supported and required authentication mechanism is:

🔐 **Personal Access Token (PAT)**

* Used during agent configuration (`config.sh`)
* Authenticates the agent to the Azure DevOps organization
* Standard and secure method
* Supports scoped permissions



Why the others are incorrect:

❌ **B. SSH key**
→ Used for Git authentication, **not agent registration**

❌ **C. Alternate credentials**
→ Deprecated in Azure DevOps

❌ **D. certificate**
→ Not supported for Azure DevOps agent registration



Final Answer:

**A. personal access token (PAT)** ✅


Note: PAT Supported only on Azure Pipelines and TFS 2017 and newer. 

After you choose PAT, paste the PAT token you created into the command prompt window. 

Use a personal access token (PAT) if your Azure DevOps Server or TFS instance and the agent machine are not in a trusted domain. PAT authentication is handled by your Azure DevOps Server or TFS instance instead of the domain controller.

### Question-57

You are building a Microsoft ASP.NET application that requires authentication.

You need to authenticate users by using Azure Active Directory (Azure AD).

What should you do first?

* A. Assign an enterprise application to users and groups
* **B. Create an app registration in Azure AD**
* C. Configure the application to use a SAML endpoint
* D. Create a new Auth token from the application
* E. Create a membership database in an Azure SQL database


The correct answer is:

**B. Create an app registration in Azure AD** ✅


Explanation:

To enable authentication using **Azure Active Directory (Azure AD)** for a Microsoft ASP.NET application, the **first required step** is to:

🔐 **Register the application in Azure AD**

This:

* Creates an identity for your app in Azure AD
* Generates:

  * Application (client) ID
  * Directory (tenant) ID
* Enables configuration of:

  * Authentication flows (OAuth2 / OpenID Connect)
  * Redirect URIs
  * Certificates/secrets
  * API permissions

Only **after app registration** can you configure authentication in your ASP.NET app.


Why the other options are wrong:

❌ **A. Assign an enterprise application to users and groups**
→ Happens *after* app registration and only if using assignment-based access control

❌ **C. Configure the application to use a SAML endpoint**
→ SAML is optional and legacy; modern apps use OpenID Connect/OAuth2

❌ **D. Create a new Auth token from the application**
→ Tokens are issued by Azure AD after authentication is configured

❌ **E. Create a membership database in an Azure SQL database**
→ That’s for custom auth, not Azure AD authentication



Final Answer:

**B. Create an app registration in Azure AD** ✅


Answer: B

Register your application to use Azure Active Directory. Registering the application means that your developers can use Azure AD to authenticate users and request access to user resources such as email, calendar, and documents.



### Question-58

You have an Azure DevOps organization named Contoso.

You need to recommend an authentication mechanism that meets the following requirements:

**Supports authentication from Git**

**Minimizes the need to provide credentials during authentication**

What should you recommend?

* **A. personal access tokens (PATs) in Azure DevOps**
* B. Alternate credentials in Azure DevOps
* C. user accounts in Azure Active Directory (Azure AD)
* D. managed identities in Azure Active Directory (Azure AD)

The correct answer is:

**A. personal access tokens (PATs) in Azure DevOps** ✅



Why this is the best choice:

PATs meet **both requirements**:

✅ Supports authentication from Git

* PATs are fully supported for:

  * `git clone`
  * `git pull`
  * `git push`
* They replace passwords for Git operations in Azure DevOps.

✅ Minimizes the need to provide credentials

* PATs can be:

  * **Stored in Git credential managers**
  * **Cached securely**
  * Used non-interactively in scripts and CI/CD pipelines
    ➡️ No repeated username/password prompts



Why the other options are incorrect:

❌ **B. Alternate credentials in Azure DevOps**

* Deprecated and not recommended by Microsoft
* Less secure than PATs

❌ **C. user accounts in Azure Active Directory (Azure AD)**

* Require interactive authentication
* Not practical for Git CLI automation

❌ **D. managed identities in Azure Active Directory (Azure AD)**

* Used for Azure resource authentication (VMs, Functions, etc.)
* **Not supported for Git authentication**



Final Answer:

**A. personal access tokens (PATs) in Azure DevOps** ✅


Answer: A

Personal access tokens (PATs) give you access to Azure DevOps and Team Foundation Server (TFS), without using your username and password directly.


These tokens have an expiration date from when they're created. You can restrict the scope of the data they can access. 

Use PATs to authenticate if you don't already have SSH keys set up on your system or if you need to restrict the permissions that are granted by the credential.

### Question-59

You have an application that consists of several Azure App Service web apps and Azure functions.

You need to assess the security of the web apps and the functions.

Which Azure feature can you use to provide a recommendation **for the security of the application?**


* A. Security & Compliance in Azure Log Analytics
* B. Resource health in Azure Service Health
* C. Smart Detection in Azure Application Insights
* **D. Compute & apps in Azure Security Center**

The correct answer is:

**D. Compute & apps in Azure Security Center** ✅


Explanation:

**Compute & apps** is a feature of **Azure Security Center** (now part of Microsoft Defender for Cloud) that provides:

* Security posture management
* Vulnerability assessments
* Security recommendations
* Threat protection
  
  for:

  
* **Azure App Service web apps**
* **Azure Functions**
* Virtual machines
* Containers
* Other compute resources

This is exactly what you need to **assess the security** of your application and receive **security recommendations**.


Why the other options are incorrect:

❌ **A. Security & Compliance in Azure Log Analytics**
→ Focused on log analysis and compliance reporting, not security recommendations for apps/functions

❌ **B. Resource health in Azure Service Health**
→ Shows availability and outages, not security posture

❌ **C. Smart Detection in Azure Application Insights**
→ Detects anomalies and performance issues, not security vulnerabilities


Final Answer:

**D. Compute & apps in Azure Security Center** ✅

Monitor compute and app services: Compute & apps include the App Services tab, which App services: list of your App service environments and current security state of each.

### Question-60

You have a branch policy in a project in Azure DevOps. The policy requires that code always builds successfully.

You need to ensure that a specific user can always merge changes to the master branch, even if the code fails to compile. The solution must use the principle of least privilege.

What should you do?

* A. Add the user to the Build Administrators group
* B. Add the user to the Project Administrators group
* C. From the Security settings of the repository, modify the access control for the user.
* **D. From the Security settings of the branch, modify the access control for the user.**

The correct answer is:

**D. From the Security settings of the branch, modify the access control for the user.** ✅



Why this is correct (Least Privilege principle):

Branch policies in **Azure DevOps** can be bypassed by users who have specific **permissions on the branch**, such as:

* **Bypass policies when completing pull requests**
* **Bypass policies when pushing**

By configuring **branch-level security**:

* You grant **only the minimum required permission**
* Only affects the **master branch**
* Only affects the **specific user**
* Does **not elevate project-wide or repo-wide privileges**

This is exactly what *least privilege* requires.


Why the other options are wrong:

❌ **A. Build Administrators group**
→ Too broad; affects build pipelines, not branch policy bypass

❌ **B. Project Administrators group**
→ Excessive privilege; full project control (violates least privilege)

❌ **C. Repository security settings**
→ Repo-level permissions affect **all branches**, not just `master` (too broad)


Final Answer:

**D. From the Security settings of the branch, modify the access control for the user.** ✅


### Question-61

You have an Azure Resource Manager template that deploys a multi-tier application

You need to prevent the user who performs the deployment from viewing the account credentials and connection strings used by the application.
What should you use?

* **A. Azure Key Vault**
* B. a Web.config file
* C. an Appsettings.json file
* D. an Azure Storage table
* E. an Azure Resource Manager parameter file



The correct answer is:

**A. Azure Key Vault** ✅


Why this is correct:

To prevent the **deployer** of an **ARM template** from seeing **secrets (credentials, connection strings, keys)**, you must store those secrets in **Azure Key Vault** and reference them securely from the template.

**How it works:**

* Secrets are stored in Key Vault
* ARM template uses **Key Vault references**
* The deploying user does **not** need permission to read secrets
* The service/application identity retrieves secrets at runtime

This provides:

* ✔ Secret isolation
* ✔ Access control via RBAC
* ✔ Secure secret management
* ✔ No plaintext secrets in templates
* ✔ No exposure to deployers



Why the other options are wrong:

❌ **B. Web.config file**
→ Stores secrets in plaintext (not secure)

❌ **C. appsettings.json**
→ Plaintext secrets, visible to deployers and in source control

❌ **D. Azure Storage table**
→ Not a secure secret store

❌ **E. ARM parameter file**
→ Parameters can still be viewed by the user deploying the template



Security Best Practice Architecture:

```
ARM Template → Azure Key Vault → Application (Managed Identity)
```



Final Answer:

**A. Azure Key Vault** ✅


When you need to pass a secure value (like a password) as a parameter during deployment, you can retrieve the value from an Azure Key Vault.

You retrieve the value by referencing the key vault and secret in your parameter file. The value is never exposed because you only reference its key vault ID. The key vault can exist in a different subscription than the resource group you are deploying to.




### Question-62

You have an Azure DevOps organization named Contoso that contains a project named Project1.

You provision an Azure key vault named Keyvault 1.

You need to reference Keyvault1 secrets in a build pipeline of Praject1.

What should you do first?

* A. Add a secure file to Project1.
* B. Create an XAML build service.
* C. Create a variable group in Project.
* D. Configure the security policy of Contoso.

The correct answer is:

**C. Create a variable group in Project1** ✅


Explanation:

To reference secrets from **Azure Key Vault** in an **Azure DevOps** build pipeline, the required first step is to:

👉 **Create a Variable Group** in the project and **link it to Key Vault**.

This enables:

* Secure retrieval of secrets at runtime
* No secrets stored in pipeline YAML
* Centralized secret management
* RBAC-based access control



Correct configuration flow:

1. **Create variable group in Project1** ✅
2. Link variable group to **Keyvault1**
3. Authorize the service connection
4. Reference variables in pipeline YAML



Why the other options are wrong:

❌ **A. Add a secure file**
→ Secure files are for certificates/keys/files, not Key Vault secrets

❌ **B. Create an XAML build service**
→ XAML builds are deprecated and irrelevant

❌ **D. Configure the security policy of Contoso**
→ Not required for Key Vault integration with pipelines



Final Answer:

**C. Create a variable group in Project1** ✅


Answer: D

Before this will work, the build needs permission to access the Azure Key Vault. This can be added in the Azure Portal.

Open the Access Policies in the Key Vault and add a new one. Choose the principle used in the DevOps build.



### Question-63

Your company uses Azure DevOps.

Only users who have accounts in Azure Active Directory can access the Azure DevOps environment.

You need to **ensure that only devices that are connected to the on-premises network** can access the Azure DevOps environment.

What should you do?

* A. Assign the Stakeholder access level to all users.
* B. In Azure Active Directory, configure risky sign-ins.
* C. In Azure DevOps, configure Security in Project Settings.
* **D. In Azure Active Directory, configure conditional access.**

The correct answer is:

**D. In Azure Active Directory, configure conditional access.** ✅


Explanation:

To restrict access to **Azure DevOps** so that it’s **only accessible from devices connected to your on-premises network**, you must use **Azure Active Directory Conditional Access**.

With Conditional Access, you can:

* Define **named locations** (e.g., on-premises IP ranges)
* Create policies that:

  * Allow access **only from trusted network locations**
  * Block access from external/untrusted networks
* Enforce device/network-based access control

This is exactly what Conditional Access is designed for. ✅


Why the other options are incorrect:

❌ **A. Assign the Stakeholder access level**
→ Only controls permissions inside Azure DevOps, not network access

❌ **B. Configure risky sign-ins**
→ Related to identity risk detection, not network location restrictions

❌ **C. Configure Security in Project Settings**
→ Project-level permissions, not device/network access control



Final Answer:

**D. In Azure Active Directory, configure conditional access.** ✅


**Answer: D**

Conditional Access is a capability of Azure Active Directory. With Conditional Access, you can implement automated access control decisions for accessing your cloud apps that are based on conditions.

Conditional Access policies are enforced after the first-factor authentication has been completed.



### Question-64

You have the following Azure policy.

```
if: {
    allOf: [
        {
            "field": "type",
            "equals": "Microsoft.Storage/storageAccounts"
        },
        {
            "field": "Microsoft.Storage/storageAccounts/supportsHttpsTrafficOnly",
            "notEquals": "true"
        }
    ]
},
then: {
    effect: "deny"
}
```


You assign the policy to the Tenant root group.

What is the effect of the policy?

* A. prevents all HTTP traffic to existing Azure Storage accounts
* B. ensures that all traffic to new Azure Storage accounts is encrypted
* C.prevents HTTPS traffic to new Azure Storage accounts when the accounts are accessed over the Internet
* D.ensures that all data for new Azure Storage accounts is encrypted at rest


The correct answer is:

**B. ensures that all traffic to new Azure Storage accounts is encrypted** ✅


Explanation:

This Azure Policy targets the resource type:

* `Microsoft.Storage/storageAccounts`

and checks the property:

* `supportsHttpsTrafficOnly`

The rule says:

```json
"notEquals": "true"
```

with effect:

```json
"effect": "deny"
```

So:

👉 **Any new Storage Account that does NOT have `supportsHttpsTrafficOnly = true` will be denied**

This means:

* New storage accounts **must enforce HTTPS-only traffic**
* HTTP (unencrypted) access is **blocked at creation time**
* Only **encrypted (HTTPS) traffic** is allowed


Why the other options are incorrect:

❌ **A. prevents all HTTP traffic to existing Azure Storage accounts**
→ Azure Policy does **not** retroactively modify existing resources

❌ **C. prevents HTTPS traffic to new Azure Storage accounts**
→ This is the opposite of what the policy does

❌ **D. ensures data is encrypted at rest**
→ This policy controls **encryption in transit (HTTPS)**, not encryption at rest


Correct Interpretation:

This policy enforces:

* 🔐 **Encryption in transit**
* 🆕 **Only for new storage accounts**
* ❌ Blocks creation if HTTPS-only is not enabled



Final Answer:

**B. ensures that all traffic to new Azure Storage accounts is encrypted** ✅


### Question-65 - Duplicate

You have an Azure DevOps organization named Contoso, an Azure DevOps project named Project, an Azure subscription named Sub1, and an Azure key vault named vault1.

You need to ensure that you can reference the values of the secrets stored in vault in all the pipelines of Project. The solution must prevent the values from being stored in the pipelines.

What should you do?

* **A. Create a variable group in Praject1.**
* B. Add a secure file to Project.
* C. Modify the security settings of the pipelines.
* D. Configure the security policy of Contoso.


The correct answer is:

**A. Create a variable group in Project1** ✅



Explanation:

To reference **Azure Key Vault secrets** in **Azure DevOps pipelines** without storing them directly in the pipelines:

1. **Create a Variable Group** in the Azure DevOps project.
2. **Link the Variable Group to Vault1** by authorizing a **service connection** to the Key Vault.
3. **Reference the Variable Group** in your build or release pipelines.

**Advantages:**

* Secrets are **retrieved at runtime** from Azure Key Vault.
* Secrets are **never stored in the pipeline YAML** or logs.
* You can share the Variable Group across multiple pipelines in the project.
* Supports **RBAC for secure access**.



Why the other options are incorrect:

❌ **B. Add a secure file to Project**

* Secure files are for storing **certificates or key files**, not key-value secrets.

❌ **C. Modify the security settings of the pipelines**

* Controls who can access the pipeline but **does not allow runtime secret retrieval**.

❌ **D. Configure the security policy of Contoso**

* Too broad; policies do not provide a mechanism to securely reference Key Vault secrets in pipelines.



Final Answer:

**A. Create a variable group in Project1** ✅



Answer: A

Use a variable group to store values that you want to control and make available across multiple pipelines.



### Question-66 - Duplicated

You have an Azure DevOps project that contains a build pipeline. The build pipeline uses approximately 50 open source libraries.

You need to ensure that all the open source libraries comply with your company's licensing standards.

Which service should you use?

* A. Ansible
* B. Maven
* **C. White Source Bolt**
* D. Helm

The correct answer is:

**C. WhiteSource Bolt** ✅



Explanation:

**WhiteSource Bolt** is a **free Azure DevOps extension** that:

* Scans your project’s **open source libraries**
* Detects **license compliance issues**
* Identifies **security vulnerabilities**
* Integrates directly into **build pipelines** for automated checks

This is the correct tool to **ensure open source libraries comply with licensing standards** in Azure DevOps.



Why the other options are incorrect:

❌ **A. Ansible**

* Automation/configuration management tool, not for license scanning

❌ **B. Maven**

* Build tool for Java, manages dependencies, but **does not enforce license compliance by itself**

❌ **D. Helm**

* Kubernetes package manager, unrelated to license compliance for build libraries



Final Answer:

**C. WhiteSource Bolt** ✅


### Question-67

You are designing the security validation strategy for a project in Azure DevOps.

You need to identify package dependencies that have known security issues and can be resolved by an update.

What should you use?

* A. Octopus Deploy
* B. Jenkins
* C. Gradle
* D. SonarQube

The correct answer is:

**D. SonarQube** ✅

Explanation:

**SonarQube** is a static analysis tool that can:

* Analyze code quality and security vulnerabilities
* Identify **open source/package dependencies with known security issues**
* Suggest fixes or updates for the vulnerable dependencies
* Integrate with **Azure DevOps pipelines** for automated scanning

<mark>This makes it ideal for detecting **security issues in dependencies**.</mark>



 Why the other options are incorrect:

❌ **A. Octopus Deploy**

* Deployment automation tool; does **not scan dependencies for vulnerabilities**

❌ **B. Jenkins**

* CI/CD automation server; can run scans but does **not inherently analyze dependency security**

❌ **C. Gradle**

* Build tool for Java/Kotlin; manages dependencies but does **not check security vulnerabilities by itself**



Final Answer:

**D. SonarQube** ✅


### Question-68

Your company is concerned that when developers introduce open source libraries, it creates licensing compliance issues.

You need to add an automated process to the build pipeline to detect when common open source libraries are added to the code base.

What should you use?


* A. Microsoft Visual SourceSafe
* B. Code Style
* **C. Black Duck**
* D. Jenkins

The correct answer is:

**C. Black Duck** ✅


Explanation:

**Black Duck** is a widely used **software composition analysis (SCA) tool** that:

* Detects **open source libraries** added to a code base
* Checks **license compliance** for each library
* Identifies **known vulnerabilities** in open source components
* Integrates into **build pipelines** for automated checks

<mark>This makes it ideal for **automating the detection of new open source libraries and enforcing licensing compliance**.</mark>

Why the other options are incorrect:

❌ **A. Microsoft Visual SourceSafe**

* Old source control system; does **not analyze licenses**

❌ **B. Code Style**

* Ensures coding conventions, **not open source license checks**

❌ **D. Jenkins**

* CI/CD server; can run scans but does **not inherently detect license issues**



Final Answer:

**C. Black Duck** ✅


Answer. C

Secure and Manage Open Source Software

**Black Duck helps organizations identify and migate open source secunty, license compliance and code-quality risks across application and container portfolios.**

Black Duck Hub and its plugin for Team Foundation Server (TFS) allows you to automatically find and fix open source security vulnerabilities during the buiki process, so you can proactively manage risk. The integration allows you to receive alerts and fail bulds when any Black Duck

Hub policy violations are met.

**<mark>There are several versions of this question in the exam. The question has two possible correct answers:</mark>**

* **Black Duck**
* **White Source Bolt**

Other incorrect answer options you may see on the exam include the following:

* OWASP ZAP
* PDM
* SourceGear
* SourceGear Vault 

### Question-69


You have an Azure DevOps project that contains a build pipeline. The build pipeline uses approximately 50 open source libraries.

You need to ensure that all the open source libraries comply with your company's licensing standards.

Which service should you use?

* A. NuGet
* B. Maven
* **C. Black Duck**
* D. Helm

The correct answer is:

**C. Black Duck** ✅

Explanation:

**Black Duck** is a **software composition analysis (SCA) tool** that:

* Scans your project for **open source libraries**
* Identifies **license compliance issues**
* Detects **known security vulnerabilities**
* Can be integrated directly into **Azure DevOps build pipelines**

This makes it ideal for ensuring **all open source libraries comply with company licensing standards**.

Why the other options are incorrect:

❌ **A. NuGet**

* Package manager for .NET; manages packages but **does not enforce license compliance**

❌ **B. Maven**

* Build tool for Java; manages dependencies but **does not check licenses automatically**

❌ **D. Helm**

* Kubernetes package manager; unrelated to license compliance for application libraries



Final Answer:

**C. Black Duck** ✅


**Answer: C**

Secure and Manage Open Source Software

Black Duck helps organizations identify and mitigate open source security, license compliance and code-quality risks across application and container portfolios.

Black Duck Hub and its plugin for Team Foundation Server (TFS) allows you to automatically find and fix open source security vulnerabilities during the buiki process, so you can proactively manage risk. 

The integration allows you to receive alerts and fail builds when any Black Duck Hub policy violations are met.


### Question-70  ✅✅✅

Your company develops an app for iOS. All users of the app have devices that are members of a private distribution group in Microsoft Visual
Studio App Center.

You plan to distribute a new release of the app

**You need to identify which certificate file you require to distribute the new release from App Center.**

Which file type should you upload to App Center?

* A..cer
* B..pfx
* **C..p12**
* D..pvk

The correct answer is:

The correct answer is **C. .p12**.

Explanation:

To distribute an iOS app through App Center, the app must be signed with a valid **Distribution Certificate**.

*   **Why .p12?** An iOS certificate alone (usually a `.cer` file) only contains the public key. To sign an app on a build server or a distribution platform like App Center, you need both the certificate and its associated **private key**. In the Apple ecosystem, the standard way to export a certificate along with its private key is as a **PKCS #12** archive, which uses the **.p12** extension.
*   **The Process:** You typically generate a Certificate Signing Request (CSR) on a Mac, download the `.cer` from the Apple Developer portal, install it into your Keychain, and then export it from Keychain Access as a `.p12` file.

Why other options are incorrect:

*   **A. .cer:** This is just the public certificate. It does not contain the private key required for signing the app.
*   <mark>**B. .pfx:** This is a similar container format to .p12, but it is primarily used in Windows/Microsoft environments. While modern tools sometimes treat them interchangeably, **.p12** is the specific standard required for iOS/Apple development.</mark>
*   **D. .pvk:** This is a legacy format used to store private keys only and is not used in the iOS code-signing process.

Answer. C

A successful IOS device build will produce an ipa file. In order to install the build on a device, it needs to be signed with a valid provisioning profile and certificate.

To sign the builds produced from a branch, enable code signing in the configuration pane and upload a provisioning profile (mobileprovision) and a valid certificate (p12), along with the password for the certificate.



### Question-71

Your company is concerned that when developers introduce **open source libraries, it creates licensing compliance issues.**

You need to add an automated process to the build pipeline to detect when common open source libraries are added to the code base.

What should you use?

- A. OWASP ZAP
- B. Jenkins
- C. Code Style
- **D. White Source Bolt**

The correct answer is:

**D. WhiteSource Bolt** ✅

Explanation:

**WhiteSource Bolt** (now part of Mend/WhiteSource) is a **software composition analysis (SCA)** tool designed to:

* Automatically **detect open source libraries** in your codebase
* Identify **license compliance issues**
* Detect **known vulnerabilities** in dependencies
* Integrate directly into **Azure DevOps build pipelines** for automated scanning

This makes it the ideal solution to:

> add an automated process to detect when common open source libraries are added to the code base and ensure licensing compliance.

Why the other options are incorrect:

❌ **A. OWASP ZAP**

* Security testing tool for **web application vulnerabilities**, not license compliance

❌ **B. Jenkins**

* CI/CD server; can run tools but **does not perform license scanning itself**

❌ **C. Code Style**

* Enforces coding conventions, **not open source license compliance**

Final Answer:

**D. WhiteSource Bolt** ✅


WhiteSource provides WhiteSource Bolt, a lightweight open source security and management solution developed specifically for integration with Azure DevOps and Azure DevOps Server.


Note: White Source is the leader in continuous open source software security and compliance management. WhiteSource integrates into your build process, irrespective of your programming languages, build tools, or development environments. It works automatically, continuously, and silently in the background, checking the security, licensing, and quality of your open source components against WhiteSource constantly-updated definitive database of open source repositories.

There are several versions of this question in the exam. The question has fwo possible correct answers:

1. Black Duck
2. White Source Bolt

Other incorrect answer options you may see on the exam include the following:

1. Microsoft Visual SourceSafe
2. PDM
3. SourceGear
4. SourceGear Vault


### Question-72

You plan to use a NuGet package in a project in Azure DevOps. **The NuGet package is in a feed that requires authentication.**

You need to ensure that the project can restore the NuGet package automatically.

What should the project use to automate the authentication?

- A. an Azure Automation account
- **B. an Azure Artifacts Credential Provider**
- C.an Azure Active Directory (Azure AD) account that has multi-factor authentication (MFA) enabled
- D. an Azure Active Directory (Azure AD) service principal

The correct answer is:

**B. an Azure Artifacts Credential Provider** ✅

Explanation:

When restoring a **NuGet package** from an **authenticated feed** in **Azure DevOps**, the recommended and supported way to automate authentication is the:

👉 **Azure Artifacts Credential Provider**

It automatically:

* Handles authentication to **Azure Artifacts feeds**
* Works with `nuget restore`, `dotnet restore`, `msbuild`
* Uses existing Azure DevOps credentials
* Requires **no manual login**
* Is designed for **CI/CD automation**



Why the other options are incorrect:

❌ **A. Azure Automation account**
→ Used for runbooks, not NuGet feed authentication

❌ **C. Azure AD account with MFA**
→ MFA blocks automation and cannot be used non-interactively

❌ **D. Azure AD service principal**
→ Not how NuGet feed auth is handled in Azure DevOps



Final Answer:

**B. an Azure Artifacts Credential Provider** ✅

Answer. B

**The Azure Artifacts Credential Provider automates the acquisition of credentials needed to restore NuGet packages as part of your NET development workfiow.** It integrates with MSBuild, dotnet, and NuGet exe) and works on Windows, Mac, and Linux. Any time you want to use packages from an Azure Artifacts feed,

the Credential Provider will automatically acquire and securely store a token on behalf of the NuGet client you’re using.


### Question-73

You use Azure Pipelines to manage project builds and deployments.

You plan to use Azure Pipelines for Microsoft Teams to notify the legal team when a new build is ready for release.

You need to configure the Organization Settings in Azure DevOps to support Azure Pipelines for Microsoft Teams.

What should you turn on?

- **A. Third-party application access via Auth**
- B. Azure Active Directory Conditional Access Policy Validation
- C.Alternate authentication credentials
- D. SSH authentication


Answer. A

The Azure Pipelines app uses the Auth authentication protocol, and requires Third-party application access via Auth for the organization to be enabled. 

To enable this setting, navigate to Organization Settings > Security> Policies, and set the Third-party application access via Auth for the organization setting to On.


The correct answer is:

**A. Third-party application access via OAuth** ✅



Explanation:

To integrate **Azure Pipelines** with **Microsoft Teams** (using the *Azure Pipelines for Microsoft Teams* app), **Azure DevOps** must allow external apps to authenticate via OAuth.

So in **Organization Settings → Policies**, you must enable:

👉 **Third-party application access via OAuth**

This allows:

* Microsoft Teams app to authenticate to Azure DevOps
* Build/release notifications to Teams channels
* Secure API access using OAuth tokens



Why the other options are incorrect:

❌ **B. Azure AD Conditional Access Policy Validation**
→ For identity security testing, not app integrations

❌ **C. Alternate authentication credentials**
→ Legacy auth method, not used for Teams integration

❌ **D. SSH authentication**
→ Used for Git access, not service integrations



Final Answer:

**A. Third-party application access via OAuth** ✅


### Question-74

You have an existing project in Azure DevOps.

**You plan to integrate Github as the repository for the project**

You need to ensure that Azure Pipelines runs under the Azure Pipelines identity.

Which authentication mechanism should you use?

- A. personal access token (PAT)
- **B. GitHub App**
- C.Azure Active Directory (Azure AD)
- D. OAuth

The correct answer is:

**B. GitHub App** ✅

Explanation:

To integrate **GitHub** as the repository for an **Azure DevOps** project **and ensure Azure Pipelines runs under the Azure Pipelines identity**, you must use:

👉 **GitHub App authentication**

This provides:

* **Native integration between Azure DevOps and GitHub**
* Secure, scoped permissions
* Pipeline execution under the **Azure Pipelines identity**
* Automatic token management
* No user credentials or PATs required
* Enterprise-grade security model

This is the **modern, recommended** integration method.

Why the other options are incorrect:

❌ **A. personal access token (PAT)**
→ Uses a **user identity**, not Azure Pipelines identity

❌ **C. Azure Active Directory (Azure AD)**
→ GitHub does not authenticate repositories via Azure AD

❌ **D. OAuth**
→ Legacy integration model; GitHub App replaces this method for Azure DevOps integration

Final Answer:

**B. GitHub App** ✅


GitHub App uses the Azure Pipelines identity.

**Incorrect Answers:**

A: Personal access token and Auth use your personal GitHub identity

### Question-75 

You use release pipelines in Azure Pipelines to deploy an app. Secrets required be the pipeline are stored as pipeline variables. 

Logging of commands is enabled for the Azure Pipelines agent.

You need to prevent the values of the secrets from being logged.

What should you do?


- **A. Store the secrets in the environment variables instead of the pipeline variables.**
- B. Pass the secrets on the command line instead of in the pipeline variables.
- C.Apply a prefix of secret to the name of the variables.
- D.Echo the values of the secrets to the command line.

Answer: A

Don't set secret variables in your YAML file. Operating systems often log commands for the processes that they run, and you wouldn't want the log to include a secret that you passed in as an input. 

Use the script's environment or map the variable within the variables block to pass secrets to your pipeline.

Incorrect Answers:

- B: Never pass secrets on the command line
- C: Adding a prefix does not make the variable a secret. The issecret property makes it secret but does not prevent logging of the secret.
- D: Never echo secrets as output.

The correct answer is **A. Store the secrets in the environment variables instead of the pipeline variables.**

Explanation:

While Azure Pipelines automatically masks variables marked as **Secrets** (replacing them with `***` in the logs), simply marking them as secrets is sometimes not enough to satisfy strict security requirements when **command logging** is enabled.

1.  **The Problem with Pipeline Variables (Substitution):** When you use a pipeline variable in a script using the `$(Variable)` syntax, the agent replaces the placeholder with the actual value *before* executing the command. If command logging is enabled, the log will show the invocation of the command. Even if masked, the log might show `myscript.sh --password ***`.
2.  **The Solution (Environment Variables):** The security best practice for Azure Pipelines is to map secrets to **environment variables**. Secret variables are not automatically made available to scripts/tasks as environment variables for security reasons. By explicitly mapping a secret to an environment variable in the YAML or task settings, the script can access the value directly from the process environment.
3.  **Why this prevents logging:** When a secret is accessed via an environment variable, it does not appear in the command-line string at all. The log will simply show `myscript.sh`, and the secret remains entirely within the process memory, never appearing in the agent's command invocation logs (even as asterisks).

**Example of the correct implementation in YAML:**

```yaml
- script: ./myscript.sh
  env:
    MY_SECRET: $(vso_secret_variable) # Map pipeline secret to env var
```

Why the other options are incorrect:

*   **B. Pass the secrets on the command line:** This is the worst practice. Even if masked, it puts the secret in the process tree and the command invocation log.
*   **C. Apply a prefix of secret:** Azure Pipelines does not have a functional feature that masks variables based on their name prefix.
*   **D. Echo the values:** Echoing a secret is the primary way they accidentally end up in logs. While there is a logging command to *set* a secret (`issecret=true`), the prompt asks how to handle secrets already stored as variables.

### Question-76

You have an Azure subscription inked to an Azure Active Directory Premium Plan 1 tenant.

A security review indicates that too many users have privileged access to resources.

You need to deploy a privileged access management solution that meets the following requirements:

- Enforces time limits on the use of privileged access
- Requires approval to activate privileged access
- Minimizes costs

What should you do first?

- A. Configure notifications when privileged roles are activated.
- B. Configure alerts for the activation of privleged roles
- C. Enforce Azure Multi-Factor Authentication (MFA) for role activation.
- **D. Upgrade the license of the Azure Active Directory (Azure AD) tenant.**

The correct answer is:

**D. Upgrade the license of the Azure Active Directory (Azure AD) tenant.** ✅

Explanation:

The requirements describe **Privileged Identity Management (PIM)**:

* ⏱ **Time-limited privileged access**
* ✅ **Approval-based role activation**
* 💰 **Cost minimization**

These features are provided by **Azure AD Privileged Identity Management**, which is part of:

> 🔐 **Azure Active Directory Premium Plan 2 (P2)**

Current situation:

You are on **Azure AD Premium Plan 1 (P1)** ❌
P1 does **not** include PIM.

So before you can configure:

* approvals
* time-bound access
* just-in-time elevation
* access reviews
* role activation workflows

👉 You **must first upgrade to Azure AD Premium P2**.



Why the other options are wrong as the *first* step:

❌ **A. Configure notifications**
→ Requires PIM (P2) to already be enabled

❌ **B. Configure alerts**
→ Requires PIM (P2) to already be enabled

❌ **C. Enforce MFA for role activation**
→ Requires PIM (P2) to exist first

All of these are **configuration steps after PIM is available**.



Correct sequence:

1. ✅ **Upgrade Azure AD to Premium P2**
2. Enable **Privileged Identity Management (PIM)**
3. Configure:

   * Approval workflows
   * Time limits
   * MFA
   * Alerts
   * Notifications



Final Answer:

**D. Upgrade the license of the Azure Active Directory (Azure AD) tenant.** ✅



### Question-77 

You plan to create a GitHub workflow that will use GitHub Actions. The actions will require a 256-KB secret.

You need to recommend a solution to store and encrypt the secret. The secret value must be accessible only to the workflow. The solution must minimize administrative effort

What should you recommend?

- A. Store the secret in the organization-level GitHub secrets.
- B. Store the secret in the repository-level GitHub secrets.
- **C. Encrypt the secret value and store the value in the repository. Store the decryption key in the repository-level Github secrets.**
- D.Encrypt the secret value and store the value in the repository. Store the decryption key in the organization-level GitHub secrets.

Answer: C

The correct answer is **C. Encrypt the secret value and store the value in the repository. Store the decryption key in the repository-level GitHub secrets.**

**Explanation:**

This recommendation is based on a specific technical limitation of GitHub Actions:

1.  **GitHub Secret Size Limit:** GitHub Secrets have a maximum size limit of **64 KB**. Since your secret is **256 KB**, it is too large to be stored directly in the standard GitHub Secrets store. This eliminates options A and B.
2.  **Handling Large Secrets:** The standard procedure for handling secrets larger than 64 KB (such as large certificates or configuration files) is to:
    *   Encrypt the large file locally.
    *   Commit the **encrypted** file into the source code repository.
    *   Store the **decryption key** (which is small and fits within the 64 KB limit) as a GitHub Secret.
3.  **Scope and Security:** The requirement specifies that the secret must be accessible **only to the workflow**. Storing the decryption key as a **repository-level** secret ensures that only workflows within that specific repository can access the key to decrypt the data. **Organization-level** secrets (Option D) would potentially make the key available to other repositories within the organization, violating the "accessible only to the workflow" requirement and increasing administrative complexity.

**Why this minimizes administrative effort:**

Using the repository to store the encrypted blob and the built-in Secrets feature for the key avoids the need to provision, pay for, and manage external third-party tools like Azure Key Vault or HashiCorp Vault.



### Question-78

You have a GitHub Enterprise account.

**You need to enable push protection for secret scanning of the account repositories.**

What should you do first?

- **A. Purchase a GitHub Advanced Security license.**
- B. Purchase Premium Plus support.
- C. Enforce multi-factor authentication (MFA).
- D. Create an access policy for secrets.

Answer: A

The correct answer is:

**A. Purchase a GitHub Advanced Security license.** ✅

Explanation:

To enable **push protection for secret scanning** in a **GitHub Enterprise** account, you must first have:

👉 **GitHub Advanced Security (GHAS)**

**Push protection** is a feature of **GitHub Advanced Security**, not standard GitHub Enterprise.

GHAS provides:

* 🔍 Secret scanning
* 🚫 **Push protection** (blocks secrets before commit/push)
* 🔐 Code scanning
* 📦 Dependency scanning

Why the other options are incorrect:

❌ **B. Purchase Premium Plus support**
→ Support plan only, no security features

❌ **C. Enforce MFA**
→ Security best practice, but **does not enable secret scanning**

❌ **D. Create an access policy for secrets**
→ GitHub does not use access policies for secret scanning features

Correct activation sequence:

1. ✅ Purchase **GitHub Advanced Security**
2. Enable **Secret scanning**
3. Enable **Push protection**
4. Configure org/repo policies

Final Answer:

**A. Purchase a GitHub Advanced Security license.** ✅



### Question-79 

You have an Azure subscription that contains four Azure virtual machines.

**You need to configure the virtual machines to use a single identity.** The solution must meet the following requirements:

- Ensure that the credentials for the identity are managed automatically.
- Support granting privileges to the identity.

Which type of identity should you use?

- A. a system-assigned managed identity
- B. a user-assigned managed identity
- C. a service principal
- D. a user account


The correct answer is:

**B. a user-assigned managed identity** ✅

Explanation:

To configure **multiple Azure virtual machines** to use a **single identity** while ensuring:

* 🔄 **Credentials are managed automatically**
* 🔐 **Centralized privilege/role assignment**
* 🧩 **One identity shared across multiple resources**

you must use a:

👉 **User-assigned managed identity**

Why this is correct:

A **Azure Managed Identity** (user-assigned):

* Can be **attached to multiple VMs**
* Has **automatic credential rotation** by Azure
* Supports **RBAC role assignments**
* Is lifecycle-independent of VMs
* Provides **centralized access control**
* Requires **no secrets, no passwords, no certificates**

This exactly matches all requirements.

Why the other options are wrong:

❌ **A. system-assigned managed identity**
→ Each VM gets its **own unique identity** (cannot share one identity across multiple VMs)

❌ **C. service principal**
→ Requires **manual secret/cert management** ❌
→ Does not meet "credentials managed automatically"

❌ **D. user account**
→ Not designed for application/service authentication
→ Violates least privilege and automation principles

Comparison:

| Feature                    | System-assigned | User-assigned |
| -------------------------- | --------------- | ------------- |
| Auto credential management | ✅               | ✅             |
| Shared across multiple VMs | ❌               | ✅             |
| Central RBAC               | ❌               | ✅             |
| Lifecycle independent      | ❌               | ✅             |

Final Answer:

**B. a user-assigned managed identity** ✅


### Question-80

You have a GitHub repository that contains multiple workflows and a secret stored at the environment level.

You need to ensure that the secret can be used by all the workflows.

What should you do first?

- A. Recreate the secret at the organization level.
- **B. Recreate the secret at the repository level.**
- C. Enable required reviewers.

The correct answer is:

**B. Recreate the secret at the repository level.** ✅

Explanation:

In **GitHub**, secrets have different scopes:

* **Environment-level secrets** → Only available to workflows/jobs that explicitly reference that **environment**
* **Repository-level secrets** → Available to **all workflows in the repository**
* **Organization-level secrets** → Shared across multiple repositories (broader scope)

Since your requirement is:

> ensure that the secret can be used by **all workflows** in the repository

👉 The correct solution is to **store the secret at the repository level**.

This provides:

* 🔐 Encryption at rest
* ⚙️ Automatic availability to all workflows
* 🧩 No environment dependency
* 🧑‍💻 Minimal administrative effort
* 🎯 Correct scope (not too broad, not too narrow)

Why the other options are wrong:

❌ **A. Recreate the secret at the organization level**
→ Over-scoped (available to multiple repositories unnecessarily)

❌ **C. Enable required reviewers**
→ This is for environment approvals, not secret visibility

Final Answer:

**B. Recreate the secret at the repository level.** ✅


### Question-81

You are designing the development process for your company.

You need to recommend a solution for continuous inspection of the company's code base to **locate common code patterns that are known to be problematic.**
What should you include in the recommendation?

- A. Microsoft Visual Studio test plans
- B. Gradle wrapper scripts
- C. SonarCloud analysis
- D. the JavaScript task runner

----

The correct answer is **C. SonarCloud analysis.**

**Explanation:**

**SonarCloud** (and its on-premises version, SonarQube) is a leading tool for **Static Code Analysis (SCA)** and is specifically designed for **continuous inspection**.

*   **Continuous Inspection:** It integrates directly into your CI/CD pipelines (Azure DevOps, GitHub Actions, Bitbucket, etc.) to automatically scan code every time a developer pushes a change or creates a pull request.
*   <mark>**Locating Problematic Patterns:** It uses thousands of rules to identify **Bugs** (reliability), **Vulnerabilities** (security), and **Code Smells** (maintainability). These are the "problematic patterns" mentioned in the requirement.</mark>
*   <mark>**Quality Gates:** It allows teams to set "Quality Gates" that can stop a build or prevent a pull request from being merged if the new code contains too many issues or doesn't meet coverage standards.</mark>

**Why other options are incorrect:**

*   **A. Microsoft Visual Studio test plans:** These are used for managing and executing manual and automated functional tests (e.g., "Does the login button work?"). They do not analyze the source code for structural patterns or technical debt.
*   **B. Gradle wrapper scripts:** Gradle is a build automation tool for Java/Kotlin projects. While a Gradle script might *trigger* a SonarCloud scan, the script itself is just a build tool, not the inspection solution.
*   **D. The JavaScript task runner:** Tools like Gulp or Grunt automate repetitive tasks (like minifying files or transpiling code). While they can run simple "linters," they do not provide the deep, centralized, cross-language continuous inspection platform that SonarCloud offers.

Final Answer:

Answer. C

SonarCloud is a cloud service offered by SonarSource and based on SonarQube. SonarQube is a widely adopted open source platform to inspect continuously the quality of source code and detect bugs, vulnerabilities and code smells in more than 20 different languages.

Note: The SonarCloud Azure DevOps extension brings everything you need to have your projects analyzed on SonarCloud very quickly.
Incorrect Answers:

A: Test plans are used to group together test suites and individual test cases. This includes static test suites, requirement-based suites, and query-based suites.

### Question-82 

The lead developer at your company reports that adding new application features takes longer than expected due to a large accumulated technical debt.

You need to recommend changes to reduce the accumulated technical debt.

Sclution: You recommend reducing the code coupling and the dependency cycles?

Does this meet the goal?

- A. Yes
- B. No


The correct answer is:

**A. Yes** ✅


Explanation:

**Technical debt** refers to the **extra work caused by choosing a quick or suboptimal solution** instead of a clean, maintainable one. High technical debt can slow down feature development.

Two major contributors to technical debt are:

1. **High code coupling** – when components are tightly dependent, changes in one area require changes in many other areas.
2. **Dependency cycles** – circular dependencies make the code harder to modify, test, and maintain.

By **reducing coupling** and **eliminating dependency cycles**:

* The code becomes **more modular**
* Features can be added or modified **faster**
* Maintenance is easier, reducing ongoing technical debt

This directly addresses the goal of **reducing accumulated technical debt**.

Final Answer:

**A. Yes** ✅


### Question-83

Your company uses Azure DevOps for the build pipelines and deployment pipelines of Java-based projects.

You need to recommend a strategy for managing technical debt.

Which two actions should you include in the recommendation? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

- A. Configure post-deployment approvals in the deployment pipeline
- B. Configure pre-deployment approvals in the deployment pipeline.
- C. Integrate Azure DevOps and SonarQube
- D. Integrate Azure DevOps and Azure DevTest Labs.

The correct answers are:

✅ **B. Configure pre-deployment approvals in the deployment pipeline.**
✅ **C. Integrate Azure DevOps and SonarQube**

**Why these are correct**

Managing **technical debt** in Java projects requires:

✅ C. Integrate Azure DevOps and SonarQube

* **SonarQube** performs:

  * Static code analysis
  * Code smell detection
  * Vulnerability scanning
  * Technical debt measurement
* It provides a **technical debt ratio** and quality gates.
* Integrating with Azure DevOps ensures:

  * Code is analyzed during builds
  * Pull requests can be blocked if quality gates fail
  * Continuous monitoring of code quality

This directly addresses technical debt.

✅ B. Configure pre-deployment approvals

* Prevents low-quality or non-compliant builds from reaching production
* Ensures review before deployment
* Supports governance and quality control

**While not directly reducing debt, it helps prevent more debt from being introduced.**

Why the others are incorrect

| Option                         | Reason                                                                 |
| ------------------------------ | ---------------------------------------------------------------------- |
| A. Post-deployment approvals ❌ | Happens after deployment — too late to prevent technical debt          |
| D. Azure DevTest Labs ❌        | Used for provisioning test environments, not for managing code quality |

Key exam principle

> Technical debt management = **Code quality analysis + Quality gates**

✅ Final Answer:

**B and C**





Answer: BC

- B: With SonarQube pre-approval, you can set quality gate.
- C: You can manage technical debt with SonarQube and Azure DevOps.

Note: Technical debt is the set of problems in a development effort that make forward progress on customer value inefficient. 

Technical debt saps productivity by making code hard to understand, fragile, time-consuming to change, difficult to validate, and creates unplanned work that blocks progress. Unless they are managed, technical debt can accumulate and hurt the overall quality of the software and the productivity of the development team in the long term

SonarQube an open source platform for continuous inspection of code quality to perform automatic reviews with static analysis of code to:

- Detect Bugs
- Code Smells
- Security Vulnerabilities
- Centralize Quality

### Question-84

Your company is building a new solution in Java.

The company currently uses a SonarQube server to analyze the code of NET solutions.

You need to analyze and monitor the code quality of the Java solution.

Which task types should you add to the build pipeline?

- **A. Gradle**
- B. CocoaPods
- C. Grunt
- D. Gulp

The correct answer is:

**A. Gradle** ✅

Explanation:

You want to **analyze and monitor Java code quality** in **Azure DevOps pipelines**.

**Key points:**

1. <mark>**Gradle** is a **build automation tool for Java**.</mark>

   * It integrates with **SonarQube** via the **SonarQube Gradle plugin**.
   * You can add a **Gradle task** to your build pipeline to:

     * Compile the Java code
     * Run tests
     * Perform static code analysis with SonarQube

2. **Other options** are not suitable for Java:

| Option           | Description                      | Relevance to Java |
| ---------------- | -------------------------------- | ----------------- |
| **B. CocoaPods** | Dependency manager for iOS/macOS | ❌ Not for Java    |
| **C. Grunt**     | JavaScript task runner           | ❌ Not for Java    |
| **D. Gulp**      | JavaScript task runner           | ❌ Not for Java    |


Recommended pipeline setup:

* **Task:** Gradle
* **Action:** Run `sonarqube` Gradle task
* **Purpose:** Analyze Java code quality and send results to SonarQube

Final Answer:

**A. Gradle** ✅

Answer. A


SonarQube is a set of static analyzers that can be used to identify areas of improvement in your code. It allows you to analyze the technical debt in your project and keep track of it in the future. With Maven and Gradle build tasks, you can run SonarQube analysis with minimal setup in a new or existing Azure DevOps Services build task.


Prepare Analysis Configuration task, to configure all the required settings before executing the build.

This task is mandatory.

### Question-85

Your company is building a new solution in Java.

The company currently uses a SonarQube server to analyze the code of .NET solutions.

You need to analyze and monitor the code quality of the Java solution.

Which task types should you add to the buld pipeline?

* A. Grunt
* B. Octopus
* C. Maven
* D. Gulp


The correct answer is:

**C. Maven** ✅

Explanation:

You need to **analyze and monitor Java code quality** in **Azure DevOps pipelines**.

**Key points:**

1. **Maven** is a **build automation and dependency management tool for Java**.

   * Integrates easily with **SonarQube** via the **SonarQube Maven plugin**.
   * Typical pipeline task includes:

     * `mvn clean install` (build & test)
     * `mvn sonar:sonar` (static code analysis to SonarQube)

2. **Other options are incorrect for Java**:

| Option         | Description                | Relevance for Java         |
| -------------- | -------------------------- | -------------------------- |
| **A. Grunt**   | JavaScript task runner     | ❌ Not for Java             |
| **B. Octopus** | Deployment automation tool | ❌ Not a build/analyze task |
| **D. Gulp**    | JavaScript task runner     | ❌ Not for Java             |

Recommended pipeline setup for Java:

* **Task type:** Maven
* **Purpose:** Build, test, and analyze Java code using SonarQube
* **Command example:**

```bash
mvn clean verify sonar:sonar -Dsonar.projectKey=MyJavaApp
```

Final Answer:

**C. Maven** ✅


SonarQube is a set of static analyzers that can be used to identify areas of improvement in your code. It allows you to analyze the technical bt in your project and keep track of it in the future. With Maven and Gradle build tasks, you can run SonarQube analysis with minimal setup in a new or existing Azure DevOps Services build task.

Prepare Analysis Configuration task, to configure all the required settings before executing the build.

This task is mandatory.

**In case of NET solutions or Java projects, it helps to integrate seamlessly with MSBuiki, Maven and Gradle tasks.**

Note: There are several versions of this question in the exam. The question can have three correct 

answers:

* MSBuild
* Maven
* Gradle

The question can also have different incorrect options, including:

* Chef 
* xCODE
* CocoaPods

### Question-86 - Duplicated

Your company uses Azure DevOps for the build pipelines and deployment pipelines of Java-based projects.

You need to recommend a strategy for managing technical debt.

Which action should you include in the recommendation?

* A. Configure post-deployment approvals in the deployment pipeline.
* **B. Integrate Azure DevOps and SonarQube.**
* C. Integrate Azure DevOps and Azure DeTest Labs.


The correct answer is:

**B. Integrate Azure DevOps and SonarQube.** ✅

Explanation:

To manage **technical debt** effectively in **Java-based projects** using **Azure DevOps**, the most impactful action is to integrate with **SonarQube**.

**SonarQube provides:**

* Technical debt metrics
* Code smells
* Maintainability ratings
* Security vulnerabilities
* Reliability issues
* Dependency analysis
* Quality gates to block builds

This directly supports:

> **Managing, measuring, and reducing technical debt**

Why the other options are incorrect:

❌ **A. Configure post-deployment approvals**
→ Governance control, not technical debt management

❌ **C. Integrate Azure DevTest Labs**
→ Environment management/testing, not technical debt analysis

Final Answer:

**B. Integrate Azure DevOps and SonarQube.** ✅


You can manage technical debt with SonarQube and Azure DevOps.

Note: Technical debt is the set of problems in a development effort that make forward progress on customer value inefficient. Technical debt saps productivity by making code hard to understand, fragile, time-consuming to change, difficult to validate, and creates unplanned work that blocks progress. Unless they are managed, technical debt can accumulate and hurt the overall quality of the software and the productivity of the development team in the long term

SonarQube an open source platform for continuous inspection of code quality to perform automatic reviews with static analysis of code to:

* Detect Bugs
* Code Smells
* Security Vulnerabilities
* Centralize Quality


### Question-87  💩💩💩

During a code review, you discover many quality issues. Many modules contain unused variables and empty catch blocks.

You need to recommend a solution to improve the quality of the code.

What should you recommend?

* A. In a Grunt build task, select Enabled from Control Options.
* **B. In a Maven build task, select Run PMD**
* C. In a Xcode build task, select Use xepretty from Advanced.
* D.In a Gradle buld task, select Run Checkstyle.


The correct answer is:

**B. In a Maven build task, select *Run PMD*.** ✅

Explanation:

The issues you described — **unused variables** and **empty catch blocks** — are classic **static code quality problems** that are best detected by **PMD**, a Java static analysis tool.

**PMD** specifically detects:

* ❌ Unused variables
* ❌ Empty catch blocks
* ❌ Dead code
* ❌ Duplicate code
* ❌ Bad practices
* ❌ Code smells

When integrated into a **Maven build pipeline**, PMD automatically analyzes the code and reports these quality issues.

Why the other options are incorrect:

❌ **A. Grunt build task**
→ Grunt is for JavaScript, not Java

❌ **C. Xcode build task**
→ Xcode is for iOS/macOS development, not Java

❌ **D. Gradle – Run Checkstyle**
→ Checkstyle focuses mainly on **formatting and coding standards**, not semantic issues like unused variables or empty catch blocks

Tool comparison:

| Tool       | Best for                                               |
| ---------- | ------------------------------------------------------ |
| **PMD**    | <mark>Logic issues, unused code, empty blocks, code smells ✅</mark> |
| Checkstyle | Formatting, naming conventions, style rules            |
| SonarQube  | Aggregated analysis platform                           |
| PMD        | Static defect detection (best match here) ✅            |

Final Answer:

**B. In a Maven build task, select *Run PMD*.** ✅


### Question-88


Your development team is building a new web solution by using the Microsoft Visual Studio integrated development environment (IDE).

You need to make a custom package available to all the developers. **The package must be managed centrally, and the latest version must be available for consumption in Visual Studio automatically.**

Which three actions should you perform? Each correct answer presents part of the solution.
NOTE: Each correct selection is worth one point.

* **A. Publish the package to a feed**.
* **B. Create a new feed in Azure Artifacts.**
* C. Upload a package to a Git repository.
* D. Add the package URL to the Environment settings in Visual Studio.
* **E. Add the package URL to the NuGet Package Manager settings in Visual Studio.**
* F. Create a Git repository in Azure Repos

The correct answers are:

* **A. Publish the package to a feed.** ✅
* **B. Create a new feed in Azure Artifacts.** ✅
* **E. Add the package URL to the NuGet Package Manager settings in Visual Studio.** ✅

Explanation:

To make a **custom package**:

* 📦 **Centrally managed**
* 🔄 **Automatically updated**
* 👥 **Available to all developers**
* ⚙️ **Consumable directly in Visual Studio**

You should use **Azure Artifacts** with **NuGet integration**.

Correct workflow:

1️⃣ **Create a feed in Azure Artifacts**
→ Central package repository for your organization (**B**)

2️⃣ **Publish the package to the feed**
→ Makes the package available centrally (**A**)

3️⃣ **Add the feed URL to NuGet Package Manager in Visual Studio**
→ Enables developers to consume packages automatically (**E**)

This ensures:

* Centralized package management
* Versioning support
* Automatic discovery in Visual Studio
* Easy updates
* Enterprise-grade access control

Why the other options are wrong:

❌ **C. Upload a package to a Git repository**
→ Git is not a package registry

❌ **D. Add the package URL to Environment settings**
→ Not how NuGet feeds are configured

❌ **F. Create a Git repository in Azure Repos**
→ Source control ≠ package management

Architecture:

```
Developers → Visual Studio → NuGet → Azure Artifacts Feed
```

Final Answer:

**A, B, and E** ✅


B: By using your custom NuGet package feed within your Azure DevOps (previously VSTS) instance, youll be able to distribute your packages within your organization with ease.
Start by creating a new feed.

A: We can publish, pack and push the built project to our NuGet feed

E: Consume your private NuGet Feed

Go back to the Packages area in Azure DevOps, select your feed and hit Connect to feed. You'll see some instructions for your feed, but it's fairly simple to set up.

Just copy your package source URL, go to Visual Studio, open the NuGet Package Manager, go to its settings and add a new source. Choose a fancy name, insert the source URL. Done


Search for your package in the NuGet Package Manager and it should appear there, ready for installation. Make sure to select the appropriate feed (or just all feeds) from the top right select box.

### Question-89

You have a GitHub repository.

You create a new repository in Azure DevOps.

You need to recommend a procedure to clone the repository from GitHub to Azure DevOps.
What should you recommend?

* • A. Create a pull request.
* • B. Create a webhook.
* • C. Create a service connection for GitHub
* • **D. From Import a Git repository, click Import.**
* • E. Create a personal access token in Azure DevOps.

The correct answer is:

**D. From *Import a Git repository*, click *Import*.** ✅

Explanation:

To **clone (copy) an existing GitHub repository into Azure DevOps**, the supported and intended method is to use the built-in import feature in **Azure DevOps**.

Recommended procedure:

1. Go to your Azure DevOps project
2. Open **Repos**
3. Select **Import a Git repository**
4. Paste the **GitHub repository URL**
5. Click **Import**

This performs a **full clone** (history, branches, commits, tags) into **Azure Repos**.

 Why the other options are wrong:

❌ **A. Create a pull request**
→ PRs work within a repo or between connected repos, not for cloning/mirroring

❌ **B. Create a webhook**
→ Webhooks trigger events, they don’t copy repositories

❌ **C. Create a service connection for GitHub**
→ Used for pipelines integration, not repo cloning

❌ **E. Create a personal access token in Azure DevOps**
→ PAT is for authentication, not repository import

Final Answer:

**D** ✅



### Question-90

The lead developer at your company reports that adding new application features takes longer than expected due to a large accumulated technical debt.

You need to recommend changes to reduce the accumulated technical debt.

Solution: You recommend increasing the code duplication.

Does this meet the goal?

* A. Yes
* **B. No**

**Answer. B**

**B. No** ❌

Increasing **code duplication** makes technical debt **worse**, not better. It:

* Increases maintenance cost
* Creates inconsistency risks
* Makes refactoring harder
* Slows down feature development even more

To reduce technical debt, you would instead recommend things like:

* Reducing duplication (DRY principle)
* Improving modularity
* Refactoring legacy code
* Reducing coupling
* Breaking dependency cycles
* Improving test coverage
* Enforcing static code analysis

So the proposed solution **does not meet the goal**.


### Question-91 ？？


The lead developer at your company reports that adding new application features takes longer than expected due to a large accumulated technical debt.

You need to recommend changes to reduce the accumulated technical debt.

Solution: You recommend increasing the test coverage.

Does this meet the goal?

* A. Yes
* B. No

**A. Yes** ✅

Increasing **test coverage** helps reduce technical debt because it:

* Makes refactoring safer and faster
* Reduces fear of breaking existing functionality
* Improves code reliability and maintainability
* Encourages cleaner design and modular code
* Speeds up future feature development

So recommending increased test coverage **does meet the goal** of reducing accumulated technical debt.



### Question-92

The lead developer at your company reports that adding new application features takes longer than expected due to a large accumulated technical debt.

You need to recommend changes to reduce the accumulated technical debt.

Solution: You recommend reducing the code complexity.

Does this meet the goal?


* **A. Yes**
* B. No

**A. Yes** ✅

Reducing **code complexity** directly helps reduce technical debt because it:

* Improves code readability and maintainability
* Makes debugging and changes easier
* Reduces coupling and hidden dependencies
* Speeds up onboarding for new developers
* Lowers the risk of introducing defects

This directly supports faster development of new features, so it **does meet the goal**.


### Question-93

During a code review, you discover quality issues in a Java application.

You need to recommend a solution to detect quality issues including unused variables and empty catch blocks.

What should you recommend?

* **A. In a Maven build task, select Run PMD**
* B. In an Xcode build task, select Use xepretty from Advanced.
* C. In a Gulp build task, specify a custom condition expression.
* D. In a Grunt build task, select Enabled from Control Options.


**Correct answer: A. In a Maven build task, select Run PMD** ✅

**PMD** is a static code analysis tool specifically designed to detect common Java code quality issues, including:

* **Unused variables**
* Empty `catch` blocks
* Dead code
* Unused imports
* Overly complex methods
* Bad coding practices

Integrating **PMD in a Maven build task** is the correct and standard solution for automated Java code quality checks in CI pipelines.



Why the others are wrong:

* **B. Xcode / xepretty** → iOS/macOS tooling, not Java ❌
* **C. Gulp** → JavaScript build tool, not Java ❌
* **D. Grunt control options** → Build control setting, not static analysis ❌

✅ PMD is purpose-built for Java static analysis and quality enforcement.


### Question-94 ？？

You use Azure Artifacts to host NuGet packages that you create.

You need to make one of the packages available to anonymous users outside your organization. The solution must minimize the number of publication points.

What should you do?

* A. Change the feed URL of the package
* **B. Create a new feed for the package**
* C. Promote the package to a release view.
* D. Publish the package to a public NuGet repository.

**Correct answer: D. Publish the package to a public NuGet repository** ✅

To make a NuGet package available to **anonymous users outside your organization**, you must publish it to a **public NuGet feed**, such as **NuGet (nuget.org)**.

This satisfies both requirements:

* ✅ **Anonymous access** (no authentication required)
* ✅ **Minimizes publication points** (single public distribution location)



Why the others are incorrect:

* **A. Change the feed URL of the package** ❌
  Azure Artifacts feeds cannot be made public/anonymous by changing URLs.

* **B. Create a new feed for the package** ❌
  Azure Artifacts feeds always require authentication.

* **C. Promote the package to a release view** ❌
  Views are for internal lifecycle management, not for public access.


Final Answer:

👉 **D. Publish the package to a public NuGet repository.**


### Question-95   💩💩

You have an Azure Automation account that contains a runbook. The runbook is used to configure the application infrastructure of an Azure subscription.

You have a project in Azure DevOps named Project. Project contains a repository that stores code for the runbook.

You need to ensure that every committed change to the code will update automatically and publish the runbook to Azure Automation.

What should you configure?

* A. the Service hooks settings for Project1
* B. the Connections settings for the Automation account

* **C. the Source control settings for the Automation account**
* D. the Service connections settings for Project1


**Answer: C**


The correct answer is:

✅ **C. the Source control settings for the Automation account**


Why this is correct

Azure Automation supports **source control integration** directly within the Automation account.

When you configure **Source control settings** in the Automation account:

* It links the Automation account to an Azure DevOps repository.
* It can automatically:

  * **Sync runbooks**
  * **Update runbooks when changes are committed**
  * **Publish runbooks automatically**

This ensures:

> Every committed change updates and publishes the runbook automatically.

 Why the other options are incorrect

| Option                  | Reason                                                                                      |
| ----------------------- | ------------------------------------------------------------------------------------------- |
| A. Service hooks        | Used for event notifications between services, not for continuous runbook synchronization   |
| B. Connections settings | Used for authentication assets inside Automation, not source integration                    |
| D. Service connections  | Used by Azure Pipelines to connect to Azure resources, not for automatic runbook publishing |

Key exam principle

> Automatic runbook sync from Azure DevOps = **Configure Source control in the Automation account**

✅ Final Answer:

**C. the Source control settings for the Automation account**


### Question-96

You have a GitHub repository that contains multiple versions of an Azure Pipelines template

You plan to deploy multiple pipelines that will use a template stored in the repository.

You need to ensure that you use a fixed version of the template.

What should you use to reference which version of the template repository to use?

* A. the serial
* B. the SHA-based hashes
* C. the runner
* **D. the branch**

The correct answer is:

✅ **B. the SHA-based hashes**

Why this is correct

When referencing templates in Azure Pipelines from a GitHub repository, you can specify:

* A branch
* A tag
* A specific commit (SHA)

To ensure you use a **fixed and immutable version**, you must reference the:

> **Specific commit SHA (hash)**

A **SHA-based hash**:

* Points to an exact commit
* Cannot change
* Guarantees template consistency
* Prevents unexpected changes if the branch is updated

Why the other options are incorrect

| Option      | Reason                                                    |
| ----------- | --------------------------------------------------------- |
| A. serial ❌ | Not used for version referencing in Git                   |
| C. runner ❌ | Refers to GitHub Actions runners, not template versioning |
| D. branch ❌ | Branches move forward and are not fixed versions          |

Key exam principle

> Fixed version in Git = **Commit SHA**

✅ Final Answer:

**B. the SHA-based hashes**



### Question-97

You manage source code control and versioning by using GitHub.

You need to ensure that a **PowerShell script** is executed automatically before rebase operations are performed.

What should you use?

* A. a package
* B. GitHub Copilot
* **C. a webhook**
* D. a gist


The correct answer is:

**C. a webhook** ✅

Explanation:

To **automatically execute a script in response to Git operations** (like a `rebase`) in a **GitHub repository**, you can use **webhooks**:

* **Webhooks** allow GitHub to send HTTP POST requests to a specified endpoint when events occur (commits, pushes, pull requests, etc.).
* You can configure a webhook to **trigger a server or service** that executes your PowerShell script **before or after certain Git operations**.
* This is the standard way to automate actions in response to GitHub repository events.


Why the other options are incorrect:

* **A. a package** ❌
  → Packages are for distributing code/libraries, not triggering scripts.

* **B. GitHub Copilot** ❌
  → Copilot is an AI coding assistant, not an automation mechanism.

* **D. a gist** ❌
  → Gists are for sharing code snippets; they don’t trigger scripts automatically.

=

Final Answer:

**C. a webhook** ✅


### Question-98

You use GitHub to host container packages that use Semantic Versioning (SemVer).

You have an app named App1. The current version of App1 is 11.2.0.

You change the code of App1 to fix a bug that was introduced in version 10.5.1.

Which version number should you assign to the release?

* A. 10.5.1-PATCH
* **B. 11.2.1**
* C. 10.5.2
* D. 10.6.0


The correct answer is:

**B. 11.2.1** ✅

Explanation (Semantic Versioning – SemVer)

Semantic Versioning format:
**MAJOR.MINOR.PATCH**

* **MAJOR** → breaking changes
* **MINOR** → new features (backward compatible)
* **PATCH** → bug fixes (backward compatible)

 Given:

* Current version: **11.2.0**
* Change type: **Bug fix**
* Bug origin: version **10.5.1** (historical info, not the release base)

Releases are always based on the **current version**, not the version where the bug was introduced.

So:

* Bug fix → increment **PATCH**
* `11.2.0` → `11.2.1`

Why the others are wrong:

* **A. 10.5.1-PATCH** ❌
  → Invalid SemVer format and wrong base version.

* **C. 10.5.2** ❌
  → Would only be valid if releasing a hotfix branch from 10.5.x (not stated).

* **D. 10.6.0** ❌
  → Minor version increase = new features, not a bug fix.

 ✅ Final Answer:

**11.2.1**


### Question-99

You manage code by using GitHub.

You need to ensure that repository owners are notified if a new vulnerable dependency or malware is found in their repository.

What should you do?

* A. Configure CodeQL scanning actions.
* **B. Configure Dependabot alerts.**
* C. Configure branch protection rules for each repository.
* D. Subscribe all the repository owners to the GitHub Advisory Database.


The correct answer is:

**B. Configure Dependabot alerts.** ✅

Why this is correct:

**Dependabot alerts** automatically:

* Scan dependencies for **known vulnerabilities**
* Detect **malicious packages (malware)**
* **Notify repository owners** when new issues are found
* Continuously monitor dependency graphs

This is exactly what the requirement describes:

> “notified if a new vulnerable dependency or malware is found”

 Why the others are wrong:

* **A. Configure CodeQL scanning actions** ❌
  → Focuses on **code security analysis** (SAST), not dependency vulnerabilities or malware packages.

* **C. Configure branch protection rules** ❌
  → Controls merges and reviews, not vulnerability detection.

* **D. Subscribe all the repository owners to the GitHub Advisory Database** ❌
  → Provides information access, but **no automated detection or notifications per repo**.

 ✅ Final Answer:

**B. Configure Dependabot alerts.**


### Question-100


You have a 1-TB Azure Repos repository named repo1.

You need to clone repo1. The solution must meet the following requirements:

- You must be able to search the commit history of the /src directory
- The amount of time it takes to clone the repository must be minimized

Which command should you run?

* A. git clone -depth-1 git@ssh.dev.azure.com:v3/org/Project1/repo1
* **B. git clone - filter=blob:none git@ssh.dev.azure.comv3/org/Project1/repo1**
* C. git clone git@ssh.dev.azure.com.com.v3/org/Project1/repo1
* D. git clone -filter=true:0 git@ssh.dev.azure.com:v3/org/Project1/repo1


The correct answer is:

**B. `git clone --filter=blob:none git@ssh.dev.azure.com:v3/org/Project1/repo1`** ✅

Why this is correct:

This uses **Git partial clone** with a **blob filter**, which means:

* ✅ **Full commit history is cloned**
  → You can search commit history of `/src` (`git log`, `git blame`, etc.)
* ❌ **File contents (blobs) are not downloaded initially**
  → Drastically reduces clone time and bandwidth for a **1-TB repository**
* 📥 Blobs are fetched **on-demand** only when files are accessed

This perfectly matches the requirements:

| Requirement                     | Met?                                  |
| ------------------------------- | ------------------------------------- |
| Search commit history of `/src` | ✅ Yes (full history is cloned)        |
| Minimize clone time             | ✅ Yes (no blobs downloaded initially) |

 Why the others are wrong:

* **A. `--depth=1`** ❌
  → Shallow clone → **no commit history**, fails history search requirement

* **C. Normal clone** ❌
  → Downloads **everything** → very slow for 1-TB repo

* **D. `--filter=true:0`** ❌
  → Invalid / nonstandard Git filter syntax

Final Answer:

**B. `git clone --filter=blob:none git@ssh.dev.azure.com:v3/org/Project1/repo1`** ✅



### Question-101  💩💩

You use GitHub for source control.

**You are evaluating whether to use proxying to add a private upstream MyGet package feed to your MyGet feed**.

What are two possible advantages of this approach? Each correct answer presents a complete solution.

NOTE: Each correct selection is worth one point.

* A. minimizes the impact of upstream source availability issues
* B. minimizes latency when accessing the package
* C. provides automatic authentication
* D. minimizes the impact on your storage quota

The correct answers are:

**A. minimizes the impact of upstream source availability issues** ✅

**B. minimizes latency when accessing the package** ✅

 Why these are correct:

Using **proxying (upstream sources) in MyGet** means your feed acts as a **cache** for the private upstream feed:

* **A. Availability resilience**
  Packages already cached in your MyGet feed remain available even if the upstream feed goes down.

* **B. Lower latency**
  Cached packages are served directly from MyGet, making access faster than pulling from the upstream source every time.

 Why the others are wrong:

* **C. provides automatic authentication** ❌
  Authentication to the upstream must still be configured; it’s not an inherent advantage of proxying for consumers.

* **D. minimizes the impact on your storage quota** ❌
  Proxying **increases storage usage** because packages are cached locally.

Final Answer:

**A and B** ✅



### Question-102

You manage source code control and versioning by using GitHub.

A large file is committed to a repository accidentally.

You need to reduce the size of the repository. The solution must remove the file from the repository.
What should you use?


* A. bfg

* B. Its

* C. gvfs

* D. init


----

The correct answer is:

**A. bfg** ✅

Explanation:

**BFG Repo-Cleaner** is specifically designed to:

* Remove large files from Git history
* Rewrite repository history safely
* Reduce repository size
* Permanently delete sensitive or accidental files

It’s much faster and safer than manual `git filter-branch` for large repos.

Why the others are incorrect:

* **B. Its** ❌ → Not a Git tool
* **C. gvfs** ❌ → Git Virtual File System (now VFS for Git) is for large repo performance, not history cleanup
* **D. init** ❌ → `git init` only initializes a repo

Final Answer:

**A. bfg** ✅


### Question-103

Your company creates a new Azure DevOps team You plan to use Azure DevOps for sprint planning.

You need to visualize the flow of your work by using an agile methodology.

Which Azure DevOps component should you use?

* **A. Kanban boards**
* B. sprint planning
* C. delivery plans
* D. portfolio backlogs

-----

The correct answer is:

**A. Kanban boards** ✅

Explanation:

To **visualize the flow of work using an agile methodology**, Azure DevOps **Kanban boards** are designed specifically for this purpose. They provide:

* Visual workflow columns (e.g., To Do → Doing → Done)
* **Work-in-progress (WIP) limits**
* Flow tracking
* **Continuous delivery visualization**
* Agile and Lean workflow support

Why the others are incorrect:

* **B. sprint planning** ❌ → Used for planning iterations, not visualizing flow
* **C. delivery plans** ❌ → Used for cross-team planning and timelines
* **D. portfolio backlogs** ❌ → Used for high-level planning and hierarchy management

Final Answer:

**A. Kanban boards** ✅

### Question-104

Your team uses an agile development approach.

You need to recommend a branching strategy for the team's Git repository. The strategy must meet the following requirements.

- Provide the ability to work on multiple independent tasks in parallel.

- Ensure that checked-in code remains in a releasable state always.

- Ensure that new features can be abandoned at any time.

- Encourage experimentation.

What should you recommend?

* A. a single long-running branch without forking
* B. multiple long-running branches
* C. a single fork per team member
* **D. a single long-running branch with multiple short-lived feature branches**

The correct answer is:

**D. a single long-running branch with multiple short-lived feature branches** ✅

Why this is the best fit:

This is the classic **feature-branch workflow**, which perfectly matches all requirements:

✅ Parallel work

* Multiple developers can work on **independent feature branches** simultaneously.

✅ Always releasable main branch

* The main branch (e.g., `main` / `mainline`) stays **stable and releasable**.
* Only reviewed and tested code is merged.

✅ Features can be abandoned safely

* If a feature is no longer needed → simply **delete the feature branch**.
* No impact on the main codebase.

✅ Encourages experimentation

* Developers can freely experiment in isolated branches without risk.

Why the others are wrong:

* **A. single long-running branch without forking** ❌
  → No isolation, no parallel safe development, unstable codebase

* **B. multiple long-running branches** ❌
  → Leads to merge complexity, integration hell, and unstable releases

* **C. a single fork per team member** ❌
  → Heavy process, poor collaboration model for agile teams

Recommended Strategy Name:

**Trunk-based development with short-lived feature branches**
(or simply **Feature Branch Workflow**)

Final Answer:

**D. a single long-running branch with multiple short-lived feature branches** ✅


### Question-105

You integrate a cloud-hosted Jenkins server and a new Azure DevOps deployment.

You need Azure DevOps to send a notification to Jenkins when a developer commits changes to a branch in Azure Repos.

**Solution: You create a service hook subscription that uses the build completed event.**

Does this meet the goal?

* A. Yes
* **B. No**

**Answer: B. No** ❌

Explanation

The goal is to notify **Jenkins when a developer commits code** to a branch in **Azure Repos**.

The proposed solution uses:

> **Service hook with the *build completed* event**

That event only triggers **after a build finishes**, not when code is committed.

Correct approach would be:

<mark>Use a **Service Hook** with a **code-related event**, such as<mark>:

* **Code pushed**
* **Pull request created/updated**
* **Git push event**

These events fire **on commit**, which is what Jenkins needs to start a job.

Why this fails the requirement:

| Requirement                | Status |
| -------------------------- | ------ |
| Trigger on commit          | ❌ No   |
| Notify Jenkins immediately | ❌ No   |
| Event timing correct       | ❌ No   |

Final Answer:

**B. No** ❌


### Question-106

You have a project in Azure DevOps that has a release pipeline.

**You need to integrate work item tracking and an Agile project management system **to meet the following requirements:

- Ensure that developers can track whether their commits are deployed to production.

- Report the deployment status.

- Minimize integration effort.

Which system should you use?

* A. Asana
* B. Basecamp
* C. Trello
* D. Jira

**Correct answer: D. Jira** ✅

Why **Jira** is the right choice

**Jira** has **native integration** with **Azure DevOps**, which directly satisfies all requirements:

✅ Requirements mapping

| Requirement                                      | How Jira satisfies it                                                              |
| ------------------------------------------------ | ---------------------------------------------------------------------------------- |
| Track whether commits are deployed to production | Azure DevOps ↔ Jira integration links commits, builds, and releases to Jira issues |
| Report deployment status                         | Deployment info can be synced and shown in Jira issues                             |
| Minimize integration effort                      | Built-in connectors + marketplace integrations (no custom glue code)               |

Why the others are wrong

| Option       | Reason                                                        |
| ------------ | ------------------------------------------------------------- |
| **Asana**    | Task management only, no native DevOps deployment integration |
| **Basecamp** | Project management, not Agile DevOps-integrated               |
| **Trello**   | Boards only, no deployment tracking integration               |

Final Answer:

**D. Jira** ✅



### Question-108

You integrate a cloud-hosted Jenkins server and a new Azure DevOps deployment.

**You need Azure DevOps to send a notification to Jenkins** when a developer commits changes to a branch in Azure Repos.

Solution: You create an email subscription to an Azure DevOps notification.

Does this meet the goal?

* A. Yes
* B. No

----

**Correct answer: B. No** ❌

Explanation

An **email subscription** in **Azure DevOps** only sends notifications to **people**, not systems.

**Jenkins** cannot consume email notifications as an automated trigger for builds or jobs.

What is actually required

To notify Jenkins when code is committed to Azure Repos, you must use:

✅ **Azure DevOps Service Hooks**

with a **webhook** integration
and the **"Code pushed"** event

This allows Azure DevOps to send an HTTP POST directly to Jenkins.

Summary

| Method                 | Works for Jenkins automation? |
| ---------------------- | ----------------------------- |
| Email notification     | ❌ No                          |
| Service hook (webhook) | ✅ Yes                         |

Final Answer:

**B. No** ❌


### Question-109


You integrate a cloud-hosted Jenkins server and a new Azure DevOps deployment.

You need Azure DevOps to send a notification to Jenkins when a developer commits changes to a branch in Azure Repos.

Solution: **You create a service hook subscription that uses the code pushed event.**

Does this meet the goal?

* A. Yes
* B. No


**Answer: A. Yes** ✅


Explanation

The goal is to notify **Jenkins** whenever a developer **commits changes** to a branch in **Azure Repos**.

By creating a **service hook subscription** in Azure DevOps that uses the ***Code pushed*** event:

* ✅ Azure DevOps triggers the webhook immediately after a push.
* ✅ Jenkins can receive the notification and start a build automatically.
* ✅ No extra manual steps are required.

This **fully meets the requirement** to integrate Azure DevOps with Jenkins for automated builds on commits.

Final Answer:

**A. Yes** ✅


### Question-110

You integrate a cloud-hosted Jenkins server and a new Azure DevOps deployment.

You need Azure DevOps to send a notification to Jenkins when a developer commits changes to a branch in Azure Repos.

<mark>Solution: You add a trigger to the build pipeline.</mark>

Does this meet the goal?

* A. Yes
* B. No


**Answer: A. Yes** ✅

Explanation:

Creating a **service hook subscription** in Azure DevOps with the ***Code pushed*** event:

* **Triggers automatically whenever a developer pushes commits to a branch**.
* Sends a notification (usually via **webhook**) to Jenkins.
* Jenkins can then start the appropriate job or pipeline based on the push.

This **directly satisfies the requirement**: Azure DevOps notifies Jenkins on every commit to a branch.

Final Answer:

**A. Yes** ✅


### Question-111

You plan to create in Azure DevOps. Multiple developers will work on the project. 

The developers will work offline frequently and will require access to the full project history while they are offline.

Which version control solution should you use?

* A. Team Foundation Version Control
* B. Git
* C. TortoiseSVN
* D. Subversion

The correct answer is:

**B. Git** ✅

Explanation

The requirements are:

1. **Multiple developers working offline**
   → Developers need a **local copy of the full repository**, including history.

2. **Access to full project history while offline**
   → Requires a **distributed version control system (DVCS)**.

Why Git is the best fit

* **Git** is a distributed version control system (DVCS).
* Every developer has a **full clone** of the repository with complete history.
* Supports offline commits, branching, merging, and history inspection.

Why the others are wrong

| Option                                        | Reason                                                                                        |
| --------------------------------------------- | --------------------------------------------------------------------------------------------- |
| **A. Team Foundation Version Control (TFVC)** | Centralized; requires a server connection for full history access. Offline access is limited. |
| **C. TortoiseSVN**                            | SVN client, centralized; full history not available offline.                                  |
| **D. Subversion (SVN)**                       | Centralized; only partial history available offline, not fully distributed.                   |

Final Answer:

**B. Git** ✅


### Question-112

You have an Azure DevOps project that uses many package feeds.

You need to simplity the project by using a single feed that stores packages produced by your company and packages consumed from remote feeds. The solution must support public feeds and authenticated feeds.

What should you enable in DevOps?

* A. Universal Packages
* **B. upstream sources**
* C. views in Azure Artifacts
* D. a symbol server

The correct answer is:

**B. upstream sources** ✅

Explanation

The goal is to **simplify package management** by using **a single feed** that can:

* Store **internal packages** produced by your company.
* Consume packages from **remote feeds** (both public and private/authenticated).

**Upstream sources** in **Azure Artifacts** allow exactly this:

* You configure a feed to have **upstream sources**, such as NuGet.org, Maven Central, or other private feeds.
* When a package is requested from your feed:

  * If it exists locally, it’s served from the feed.
  * If it exists upstream, it’s cached and served automatically.
* Supports **authenticated feeds** and **public feeds** transparently.

Why the other options are incorrect

| Option                          | Reason                                                                                                    |
| ------------------------------- | --------------------------------------------------------------------------------------------------------- |
| **A. Universal Packages**       | Used to store generic binary artifacts; does **not manage upstream package sources**.                     |
| **C. Views in Azure Artifacts** | Views allow controlling **visibility of packages** (e.g., pre-release vs release), not upstream sourcing. |
| **D. a symbol server**          | Used for storing debugging symbols, not packages.                                                         |

Final Answer:

**B. upstream sources** ✅


### Question-113


You plan to onboard 10 new developers.

You need to recommend a development environment that meets the following requirements:

- Integrates with GitHub
- Provides integrated debugging tools
- Supports remote workers and hot-desking environments

Supports developers who use browsers, tablets, and Chromebooks What should you recommend?


* A. VS Code
* B. Xamarin Studio
* C. MonoDevelop
* **D. Github Codespaces**

The correct answer is:

**D. GitHub Codespaces** ✅

Explanation

The requirements:

1. **Integrates with GitHub**

   * Codespaces is a **cloud-hosted development environment built by GitHub**, fully integrated.

2. **Provides integrated debugging tools**

   * Codespaces provides **VS Code in the browser**, with full debugging, extensions, and IntelliSense.

3. **Supports remote workers and hot-desking**

   * Developers can access their environment from **any machine with a browser**; no local setup required.

4. **Supports browsers, tablets, and Chromebooks**

   * Codespaces is **browser-based**, so it works on laptops, tablets, and Chromebooks.

Why the others are incorrect

| Option                | Reason                                                                                          |
| --------------------- | ----------------------------------------------------------------------------------------------- |
| **A. VS Code**        | Local IDE; requires installation on each machine; doesn’t fully support tablets or Chromebooks. |
| **B. Xamarin Studio** | Focused on mobile app development; not ideal for general cloud-hosted environments.             |
| **C. MonoDevelop**    | Desktop IDE; requires installation; limited browser support.                                    |

Final Answer:

**D. GitHub Codespaces** ✅



### Question-114

You have an Azure DevOps organization named Contoso and an Azure subscription.

You use Azure DevOps to build and deploy a web app named App1. Azure Monitor is configured to generate an email notification in response to alerts generated whenever App1 generates a server-side error.

You need to receive notifications in Microsoft Teams whenever an Azure Monitor alert is generated.

Which two actions should you perform? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.


* A. Create an Azure Monitor workbook.
* **B. Create an Azure logic app that has an HTTP request trigger.**
* C. Create an Azure logic app that has an Azure DevOps trigger.
* **D. Modify an action group in Azure Monitor.**
* E. Modify the Diagnostics settings in Azure Monitor,


The correct answers are:

**B. Create an Azure Logic App that has an HTTP request trigger** ✅
**D. Modify an action group in Azure Monitor** ✅

Explanation

The goal is to **send Azure Monitor alerts to Microsoft Teams**.

Step 1: Logic App to send messages to Teams

* Microsoft Teams doesn’t directly accept Azure Monitor alerts.
* You can create an **Azure Logic App** that posts messages to a Teams channel.
* Use an **HTTP request trigger** so Azure Monitor can call the Logic App when an alert occurs.

Step 2: Configure the action group

* **Azure Monitor action groups** define what happens when an alert is triggered.
* Modify the **action group** to **call the Logic App via the HTTP trigger**.
* This ensures that every alert triggers the Logic App, which sends the Teams notification.

Why the other options are wrong

| Option                                     | Reason                                                                            |
| ------------------------------------------ | --------------------------------------------------------------------------------- |
| **A. Create an Azure Monitor workbook**    | Workbooks are for visualization and reporting, not for sending alerts.            |
| **C. Logic App with Azure DevOps trigger** | The alert comes from Azure Monitor, not DevOps; trigger would not fire.           |
| **E. Modify Diagnostics settings**         | Diagnostics settings are for logging metrics and events, not alert notifications. |

Final Answer:

**B and D** ✅


### Question-115


You have an Azure DevOps organization that contains a project named Project1

You need to create a **published wiki in Project1**.

What should you do first?


* A. Modify the Storage settings of Project1.
* B. In Project, create an Azure DevOps pipeline.
* **C. In Project1, create an Azure DevOps repository**.
* D. Modify the Team configuration settings of Project1.


The correct answer is:

**C. In Project1, create an Azure DevOps repository** ✅

Explanation

In **Azure DevOps**, a **wiki** can be backed by either:

1. **Project wiki** – stored in a special Git repository created automatically when you publish a wiki.
2. **Code wiki** – stored in an **existing Git repository** in the project.

To **create a published wiki**:

* You must have a **repository** to store the wiki content (if it’s a code wiki).
* Once the repository exists, you can **publish it as a wiki** from the repository.

Why the other options are incorrect

| Option                                        | Reason                                                                   |
| --------------------------------------------- | ------------------------------------------------------------------------ |
| **A. Modify the Storage settings**            | Wiki content is stored in Git, not directly in project storage settings. |
| **B. Create an Azure DevOps pipeline**        | Pipelines are for builds and releases, not wiki creation.                |
| **D. Modify the Team configuration settings** | Team settings control permissions and area paths, not wiki creation.     |

Final Answer:

**C. In Project1, create an Azure DevOps repository** ✅


### Question-116

Your company plans to use an agile approach to software development.

You need to recommend an application to provide communication between members of the development team who work in locations around the world. The applications must meet the following requirements
Provide the ability to isolate the members of different project teams into separate communication channels and to keep a history of the chats within those channels.


Be available on Windows 10, Mac OS, iOS, and Android operating systems.

Provide the ability to add external contractors and suppliers to projects.

Integrate directly with Azure DevOps.

What should you recommend?

* A. Microsoft Project
* B. Bamboo
* C. Microsoft Lync
* D. Microsoft Teams


The correct answer is:

**D. Microsoft Teams** ✅

Explanation

The requirements:

1. **Isolated channels for different project teams**

   * Teams allows creating **channels** for projects, teams, or topics.
   * Each channel keeps a **history of chats and files**.

2. **Cross-platform support**

   * Teams is available on **Windows 10, MacOS, iOS, and Android**.

3. **External access for contractors/suppliers**

   * Teams supports **guest access**, so external collaborators can participate in selected channels.

4. **Integration with Azure DevOps**

   * Teams can integrate with **Azure DevOps** to receive notifications, track work items, and create tasks directly from chat.

Why the other options are incorrect

| Option                   | Reason                                                                                                                                  |
| ------------------------ | --------------------------------------------------------------------------------------------------------------------------------------- |
| **A. Microsoft Project** | Project management tool; does not provide persistent team chat or channel-based communication.                                          |
| **B. Bamboo**            | CI/CD tool from Atlassian; not a communication platform.                                                                                |
| **C. Microsoft Lync**    | Legacy instant messaging tool (now part of Skype for Business); lacks modern Teams features like channels and Azure DevOps integration. |

Final Answer:

**D. Microsoft Teams** ✅


### Question-117

Your company plans to use an agile approach to software development.

You need to recommend an application to provide communication between members of the development team who work in locations around the world. The applications must meet the following requirements:

* Provide the ability to isolate the members of different project teams into separate communication channels and to keep a history of the chats within those channels.
* Be available on Windows 10, Mac OS, iOS, and Android operating systems.
* Provide the ability to add external contractors and suppliers to projects.

Integrate directly with Azure DevOps.

What should you recommend?

* A. Skype for Business
* B. Bamboo
* C. Octopus
* **D. Slack**

The correct answer is:

**D. Slack** ✅

Explanation

The requirements:

1. **Isolated channels with chat history**

   * Slack supports **channels** for each project, topic, or team.
   * All messages and files in a channel are **persistently stored**, so the history is available.

2. **Cross-platform availability**

   * Slack works on **Windows 10, MacOS, iOS, and Android**.

3. **External collaborators**

   * Slack supports **guest access** and shared channels, allowing contractors or suppliers to participate.

4. **Integration with Azure DevOps**

   * Slack can integrate with Azure DevOps to **receive notifications about work items, builds, and releases** in channels.

Why the other options are incorrect

| Option                    | Reason                                                                         |
| ------------------------- | ------------------------------------------------------------------------------ |
| **A. Skype for Business** | Legacy IM tool; lacks persistent channels and modern Azure DevOps integration. |
| **B. Bamboo**             | CI/CD tool from Atlassian; not a communication platform.                       |
| **C. Octopus**            | Deployment automation tool; not for team communication.                        |

Final Answer:

**D. Slack** ✅


### Question-118


You are designing a YAML template for use with Azure Pipelines. **The template will include the outputfile parameter.**

Which two methods can you use to reference the parameter? Each correct answer presents a complete solution.
NOTE: Each correct selection is worth one point.

* A. `${{parameters.outputfile}}`
* B. `$(parameters.outputfile)`
* C. `${parameters.outputfile}`
* D. `$(parameters[outputfile])`
* E. `${{parameters['outputfile’]}}`

Answer: AE

The correct answers are:

✅ **A. `${{ parameters.outputfile }}`**
✅ **E. `${{ parameters['outputfile'] }}`**

Explanation

In Azure DevOps YAML templates, **parameters** are referenced using **template expression syntax**, which is evaluated at compile time.

There are two valid ways to reference a parameter named `outputfile`:

✅ 1️⃣ Dot notation

```yaml
${{ parameters.outputfile }}
```

* Most common method
* Clean and readable
* Works when the parameter name contains no special characters

✅ 2️⃣ Index notation

```yaml
${{ parameters['outputfile'] }}
```

* Also valid
* Required if parameter names contain special characters or spaces

❌ Why the others are incorrect

| Option | Reason                                                            |
| ------ | ----------------------------------------------------------------- |
| B      | `$(...)` is runtime variable syntax, not parameter syntax         |
| C      | `${ ... }` is invalid in Azure Pipelines                          |
| D      | Invalid bracket syntax (missing quotes and wrong expression type) |

✅ Final Answer:

**A and E**




### Question-119

You have a pipeline named Pipeline1 in Azure Pipelines.

You need to create a service connection to enable Pipeline1 to download a public container image.

Which type of service connection should you create?

* A. a Docker host
* B. a Docker registry
* C. Azure Service Fabric
* D. Azure Kubernetes Service (AKS)


The correct answer is:

**B. a Docker registry** ✅

Explanation

You want **Pipeline1** to **download a public container image**. In Azure Pipelines:

* **Docker registry service connection** is used to connect to **Docker registries**, whether **public (Docker Hub)** or **private**.
* This allows your pipeline tasks to **pull or push container images**.

Why the other options are incorrect

| Option                                | Reason                                                                                              |
| ------------------------------------- | --------------------------------------------------------------------------------------------------- |
| **A. Docker host**                    | Used to connect to a Docker **daemon on a remote host**; not for pulling images from a registry.    |
| **C. Azure Service Fabric**           | Used for deploying services to a Service Fabric cluster; unrelated to downloading container images. |
| **D. Azure Kubernetes Service (AKS)** | Used to deploy containers to AKS; not needed just to pull an image in a pipeline.                   |

Final Answer:

**B. a Docker registry** ✅



### Question-120

You have a project in Azure DevOps named Project that contains a Kanban board named Board1.

You create a Microsoft Teams channel and add the Azure Boards app to the channel.

**You need to ensure that users can create work items in Board1 from Microsoft Teams.**

Which command should you run?

* A. @azure boards subscriptions
* B. @azure boards create
* C. @azure boards sign in
* D. @azure boards

The correct answer is:

**B. `@azure boards create`** ✅

Explanation

When you integrate **Azure Boards** with **Microsoft Teams**, you can manage work items directly from Teams using **commands in the channel**.

* To **create a new work item** from Teams, you use the **`@azure boards create`** command.
* Example usage in the Teams chat:

  ```
  @azure boards create Bug "Fix login error" --assigned-to @John
  ```
* This will create a work item in the selected **Board1** in your Azure DevOps project.

Why the other options are incorrect

| Option                             | Reason                                                                                |
| ---------------------------------- | ------------------------------------------------------------------------------------- |
| **A. @azure boards subscriptions** | Used to manage **notifications or subscriptions** in Teams, not to create work items. |
| **C. @azure boards sign in**       | Used to **sign in** to Azure DevOps from Teams; required only once.                   |
| **D. @azure boards**               | Shows a **list of commands/help**, but doesn’t create a work item directly.           |

Final Answer:

**B. @azure boards create** ✅



### Question-121

You have an Azure subscription that contains a storage account and 20 virtual machines

You plan to use LogRhythm for aggregation and analysis of the virtual machine logs.

You need to configure AzLog to export the logs and push them to the storage account.

In which format should you export the logs?


* A. JSON
* B. EVTX
* C. EVT
* D. binary


The correct answer is:

**A. JSON** ✅

Explanation

**AzLog** (Azure Log Integration) exports logs in **JSON format**, which is the required and supported format for:

* Azure diagnostics logs
* Azure activity logs
* VM logs
* Storage-based log export
* SIEM integrations (including **LogRhythm**)

JSON is:

* Structured
* Machine-readable
* Easily parsed by SIEM tools
* The standard format for Azure log exports and integrations

Why the others are incorrect

| Option        | Reason                                                             |
| ------------- | ------------------------------------------------------------------ |
| **B. EVTX**   | Windows Event Viewer native format, not used for Azure log exports |
| **C. EVT**    | Legacy Windows event log format                                    |
| **D. binary** | Not supported for Azure log streaming or SIEM ingestion            |

Final Answer:

**A. JSON** ✅


### Question-123

You use GitHub for source control and Azure Boards for project management. GitHub and Azure Boards are integrated.

You plan to create a pull request in GitHub.

You need to automatically link the request to an existing Azure Boards work item by using the text of AB#.

To which two elements can you add the text? Each correct answer presents a complete solution.

NOTE: Each correct selection is worth one point.


* A. milestone
* B. label
* **C. title**
* D. comment
* **E. description**

The correct answers are:

**C. title**
**E. description** ✅

Explanation

When **GitHub** and **Azure Boards** are integrated, adding the text format `AB#<workitemID>` will automatically link the pull request to the Azure Boards work item when it appears in:

* **PR title**
* **PR description (body)**

These are the officially supported and reliable auto-linking locations for pull requests.

Why the others are incorrect

| Option           | Reason                                                                                                                 |
| ---------------- | ---------------------------------------------------------------------------------------------------------------------- |
| **A. milestone** | Not parsed for Azure Boards linking                                                                                    |
| **B. label**     | Labels are not processed for AB# linking                                                                               |
| **D. comment**   | Comments can link work items, but the question is specifically about **automatically linking the pull request itself** |

Final Answer:

**C and E** ✅



### Question-124

You are integrating an Azure Boards project and a GitHub repository.

**You need to authenticate Azure Boards to GitHub**.

Which two authentication methods can you use? Each correct answer presents a complete solution.

NOTE: Each correct selection is worth one point.

* A. a publisher certificate
* B. a trusted root certificate
* C. Microsoft Azure Active Directory (Azure AD), part of Microsoft Entra
* **D. GitHub user credentials**
* **E. a personal access token (PAT)**\


Answer: DE

The correct answers are:

**D. GitHub user credentials**
**E. a personal access token (PAT)** ✅

Explanation

When integrating **Azure Boards** with **GitHub**, authentication can be done using:

* **GitHub user credentials (OAuth)** → Standard OAuth-based sign-in flow
* **GitHub Personal Access Token (PAT)** → Token-based authentication for secure API access

These are the two supported and valid authentication mechanisms for Azure Boards ↔ GitHub integration.

Why the others are incorrect

| Option                            | Reason                                              |
| --------------------------------- | --------------------------------------------------- |
| **A. publisher certificate**      | Not used for GitHub authentication                  |
| **B. trusted root certificate**   | Not applicable to GitHub/Azure Boards integration   |
| **C. Azure AD (Microsoft Entra)** | GitHub authentication is not performed via Azure AD |

Final Answer:

**D and E** ✅


### Question-125

You have a GitHub repository that is integrated with Azure Boards. Azure Boards has a work item that has the number 715.

You need to ensure that when you commit source code in GitHub, the work item is updated automatically.

What should you include in the commit comments?

* A. the URL of the work item
* **B. AB#715**
* C. @715
* D. #715

Answer: B

The correct answer is:

**B. AB#715** ✅

Explanation

When **GitHub** is integrated with **Azure Boards**, you can automatically link commits to work items by including the special syntax in the commit message:

```
AB#715
```

This will:

* Link the commit to work item **715**
* Automatically update the work item in Azure Boards
* Create traceability between code and work tracking

Why the others are incorrect

| Option                      | Reason                         |
| --------------------------- | ------------------------------ |
| **A. URL of the work item** | Not parsed automatically       |
| **C. @715**                 | Not recognized syntax          |
| **D. #715**                 | Not recognized by Azure Boards |

 ✅ Final Answer:

**B. AB#715**


### Question-126

You are creating a dashboard in Azure Boards.

You need to visualize the time from when work starts on a work item until the work item is closed.

Which type of widget should you use?

* **A. cycle time**
* B. velocity
* C. cumulative flow
* D. lead time


The correct answer is:

**A. cycle time** ✅

Explanation

In **Azure Boards** dashboards:

* **Cycle time** measures the time **from when work actually starts** on a work item (e.g., moved to *Active/In Progress*) **until it is completed/closed**.
* This is exactly what the question describes.

Why the others are incorrect

| Option                 | Measures                                                           |
| ---------------------- | ------------------------------------------------------------------ |
| **B. velocity**        | Amount of work completed per sprint (story points/items), not time |
| **C. cumulative flow** | Work in different states over time (bottlenecks/flow health)       |
| **D. lead time**       | Time from **creation** of the work item until completion           |

✅ Final Answer:

**A. cycle time**

If you'd like, I can also explain when to use **lead time vs cycle time** — it's a common Agile reporting confusion.




### Question-127 ？？

You manage code by using GitHub.

You plan to ensure that all GitHub Actions are validated by a security team.

You create a branch protection rule requiring that code changes be reviewed by code owners.

You need to create the CODEOWNERS file.

Where should you create the file?

* A.. github/actions/
* B. .github/
* C.`.git/`
* D. .github/workflows/

The correct answer is:

**B. `.github/`** ✅

Explanation

To enforce **code owner reviews** in **GitHub**, the `CODEOWNERS` file must be placed in one of these supported locations:

1. **Repository root** → `/CODEOWNERS`
2. **`.github/` directory** → `/.github/CODEOWNERS` ✅
3. **`docs/` directory** → `/docs/CODEOWNERS`

From the given options, only **`.github/`** is valid.

Why the others are wrong

| Option               | Reason                                              |
| -------------------- | --------------------------------------------------- |
| `.github/actions/`   | ❌ Not a supported CODEOWNERS location               |
| `.git/`              | ❌ Internal Git directory, not for repo config files |
| `.github/workflows/` | ❌ Used for GitHub Actions YAML files                |

Result

Placing `CODEOWNERS` in `.github/` ensures that:

* Branch protection rules can enforce **mandatory reviews**
* Your **security team must approve changes**
* All **GitHub Actions** modifications require validation

✅ Final Answer:

**B. `.github/`**

If you'd like, I can also provide a sample `CODEOWNERS` file for securing GitHub Actions.



### Question-131

You need to recommend an integration strategy for the build process of a Java application. The solution must meet the following requirements:

The builds must access an on-premises dependency management system.

The build outputs must be stored as Server artifacts in Azure DevOps.

The source code must be stored in a Git repository in Azure DevOps.

Solution: Configure the build pipeline to use a Hosted VS 2019 agent pool. Include the Java Tool Installer task in the build pipeline.

Does this meet the goal?

* A. Yes
* **B. No**

Why this does **not** meet the goal

The solution proposes using a **hosted agent pool (Hosted VS 2019)** in **Azure DevOps**, but this fails one of the key requirements:

❌ Requirement not met:

> **The builds must access an on-premises dependency management system**

**Hosted agents cannot access on-premises resources** because:

* They run in Microsoft-managed infrastructure
* They have no network connectivity to your internal network
* No VPN / ExpressRoute / private network integration is available

What *is* correct in the solution

These parts are fine, but incomplete:

* ✅ Storing build outputs as **Server artifacts**
* ✅ Using Git repository in Azure DevOps
* ✅ Using **Java Tool Installer** for Java setup

 ✅ Correct strategy (for full solution)

To meet **all requirements**, you must use:

* **Self-hosted agent pool (on-premises agent)**
* ✔ Can access on-premises dependency systems
* ✔ Can publish Server artifacts to Azure DevOps
* ✔ Can build Java apps
* ✔ Uses Git repos in Azure DevOps

Final Verdict:

**B. No**

Because a **hosted agent** cannot access **on-premises dependency management systems**.


### Question-132

You need to recommend an integration strategy for the build process of a Java application. The solution must meet the following requirements:

The builds must access an on-premises dependency management system.

The build outputs must be stored as Server artifacts in Azure DevOps.

The source code must be stored in a Git repository in Azure DevOps.

Solution: Configure the build pipeline to use a Hosted Ubuntu agent pool. Include the Java Tool Installer task in the build pipeline.

Does this meet the goal?

* A. Yes
* B. No

**Correct answer: B. No** ❌

**Answer: B. No**

The solution does not meet the requirement because a hosted Ubuntu agent runs in the Azure cloud and cannot directly access an on-premises dependency management system without additional network configuration (such as a VPN or self-hosted agent). The Java Tool Installer task only ensures the correct Java version is used, but does not address on-premises connectivity.


### Question-133

Your company uses a Git repository in Azure Repos to manage the source code of a web application. The master branch is protected from direct updates.

Developers work on new features in the topic branches.

**Because of the high volume of requested features,** it is difficult to follow the history of the changes to the master branch.

You need to enforce a pull request merge strategy. The strategy must meet the following requirements:

Consolidate commit histories.

Merge the changes into a single commit.

Which merge strategy should you use in the branch policy?

* A. squash merge
* B. fast-forward merge
* C. Git fetch
* D. no-fast-forward merge

----


**Correct answer: A. squash merge** ✅

Why **squash merge** is the right choice

The requirements are:

* ✔ **Consolidate commit histories**
* ✔ **Merge changes into a single commit**

A **squash merge** does exactly this:

* Takes all commits from the topic branch
* Combines them into **one single commit**
* Keeps the **master branch history clean and readable**
* Makes it easy to track features as single logical changes

Why the others are wrong

* **B. fast-forward merge** ❌
  Preserves full commit history → does not consolidate

* **C. Git fetch** ❌
  Not a merge strategy

* **D. no-fast-forward merge** ❌
  Creates a merge commit but still preserves all commits → not a single commit

Final Answer:

**A. squash merge** 🟢


### Question-134

You are automating the build process for a Java-based application by using Azure DevOps.

You need to add code coverage testing and publish the outcomes to the pipeline.

What should you use?

* A. Bullseye Coverage
* B. JUnit
* C. JaCoCo
* D. MSTest

----

**Correct answer: C. JaCoCo** ✅

Why JaCoCo?

**JaCoCo (Java Code Coverage)** is the standard tool for Java applications to:

* Measure **code coverage**
* Integrate with **Maven/Gradle**
* Publish results to **Azure DevOps pipelines**
* Generate reports (HTML, XML, CSV)
* Work seamlessly with tools like **SonarQube**

Why the others are incorrect

* **A. Bullseye Coverage** ❌ → Primarily for C/C++ projects
* **B. JUnit** ❌ → Testing framework, **not** a coverage tool
* **D. MSTest** ❌ → .NET testing framework, not Java

Final Answer:

**C. JaCoCo** 🟢


### Question-135

You are automating the build process for a Java-based application by using Azure DevOps.

You need to add code coverage testing and publish the outcomes to the pipeline.

What should you use?

* A. Cobertura
* B. Bullseye Coverage
* C. MSTest
* D. Coverlet

---

**Correct answer: A. Cobertura** ✅

Why Cobertura?

**Cobertura** is a **Java code coverage** tool that:

* Integrates with **Maven** and **Gradle**
* Produces coverage reports (XML/HTML)
* Is supported by **Azure DevOps** for publishing coverage results in pipelines
* Is commonly used in CI/CD for Java projects

Why the others are incorrect

* **B. Bullseye Coverage** ❌ → C/C++ coverage tool
* **C. MSTest** ❌ → .NET testing framework
* **D. Coverlet** ❌ → .NET Core coverage tool

Final Answer:

**A. Cobertura** 🟢


### Question-136

You have an existing build pipeline in Azure Pipelines.

You need to use incremental builds without purging the environment between pipeline executions.

What should you use?

* A. a self-hosted agent
* B. Microsoft-hosted parallel jobs
* C. a File Transform task

**Correct answer: A. a self-hosted agent** ✅

Explanation

The requirement is to **use incremental builds** and **retain the environment between pipeline runs**.

* **Self-hosted agents** run on machines that you manage.

  * They **keep the workspace between builds** unless explicitly cleaned.
  * This allows **incremental builds** (e.g., only compiling changed files).

* **Microsoft-hosted agents** ❌

  * Are **ephemeral**; the environment is **reset after each run**, so incremental builds are not possible.

* **File Transform task** ❌

  * Used for modifying configuration files (e.g., appsettings.json) during deployment.
  * Does **not** preserve the build workspace.

Final Answer:

**A. a self-hosted agent** 🟢


### Question-137

You have a private project in Azure DevOps.

**You need to ensure that a project manager can create custom work item queries to report on the project's progress**. The solution must use the principle of least privilege.

To which security group should you add the project manager?

* A. Reader
* B. Project Collection Administrators
* C. Project Administrators
* **D. Contributor**


**Correct answer: D. Contributor** ✅

Explanation

The requirements:

1. **Project manager can create custom work item queries**
2. **Principle of least privilege**

In **Azure DevOps**:

| Security Group                        | Permissions                                                                   |
| ------------------------------------- | ----------------------------------------------------------------------------- |
| **Reader**                            | View work items, dashboards, code. Cannot create queries. ❌                   |
| **Contributor**                       | Can **create and modify work items and queries**, contribute to the project ✅ |
| **Project Administrators**            | Full control over project settings (too much privilege) ❌                     |
| **Project Collection Administrators** | Full control over all projects (way too much) ❌                               |

So, the **Contributor** role provides just enough permissions for the project manager to **create and run queries**, without granting unnecessary administrative rights.

✅ Final Answer:

**D. Contributor**


### Question-138


You use a Git repository in Azure Repos to manage the source code of a web application. Developers commit changes directly to the default branch.

You need to implement a change management procedure that meets the tollowing requirements:

* The detault branch must be protected, and new changes must be built in the feature branches first.
* Changes must be reviewed and approved by at least one release manager before each merge.
* Changes must be brought into the default branch by using pull requests.

What should you configure in Azure Repos?


* A. branch policies of the default branch
* B. Services in Project Settings
* C. Deployment pools in Project Settings
* D. branch security of the default branch

**Correct answer: A. branch policies of the default branch** ✅

Explanation

The requirements:

1. **Protect the default branch** → prevent direct commits
2. **Build changes in feature branches first** → enforce validation builds
3. **Require review and approval by at least one release manager** → enforce code review
4. **Use pull requests to merge into default branch** → control how changes enter mainline

In **Azure DevOps**, this is accomplished by **configuring branch policies** on the default branch:

* Require pull requests for merges
* Require **minimum number of reviewers** (e.g., release manager)
* Require **successful build validation** before merging
* Enforce other policies such as work item linking, comment resolution, etc.

Why the others are incorrect

| Option                                       | Reason                                                                                                            |
| -------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **B. Services in Project Settings**          | Used for external service connections, not branch protection                                                      |
| **C. Deployment pools in Project Settings**  | Used for organizing deployment targets for release pipelines, unrelated to code merge control                     |
| **D. branch security of the default branch** | Controls permissions (read/write/contribute) but **cannot enforce pull request requirements or build validation** |

✅ Final Answer:

**A. branch policies of the default branch**


### Question-139

Your company uses Azure DevOps to manage the build and release processes for applications.

You use a Git repository for applications source control

You need to implement a pull request strategy that **reduces the history volume in the master branc**h.

Solution: **You implement a pull request strategy that uses an explicit merg**e.

Does this meet the goal?

* A. Yes
* **B. No**


**Correct answer: B. No** ❌

Explanation

The goal:

* **Reduce history volume in the master branch**
  → Keep the master branch history **clean and concise**

**Explicit merge** (a regular merge commit) **does not reduce commit history**:

* It preserves **all commits from the feature/topic branch**
* Adds a **merge commit**
* Master branch history becomes longer, especially with many feature branches

Correct approach

To meet the goal, use:

* **Squash merge** ✅

  * Combines all commits from the feature branch into **a single commit** on master
  * Keeps master branch history **concise**

* **Rebase and fast-forward** can also reduce unnecessary merge commits if used carefully

Final Verdict:

**B. No**

Because an explicit merge **does not consolidate commit history**.



### Question-141

You need to recommend a Docker container build strategy that meets the following requirements:

Minimizes image sizes

Minimizes the security surface area of the final image What should you include in the recommendation?

* A. multi-stage builds
* B. PowerShell Desired State Configuration (DSC)
* C. Docker Swarm
* D. single-stage builds


**Correct answer: A. multi-stage builds** ✅

Explanation

The requirements:

1. **Minimize image sizes**
2. **Minimize security surface area**

**Multi-stage builds** in Docker allow you to:

* Use **one stage for building** (with all build tools and dependencies)
* Use **a separate final stage** for the runtime environment
* Copy only the **necessary artifacts** into the final image
* Result: **smaller, leaner images** with fewer tools → **reduced attack surface**

Why the others are incorrect

| Option                     | Reason                                                                                          |
| -------------------------- | ----------------------------------------------------------------------------------------------- |
| **B. PowerShell DSC**      | Used for configuring Windows machines, not for building Docker images                           |
| **C. Docker Swarm**        | Orchestration tool, not related to image size or security surface                               |
| **D. single-stage builds** | Builds everything into one image → larger images with unnecessary tools → bigger attack surface |

 ✅ Final Answer:

**A. multi-stage builds**


### Question-142


Your company has a project in Azure DevOps for a new web application.

You need to ensure that when code is checked in, a build runs automatically.

Solution: From the Triggers tab of the build pipeline, you select Batch changes while a build is in progress.

Does this meet the goal?

* A. Yes
* B. No

**Correct answer: B. No** ❌

Explanation

The goal:

* **Ensure that a build runs automatically when code is checked in** → Continuous Integration (CI)

**What “Batch changes while a build is in progress” does:**

* It **delays triggering a new build** if a build is already running
* It **does not enable automatic builds on check-in by itself**

To meet the goal:

1. Go to the **Triggers** tab of the pipeline
2. **Enable Continuous Integration (CI)** by checking **“Enable continuous integration”** or selecting the branches to trigger on
3. Optionally, **batch changes** can be used to combine multiple pushes into a single build, but this **alone does not enable CI**

 ✅ Final Answer:

**B. No**


### Question-143

You have 50 Node.js-based projects that you scan by using WhiteSource. Each project includes Package.json, Package-lock.json, and Npm-shrinkwrap.json files.

**You need to minimize the number of libraries reports by WhiteSource to only the libraries that you explicitly reference**.

What should you do?

* A. Configure the File System Agent plug-in.
* B. Add a devDependencies section to Package-lock.json.
* C. Configure the Artifactory plug-in.
* D. Delete Package-lock.json.

----

Answer: D

**Correct answer: D. Delete `Package-lock.json`.** ✅

Explanation

WhiteSource (now Mend) analyzes dependency files to determine **all libraries** in a project, including **transitive dependencies**.

If your goal is to **minimize reports to only the libraries you explicitly reference**, you must remove files that define the full dependency tree.

Key files:

* `package.json` → **direct dependencies only** (what you explicitly reference)
* `package-lock.json` → **full resolved dependency tree (direct + transitive)**
* `npm-shrinkwrap.json` → **full resolved dependency tree (direct + transitive)**

By **deleting `package-lock.json`**, WhiteSource will rely on `package.json`, which contains **only explicitly referenced libraries**, thus minimizing the reported libraries.

Why the others are wrong

| Option                                          | Reason                                                                          |
| ----------------------------------------------- | ------------------------------------------------------------------------------- |
| **A. File System Agent plug-in**                | Controls scanning scope, not dependency resolution                              |
| **B. Add devDependencies to package-lock.json** | `package-lock.json` is auto-generated — not meant to be edited                  |
| **C. Artifactory plug-in**                      | Used for repository integration, not dependency filtering                       |
| **D. Delete `package-lock.json`**               | ✅ Removes transitive dependency resolution → only explicit dependencies scanned |

✅ Final Answer:

**D. Delete `Package-lock.json`.**


### Question-144

Your company deploys applications in Docker containers.

You want to detect known exploits in the Docker images used to provision the Docker containers.

You need to integrate image scanning into the application lifecycle. The solution must expose the exploits as early as possible during the application lifecycle.

What should you configure?

* **A. a task executed in the continuous integration pipeline and a scheduled task that analyzes the image registry**
* B. manual tasks performed during the planning phase and the deployment phase
* C. a task executed in the continuous deployment pipeline and a scheduled task against a running production container
* D. a task executed in the continuous integration pipeline and a scheduled task that analyzes the production container

**Correct answer: A. a task executed in the continuous integration pipeline and a scheduled task that analyzes the image registry** ✅

Why this is correct

To expose known exploits **as early as possible** in the application lifecycle, you must scan:

1. **During build time (CI pipeline)** → catches vulnerabilities before images are even deployed
2. **Continuously in the registry** → detects newly discovered CVEs in already-built images

This gives **shift-left security** + **continuous vulnerability monitoring**.

Lifecycle coverage

| Stage                    | Purpose                                               |
| ------------------------ | ----------------------------------------------------- |
| **CI pipeline scanning** | Detects vulnerabilities immediately after image build |
| **Registry scanning**    | Detects new CVEs in stored images over time           |

Why the others are wrong

| Option | Problem                                                       |
| ------ | ------------------------------------------------------------- |
| **B**  | Manual tasks = late detection + unreliable                    |
| **C**  | CD + production scanning = too late (already deployed)        |
| **D**  | Production container scanning = reactive, not early lifecycle |

Final Answer

**A. a task executed in the continuous integration pipeline and a scheduled task that analyzes the image registry**


### Question-145

Your company has a hybrid cloud between Azure and Azure Stack.

The company uses Azure DevOps for its full CI/CD pipelines. Some applications are built by using Erlang and Hack.

You need to ensure that Erlang and Hack are supported as part of the build strategy across the hybrid cloud. The solution must minimize nanagement overhead.

Nhat should you use to execute the build

* A. a Microsoft-hosted agent
* B. Azure DevOps self-hosted agents on Azure DeTest Labs virtual machines.
* C. Azure DevOps self-hosted agents on Hyper-V virtual machines
* D. Azure DevOps self-hosted agents on virtual machines that run on Azure Stack

**Correct answer: D. Azure DevOps self-hosted agents on virtual machines that run on Azure Stack** ✅

Why this is correct

Your requirements are:

* **Hybrid cloud** → Azure + **Azure Stack**
* **Custom languages** → **Erlang** and **Hack** (not supported natively by Microsoft-hosted agents)
* **Minimize management overhead**
* **Unified CI/CD across hybrid environment**

Using **self-hosted agents on VMs running in Azure Stack** gives you:

✅ Full control over runtime environments (install Erlang, Hack, custom toolchains)
✅ Works natively in **hybrid cloud** (on-prem Azure Stack + Azure)
✅ Centralized management via Azure DevOps
✅ No dependency on Microsoft-hosted agent limitations
✅ Consistent build environment across hybrid infrastructure

Why the others are wrong

| Option                        | Why it's wrong                                           |
| ----------------------------- | -------------------------------------------------------- |
| **A. Microsoft-hosted agent** | ❌ Does not support Erlang and Hack environments natively |
| **B. Azure DevTest Labs VMs** | ❌ Extra management layer, not hybrid-cloud optimized     |
| **C. Hyper-V VMs**            | ❌ Not integrated with Azure Stack hybrid model           |

Key principle

> **Hybrid cloud + nonstandard build languages = self-hosted agents on your hybrid infrastructure**

Final Answer

**D. Azure DevOps self-hosted agents on virtual machines that run on Azure Stack**


### Question-146


You are designing an Azure DevOps strategy for your company's development team.

You suspect that the team's productivity is low due to accumulate technical debt.

You need to recommend a metric to assess the amount of the team's technical debt.

What should you recommend?

* A. the number of code modules in an application
* B. the number of unit test failures
* C. the percentage of unit test failures
* D. the percentage of overall time spent on rework

**Correct answer: D. the percentage of overall time spent on rework** ✅

Why this is the right metric

**Technical debt** is best reflected by how much effort is wasted fixing existing problems instead of building new value.
The most meaningful indicator is:

> **How much time the team spends reworking old code instead of delivering new features**

So:

**✔ Percentage of overall time spent on rework** directly measures:

* Refactoring effort
* Bug fixing
* Architectural cleanup
* Maintenance overhead
* Debt interest (cost of past poor decisions)

This is a **true technical debt KPI**.

Why the others are wrong

| Option                                  | Why it's not a good metric                   |
| --------------------------------------- | -------------------------------------------- |
| **A. number of code modules**           | ❌ Size ≠ debt                                |
| **B. number of unit test failures**     | ❌ Quality signal, not debt measurement       |
| **C. percentage of unit test failures** | ❌ Testing quality metric, not technical debt |

Best-practice metrics for technical debt

In real DevOps environments, technical debt is tracked via:

* % time spent on rework ✅
* SonarQube Technical Debt Ratio
* Code smells
* Cyclomatic complexity trends
* Refactoring backlog size
* Mean time to change (MTTC)

Final Answer

**D. the percentage of overall time spent on rework**


### Question-147

You are developing an open source solution that uses a GitHub repository.

You create a new public project in Azure DevOps.


**You plan to use Azure Pipelines for continuous build. The solution will use the GitHub Checks API.**
Which authentication type should you use?

* A. OpenID
* B. GitHub App
* C. a personal access token (PAT)
* D. SAML

**Correct answer: B. GitHub App** ✅

Explanation

To use the **GitHub Checks API** with **Azure Pipelines** for a public GitHub repository, the correct authentication mechanism is:

> **GitHub App**

This is because:

* The **Checks API** is designed to work with **GitHub Apps** (not PATs or OAuth tokens).
* Azure Pipelines integrates with GitHub using a **GitHub App** to:

  * Create check runs
  * Update build statuses
  * Report CI results
* It is the **modern, secure, supported integration model** for CI/CD tools.

Why the others are wrong

| Option        | Reason                                              |
| ------------- | --------------------------------------------------- |
| **A. OpenID** | ❌ Used for identity federation, not GitHub API auth |
| **C. PAT**    | ❌ PATs do **not support the Checks API**            |
| **D. SAML**   | ❌ Enterprise SSO auth, not API integration          |

Key concept to remember for exams & real-world use:

| Feature                   | Required Auth      |
| ------------------------- | ------------------ |
| GitHub Checks API         | **GitHub App** ✅   |
| Webhooks                  | GitHub App / OAuth |
| REST API basic operations | PAT                |
| CI/CD integrations        | GitHub App         |

Final Answer

**B. GitHub App** ✔️


### Question-148

After you answer a question in this section, you will NOT be able to return to it. As a result, these questions will not appear in the review screen

Your company has a project in Azure DevOps for a new web application.

You need to ensure that when code is checked in, a build runs automatically.

Solution: From the Continuous deployment trigger settings of the release pipeline, you enable the Pull request trigger setting.

Does this meet the goal?


* A. Yes
* **B. No**

Answer: B

The correct answer is:

**B. No**

Explanation

In Azure DevOps:

To ensure that **a build runs automatically when code is checked in**, you must configure:

> **Continuous Integration (CI) trigger** in the **build pipeline**

The proposed solution enables:

> **Pull request trigger in the Continuous deployment trigger settings of the release pipeline**

This does **not** meet the goal because:

* Release pipeline triggers control **deployment**, not **build execution**
* Pull request triggers validate PRs — they do not automatically trigger builds on every code check-in
* The requirement is about running a build when code is checked in (CI)

What should be configured instead?

You should enable:

* CI trigger in YAML:

  ```yaml
  trigger:
    - main
  ```

  or

Enable **Continuous integration** in classic build pipeline settings

Final Answer:

**B. No**


### Question-149

After you answer a question in this section, you will NOT be able to return to it. As a result, these questions will not appear in the review screen.

Your company has a project in Azure DevOps for a new web application.

You need to ensure that when code is checked in, a build runs automatically.

Solution: From the Pre-deployment conditions settings of the release pipeline, you select After stage.

Does this meet the goal?

* A. Yes
* **B. No**

**Correct answer: B. No** ❌

Explanation

Enabling a **Pull request trigger** in the **Continuous deployment trigger settings of a *release pipeline*** does **not** cause a build to run automatically when code is checked in.

Why:

* **Build pipelines** handle:

  * CI triggers
  * Automatic builds on commit (push)
* **Release pipelines** handle:

  * Deployment after artifacts are produced
  * They do **not** trigger builds

What is actually required

To ensure a build runs automatically when code is checked in, you must configure:

👉 **Continuous Integration (CI) trigger** in the **build pipeline**
(e.g. YAML trigger or classic pipeline trigger)

Summary

| Action                         | Result                     |
| ------------------------------ | -------------------------- |
| PR trigger in release pipeline | ❌ Does not trigger builds  |
| CI trigger in build pipeline   | ✅ Triggers build on commit |

Final Answer

**B. No** ❌


### Question-150

Your company has a project in Azure DevOps for a new web application.

You need to ensure that when code is checked in, a build runs automatically.

Solution: From the Pre-deployment conditions settings of the release pipeline, you select Batch changes while a build is in progress.

Does this meet the goal?

* A. Yes
* B. No

**Correct answer: B. No** ❌

Explanation

Selecting **“Batch changes while a build is in progress”** in the **Pre-deployment conditions of a release pipeline** does **not** configure automatic builds when code is checked in.

Why this fails the requirement:

* **Pre-deployment conditions** belong to the **release pipeline**, not the build pipeline.
* This setting only controls **how deployments are queued**, not **when builds are triggered**.
* It does **not** trigger builds on code commits.

 What actually meets the goal

To ensure a build runs automatically when code is checked in, you must configure:

👉 **Continuous Integration (CI) trigger** in the **build pipeline**

Examples:

* Classic pipeline: Enable **Continuous Integration**
* YAML pipeline:

  ```yaml
  trigger:
    - main
  ```

Final Answer

**B. No** ❌



### Question-151

Your company has a project in Azure DevOps for a new web application You need to ensure that when code is checked in, a build runs automatically.

Solution: From the Triggers tab of the build pipeline, you select Enable continuous integration.

Does this meet the goal?

* A. Yes
* B. No


—--

**Correct answer: A. Yes** ✅

Explanation

Enabling **Continuous Integration (CI)** from the **Triggers tab of the build pipeline** is exactly how you configure Azure DevOps to:

👉 Automatically run a build **whenever code is checked in**.

This directly meets the requirement:

> "ensure that when code is checked in, a build runs automatically."

Summary

| Action                              | Result                 |
| ----------------------------------- | ---------------------- |
| Enable CI trigger in build pipeline | ✅ Auto-build on commit |
| Release pipeline triggers           | ❌ Not for builds       |
| Pre-deployment conditions           | ❌ Not for builds       |


**Final Answer:**

**A. Yes** ✅


### Question-152

Your company has a project in Azure DevOps.

You need to ensure that when there are multiple builds pending deployment, **only the most recent build is deployed**

What should you use?

* A. deployment conditions
* B. deployment queue settings
* C. release gates
* D. pull request triggers

----

**Correct answer: B. deployment queue settings** ✅

Explanation

In **Azure DevOps release pipelines**, **deployment queue settings** allow you to control how multiple pending deployments are handled.

There is a specific option:

> **“Deploy latest and cancel the others”**

This ensures that:

* When multiple builds are waiting for deployment
* Only the **most recent build** is deployed
* Older pending builds are automatically canceled

Why the others are wrong

| Option                   | Reason                                                         |
| ------------------------ | -------------------------------------------------------------- |
| A. deployment conditions | Controls *when* a deployment can run, not queue behavior       |
| C. release gates         | Used for validations/approvals (e.g., queries, alerts, checks) |
| D. pull request triggers | Only affects CI/build triggering, not deployment behavior      |

Final Answer

**B. deployment queue settings** ✅


### Question-153

You use Azure Pipelines to build and test a React js application.

You have a pipeline that has a single job

**You discover that installing JavaScript packages from npm takes approximately five minutes each time you run the pipeline.**

You need to recommend a solution to reduce the pipeline execution time.

Solution: You recommend defining a container job that uses a custom container that has the JavaScript packages preinstalled.

Does this meet the goal?

* A. Yes
* B. No

----

**Correct answer: A. Yes** ✅

Explanation

Using a **container job with a custom container image** that already has the required JavaScript packages (npm dependencies) preinstalled **will significantly reduce pipeline execution time** because:

* It avoids repeated `npm install` on every pipeline run
* Dependencies are baked into the image layer
* Docker layer caching makes builds much faster
* Startup time is faster than downloading packages each run

This is a valid optimization strategy for CI pipelines, especially when:

* Dependency install time is high
* Dependencies are stable
* You have a single-job pipeline

Additional (best-practice note)

While this solution works, the **most common Azure DevOps optimization** is:

* `Cache@2` task for npm/yarn (`node_modules` or npm cache)

But your proposed solution **does meet the goal** as stated.

Final Answer

**A. Yes** ✅


### Question-154

You use Azure Pipelines to build and test a React.js application.
You have a pipeline that has a single job.

You discover that installing Java Script packages from npm takes approximately five minutes each time you run the pipeline

You need to recommend a solution to reduce the pipeline execution time.

**Solution: You recommend enabling pipeline caching.**

Does this meet the goal?

* A. Yes
* B. No

---

**Answer. A**

**Correct answer: A. Yes** ✅

Explanation

Enabling **pipeline caching** in Azure Pipelines can significantly reduce the time spent installing npm packages because:

* The cache stores previously downloaded packages (or `node_modules` directories) between runs.
* When the cache is available, the pipeline can reuse the packages instead of running `npm install` from scratch.
* This is a **standard optimization for JavaScript/Node.js pipelines**.

How it works

1. Define a cache key (e.g., `package-lock.json` or `yarn.lock`)
2. Use the `Cache@2` task in your pipeline:
3. Restore cached packages at the start of the job → faster builds

Comparison to alternative

* **Custom container with preinstalled packages**: also works, but harder to maintain if dependencies change frequently.
* **Pipeline caching**: flexible, minimal maintenance, works across agents.

Final Answer

**A. Yes** ✅


### Question-155


You use Azure Pipelines to build and test a React js application.
You have a pipeline that has a single job.

You discover that installing JavaScript packages from npm takes approximately five minutes each time you run the pipeline.

You need to recommend a solution to reduce the pipeline execution time.

Solution: **You recommend enabling parallel jobs for the pipeline**.

Does this meet the goal?

* A. Yes
* B. No

------

**Answer: B**

**Correct answer: B. No** ❌

Explanation

Enabling **parallel jobs** in Azure Pipelines allows multiple jobs or pipelines to run **simultaneously**, but it does **not** reduce the time taken by a **single job** to execute.

In your scenario:

* The pipeline has a **single job**
* The **bottleneck** is the `npm install` step (five minutes)
* Parallel jobs **won’t speed up a single job**

Correct approaches to reduce npm install time:

1. **Pipeline caching** – cache `node_modules` or npm cache between runs
2. **Custom container** – preinstall dependencies in a container image
3. **Package lock optimization** – ensure deterministic installs

Final Answer

**B. No** ❌


### Question-156


You plan to create a release pipeline that will deploy Azure resources by using Azure Resource Manager templates. The release pipeline will create the following resources:

Two resource groups

Four Azure virtual machines in one resource group Two Azure SQL databases in other resource group

You need to recommend a solution to deploy the resources.

Solution: Create two standalone templates, each of which will deploy the resources in its respective group.

Does this meet the goal?

* A. Yes
* B. No

-----

**Correct answer: A. Yes** ✅

Explanation

In Azure Resource Manager (ARM) deployments, you can deploy resources either in a **single template** or split them into **multiple templates**.

In your scenario:

* You have **two resource groups**:

  1. One with **four VMs**
  2. One with **two SQL databases**
* Creating **two standalone templates**, each targeting a specific resource group, is a valid and recommended approach because:

  * ARM templates are **scoped to a single resource group** (or subscription/management group)
  * This approach **isolates deployments per resource group**
  * Makes deployment **modular and easier to maintain**

Alternative approaches

* **Nested templates / linked templates**: Useful if you want to deploy all resources in a single coordinated run.
* **Single template with multiple resource groups**: Possible using **subscription-level deployments**, but more complex.

Your solution **meets the goal** and is simpler to implement.

Final Answer

**A. Yes** ✅


### Question-157


You plan to create a release pipeline that will deploy Azure resources by using Azure Resource Manager templates. The release pipeline will create the following resources:

Two resource groups

Four Azure virtual machines in one resource group Two Azure SQL databases in other resource group
You need to recommend a solution to deploy the resources.

**Solution: Create a single standalone template that will deploy all the resources.**

Does this meet the goal?

* A. Yes
* B. No

----

**Correct answer: B. No** ❌

Explanation

In **Azure Resource Manager (ARM) templates**, a **standalone template scoped to a resource group** can only deploy resources **within that specific resource group**.

In your scenario:

* You have **two resource groups**:

  1. One with **four VMs**
  2. One with **two SQL databases**
* A **single standalone template scoped to a single resource group** cannot deploy resources to the **second resource group**.

To deploy resources across multiple resource groups, you must use:

1. **Two separate templates** – each scoped to its respective resource group ✅
2. **A single template with linked templates** – using **`Microsoft.Resources/deployments` at the subscription level** to target multiple resource groups

Final Answer

**B. No** ❌


### Question-158


You have an Azure DevOps project.

Your build process creates several artifacts.

You need to deploy the artifacts to on-premises servers.

Solution: **You deploy a Kubernetes cluster on-premises. You deploy a Helm agent to the cluster. You add a Download Build Artifacts task to the deployment pipeline.**

Does this meet the goal?

* A. Yes
* B. No


----

**Correct answer: B. No** ❌

Explanation

The solution does **not meet the goal** because:

* The requirement is to **deploy build artifacts to on-premises servers** (physical or virtual machines).
* Deploying a **Kubernetes cluster and a Helm agent** targets **containerized workloads**, not traditional on-premises servers.
* Adding a **Download Build Artifacts task** only fetches artifacts; it does **not handle deployment** to standard on-premises servers.

Correct approach

To deploy artifacts to on-premises servers, you should use:

1. **Azure Pipelines self-hosted agent** installed on the target on-premises servers or a management server.
2. Tasks in the pipeline such as:

   * **Copy files / Windows Machine File Copy**
   * **PowerShell / Bash scripts** to deploy artifacts
3. Optionally, configure **deployment groups** in Azure DevOps to manage multiple on-premises servers.

Final Answer

**B. No** ❌


### Question-159


You have an Azure DevOps project.

Your build process creates several artifacts.

You need to deploy the artifacts to on-premises servers.

Solution: You deploy a Docker build to an on-premises server. You add a Download Build Artifacts task to the deployment pipeline.

Does this meet the goal?

* A. Yes
* B. No

-----

**Correct answer: B. No** ❌

Explanation

The solution does **not meet the goal** because:

* The requirement is to **deploy build artifacts to on-premises servers**, which may include applications, configuration files, or other outputs from the build.
* Simply deploying a **Docker build** only works if your application is containerized and intended to run as a container.
* Using **Download Build Artifacts** only downloads artifacts to the agent—it does **not automatically deploy** them to the server.

Correct approach

To deploy artifacts to on-premises servers:

1. Install a **self-hosted agent** on the on-premises servers.
2. Use a **release pipeline** with tasks such as:

   * **Copy Files** / **Windows Machine File Copy**
   * **PowerShell / Bash** deployment scripts
3. Optionally, configure **Deployment Groups** in Azure DevOps to manage multiple on-premises servers.

Final Answer

**B. No** ❌


### Question-160


You have a project in Azure DevOps named Project. Project contains a pipeline that builds a container image named Image and pushes Image1

to an Azure container registry named ACR1. Image uses a base image stored in Docker Hub.

**You need to ensure that Image1 is updated automatically whenever the base image is updated.**

What should you do?

* A. Enable the Azure Event Grid resource provider and subscribe to registry events.
* B. Add a Docker Hub service connection to Azure Pipelines.
* C. Create and run an Azure Container Registry task.
* D. Create a service hook in Project.


-----

**Answer: C**

The correct answer is **C. Create and run an Azure Container Registry task.**

**Explanation:**

Azure Container Registry (ACR) Tasks include a feature specifically designed for this scenario called **Base image update triggers**.

1.  **How it works:** When you create an ACR Task to build a container image, ACR automatically tracks the dependencies of that image. It identifies the base image used in your `Dockerfile` (even if it is hosted on **Docker Hub**).
2.  **Automation:** ACR monitors the base image for changes. When a new version of the base image is pushed to Docker Hub, the ACR Task detects the update and automatically triggers a new build of your image (`Image1`) and pushes it to your registry (`ACR1`).
3.  **Efficiency:** This ensures that your application always includes the latest security patches and performance improvements from the base image without requiring manual intervention or complex pipeline triggers.

**Why other options are incorrect:**

*   **A. Azure Event Grid:** While Event Grid can handle events *within* Azure, it does not natively provide a "turn-key" solution for monitoring image tags on Docker Hub to trigger builds.
*   **B. Docker Hub service connection:** This allows Azure Pipelines to *access* Docker Hub, but it does not provide an automated "watch" mechanism to trigger a rebuild when a third-party image changes.
*   **D. Service hook:** Service hooks in Azure DevOps are used to integrate with external services (like sending a message to Slack when a build fails). They are not designed to monitor external container registries for image updates.

### Question-161

You have an Azure DevOps project.

Your build process creates several artifacts.

You need to deploy the artifacts to on-premises servers.

Solution: You deploy an Octopus Deploy server. **You deploy a polled Tentacle agent to an on-premises server**. 

You add an Octopus task to the deployment pipeline.

Does this meet the goal?

* A. Yes
* B. No

**Correct answer: A. Yes** ✅

Explanation

This solution **does meet the goal**:

* **Octopus Deploy server** → Acts as the deployment orchestrator
* **Polled Tentacle agent on on-premises server** → Allows secure outbound connection from on-prem to Octopus (works behind firewalls/NAT)
* **Octopus task in Azure DevOps pipeline** → Integrates Azure DevOps with Octopus to push and deploy build artifacts

This setup is a **standard enterprise CI/CD pattern** for deploying build artifacts from Azure DevOps to **on-premises infrastructure**.

**Answer: A. Yes**

This solution meets the goal because it correctly addresses the challenge of deploying artifacts from Azure DevOps to on-premises servers using a well-established deployment tool.

✅ Why This Solution Works

1.  **Octopus Deploy Integration**: Octopus Deploy is specifically designed for complex deployments and integrates seamlessly with Azure DevOps. Adding an Octopus task to your Azure Pipeline allows you to trigger deployments orchestrated by Octopus.

2.  **Polled Tentacle for On-Premises**: Using a **polled Tentacle** on your on-premises server is the correct choice for environments behind a firewall. Polled Tentacles initiate outbound connections to the Octopus Server to check for tasks, eliminating the need to open inbound firewall ports to the on-premises server.

3.  **Artifact Deployment**: The combination of the Octopus Server (orchestration), the polled Tentacle (execution agent), and the Octopus task in the pipeline creates a complete workflow:
    - Azure Pipelines builds the artifacts.
    - The Octopus task in the pipeline pushes the artifacts to Octopus and triggers a release.
    - The on-premises polled Tentacle regularly checks in with the Octopus Server, receives the deployment instructions, downloads the artifacts, and deploys them to the server.

📝 How the Components Fit Together

| Component | Role | Meets Requirement? |
| :--- | :--- | :--- |
| **Octopus Deploy Server** | Central orchestration for releases and deployments | ✅ Yes, manages the deployment process. |
| **Polled Tentacle Agent** | Lightweight agent installed on the on-premises target server; polls the server for work. | ✅ Yes, executes the deployment steps locally and works through firewalls. |
| **Octopus Task in Pipeline** | Azure DevOps task that creates a release in Octopus and initiates the deployment. | ✅ Yes, connects the CI pipeline to the CD tool (Octopus). |

Therefore, the proposed architecture is a standard and effective pattern for deploying Azure DevOps build artifacts to on-premises infrastructure.

**A. Yes** ✅


### Question-162 

You plan to create a release pipeline that will deploy Azure resources by using Azure Resource Manager templates. The release pipeline will create the following resources:

Two resource groups

Four Azure virtual machines in one resource group Two Azure SQL databases in other resource group

You need to recommend a solution to deploy the resources.

Solution: **Create a main template that will deploy the resources in one resource group and a nested template that will deploy the resources in the other resource group.**

Does this meet the goal?

* A. Yes
* B. No

-----

**Correct answer: A. Yes** ✅

Explanation

This solution **does meet the goal**.

Using a **main (parent) ARM template** with a **nested template** is a valid and recommended pattern for deploying resources across **multiple resource groups**.

With nested deployments, you can specify the target scope, for example:

* One deployment targets **Resource Group A** (VMs)
* The nested deployment targets **Resource Group B** (SQL databases)

ARM supports this via `Microsoft.Resources/deployments` with a different `resourceGroup` scope.

Why this is correct

* ✔ Supports multiple resource groups
* ✔ Clean separation of concerns
* ✔ Modular design
* ✔ Scalable and maintainable
* ✔ Best-practice ARM architecture pattern

Final Answer

**A. Yes** ✅


### Question-163

You plan to create a release pipeline that will deploy Azure resources by using Azure Resource Manager templates. The release pipeline will create

the following resources:
Two resource groups


Four Azure virtual machines in one resource group Two Azure SQL databases in other resource group

You need to recommend a solution to deploy the resources.

Solution: **Create a main template that has two linked templates, each of which will deploy the resources in its respective group**

Does this meet the goal?

* A. Yes
* B. No

------

Answer: A

**Correct answer: A. Yes** ✅

Explanation

This solution **does meet the goal**.

Using a **main ARM template** with **two linked templates**, where each linked template targets a **different resource group**, is a valid and supported deployment strategy in Azure Resource Manager.

Each linked template can be scoped to a specific resource group using `Microsoft.Resources/deployments` with a `resourceGroup` property, for example:

* **Linked template 1 → deploys VMs to Resource Group A**
* **Linked template 2 → deploys SQL databases to Resource Group B**

Why this works

* ✔ Supports deployment across multiple resource groups
* ✔ Clean modular architecture
* ✔ Separation of responsibilities
* ✔ Reusable templates
* ✔ Azure best practice for complex deployments

Final Answer

**A. Yes** ✅


### Question-164

You have a project in Azure DevOps named Project. Project contains a build pipeline named Pipe1 that builds an application named App1.

You have an agent pool named Pool1 that contains a Windows Server 2019-based self-hosted agent. 

Pipe1 uses Pool1.


You plan to implement another project named Project2. 

Project2 will have a build pipeline named Pipe2 that builds an application named App2.

**App1 and App2 have conflicting dependencies.**

You need to minimize the possibility that the two build pipelines will conflict with each other. The solution must minimize infrastructure costs.

What should you do?

* A. Add another self-hosted agent.
* B. Add a Docker Compose task to the build pipelines.
* C. Change the self-hosted agent to use Red Hat Enterprise Linux (RHEL) 8.
* D. Create two container jobs.


----


**Correct answer: D. Create two container jobs.** ✅

Why this is the best solution

You need to:

* Prevent **dependency conflicts** between App1 and App2
* **Minimize infrastructure costs**
* Keep using the same **self-hosted agent pool**

Using **container jobs** in Azure Pipelines allows each pipeline to run inside its **own isolated Docker container environment**, even when using the **same self-hosted agent**.

Benefits of container jobs

* ✔ Full dependency isolation
* ✔ No conflict between App1 and App2
* ✔ No need for extra VMs or agents
* ✔ Minimal infrastructure cost
* ✔ Clean, repeatable, reproducible builds
* ✔ Best practice for multi-app environments

Why the others are wrong

* **A. Add another self-hosted agent** ❌
  → Works, but increases infrastructure cost (extra VM, maintenance, licensing)

* **B. Add a Docker Compose task** ❌
  → Not for pipeline isolation; used for multi-container app orchestration

* **C. Change OS to RHEL** ❌
  → OS change does not solve dependency conflicts

Final Answer

**D. Create two container jobs.** ✅


### Question-165

You manage build pipelines and deployment pipelines by using Azure DevOps.

Your company has a team of 500 developers. New members are added continually to the team.

You need to automate the management of users and licenses whenever possible.

Which task must you perform manually?

* A. modifying group memberships
* B. adding users
* C. assigning entitlements
* D. procuring licenses

------

**Correct answer: D. procuring licenses** ✅

Explanation

In **Azure DevOps**, you can automate most user and access management tasks, but **license procurement cannot be automated**.

Here’s what can be automated:

* **A. Modifying group memberships** ✅
  → Can be automated via Azure AD groups, scripts, and APIs

* **B. Adding users** ✅
  → Can be automated using Azure AD sync, APIs, or group-based assignment

* **C. Assigning entitlements** ✅
  → Can be automated with group rules in Azure DevOps + Azure AD

What must be manual

* **D. Procuring licenses** ❌ (Manual task)
  Licenses must be **purchased manually** through:

  * Azure Portal
  * Microsoft 365 Admin Center
  * Enterprise Agreement
  * CSP provider

This process involves **billing and procurement**, which cannot be automated via DevOps or Azure APIs.

Final Answer

**D. procuring licenses** ✅


### Question-166

Your company is building a new solution in Java.

The company currently uses a SonarQube server to analyze the code of NET solutions.

You need to analyze and monitor the code quality of the Java solution.

Which task types should you add to the build pipeline?

* A. Octopus
* B. Chef
* C. CocoaPods
* D. Gradle

------

**Answer: D**

**Correct answer: D. Gradle** ✅

Explanation

To analyze and monitor **Java code quality** with **SonarQube**, you must integrate the build tool that SonarQube supports for Java projects.

For Java, SonarQube commonly integrates with:

* **Gradle** ✅
* Maven

Among the options given:

* **A. Octopus** ❌ → Deployment tool, not for Java builds or code analysis
* **B. Chef** ❌ → Configuration management, not a build system
* **C. CocoaPods** ❌ → iOS/macOS dependency manager
* **D. Gradle** ✅ → Java build tool with native SonarQube integration

Why Gradle works

Gradle supports SonarQube via:

* `sonarqube` plugin
* `gradle build sonarqube` task
* Native integration with CI/CD pipelines (including Azure DevOps)

Final Answer

**D. Gradle** ✅


### Question-167


Your company is building a new solution in Java.

The company currently uses a SonarQube server to analyze the code of NET solutions.

You need to analyze and monitor the **code quality of the Java solution**.

Which task types should you add to the build pipeline?

* A. Maven
* B. CocoaPods
* C.Xcode
* D. Gulp

------

**Correct answer: A. Maven** ✅

Explanation

To analyze and monitor **Java code quality** using **SonarQube**, you must use a Java build tool that integrates natively with SonarQube.

SonarQube supports Java analysis through:

* **Maven** ✅
* Gradle

Option analysis

* **A. Maven** ✅ → Native SonarQube integration for Java (`mvn sonar:sonar`)
* **B. CocoaPods** ❌ → iOS/macOS dependency manager
* **C. Xcode** ❌ → Apple development environment
* **D. Gulp** ❌ → JavaScript task runner, not a Java build tool

Final Answer

**A. Maven** ✅


### Question-168

You have an Azure subscription named Subscription1 that contains a custom Azure policy named Policy. Policy is an audit policy that monitors

naming convention compliance for the resources deployed to Subscription1.

You have a pipeline named Pipeline 1 in Azure Pipelines. Pipeline 1 deploys Azure Resource Manager (ARM) resources to Subscription1.

You need to ensure that the resources deployed by Pipeline 1 comply with Policy1.
What should you add to Pipeline 1?

* A. a pre-deployment task that runs a security and compliance assessment
* B. a post-deployment task that runs a security and compliance assessment
* C. an ARM template deployment task to assign Policy1 to Subscription 1
* D. an ARM template deployment task to deploy Policy1 to Subscription1

The correct answer is **B. a post-deployment task that runs a security and compliance assessment.**

Explanation:


Since the policy in question is an **Audit policy**, it will not block the deployment of resources even if they violate the naming conventions. The ARM template deployment will technically "succeed," but the resources will be flagged as non-compliant in Azure.

To "ensure" compliance within the context of the pipeline:

1.  **Deployment:** The pipeline first deploys the resources using the ARM template.
2.  **Assessment:** You add a **post-deployment task** (often using the "Security and Compliance Assessment" task or an Azure Policy compliance check). 
3.  **Validation:** This task triggers a scan to check if the newly deployed resources comply with the assigned Azure Policies. 
4.  **Failure:** If the task finds that the resources are non-compliant (audit violation), it will **fail the pipeline**. This forces the team to address the naming convention issue immediately, effectively ensuring that non-compliant code does not move further through the release process or remain unaddressed.

Why other options are incorrect:

*   **A. Pre-deployment task:** While you can run static analysis on a template, a "security and compliance assessment" against an active Azure Policy usually requires the resources or the deployment intent to be evaluated against the current state of the subscription, which is most accurately done during or after the deployment process.
*   **C & D. ARM template deployment task:** These options deal with the *infrastructure* of the policy itself (creating or assigning it). The question states the policy already exists; the goal is to make sure the app's resources follow that policy.

### Question-169

You have a project in Azure DevOps.

**You need to push notifications about pull requests to a Microsoft Teams channel.** The solution must minimize development effort.

What should you do?

* A. Install the Azure Pipelines app for Teams and configure a subscription to receive notifications in the channel.
* B. Use Azure Automation to connect to the Azure DevOps REST API and send messages to Teams.
* C. Install the Azure Repos app for Teams and configure a subscription to receive notifications in the channel
* D. Use an Azure function to connect to the Azure DevOps REST API and send messages to Teams.

---------

**Correct answer: C. Install the Azure Repos app for Teams and configure a subscription to receive notifications in the channel.** ✅

Why this is correct

To get **pull request notifications** into **Microsoft Teams** with **minimal development effort**, the built-in integration is the best solution:

* The **Azure Repos app for Teams** natively supports:

  * Pull request events
  * Code push notifications
  * Repository activity
  * Subscriptions per channel

No custom code, automation, or APIs required.

Option breakdown

* **A. Azure Pipelines app** ❌
  → Focused on build/release notifications, not pull requests

* **B. Azure Automation + REST API** ❌
  → Custom development, high effort

* **C. Azure Repos app for Teams** ✅
  → Native PR notifications, low effort, designed for this use case

* **D. Azure Function + REST API** ❌
  → Custom integration, unnecessary complexity

Final Answer

**C. Install the Azure Repos app for Teams and configure a subscription to receive notifications in the channel.** ✅


### Question-170


You have an Azure DevOps project that produces Node Package Manager (npm) packages. Multiple projects consume the packages.

You need to configure Azure Artifacts to ensure that both the latest and pre-release versions of the packages are available for consumption.

What should you do?

* A. Create two feed views named @prerelease and @release, Set @release as the default view. Configure a release pipeline that tags the packages as release after successful testing.
* B. Create a feed view named @prerelease. Configure a release pipeline that tags the packages as release after successful testing.
* C. Create two feed views named @prerelease and @default. Configure a release pipeline that promotes a package to the @default view after successful testing.
* D. Create two feed views named @prerelease and @release. Set @release as the default view. Configure a release pipeline that promotes a package to the @release view after successful testing

----

**Correct answer: D**

Here’s why:

In **Azure Artifacts**, best practice for handling *release vs pre-release* packages is to use **feed views** with **promotion**, not tagging:

Proper design

* Create two views:

  * `@prerelease` → for preview/unstable builds
  * `@release` → for stable production-ready builds
* Set `@release` as the **default view**
* Use a **release pipeline** to **promote** packages from `@prerelease` → `@release` after validation/testing

Why option D is correct

> **D. Create two feed views named @prerelease and @release. Set @release as the default view. Configure a release pipeline that promotes a package to the @release view after successful testing.**

This matches Azure Artifacts' intended workflow:

* CI publishes packages to `@prerelease`
* Consumers who want previews explicitly reference `@prerelease`
* Stable consumers automatically get packages from `@release` (default view)
* Promotion = official release process

 Why the others are wrong

* **A / B** ❌ → Azure Artifacts does not use *tagging* for release management — it uses **views + promotion**
* **C** ❌ → `@default` is not a user-created view name; default view is a property, not a view

Visual flow

```
CI build → publish → @prerelease
                  ↓
           release pipeline validation
                  ↓
              promote → @release (default)
```



This is the standard enterprise pattern for npm feeds in **Azure DevOps** with multi-project consumption.

✅ **Final Answer: D**


### Question-171

```
Name  Type
  
Feed1   Azure Artifacts feed
Project1 Project in Azure DevOps
```

Project produces pm packages that are published to Feed. Feed1 is consumed by multiple projects.

You need to ensure that only tested packages are available for consumption. The solution must minimize development effort.


What should you do?

* A. Create a feed view named @release and set @release as the default view. After the pm packages test successfully, configure a release pipeline that promotes a package to the @release view.
* B. Create a feed view named @release and set @release as the default view. Affer the npm packages test successfully, configure a release pipeline that tags the packages as release.
* C. Create a feed view named @default. After the nom packages test successfully configure a release pipeline that tags the packages as release.
* D. Create a feed view named @default. After the npm packages test successfully, configure a release pipeline that promotes a package to the @default view

------


**Correct answer: A**

> **A. Create a feed view named `@release` and set `@release` as the default view. After the npm packages test successfully, configure a release pipeline that promotes a package to the `@release` view.**

Why this is correct

In **Azure Artifacts**, the *official and supported mechanism* to control package availability is:

👉 **Feed views + promotion**

This design ensures:

* Untested packages are **not visible** to consumers
* Only **validated packages** appear in the default feed
* **Minimal development effort** (no custom versioning, no tagging logic, no consumer changes)

Correct architecture

* CI publishes packages → default/internal view (e.g. `@prerelease`)
* Tests run
* Release pipeline:

  * **promotes** package → `@release`
* `@release` is the **default view**
* All consuming projects automatically get **only tested packages**


Why the others are wrong

❌ B

> uses **tagging**

Azure Artifacts does **not use tags for consumption control**
Tags are metadata only → consumers can still pull untested packages

❌ C

> `@default` + tagging

* `@default` is not a user-created view
* Tagging still does nothing for access control

❌ D

> `@default` + promotion

* You **cannot create `@default`**
* Default is a property, not a promotable view

Azure Artifacts best-practice model

```text
CI build
   ↓
publish → internal view
   ↓
tests pass
   ↓
release pipeline
   ↓
PROMOTE → @release (default view)
```

 Key principle

> ✅ **Views + promotion = controlled consumption**
> ❌ Tags = labels only (no enforcement)



This is the enterprise-standard pattern in **Azure DevOps** for secure multi-project feed consumption.

✅ **Final Answer: A**


### Question-172 ？？

Your company has an Azure DevOps project that produces Node Package Manager (npm) packages. Multiple projects consume the packages.

You need to minimize the amount of disk space used by older packages in Azure Artifacts.
What should you modify?

* A. the retention settings of the project's release
* B. the retention settings of the project's pipeline
* C. the retention settings of the project's tests
* D. the retention settings of the company pipeline


-------

The correct answer is: **B. the retention settings of the project's pipeline** ✅

Explanation

In **Azure DevOps**, npm packages published to Azure Artifacts are **often tied to pipeline builds**. Older builds and their artifacts (including npm packages) consume storage.

To automatically clean up unused packages and minimize disk space usage:

* Configure the **pipeline retention settings** in the project.
* Retention rules determine how long builds and their associated artifacts (npm packages) are kept.
* When a build is deleted according to retention rules, its packages can also be cleaned up automatically.

Why the other options are incorrect

* **A. Retention settings of the project's release** ❌
  Releases control deployment artifacts, **not npm packages** in Azure Artifacts. Deleting a release does not free package storage.

* **C. Retention settings of the project's tests** ❌
  Test retention only affects test results, not build artifacts or packages.

* **D. Retention settings of the company pipeline** ❌
  There is no global “company pipeline” retention; retention is managed **per pipeline** in each project.



✅ **Answer: B**



### Question-173


Your company builds a multi-tier web application.

You use Azure DevOps and host the production application on Azure virtual machines.

Your team prepares an Azure Resource Manager template of the virtual machine that you will use to test new features.

You need to create a staging environment in Azure that meets the following requirements:

* **Minimizes the cost of Azure hosting**
* Provisions the virtual machines automatically
* **Uses the custom Azure Resource Manager template to provision the virtual machines**

What should you do?

* A. In Azure Cloud Shell, run Azure CLI commands to create and delete the new virtual machines in a staging resource group.
* B. In Azure DevOps, configure new tasks in the release pipeline to deploy to Azure Cloud Services
* C. From Azure Cloud Shell, run Azure PowerShell commands to create and delete the new virtual machines in a staging resource group.
* D. In Azure DevOps, configure new tasks in the release pipeline to create and delete the virtual machines in **Azure DeTest Labs**


-------

The correct answer is: **D. In Azure DevOps, configure new tasks in the release pipeline to create and delete the virtual machines in Azure DevTest Labs** ✅

Explanation

The scenario requires:

1. **Minimize cost** → avoid keeping staging VMs running constantly.
2. **Automatic provisioning** → integrate with CI/CD.
3. **Use a custom ARM template** → ensure the staging VMs match production configuration.

Why **Azure DevTest Labs** is ideal

**Azure DevTest Labs** is designed specifically for:

* Creating **temporary or short-lived environments**.
* Using **custom ARM templates** to provision VMs.
* **Automating creation and deletion** via pipelines or scripts.
* Reducing cost by **shutting down or deleting unused VMs automatically**.

This matches **all the requirements**.

Why the other options are less suitable

* **A / C (Azure CLI / PowerShell in Cloud Shell)** ❌

  * Manual scripts could create and delete VMs, but require **manual execution or custom automation**, which is more effort.
  * No built-in cost optimization like DevTest Labs.

* **B (Azure Cloud Services)** ❌

  * Azure Cloud Services is **legacy PaaS**; it doesn’t allow you to use custom ARM templates for VM provisioning.



**Key takeaway:**
For staging environments that **minimize cost, use custom templates, and can be automated**, **Azure DevTest Labs integrated with Azure DevOps** is the recommended solution.

✅ **Answer: D**


### Question-174

Your company uses Azure DevOps to manage the build and release processes for applications.

You use a Git repository for applications source control.

You plan to create a new branch from an existing pull request. Later, you plan to merge the new branch and the target branch of the pull request.

You need to use a pull request action to create the new branch. The solution must ensure that the branch uses only a portion of the code in the pull request

Which pull request action should you use?


* A. Set as default branch
* B. Approve with suggestions
* C. Cherry-pick
* D. Reactivate
* E. Revert

-----------


The correct answer is: **C. Cherry-pick** ✅

Explanation

You want to:

1. Create a **new branch** from an existing pull request (PR).
2. Ensure the new branch contains **only a portion of the code** in the original PR.

Why **Cherry-pick** is the right action

* **Cherry-pick** allows you to **select specific commits** from one branch (or PR) and apply them to another branch.
* This means you can **take only part of the changes** from the original pull request into a new branch.
* After cherry-picking, you can **merge the new branch** back into the target branch without including unwanted changes.

Why the other options are incorrect

* **A. Set as default branch** ❌ → Changes which branch is considered the default, does **not** select code.
* **B. Approve with suggestions** ❌ → Used for code review feedback; it **doesn’t create a branch** or pick commits.
* **D. Reactivate** ❌ → Reopens a closed PR; it does **not control which code is used**.
* **E. Revert** ❌ → Creates a commit that **undoes changes**, opposite of what you want.



✅ **Answer: C**


### Question-175

You are designing a build pipeline in Azure Pipelines.

The pipeline requires a self-hosted agent. The build pipeline will run once daily and will take 30 minutes to complete.

You need to recommend a compute type for the agent. The solution must minimize costs.

What should you recommend?

* A. an Azure Kubernetes Service (AKS) cluster
* B. Azure Container Instances
* C. an Azure virtual machine scale set
* D. Azure virtual machines


-----------

The correct answer is **B. Azure Container Instances.**

Explanation:

To minimize costs for a task that runs for only 30 minutes once per day, you need a solution that supports **per-second billing** and **zero cost while idle**.

*   **Cost Efficiency:** Azure Container Instances (ACI) is a "serverless" container service. You only pay for the exact amount of CPU and memory resources consumed while the container is running. **For a 30-minute daily task, you would only be billed for 15 hours of compute per month**.
*   **No Idle Costs:** Unlike a standard Virtual Machine (Option D), which incurs costs 24/7 unless manually deallocated, or an AKS cluster (Option A), which has ongoing management and node costs, ACI can be spun up at the start of the pipeline and deleted immediately after the build completes.
*   **Ease of Use:** You can easily run a Dockerized Azure Pipelines agent in ACI.

Why other options are incorrect:

*   **A. Azure Kubernetes Service (AKS):** This requires maintaining a cluster, which involves ongoing costs for the control plane (if using paid tiers) and the worker nodes. It is far too complex and expensive for a single daily 30-minute job.
*   **C. Azure virtual machine scale set (VMSS):** While Azure Pipelines supports "Elastic self-hosted agents" using VMSS (which can scale to zero), there is still a delay in spinning up VMs, and VMSS billing is typically less granular (per minute/hour) than ACI. Additionally, managing the VM image is more administrative effort than a container.
*   **D. Azure virtual machines:** A standard VM is the most expensive option because you pay for the compute time even when the build isn't running, unless you build complex automation to start and stop the VM.


### Question-176

You have a project in Azure DevOps. 

You have an Azure Resource Group deployment project in Microsoft Visual Studio that is checked in to the Azure DevOps project.

**You need to create a release pipeline that will deploy resources by using Azure Resource Manager templates.**

**The solution must minimize administrative effort.**

Which task type should you include in the solution?

* A. Azure Cloud Service Deployment
* B. Azure RM Web App Deployment
* C. Azure PowerShell
* D. Azure App Service Manage

The correct answer is: **C. Azure PowerShell** ✅

Explanation

You need to:

* Deploy **resources using Azure Resource Manager (ARM) templates**.
* Minimize administrative effort.
* Use an **Azure DevOps release pipeline**.

Analysis of options

| Option                                | Purpose                                                                              | Suitability                                                                  |
| ------------------------------------- | ------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------- |
| **A. Azure Cloud Service Deployment** | Deploys classic Cloud Services (web/worker roles)                                    | ❌ Not ARM template-based                                                     |
| **B. Azure RM Web App Deployment**    | Deploys web apps to Azure App Service                                                | ❌ Only web apps, not general ARM resources                                   |
| **C. Azure PowerShell**               | Runs PowerShell scripts, including `New-AzResourceGroupDeployment` for ARM templates | ✅ Allows automated deployment of **any ARM resources**, minimal manual steps |
| **D. Azure App Service Manage**       | Starts/stops App Service instances                                                   | ❌ Only manages app services, not resource deployments                        |


How it works

1. In the release pipeline, add an **Azure PowerShell** task.
2. Configure the task to run `New-AzResourceGroupDeployment` with your ARM template.
3. This approach:

   * Works with **any Azure resource**.
   * Requires minimal administrative effort.
   * Integrates fully with **Azure DevOps**.



✅ **Answer: C. Azure PowerShell**



### Question-177

You have an Azure DevOps project that contains a release pipeline and a Git repository.

When a new code revision is committed to the repository, a build and release is triggered.

You need to ensure that release information for the pipeline is added automatically to the work items associated to the Git commit.


What should you do?

* A. Modify the Integrations options for the pipeline.
* B. Modify the post-deployment conditions for the last stage of the pipeline.
* C. Add an agentless job to the pipeline.
* D. Modify the service hooks for the project.

------------

Configure your release definition to post deployment information to Work items.


Open Pipelines> Releases, choose to edit your release pipeline, then choose Options> Integrations.

The correct answer is: **A. Modify the Integrations options for the pipeline** ✅

Explanation

You want to:

* Automatically associate **release information** with **work items** linked to a Git commit.
* Do this in an **Azure DevOps release pipeline**.

How it works in Azure DevOps

1. Azure DevOps has a **built-in integration** that links builds/releases to work items.
2. In the **release pipeline settings → Integrations**, you can enable:

   * **Associate work items** with releases.
   * **Update work items** automatically when a release succeeds.
3. Once enabled, any **work items linked to commits included in the release** are updated automatically with release details.

Why the other options are incorrect

* **B. Post-deployment conditions** ❌ → Controls stage execution (e.g., gates, approvals), not work item updates.
* **C. Agentless job** ❌ → Used for calling services or running tasks that don’t require an agent; doesn’t update work items automatically.
* **D. Service hooks** ❌ → Useful for external integrations (Slack, Jira, etc.), but **not needed** to update Azure DevOps work items.



**Key point:**

Enabling **pipeline integrations** is the standard way to ensure that **release information is automatically added to associated work items** in Azure DevOps.

✅ **Answer: A**


### Question-178

Your company has a release pipeline in an Azure DevOps project.

You plan to deploy to an Azure Kubernetes Services (AKS) cluster by using the Helm package and deploy task.

You need to install a service in the AKS namespace for the planned deployment.

Which service should you install?

* A. Azure Container Registry
* B. Chart
* C. Kubectl
* D. Tiller

Answer: D

----


The correct answer is:

✅ **D. Tiller**

to deploy applications to a Kubernetes cluster such as Azure Kubernetes Service (AKS), Helm v2 requires a server-side component called **Tiller**.

Helm architecture (v2):

* **Helm client** – runs commands from the pipeline or local machine
* **Tiller** – runs inside the Kubernetes cluster and manages releases

Tiller must be installed in the **Kubernetes namespace** so Helm can:

* Install charts
* Manage releases
* Upgrade or roll back deployments

Therefore, before using the **Helm package and deploy task**, the **Tiller service** must be installed.

Why the other options are incorrect

| Option                          | Reason                                                                   |
| ------------------------------- | ------------------------------------------------------------------------ |
| **A. Azure Container Registry** | Stores container images, not required as a Helm service in the namespace |
| **B. Chart**                    | A Helm package, not a service                                            |
| **C. Kubectl**                  | A CLI tool, not a service installed in the namespace                     |


✅ **Final Answer:**

**D. Tiller**


### Question-179

**You plan to use Terraform to deploy an Azure resource group from a Windows system.**

You need to install the required frameworks to support the planned deployment.

Which two frameworks should you install? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

* A. Vault
* B. Terratest
* C. Node.js
* D. Yeoman
* E. Tiller

------------

The correct answers are: **C. Node.js** and **D. Yeoman** ✅✅

Explanation

When you want to **use Terraform to deploy Azure resources from a Windows system**, especially **ARM templates or Terraform modules that integrate with Azure**, some supporting frameworks are often required if you plan to use **Azure-specific Terraform tools or scaffolding**.

Analysis of the options

| Option           | Purpose                                                                                                       | Needed?                                                                    |
| ---------------- | ------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| **A. Vault**     | Secret management tool by HashiCorp                                                                           | ❌ Not required for basic Terraform deployment                              |
| **B. Terratest** | Go library for testing Terraform code                                                                         | ❌ Optional, only for automated tests                                       |
| **C. Node.js**   | Required by some Azure Terraform scaffolding tools (e.g., `@azure/terraform`) and Azure DevOps pipeline tasks | ✅ Required for running Terraform templates that include JavaScript tooling |
| **D. Yeoman**    | Scaffolding tool for creating Terraform modules or Azure Resource Manager templates                           | ✅ Needed if using Yeoman generators for Terraform templates                |
| **E. Tiller**    | Part of Helm v2 for Kubernetes                                                                                | ❌ Not needed for deploying Azure Resource Groups                           |

Key points

* **Node.js**: Needed because some Azure Terraform tools (like `azurerm` Terraform templates with Node.js-based scripts or generators) rely on Node.js runtime.
* **Yeoman**: Often used to generate Terraform module scaffolds and ARM template skeletons for Azure.

> Vault, Terratest, and Tiller are **optional or unrelated** for deploying an Azure resource group from Windows.



✅ **Answer: C and D**


### Question-180


You have an approval process that contains a condition. The condition requires that releases be approved by a team leader before they are deployed.

You have a policy stating that approvals must occur within eight hours.

You discover that deployment fail if the approvals take longer than two hours

**You need to ensure that the deployments only fail if the approvals take longer than eight hours.**

Solution: From Post-deployment conditions, you modify the Time between re-evaluation of gates option.

Does this meet the goal?

* A. Yes
* B. No

----------

The correct answer is: **B. No** ✅

Explanation

In **Azure DevOps release pipelines**, the scenario involves:

* An **approval process** with a time limit (policy: 8 hours).
* Current deployment fails if approvals take longer than **2 hours**.
* Goal: allow approvals up to **8 hours** without failing the deployment.

Why modifying **“Time between re-evaluation of gates”** does **not** help

* The **Time between re-evaluation of gates** controls **how frequently a deployment checks the status of a gate** (e.g., monitoring external conditions or metrics).
* It **does not control the timeout for approvals**.
* Approval timeouts are controlled by the **“Timeout” setting in the pre-deployment approval configuration**, not gate evaluation.

Correct approach

* <mark>Modify the **pre-deployment approval timeout** for the stage to **8 hours**.</mark>
* <mark>This ensures that the deployment waits up to 8 hours for team leader approval before failing.</mark>


✅ **Answer: B. No**



### Question-181


You have a policy stating that approvals must occur within eight hours.

You discover that deployment fail if the approvals take longer than two hours.

You need to ensure that the deployments only fail if the approvals take longer than eight hours.

Solution: From Post-deployment conditions, you modify the Timeout setting tor post-deployment approvals.
Does this meet the goal?

* A. Yes
* B. No

The correct answer is: **A. Yes** ✅

Explanation

In **Azure DevOps release pipelines**:

* **Pre- or post-deployment approvals** have a **Timeout setting** that defines how long the system waits for the approval before automatically failing the deployment.

* In your case:

  * Current timeout = 2 hours → deployment fails if approval takes longer than 2 hours.
  * Policy requires approval within 8 hours.

* By **modifying the Timeout for post-deployment approvals to 8 hours**, you ensure:

  1. Deployments will **wait up to 8 hours** for approval.
  2. Deployment only fails if approvals exceed **8 hours**.

Key point

> The **Timeout setting on approval** is the correct control for aligning approval time limits with organizational policies.



✅ **Answer: A. Yes**


### Question-183 ？？？

Your company has a project in Azure DevOps for a new web application.

The company uses ServiceNow for change management.

You need to ensure that a change request is processed before any components can be deployed to the production environment What are two ways to integrate ServiceNow into the Azure DevOps release pipeline? 

Each correct answer presents a complete solution.

NOTE: Each correct selection is worth one point.

* A. Define a deployment control that invokes the ServiceNow REST API.
* B. Define a pre-deployment gate before the deployment to the Prod stage.
* C. Define a deployment control that invokes the ServiceNow SOAP API.
* D. Define a post-deployment gate after the deployment to the QA stage.


**Answer: BD**

The correct answers are: **A. Define a deployment control that invokes the ServiceNow REST API** and **B. Define a pre-deployment gate before the deployment to the Prod stage** ✅✅

Explanation

The requirement:

> Ensure that a **change request is approved in ServiceNow before deploying to production**.

Analysis of options

| Option                                                     | Explanation                                                                                                                                                                              | Correct?                    |
| ---------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------- |
| **A. Deployment control that invokes ServiceNow REST API** | Azure DevOps allows you to use **service hooks or scripts** to call ServiceNow’s REST API to verify change requests. This enforces that a valid change request exists before deployment. | ✅ Correct                   |
| **B. Pre-deployment gate before Prod stage**               | Pre-deployment gates run **before the stage starts**. You can configure a gate to call the ServiceNow REST API and block the deployment until the change request is approved.            | ✅ Correct                   |
| **C. Deployment control invoking ServiceNow SOAP API**     | SOAP API is legacy and not natively supported; requires custom scripts. REST API is the standard integration approach.                                                                   | ❌ Not recommended           |
| **D. Post-deployment gate after QA stage**                 | Post-deployment gates run **after a stage completes**, which is too late for controlling production deployment.                                                                          | ❌ Does not meet requirement |



Recommended integration approach

1. **Configure a pre-deployment gate** on the **Production stage**.
2. Use **ServiceNow REST API** in the gate to verify that the change request is approved.
3. Deployment proceeds only if the change request is processed successfully.



✅ **Answer: A and B**


### Question-184

Your company develops an application named App1 that is deployed in production.

As part of an application update, a new service is being added to App1. The new service requires access to an application named App2 that is currently in development.

You need to ensure that you can deploy the update to App1 before App2 becomes available. You must be able to enable the service in App1 once App2 is deployed.

What should you do?

* A. Implement a feature flag
* B. Create a fork in the build
* C. Create a branch in the build
* D. Implement a branch policy.


------------

The correct answer is: **A. Implement a feature flag** ✅


Explanation

The scenario:

* **App1** is in production.
* A new service in App1 depends on **App2**, which is **not yet available**.
* You want to **deploy App1 now**, but only **enable the new service later**, once App2 is ready.

Why **feature flags** are the solution

* A **feature flag** allows you to **deploy code but disable new functionality** until you’re ready to turn it on.
* You can ship App1 to production without breaking functionality, because the new service is **disabled by default**.
* Once App2 is available, you simply **toggle the feature flag** to enable the service.

Why the other options are incorrect

| Option                              | Why it’s wrong                                                                                                                |
| ----------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| **B. Create a fork in the build**   | Forks are for source control branching; they don’t control runtime features.                                                  |
| **C. Create a branch in the build** | Branching allows parallel development, but you **cannot deploy unfinished code** to production safely without a feature flag. |
| **D. Implement a branch policy**    | Branch policies enforce code quality and merge rules; they **do not control deployment behavior**.                            |



**Key point:**

> Feature flags are the standard approach for **deploying code in advance of dependencies** while retaining the ability to safely enable new features later.

✅ **Answer: A. Implement a feature flag**


### Question-185

You have a private distribution group that contains provisioned and unprovisioned devices.

You need to distribute a new iOS application to the distribution group by using Microsoft Visual Studio App Center.

What should you do?

* A. Request the Apple ID associated with the user of each device.
* B. Register the devices on the Apple Developer portal.
* C. Create an active subscription in App Center Test.
* D. Add the device owner to the organization in App Center.

-------------


The correct answer is: **B. Register the devices on the Apple Developer portal** ✅

Explanation

When distributing an **iOS app outside the App Store** using **Microsoft Visual Studio App Center**:

* **iOS apps require devices to be provisioned** (UDID added to a provisioning profile) because of Apple’s security model.
* **Unprovisioned devices** cannot install the app until they are registered in the **Apple Developer portal** and included in a provisioning profile used to sign the app.
* Once devices are registered and the provisioning profile updated, you can distribute the app to the private group via App Center.

Why the other options are incorrect

| Option                                                        | Reason                                                                                                                   |
| ------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------ |
| **A. Request the Apple ID for each device**                   | Not needed; iOS distribution via provisioning profiles is **device-based**, not Apple ID–based.                          |
| **C. Create an active subscription in App Center Test**       | App Center Test is for automated UI testing, **not required for app distribution**.                                      |
| **D. Add the device owner to the organization in App Center** | App Center accounts are for access control, but adding the owner **does not provision the device** for iOS installation. |



**Key point:**

> For iOS **ad-hoc distribution**, devices must be **registered in Apple Developer portal** and included in the app’s provisioning profile before App Center can distribute the app.

✅ **Answer: B. Register the devices on the Apple Developer portal**



### Question-186

You have a private distribution group that contains provisioned and unprovisioned devices.

You need to distribute a new iOS application to the distribution group by using Microsoft Visual Studio App Center.

What should you do?

* A. Select Register devices and sign my app.
* B. Create an active subscription in App Center Test.
* C. Create an unsigned build.
* D. Add the device owner to the collaborators group.

-----------

The correct answer is: **A. Select Register devices and sign my app** ✅

**Explanation**

For **iOS ad-hoc distribution** via **Microsoft Visual Studio App Center**:

* **Provisioned devices** can install apps signed with a provisioning profile that includes their UDIDs.
* **Unprovisioned devices** cannot install the app until they are **registered in the Apple Developer portal** and added to a provisioning profile.
* App Center provides a **“Register devices and sign my app”** option to:

  1. Register new devices with Apple.
  2. Update the provisioning profile.
  3. Sign the app so it can be installed on those devices.

This ensures that all devices in the private distribution group—both previously provisioned and new—can receive the app.

**Why the other options are incorrect**

| Option                                                  | Reason                                                                                                                    |
| ------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| **B. Create an active subscription in App Center Test** | App Center Test is for automated UI testing, not for distribution.                                                        |
| **C. Create an unsigned build**                         | iOS apps must be **signed with a valid provisioning profile** to install on devices. Unsigned builds cannot be installed. |
| **D. Add the device owner to the collaborators group**  | Adding a user does not provision the device or sign the app; it only gives account access to App Center.                  |



**Key point:**

> For iOS distribution via App Center, you must **register unprovisioned devices and sign the app** before distribution.

✅ **Answer: A. Select Register devices and sign my app**


### Question-187

Your company has an on-premises Bitbucket Server that is used for Git-based source control. The server is protected by a firewall that blocks inbound Internet traffic.

You plan to use Azure DevOps to manage the build and release processes.

Which two components are required to integrate Azure DevOps and Bitbucket? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.


* A. a deployment group
* B. a Microsoft-hosted agent
* C. service hooks
* D. a self-hosted agent
* E. an External Git service connection


---------

The correct answers are: **D. a self-hosted agent** and **E. an External Git service connection** ✅✅

Explanation

You want to **integrate an on-premises Bitbucket Server** with **Azure DevOps** for CI/CD. Key constraints:

* Bitbucket Server is **on-premises** and **behind a firewall**, so **Azure DevOps cannot reach it directly**.

Required components

1. **Self-hosted agent (D)**

   * Runs **inside the network** where Bitbucket Server is accessible.
   * Can **pull code from the on-premises Git repository** because it is behind the firewall.
   * Microsoft-hosted agents **cannot access repositories blocked by a firewall**.

2. **External Git service connection (E)**

   * Azure DevOps uses a **service connection** to connect to external Git repositories.
   * For Bitbucket Server, you create an **“External Git” service connection** with the repository URL and credentials.

Why the others are incorrect

| Option                        | Reason                                                                                                   |
| ----------------------------- | -------------------------------------------------------------------------------------------------------- |
| **A. Deployment group**       | Used for targeting machines for deployment; not required for source control integration.                 |
| **B. Microsoft-hosted agent** | Cannot access on-premises Bitbucket behind a firewall.                                                   |
| **C. Service hooks**          | Optional for triggering Azure DevOps on repository events; **not required** for basic CI/CD integration. |



**Key point:**

> For on-premises Git repositories behind a firewall, you need a **self-hosted agent** inside the network and an **External Git service connection** in Azure DevOps.

✅ **Answer: D and E**



### Question-188


You have a project in Azure DevOps.

**You plan to deploy a self-hosted agent by using an unattended configuration script.**

Which two values should you define in the configuration script? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

* A. authorization credentials
* B. the project name
* C. the deployment group name
* D. the organization URL
* E. the agent pool name

-------------


The correct answers are: **A. authorization credentials** and **D. the organization URL** ✅✅

Explanation

When you deploy an **Azure DevOps self-hosted agent** using an **unattended (non-interactive) configuration script**, you must provide the following key information so the agent can register with Azure DevOps:

1. **Authorization credentials (A)**

   * Typically a **personal access token (PAT)**.
   * This allows the agent to authenticate to Azure DevOps and communicate securely with the organization.

2. **Organization URL (D)**

   * The URL of your Azure DevOps organization (e.g., `https://dev.azure.com/YourOrg`).
   * Required so the agent knows **which Azure DevOps instance to connect to**.

Why the other options are not required in the unattended script

| Option                           | Reason                                                                                                                                          |
| -------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| **B. The project name**          | Optional; the agent is registered to an **agent pool**, not a specific project.                                                                 |
| **C. The deployment group name** | Only required if you are registering the agent as part of a **deployment group**, not for a standard agent pool.                                |
| **E. The agent pool name**       | Can be included, but in many unattended setups, the **default pool** can be used. The **mandatory items** are credentials and organization URL. |



**Key point:**

> For unattended agent configuration, the script must at least include **credentials and the organization URL** so the agent can register automatically.

✅ **Answer: A and D**


### Question-189


You have Azure Pipelines and GitHub integrated as a source code repository.

The build pipeline has continuous integration enabled.

- You plan to trigger an automated build whenever code changes are committed to the repository.
- You need to ensure that the system will wait until a build completes before queuing another build.

What should you implement?

* A. path filters
* B. batch changes
* C. scheduled builds
* D. branch filters

The correct answer is: **B. batch changes** ✅

Explanation

The scenario:

* **Azure Pipelines** integrated with **GitHub**.
* **Continuous integration (CI)** is enabled.
* Requirement: When multiple commits are pushed quickly, **the system should wait for the current build to finish before queuing the next build**, rather than triggering multiple builds in parallel.

How **batch changes** works

* **Batch changes** is a setting in **CI triggers** in Azure Pipelines.
* When enabled:

  1. If a build is **already running**, additional commits **are batched together** into a single build that runs after the current build finishes.
  2. This **prevents multiple builds from queuing unnecessarily** and reduces resource usage.

Why the other options are incorrect

| Option                  | Reason                                                                          |
| ----------------------- | ------------------------------------------------------------------------------- |
| **A. Path filters**     | Restrict CI triggers based on changed file paths; **does not control queuing**. |
| **C. Scheduled builds** | Triggers builds at specific times, not automatically on commits.                |
| **D. Branch filters**   | Restrict CI triggers to certain branches; **does not control queuing**.         |



**Key point:**

> **Batch changes** ensures that Azure Pipelines waits for a build to complete before queuing another one, combining multiple commits into a single build.

✅ **Answer: B. batch changes**


### Question-190

You are using GitHub as a source code repository.

You create a client-side Git hook on the commit-msg event. The hook requires that each commit message contain a custom work item tag.

**You need to make a commit that does not have a work item tag.**

Which git commit parameter should you use?


* A. `--squash`
* B. `--no-verify`
* C. `--message`
* D. `--no-post-rewrite`

-----------

The correct answer is: **B. --no-verify** ✅

Explanation

The scenario:

* You have a **client-side Git hook** on `commit-msg` that enforces a rule: every commit message must include a **custom work item tag**.
* You want to **bypass this hook** for a particular commit.

How it works

* The **`--no-verify`** parameter tells Git to **skip all pre-commit and commit-msg hooks** when making a commit.
* Example:

```bash
git commit --no-verify -m "Commit without work item tag"
```

* This allows the commit to succeed **even if it violates the commit-msg hook**.

 Why the other options are incorrect

| Option                   | Reason                                                                                          |
| ------------------------ | ----------------------------------------------------------------------------------------------- |
| **A. --squash**          | Used to combine changes from another commit into the current commit; does **not bypass hooks**. |
| **C. --message (-m)**    | Used to provide the commit message; does **not bypass hooks**.                                  |
| **D. --no-post-rewrite** | Skips `post-rewrite` hooks; unrelated to `commit-msg`.                                          |



**Key point:**

> **`--no-verify`** is the standard way to bypass client-side Git hooks for a commit.

✅ **Answer: B. --no-verify**



### Question-191

You have a private distribution group that contains provisioned and unprovisioned devices.

You need to distribute a new iOS application to the distribution group by using Microsoft Visual Studio App Center.

What should you do?

* **A. Select Register devices and sign my app.**
* B. Create an active subscription in App Center Test.
* C. Add the device owner to the organization in App Center.
* D. Create an unsigned build.

-------------

The correct answer is: **A. Select Register devices and sign my app** ✅

Explanation

When distributing an **iOS app** to a private distribution group via **Microsoft Visual Studio App Center**:

* **Provisioned devices** can install apps signed with a provisioning profile that includes their UDIDs.
* **Unprovisioned devices** cannot install the app until they are **registered in Apple Developer portal** and included in a provisioning profile.
* App Center provides the **“Register devices and sign my app”** option to:

  1. Register unprovisioned devices.
  2. Update the provisioning profile.
  3. Sign the app so all devices in the distribution group can install it.

Why the other options are incorrect

| Option                                                        | Reason                                                                                                   |
| ------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- |
| **B. Create an active subscription in App Center Test**       | App Center Test is for automated UI testing, not distribution.                                           |
| **C. Add the device owner to the organization in App Center** | Gives account access, **does not provision the device or sign the app**.                                 |
| **D. Create an unsigned build**                               | iOS apps must be **signed with a provisioning profile** to install; unsigned builds cannot be installed. |



**Key point:**

> For iOS ad-hoc distribution, **all devices must be provisioned and the app must be signed** before it can be installed via App Center.

✅ **Answer: A. Select Register devices and sign my app**


### Question-192

You have a private distribution group that contains provisioned and unprovisioned devices.

You need to distribute a new iOS application to the distribution group by using Microsoft Visual Studio App Center.

What should you do?

* A. Register the devices on the Apple Developer portal.
* B. Add the device owner to the organization in App Center.
* C. Create an unsigned build.
* D. Add the device owner to the collaborators group.

---------------


The correct answer is: **A. Register the devices on the Apple Developer portal** ✅

Explanation

For **iOS ad-hoc distribution** via **Microsoft Visual Studio App Center**:

* **Provisioned devices** can install apps that are signed with a provisioning profile containing their UDIDs.
* **Unprovisioned devices** cannot install the app until they are **registered in the Apple Developer portal** and included in the app’s provisioning profile.
* Once the devices are registered, you can **update the provisioning profile, sign the app, and distribute it** through App Center.

Why the other options are incorrect

| Option                                                        | Reason                                                                                           |
| ------------------------------------------------------------- | ------------------------------------------------------------------------------------------------ |
| **B. Add the device owner to the organization in App Center** | Gives the user access to App Center, **but does not provision the device** for iOS installation. |
| **C. Create an unsigned build**                               | iOS apps **must be signed** with a provisioning profile to install on devices.                   |
| **D. Add the device owner to the collaborators group**        | Provides collaboration access, **does not provision devices**.                                   |


**Key point:**

> For iOS ad-hoc distribution, all devices must be **registered in Apple Developer portal** before the app can be installed.

✅ **Answer: A. Register the devices on the Apple Developer portal**


### Question-193


Your company uses Azure Artifacts for package management.

You need to configure an **upstream source in Azure Artifacts for Python packages.**

Which repository type should you use as an upstream source?

* A. npmjs.org
* B. PyPI
* C. Maven Central
* D. third-party trusted Python


-------

The correct answer is: **B. PyPI** ✅

Explanation

In **Azure Artifacts**, an **upstream source** allows you to proxy and cache packages from external public repositories.

For **Python packages**:

* The standard public repository is **PyPI (Python Package Index)**.
* By configuring PyPI as an upstream source:

  * Your Python projects can consume public packages directly through Azure Artifacts.
  * Packages are **cached locally**, improving reliability and speed.

Why the other options are incorrect

| Option                            | Reason                                                                                                                    |
| --------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| **A. npmjs.org**                  | This is the **JavaScript/Node.js** package repository. Not for Python.                                                    |
| **C. Maven Central**              | This is for **Java/Scala/Kotlin** packages. Not Python.                                                                   |
| **D. third-party trusted Python** | There is no standard repository type called “third-party trusted Python” in Azure Artifacts; PyPI is the official source. |



**Key point:**

> For Python packages in Azure Artifacts, the correct upstream source is **PyPI**.

✅ **Answer: B. PyPI**


### Question-194


You have a GitHub repository that contains workflows. **The workflows contain steps that execute predefined actions. Each action has one or more versions.**

You need to request the specific version of an action to execute.

Which three attributes can you use to identify the version? Each correct answer presents a complete solution.

NOTE: Each correct selection is worth one point.

* A. the SHA-based hashes
* B. the tag
* C. the runner
* D. the branch
* E. the serial

------------

The correct answers are: **A. the SHA-based hashes**, **B. the tag**, and **D. the branch** ✅✅✅

Explanation

In **GitHub Actions**, when you reference an action in a workflow, you can specify **which version** of the action to use. GitHub allows three ways to pin the action version:

1. **SHA-based hash (A)**

   * Pin to a **specific commit SHA** for maximum security and immutability.
   * Example:

     ```yaml
     uses: actions/checkout@a1b2c3d4e5f6g7h8i9j0
     ```

2. **Tag (B)**

   * Pin to a **tag** that represents a version.
   * Common practice: use **release tags** like `v2`.
   * Example:

     ```yaml
     uses: actions/checkout@v2
     ```

3. **Branch (D)**

   * You can reference the **branch name** if you want to track the latest commit in that branch (less stable).
   * Example:

     ```yaml
     uses: actions/checkout@main
     ```

Why the other options are incorrect

| Option            | Reason                                                                    |
| ----------------- | ------------------------------------------------------------------------- |
| **C. the runner** | Refers to the machine executing the workflow, **not the action version**. |
| **E. the serial** | No such attribute exists in GitHub Actions for specifying versions.       |

---

**Key point:**

> To request a specific version of a GitHub Action, you can use a **commit SHA**, a **tag**, or a **branch**. Using a SHA is the most precise and recommended method for production workflows.

✅ **Answer: A, B, D**


### Question-195

You have an Azure subscription that contains multiple Azure pipelines.

**You need to deploy a monitoring solution for the pipelines**. The solution must meet the following requirements:

* Parse logs from multiple sources.
* Identify the root cause of issues.

What **advanced feature of a monitoring tool** should you include in the solution?

* A. analytics
* B. synthetic monitoring
* C. directed monitoring
* D. Alert Management

---------

The correct answer is: **A. analytics** ✅

Explanation

The scenario:

* You have **multiple Azure pipelines**.
* Requirement:

  1. **Parse logs from multiple sources** (build logs, release logs, errors).
  2. **Identify the root cause of issues**.


Why **analytics** is the right choice

* **Analytics** in monitoring tools (like **Azure Monitor / Application Insights**) allows you to:

  * Collect and **aggregate logs** from multiple sources.
  * Perform **queries and correlation** across pipelines, builds, and releases.
  * **Detect patterns** and help determine the **root cause** of failures.

* Example features:

  * Kusto Query Language (KQL) queries for logs.
  * Correlation of errors across pipelines.
  * Trend analysis and dashboards.

Why the other options are incorrect

| Option                      | Reason                                                                                                         |
| --------------------------- | -------------------------------------------------------------------------------------------------------------- |
| **B. Synthetic monitoring** | Used to **simulate user actions** and monitor app performance; **not for parsing pipeline logs.**                  |
| **C. Directed monitoring**  | Not a standard Azure Monitor / DevOps feature; does not provide log analytics or root cause analysis.          |
| **D. Alert Management**     | Useful for **sending notifications** when issues occur, but does **not analyze logs** or identify root causes. |


**Key point:**

> To parse logs from multiple pipelines and identify root causes, the **analytics** feature of a monitoring tool is required.

✅ **Answer: A. analytics**



### Question-196

You have an on-premises app named App1 that accesses Azure resources by using credentials stored in a configuration file.

**You plan to upgrade App1 to use an Azure service principal.**

What is required for **App1 to programmatically sign in to Azure Active Directory (Azure AD)?**

* A. the application ID, a client secret, and the object ID
* B. a client secret, the object ID, and the tenant ID
* **C. the application ID, a client secret, and the tenant ID**
* D. the application ID, a client secret, and the subscription ID

**Answer: C**

The correct answer is: **C. the application ID, a client secret, and the tenant ID** ✅

Explanation

When an application uses a **service principal** to authenticate to Azure AD, it needs the following credentials to sign in programmatically:

1. **Application ID (Client ID)**

   * Uniquely identifies the **service principal / app registration**.

2. **Client secret**

   * A password-like credential used to authenticate the service principal.

3. **Tenant ID**

   * Identifies the **Azure AD tenant** where the service principal exists.

With these three values, the application can request an **OAuth token** from Azure AD to access Azure resources.


Why the other options are incorrect

| Option                                                | Reason                                                                                                  |
| ----------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| **A. application ID, client secret, object ID**       | Object ID identifies the service principal object in Azure AD but is **not needed for authentication**. |
| **B. client secret, object ID, tenant ID**            | Missing the **application ID** (Client ID), which is required to identify the application.              |
| **D. application ID, client secret, subscription ID** | Subscription ID is used for resource management, but **not required for authentication** with Azure AD. |



**Key point:**

> To authenticate a service principal programmatically, an app needs **Application ID (Client ID)**, **Client Secret**, and **Tenant ID**.

✅ **Answer: C. the application ID, a client secret, and the tenant ID**


### Question-197

Your team uses Azure Pipelines to deploy applications.

You need to **ensure that when a failure occurs during the build or release process, all the team members are notified by using Microsoft Teams**.

The solution must minimize development effort.

What should you do?

* A. Install the Azure Boards app for Teams and configure a subscription to receive notifications in a channel.
* B. Use Azure Automation to connect to the Azure DevOps REST API and notify the team members.
* C. Use an Azure function to connect to the Azure DevOps REST API and notify the team members.
* D. Install the Azure Pipelines app for Teams and configure a subscription to receive notifications in a channel.


--------------

The correct answer is: **D. Install the Azure Pipelines app for Teams and configure a subscription to receive notifications in a channel** ✅

Explanation

The scenario:

* You are using **Azure Pipelines** for build and release.
* Requirement: Notify the team in **Microsoft Teams** whenever a **pipeline fails**.
* Minimize **development effort**.

Why **Azure Pipelines app for Teams** is the solution

* The **Azure Pipelines app** for Teams allows you to:

  1. Connect your **Azure DevOps pipelines** to Teams channels.
  2. **Subscribe to events**, such as build/release failures, completions, or approvals.
  3. Automatically post **notifications to Teams** without custom coding.

* Minimal effort: just install the app and configure the subscription.

Why the other options are incorrect

| Option                             | Reason                                                                         |
| ---------------------------------- | ------------------------------------------------------------------------------ |
| **A. Azure Boards app for Teams**  | Azure Boards handles **work item notifications**, not build/release events.    |
| **B. Azure Automation + REST API** | Works, but requires **custom scripting and development**, not minimal effort.  |
| **C. Azure Function + REST API**   | Also requires **custom coding**; more complex than using the native Teams app. |



**Key point:**

> To notify a team in Teams about pipeline failures with minimal development, use the **Azure Pipelines app for Teams** and configure a channel subscription.

✅ **Answer: D**


### Question-198

You use Calendar Versioning (CalVer) for code assets.

**You need to store an optional tag of beta as part of the version**.

Which part of the version should you use for the tag?

* A. minor
* B. major
* C. micro
* D. modifier


-----------

The correct answer is: **D. modifier** ✅

Explanation

When using **Calendar Versioning (CalVer)**:

* Version format is typically:

  ```
  YYYY.MM.DD[-modifier]
  ```

  or

  ```
  YYYY.MM[-modifier]
  ```

* The **modifier** (sometimes called a **pre-release tag**) is used to indicate **optional tags** such as `beta`, `alpha`, `rc1`, etc.

* Example:

  ```
  2026.02.24-beta
  2026.02.24-alpha
  ```

  Here, `beta` is stored in the **modifier** portion of the version.


Why the other options are incorrect

| Option       | Reason                                                                         |
| ------------ | ------------------------------------------------------------------------------ |
| **A. minor** | Represents the month or minor version number in CalVer, not for optional tags. |
| **B. major** | Represents the year or major version, cannot store tags.                       |
| **C. micro** | Represents day, patch, or build number, not for tags.                          |


**Key point:**

> In CalVer, use the **modifier** field for optional pre-release tags like `beta` or `alpha`.

✅ **Answer: D. modifier**


### Question-199 ？？


You have a project in Azure DevOps named Project1.

**You need to ensure that all new pipelines in Project1 execute three specific tasks during pipeline execution.**

What should you create?

* A. a task group
* B. a JSON template
* C. a YAML template
* D. a PowerShell task

Answer: A

The correct answer is: **C. a YAML template** ✅

Explanation

Scenario:

* You want **all new pipelines** in **Project1** to automatically include **three specific tasks**.
* You want **reusability and minimal duplication**.

Why a YAML template is the solution

* In **Azure Pipelines**, **YAML templates** allow you to define **reusable steps, jobs, or stages**.
* You can create a **template containing the three specific tasks**.
* New pipelines can **reference the YAML template**, ensuring the tasks are executed consistently.

Example:

```yaml
# file: templates/common-tasks.yml
steps:
- task: Task1@1
- task: Task2@1
- task: Task3@1
```

Reference in a pipeline:

```yaml
# azure-pipelines.yml
trigger:
- main

extends:
  template: templates/common-tasks.yml
```

* This ensures all pipelines **reuse the same tasks** without redefining them.


Why the other options are incorrect

| Option                 | Reason                                                                                                                          |
| ---------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| **A. Task group**      | Task groups work only in **classic pipelines**, not YAML pipelines. Modern pipelines should use templates.                      |
| **B. JSON template**   | Azure Pipelines does **not support JSON templates** for steps/tasks.                                                            |
| **D. PowerShell task** | A PowerShell task could execute commands, but it **cannot enforce inclusion of multiple tasks in all pipelines** automatically. |



**Key point:**

> Use **YAML templates** in Azure Pipelines to define a set of tasks that can be reused across multiple pipelines.

✅ **Answer: C. a YAML template**


### Question-200

You use Azure DevOps processes to build and deploy code.

You need to compare how much time is spent troubleshooting issues found during development and how much time is spent troubleshooting

issues found in released code.

Which KPI should you use?

* A. defect escape rate
* B. unplanned work rate
* C. defect rate
* D. rework rate

---------------

The correct answer is: **A. defect escape rate** ✅

Explanation

The scenario:

* You want to **compare time spent troubleshooting issues** found during **development** vs **after release**.
* This is a measure of **quality and defect detection efficiency**.



What is **Defect Escape Rate**?

* **Defect escape rate (DER)** measures **the proportion of defects found in production compared to defects found during development**.
* Formula:

```
[
\text{Defect Escape Rate} = \frac{\text{Defects found in production}}{\text{Defects found in development + production}} \times 100
]
```

* A **high escape rate** indicates that many defects are **escaping development testing**, requiring troubleshooting in production.
* Tracking DER helps compare **effort spent fixing issues in development vs post-release**.



Why the other options are incorrect

| Option                     | Reason                                                                                                |
| -------------------------- | ----------------------------------------------------------------------------------------------------- |
| **B. Unplanned work rate** | Measures time spent on **tasks outside the planned backlog**, not specific to defect troubleshooting. |
| **C. Defect rate**         | Measures **number of defects**, but does not differentiate between development vs production.         |
| **D. Rework rate**         | Measures time spent on **rework of planned tasks**, not necessarily defects escaping to production.   |



**Key point:**

**<mark>Defect escape rate** is the KPI that helps you compare troubleshooting effort **before and after release</mark>**

✅ **Answer: A. defect escape rate**



###  Question-201

You have a project in Azure DevOps named Project1.

You implement a Continuous Integration/Continuous Deployment (CI/CD) pipeline that uses PowerShell **Desired State Configuration (DSC) to configure the application infrastructure**.

You need to perform a unit test and an integration test of the configuration before Project is deployed.

What should you use?

* A. the PSScriptAnalyzer tool
* B. the Pester test framework
* C. the PSCodeHealth module
* D. the Test-DscConfiguration cmdlet

----

The correct answer is: **B. the Pester test framework** ✅

Explanation

Scenario:

* You are using **PowerShell Desired State Configuration (DSC)** in a CI/CD pipeline.
* You want to **perform both unit tests and integration tests** on the DSC configuration **before deployment**.

Why **Pester** is the right choice

* **Pester** is the **PowerShell testing framework** for writing **unit tests and integration tests**.
* With DSC, you can write **Pester tests** to validate that:

  * Configuration scripts produce the expected **MOF (Managed Object Format)** files.
  * Resources are configured correctly.
* Pester is the **standard way to test PowerShell scripts and DSC configurations** in CI/CD pipelines.

Example:

```powershell
Describe "DSC Configuration" {
    It "Should have IIS installed" {
        (Get-WindowsFeature -Name Web-Server).Installed | Should -BeTrue
    }
}
```

Why the other options are incorrect

| Option                       | Reason                                                                                                                                           |
| ---------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| **A. PSScriptAnalyzer**      | Static code analysis tool; checks **style and syntax**, **not unit/integration behavior**.                                                       |
| **C. PSCodeHealth**          | Checks **code quality metrics**; not used for executing unit/integration tests.                                                                  |
| **D. Test-DscConfiguration** | Verifies that a system is currently compliant with a DSC configuration; **does not perform pre-deployment tests of the DSC scripts themselves**. |



**Key point:**

> For **unit and integration testing** of PowerShell DSC configurations in CI/CD, **Pester** is the standard framework.

✅ **Answer: B. the Pester test framework**


### Question-202


You use Azure Repos to manage source code and Azure Pipelines to implement continuous integration and continuous deployment (CI/CD).

**You need to ensure that all comments on pull requests are resolved before the pull requests are included in a build.**

The solution must minimize administrative effort.

What should you include in the solution?

* A. a custom action
* B. a post-deployment gate
* C. a branch policy
* D. a pre-deployment gate

-------

The correct answer is: **C. a branch policy** ✅

Explanation

Scenario:

* You are using **Azure Repos** and **pull requests (PRs)**.
* Requirement: **All comments on a pull request must be resolved before it is included in a build**.
* Solution must **minimize administrative effort**.

Why **branch policy** is the right solution

* **Branch policies** in Azure Repos allow you to enforce rules before a PR can be merged.
* You can configure policies to require:

  * **All comments resolved** before completing the PR.
  * **Build validation** (ensure CI pipeline passes).
  * **Minimum number of reviewers**.
* Once set, this enforcement is **automatic for all PRs**, requiring **no manual or custom intervention**.

Why the other options are incorrect

| Option                      | Reason                                                                   |
| --------------------------- | ------------------------------------------------------------------------ |
| **A. Custom action**        | Would require development effort; not minimal effort.                    |
| **B. Post-deployment gate** | Runs **after a deployment stage**, not before merging code.              |
| **D. Pre-deployment gate**  | Runs **before deploying to a stage**, not before PR completion or build. |


**Key point:**

> Use a **branch policy** to enforce that all PR comments are resolved before the PR is merged and included in a build.

✅ **Answer: C. a branch policy**


### Question-203

You have a project in Azure DevOps named Project. Project1 contains a build pipeline named Pipe1 that builds an application named App1.

You have an agent pool named Pool1 that contains a Windows Server 2022-based self-hosted agent. Pipe 1 uses Pool1.

You plan to implement another project named Project. Project2 will have a build pipeline named Pipe2 that builds an application named App2.

App 1 and App2 have conflicting dependencies.

You need to minimize the possibility that the two build pipelines will conflict with each other. The solution must minimize infrastructure costs.

What should you do?

* A. Add another self-hosted agent
* B. Add a Docker Compose task to the build pipelines.
* C. Change the self-hosted agent to use Red Hat Enterprise Linux (RHEL) 9.
* D. Create two container jobs.

-----------------

The correct answer is: **D. Create two container jobs** ✅

Explanation

Scenario:

* You have **two build pipelines** (Pipe1 and Pipe2) for **two applications** (App1 and App2).
* App1 and App2 have **conflicting dependencies**.
* Current setup: **one self-hosted Windows agent** in Pool1.
* Requirement: **minimize conflicts** and **minimize infrastructure costs**.

Why **container jobs** are the solution

* **Container jobs** in Azure Pipelines allow each job to run inside a **separate container image**.
* Benefits:

  1. **Isolate dependencies** for each application, avoiding conflicts.
  2. **Reuses the same agent**, so you **don’t need additional agents** (cost-effective).
  3. Works on **any agent** that supports Docker (self-hosted or Microsoft-hosted).

Example:

```yaml id="h8xl38"
jobs:
- job: BuildApp1
  container: mcr.microsoft.com/dotnet/sdk:7.0
  steps:
    - script: dotnet build App1.sln

- job: BuildApp2
  container: mcr.microsoft.com/dotnet/sdk:6.0
  steps:
    - script: dotnet build App2.sln
```

Why the other options are incorrect

| Option                               | Reason                                                                                                                      |
| ------------------------------------ | --------------------------------------------------------------------------------------------------------------------------- |
| **A. Add another self-hosted agent** | Works, but **increases infrastructure cost** unnecessarily.                                                                 |
| **B. Add a Docker Compose task**     | Docker Compose sets up multi-container environments, but **you only need isolated jobs**, not a full multi-container setup. |
| **C. Change agent OS to RHEL 9**     | OS change **does not solve dependency conflicts** between the apps.                                                         |



**Key point:**

> **Container jobs** allow each pipeline to run in an **isolated environment**, minimizing conflicts without adding extra agents.

✅ **Answer: D. Create two container jobs**


### Question-205 ??


You have an app named App1 that you release by using Azure Pipelines. App1 has the versions shown in the following table.


```
Number   Description

3.4.7   Previous release

4.0.0   Current release

```

You complete a code change to fix a bug that was introduced in version 3.4.3.

Which version number should you assign to the release?


* A. 3.4.4
* B. 3.4.8
* C. 3.5.0
* D. 4.0.1

----

**Answer: D**

**Answer: D. 4.0.1**

Explanation

According to semantic versioning (SemVer), a backward-compatible bug fix should increment the **patch** version. The current release is 4.0.0, and the bug fix applies to the current codebase, so the new version should be 4.0.1. Releasing a patch for the previous major version (3.4.8) would be appropriate only if you maintain multiple release branches, but the scenario does not indicate that.

The correct answer is **D. 4.0.1**.

Explanation:

This question follows the logic of **Semantic Versioning (SemVer)**, which is the industry standard for versioning software. SemVer uses the format **Major.Minor.Patch**.

1.  **Current State:** The table indicates that the **Current release** is **4.0.0**. 
2.  **Type of Change:** You are applying a **bug fix**. According to SemVer rules, a bug fix that does not add new features or break backward compatibility should increment the **Patch** version (the third number).
3.  **The Calculation:** 
    *   Current: 4.0.0
    *   Action: Bug fix (Patch increment)
    *   New Version: **4.0.1**

Why other options are incorrect:

*   **A. 3.4.4:** This version is olde
*   r than the "Previous release" (3.4.7). You cannot release a version number that has already been surpassed in that branch.
*   **B. 3.4.8:** This would be a patch to the *old* release branch. While companies sometimes "backport" fixes to older versions, the standard procedure for a release pipeline is to update the **Current release** (4.0.0).
*   **C. 3.5.0:** This would indicate a new feature (Minor increment) on an old Major version (3), which contradicts having already moved to version 4.0.0.


### Question-206

You are automating the testing process for your company.

You need to automate Ul testing of a web application.

Which framework should you use?

* A. JaCoco
* B. Playwright
* C. Xamarin. UlTest
* D. Microsoft.CodeAnalysis

-------

Answer: B

The correct answer is: **B. Playwright** ✅

Explanation

Scenario:

* You want to **automate UI testing** for a **web application**.
* The solution must support modern browsers and web interactions.

Why **Playwright** is the right choice

* **Playwright** is a **modern open-source framework** for automating browser interactions.
* Supports:

  * Chrome, Firefox, Edge, and WebKit (Safari)
  * **End-to-end UI testing**
  * Multi-language support: C#, JavaScript, Python, Java
* Can be easily integrated into **CI/CD pipelines** for automated web testing.

Example:

```csharp
using Microsoft.Playwright;

using var playwright = await Playwright.CreateAsync();
var browser = await playwright.Chromium.LaunchAsync(new BrowserTypeLaunchOptions { Headless = true });
var page = await browser.NewPageAsync();
await page.GotoAsync("https://example.com");
await page.ClickAsync("text=Login");
```

Why the other options are incorrect

| Option                        | Reason                                                                     |
| ----------------------------- | -------------------------------------------------------------------------- |
| **A. JaCoco**                 | Code coverage tool for Java; **not for UI testing**.                       |
| **C. Xamarin.UITest**         | Used for **mobile app UI testing**, not web applications.                  |
| **D. Microsoft.CodeAnalysis** | Known as Roslyn; **used for analyzing C# and VB code**, not UI automation. |



**Key point:**

> For **automated UI testing of web applications**, the recommended framework is **Playwright**.

✅ **Answer: B. Playwright**


### Question-207

You use Azure Pipelines to build and test code projects.

You notice an increase in cycle times.

**You need to identify whether agent pool exhaustion is causing the issue.**

What are two possible ways to achieve this goal? Each correct answer presents a complete solution.

NOTE: Each correct selection is worth one point.

* A. Query the PipelineRun/PipelineRuns endpoint.
* B. Query the TaskAgentPoolSizeSnapshots endpoint.
* C. View the Pipeline duration report.
* D. View the pool consumption report at the organization level.

-----


**Answer: BD**

The correct answers are: **B. Query the TaskAgentPoolSizeSnapshots endpoint** and **D. View the pool consumption report at the organization level** ✅✅

Explanation

Scenario:

* You notice **increased cycle times** in Azure Pipelines.
* You want to determine if **agent pool exhaustion** (i.e., not enough agents available) is causing delays.


Option analysis

1. **B. Query the TaskAgentPoolSizeSnapshots endpoint** ✅

   * This **REST API endpoint** provides snapshots of **agent pool usage** over time.
   * You can see **how many agents are busy, idle, or offline**, helping identify if builds are delayed due to **insufficient available agents**.

2. **D. View the pool consumption report at the organization level** ✅

   * Azure DevOps provides **built-in reports for agent pools**, showing:

     * Agent usage trends
     * Queued jobs
     * Pool saturation
   * Useful for spotting **bottlenecks caused by agent shortages**.

Why the other options are incorrect

| Option                                             | Reason                                                                                                     |
| -------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| **A. Query the PipelineRun/PipelineRuns endpoint** | Shows details about **pipeline runs**, but does not indicate **agent pool saturation**.                    |
| **C. View the Pipeline duration report**           | Shows **pipeline execution times**, but cannot distinguish **agent availability issues** from slow builds. |



**Key point:**

> To detect **agent pool exhaustion**, you need **metrics on agent pool usage**, either via the **TaskAgentPoolSizeSnapshots API** or the **pool consumption report**.

✅ **Answer: B and D**
