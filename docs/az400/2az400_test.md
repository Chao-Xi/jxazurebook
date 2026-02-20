## Azure AZ400 Test

### Question 1

You are configuring project metrics for dashboards in Azure DevOps. You need to configure a chart widget that measures the **elapsed time** to **complete work items once they become active**. Which of the following is the widget you should use?

* A. Cumulative Flow Diagram
* B. Burnup
* **C. Cycle time**
* D. Burndown



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
|--|-|
| **A. Cumulative Flow Diagram** | Graphical representation showing the flow of work items through different process stages over time. |
| **B. Burnup** | Visualization tool tracking completed work over time, often used in Agile project management. |
| **C. Cycle time** | **Total time for a work item to move through a process, from start to finis**h. |
| **D. Burndown** | Graphical representation showing remaining work versus time, commonly used in Agile methodologies. |


### Question 2

You need to consider the underlined segment to establish whether it is accurate. The Burnup widget measures the elapsed time from creation of work items to their completion. Select "No adjustment required' if the underlined segment is accurate. If the underlined segment is inaccurate, select the accurate

* A. No adjustment required.
* **B. Lead time**
* C. Test results trend
* D. Burndown

> Correct Answer: B. Lead time

The correct answer is:

**B. Lead time**

**Explanation:**

The statement is **inaccurate**.

* The **Burnup** widget **does not** measure elapsed time from creation to completion.
* That metric is called **Lead time**, which measures the time from **work item creation → completion**.

**Why the others are wrong:**

* **A. No adjustment required** ❌ → The statement is incorrect.
* **B. Lead time** ✅ → Correct metric for creation → completion time.
* **C. Test results trend** ❌ → QA/testing metrics only.
* **D. Burndown** ❌ → Tracks remaining work over time, not elapsed time.

✅ Final answer: **B. Lead time**



You need to consider the underlined segment to establish whether it is accurate. The Burnup widget measures the elapsed time from creation of work items to their completion. Select "No adjustment required' if the underlined segment is accurate. If the underlined segment is inaccurate, select the accurate option.


| Term | Explanation |
||-|
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
||-|
| **A. Group membership changes** | Modifications or updates made to the membership of a specific group within an organization. |
| **B. License assignment** | The process of allocating or assigning software licenses to users or devices. |
| **C. Assigning entitlements** | Granting specific rights or privileges to users or entities based on their entitlements. |
| **D. License procurement** | **The process of obtaining or acquiring software licenses, typically through purchasin**g. |



### Question 4

You have been tasked with strengthening the security of your team's development process. You need to suggest a security tool type for the Continuous Integration (CI) phase of the development process. Which of the following is the option you would suggest?

* A. Penetration testing
* **B. Static code analysis**
* C. Threat modeling
* D. Dynamic code analysis

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

Reference:
https://docs.microsoft.com/en-us/azure/devops/articles/security-validation-cicd-pipeline?view=vsts

You have been tasked with strengthening the security of your team's development process. You need to suggest a security tool type tor the Continuous Integration (CI) phase of the development process. Which of the following is the option you would suggest?



| Term | Explanation |
||-|
| **A. Penetration testing** | A method of evaluating the security of a computer system or network by simulating an attack. |
| **B. Static code analysis** | Examination of source code to identify potential vulnerabilities without executing the code. |
| **C. Threat modeling** | A process of identifying and prioritizing potential threats to a system and assessing defenses. |
| **D. Dynamic code analysis** | Analysis of software while it is executing to identify vulnerabilities or errors in real-time. |



### Question 5

Your company is currently making use of Team Foundation Server 2013 (TFS 2013), but intend to migrate to Azure

You have been tasked with supplying a migration approach that allows for the preservation of Team
Foundation Version Control changesets dates, as well as the changes dates of work items revisions. The approach should also allow for the migration of all TFS artifacts, while keeping migration effort to a minimum. You have suggested upgrading TFS to the most recent RTW release. Which of the following should also be suggested?

* A. Installing the TFS kava SDK
* **B. Using the TFS Database Import Service to perform the upgrade**.
* C. Upgrading PowerShell Core to the latest version.
* D. Using the TFS Integration Platform to perform the upgrade.

**Correct Answer: B**

Your company is currently making use of Team Foundation Server 2013 (TFS 2013), but intend to migrate to Azure DevOps. You have been tasked with supplying a migration approach that allows for the preservation of Team Foundation Version Control changesets dates, as well as the changes dates of work items revisions. The approach should also allow for the migration of all TFS artifacts, while keeping migration effort to a minimum. You have suggested upgrading TFS to the most recent RTW release.

Which of the following should also be suggested?



| Term | Explanation |
||-|
| **A. Installing the TFS kava SDK** | The process of installing the TFS (Team Foundation Server) kava SDK (Software Development Kit). |
| **B. Using the TFS Database Import Service to perform the upgrade** | Utilizing a service provided by TFS to import data from databases to upgrade the system. |
| **C. Upgrading PowerShell Core to the latest version** | Updating the PowerShell Core software to its most recent release, potentially for compatibility reasons or to access new features. |
| **D. Using the TFS Integration Platform to perform the upgrade** | Employing a platform designed for integrating and managing changes during the upgrade process in TFS. |



### Question 6

You are currently developing a project for a client that will be managing work items via Azure DevOps. You want to make sure that the work item process you use for the client allows for requirements, change requests, risks, and reviews to be tracked.
Which of the following is the option you would choose?

* A. Basic
* B. Agile
* C. Scrum
* **D. CMMI**

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
||-|
| **A. Basic** | Choose Basic when your team wants the simplest model that uses Issues, Tasks, and Epics to track work. |
| **B. Agile** | This process works great if you want to track user stories and (optionally) bugs on the Kanban board, or track bugs and tasks on the task board. |
| **C. Scrum** | This process works great if you want to track product backlog items (PBIs) and bugs on the Kanban board, or break PBIs and bugs down into tasks on the task board |
| **D. CMMI** | Choose CMMI when your team follows more formal project methods that require a framework for process improvement and an auditable record of decisions. With this process, you can track requirements, change requests, risks, and reviews |


### Question 7

You run the Register-AzureRm AutomationDscNode command in your company's environment. 

You need to make sure that your company's test servers remain correctly configured, regardless of configuration drift.

Solution: You set the -Configuration Mode parameter to ApplyOnly. Does the solution meet the goal?

* A. Yes
* **B. No**

Correct Answer: B

* ApplyAndMonitor: focuses on monitoring for drift without automatic correction, 
* **ApplyAndAutocorrect: combines application and continuous correction of configurations** 
* ApplyOnly: is a one-time application of configurations without any ongoing monitoring or correction.

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
| -- |  | -- |
| ApplyOnly               | ❌ No            | ❌ No     |
| ApplyAndMonitor         | ✅ Yes           | ❌ No     |
| **ApplyAndAutoCorrect** | ✅ Yes           | ✅ Yes    |

✅ **Correct answer: No**
The solution does **not** meet the goal.



### Question 8

You run the Register-AzureRm AutomationDscNode command in your company's environment. 

You need to make sure that your company's test servers remain correctly configured, regardless of configuration drift.

Solution: You set the -ConfigurationMode parameter to ApplyAn Monitor, Does the solution meet the goal?

* A. Yes
* B. No


**Answer: B - No**


* **ApplyAndMonitor**: focuses on monitoring for drift without automatic correction,
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


### Question 9

You run the Register-AzureRmAutomationDscNode command in your company's environment. You need to make sure that

your company's test servers remain correctly configured, regardless of configuration drift.

Solution: You set the -ConfigurationMode parameter to **ApplyAndAutocorrect**, Does the solution meet the goal?


* A. Yes
* B. No

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


### 7,8,9-Expanation

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

### Question -10

Your company has an Azure DevOps environment that can only be accessed by Azure Active Directory users. 

You are instructed to make sure that the Azure DevOps environment can only be accessed from devices connected to the company's on-premises network. Which of the following actions should you take?

* A. Assign the devices to a security group.
* B. Create a GPO.
* C. Configure Security in Project Settings from Azure DevOps.
* **D. Configure conditional access in Azure Active Directory.**


Your company has an Azure DevOps environment that can only be accessed by Azure Active Directory users.

You are instructed to make sure that the Azure DevOps environment can only be accessed from devices connected to the company's on-premises network. Which of the following actions should you take?

* A. Assign the devices to a security group.
* B. Create a GPO.
* C. Configure Security in Project Settings from Azure DevOps.
* D. Configure conditional access in Azure Active Directory.


Correct Answer: D - Configure conditional access in Azure Active Directory

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

* **A. Github Enterprise**
* B. Bitbucket cloud
* C. Github Professional
* D. Git in Azure Repos


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
| - | - | -- |  |
| GitHub Enterprise   | ✅       | ✅              | ✅                  |
| Bitbucket Cloud     | ❌       | ❌              | ❌                  |
| GitHub Professional | ❌       | ❌              | ❌                  |
| Azure Repos Git     | ❌       | ❌              | ❌                  |

✅ **Final answer: A. GitHub Enterprise**


### Question -12

You scan a Node.js application using WhiteSource Bolt. The scan finds numerous libraries with invalid licenses, but are only used during development. You have to make sure that only production dependencies are scanned by WhiteSource
Bolt. Which of the following is a command you should run?

* A. npm edit
* B. npm publish
* C. npm install
* D. npm update

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


### Question -13

Your company hosts a web application in Azure, and makes use of Azure Pipelines for managing the build and release of the application. When stakeholders report that system performance has been adversely affected by the most recent releases, you configure alerts in Azure Monitor. 

You are informed that new releases must satisfy specified performance baseline conditions in the staging environment before they can be deployed to production. 

You need to make sure that releases not satisfying the performance baseline are prevented from being deployed.

Which of the following actions should you take?

* A. You should make use of a branch control check.
* B. You should make use of an alert trigger.
* C. You should make use of a gate.
* D. You should make use of an approval check.


Correct Answer: **C. You should make use of a gate.**

The correct answer is:

**C. You should make use of a gate.** ✅



Explanation:

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



**Correct Answer: C. Deployment**

When authoring an Azure Pipelines or TFS Release pipeline, you can specify the deployment targets for a job using a deployment group If the target machines are Azure VMs, you can quickly and easily prepare them by installing the Azure Pipelines Agent Azure VM extension on each of the VMs, or by using the Azure Resource Group Deployment task in your release pipeline to create a deployment group dynamically.




### Question -15

You need to consider the underlined segment to establish whether it is accurate. To find when common open source libraries are added to the code base, you should add Jenkins to the build pipeline. 

Select '**No adjustment required**' if the underlined segment is accurate. 

If the underlined segment is inaccurate, select the accurate option.

* A. No adjustment required.
* B. SourceGear Vault
* **C. WhiteSource**
* D. OWASP ZAP


The correct answer is:

**C. WhiteSource**



**Explanation:**

The statement is **inaccurate**.

> “To find when common open source libraries are added to the code base, you should add **Jenkins** to the build pipeline.”

**Jenkins** is a CI/CD automation server — it does **not** analyze dependencies or detect open source libraries.

To detect and track when **open-source libraries** are added (including license and vulnerability scanning), you should use:

**WhiteSource** (now known as Mend)

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

Your company has an Azure DevOps project, which includes a build pipeline that makes use of roughly fifty open source libraries. 

You have been tasked with making sure that you are able to scan project for common security weaknesses in the open source libraries. 

Which of the following actions should you take?

* **A. You should create a build task and use the White Source Bolt service.**
* B. You should create a deployment task and use the WhiteSource Bolt service.
* C. You should create a build task and use the Chef service.
* D. You should create a deployment task and use the Chef service.

Correct Answer: **A. You should create a build task and use the WhiteSource Bolt service.**


The correct answer is:

**A. You should create a build task and use the WhiteSource Bolt service.** ✅

**Explanation:**

To scan **open source libraries** for **common security weaknesses** (such as known vulnerabilities and license issues), you should integrate **WhiteSource Bolt** into your **build pipeline** in Azure DevOps.

**WhiteSource Bolt** is designed specifically for:

* Scanning open-source dependencies
* Detecting CVEs and vulnerabilities
* License compliance checks
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


The statement is **accurate**.

**Black Duck** is specifically designed to:

* Scan open-source libraries
* Enforce **license compliance policies**
* Detect license violations and risks
* Ensure OSS usage aligns with **company licensing criteria**

So the correct logical choice is:

> ✅ **No adjustment required**


⚠️ **Note:**

The provided options (A–D) are unrelated to the statement and appear to be from a different question. Since the statement about **Black Duck** is correct, the proper answer conceptually is **No adjustment required**, even though it is not listed.



Secure and Manage Open Source Software Black Duck helps organizations identify and mitigate open source security, license compliance and code-quality risks across application and container portfolios. Black Duck Hub and its plugin for Team Foundation Server (TFS) allows you to automatically find and fix open source security vulnerabilities during the build process, so you can proactively manage risk. The integration allows you to receive alerts and fail builds when any Black Duck Hub policy violations are met.


### Question -18

Your company has an application that contains a number of Azure App Service web apps and Azure functions. You would like to view recommendations with regards to the security of the web apps and functions. 

You plan to navigate to Compute and Apps to achieve your goal. Which of the following should you access to make use of Compute and Apps?

* A. Azure Log Analytics
* B. Azure Event Hubs
* C. Azure Advisor
* **D. Azure Security Center**


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

You need to consider the underlined segment to establish whether it is accurate. Your company has a multi-tier application that has its front end hosted in Azure App Service. To pinpoint the average load times of the application pages, you should make use of Azure Event Hubs. Select 'No adjustment required' if the underlined segment is accurate. If the underlined segment is inaccurate, select the accurate option.

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
* Request/response times
* Application performance metrics
* End-user experience monitoring
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
language. Solution: You use the Contextual Query Language (CQL)

Does the solution meet the goal?

* A. Yes
* **B. No**

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


* **A. an Azure Automation runbook**
* **B. an Azure Monitor alert that has a dynamic threshold**
* C. an Azure Monitoralert that has a static threshold
* D. the Azure Monitorautoscale settings
* E. an Azure Monitoralert that uses an action group that has an email action

**Correct Answer: AB**

A: You can use Azure Monitor to monitor base-level metrics and logs for most services in Azure. You can call Azure Automation runbooks by using action groups or by using classic alerts to automate tasks based on


B: Metric Alert with Dynamic Thresholds detection leverages advanced machine learning (ML) to learn metrics' historical behavior, identify patterns and anomalies that indicate possible service issues. It provides support of both a simple Ul and operations at scale by allowing users to configure alert rules through the Azure Resource Manager API, in a fully automated manner.

The correct answers are:

**A. an Azure Automation runbook**
**B. an Azure Monitor alert that has a dynamic threshold**



Explanation:

To **automatically increase the logging level** when the web app exceeds **normal usage patterns**, and to **minimize administrative overhead**, you need:

#### ✅ **B. Azure Monitor alert with a dynamic threshold**

* Detects **abnormal behavior** automatically (baseline-driven)
* Adapts to changing traffic patterns (perfect for e-commerce workloads)
* No manual tuning required → low admin overhead

#### ✅ **A. Azure Automation runbook**

* Executes automated actions (e.g., **change logging level** in the web app)
* Can be triggered via an **Azure Monitor alert action group**
* Fully automated response


#### Why the others are incorrect:

* **C. Static threshold alert** ❌ → Requires manual tuning and maintenance
* **D. Azure Monitor autoscale settings** ❌ → Scales resources, not logging levels
* **E. Email action group** ❌ → Not automation, increases manual work


#### Architecture Flow:

1. **Dynamic threshold alert** detects abnormal usage
2. Alert triggers **Action Group**
3. Action Group triggers **Azure Automation runbook**
4. Runbook increases **logging level automatically**


✅ **Final answer: A and B**


### Question -23

You have a Microsoft ASP.NET Core web app in Azure that is accessed worldwide. You need to run a URL ping test once every five minutes and create an alert when the web app is unavailable from specific Azure regions. The solution must minimize development time. What should you do?

* A. Create an Azure Monitor Availability metric and alert.
* **B. Create an Azure Application Insights availability test and alert.**
* C. Write an Azure function and deploy the function to the specific regions.
* D. Create an Azure Service Health alert for the specific regions.

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


### Question -24

You have a multi-tier application. The front end of the application is hosted in Azure App Service.

You need to identify the average load times of the application pages. What should you use?


* **A. Azure Application Insights**
* B. the activity log of the App Service
* C. the diagnostics logs of the App Service
* D. Azure Advisor


**Correct Answer: A. Azure Application Insights**


Application Insights will tell you about any performance issues and exceptions, and help you find and diagnose the root causes. Application Insights can monitor both Java and ASP.NET web applications and services, WCF services. They can be hosted on-premises, on virtual machines, or as Microsoft Azure websites. On the client side, Application Insights can take telemetry from web pages and a wide variety of devices including ios, Android, and Windows Store apps.

The correct answer is:

**A. Azure Application Insights** ✅



Explanation:

To identify **average page load times** and performance metrics for a web application hosted in **Azure App Service**, you should use **Azure Application Insights**.

Application Insights provides:

* **Page load time metrics**
* End-user performance monitoring
* Request/response times
* Dependency tracking
* Application performance analytics
* Real-time telemetry and dashboards



Why the others are incorrect:

* **B. Activity log of the App Service** ❌ → Tracks management operations (start/stop, config changes), not performance metrics.
* **C. Diagnostics logs of the App Service** ❌ → Logs requests/errors, not user-experience performance analytics.
* **D. Azure Advisor** ❌ → Provides recommendations, not performance telemetry.



✅ **Final answer: A. Azure Application Insights**


### Question -25


Your company uses ServiceNow for incident management. You develop an application that runs on Azure.

The company needs to generate a ticket in ServiceNow when the application fails to authenticate.
Which Azure Log Analytics solution should you use?

* A. Application Insights Connector
* B. Automation & Control
* **C. IT Service Management Connector (ITSM)**
* D. Insight & Analytics

Correct Answer: C. IT Service Management Connector (ITSM)

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

You use Azure SQL Database Intelligent Insights and Azure Application Insights for monitoring.

You need to write ad-hoc queries against the monitoring data. Which query language should you use?


* **A. Kusto Query Language (KQL)**
* B. PL/pgSQL
* C. PL/SQL
* D. Transact-SQL

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

Your company creates a web application. You need to recommend a solution that automatically sends to Microsoft Teams a daily summary of the exceptions that occur in the application. 

Which two Azure services should you recommend?

Each correct answer presents part of the solution.

* **A. Azure Logic Apps**
* B. Azure Pipelines
* C. Microsoft Visual Studio App Center
* D. Azure DevOps Project
* **E. Azure Application Insights**

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

You need to ensure that an alert is sent when the web app has a sudden rise in performance issues and failures.

What should you use?


* A. Custom events
* B. Application Insights Profiler
* C. Usage analysis
* **D. Smart Detection**
* E. Continuous export

The correct answer is:

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

### Question -29


You have a private GitHub repository. You need to display the commit status of the repository on Azure Boards.

What should you do first?

* A. Configure multi-factor authentication (MFA) for your GitHub account.
* B. Add the Azure Pipelines app to the GitHub repository.
* **C. Add the Azure Boards app to the repository.**
* D. Create a GitHub action in GitHub.


The correct answer is:

**C. Add the Azure Boards app to the repository.** ✅


Explanation:

To display **GitHub commit status and link commits/work items** in **Azure Boards**, the first required step is to integrate the repository with Azure Boards by installing the **Azure Boards app** in GitHub.

Specifically, you must add the:

**Azure Boards app**
to your **GitHub repository.

This enables:

* Linking commits and PRs to work items
* Displaying commit status in Azure Boards
* Traceability between code and project management



Why the others are incorrect:

* **A. Configure MFA** ❌ → Security best practice, but unrelated to Azure Boards integration.
* **B. Add the Azure Pipelines app** ❌ → Used for CI/CD, not work item/commit tracking in Azure Boards.
* **D. Create a GitHub Action** ❌ → Automation workflow, not required for Azure Boards commit visibility.



Correct integration order:

1. **Add Azure Boards app to GitHub repo** ✅
2. (Optional next steps) Configure pipelines, policies, etc.



✅ **Final answer: C. Add the Azure Boards app to the repository.**


Correct Answer: C. Add the Azure Boards app to the repository.

To connect Azure Boards to GitHub.com,

connect and configure from Azure Boards. Or, alternatively, install and configure the Azure Boards app from GitHub.

Both methods have been streamlined and support authenticating and operating via the app rather than an individual.

### Question -30

You have a web app hosted on Azure App Service. The web app stores data in an Azure SQL database. 

You need to generate an alert when there are 10,000 simultaneous connections to the database. 


The solution must minimize development effort. Which option should you select in the Diagnostics settings of the database?


* **A. Send to Log Analytics**
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


You have an Azure virtual machine that is monitored by using Azure Monitor, The virtual machine has the Azure Log Analytics agent installed, You plan to deploy the Service Map solution from the Azure Marketplace What should you deploy to the virtual machine to support the Service Map solution?

* A. the Dependency agent
* B. the Telegraf agent
* C. the Windows Azure diagnostics extension (WAD)
* D. the Azure monitor agent


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

You have multiple teams that work on multiple projects in Azure DevOps. You need to plan and manage the consumers and producers for each project. The solution must provide an overview of all the projects. What should you do?

* A. Add a Predecessor or Successor link to the feature or user story for the items of each project.
* B. Add a Parent or Child link to the feature or user story for the items of each project.
* C. Install the Dependency Tracker extension and create dependencies for each project.
* D. Create a custom query to show the consumers and producers and add a widget to a dashboard

Correct Answer: C


The correct answer is:

**C. Install the Dependency Tracker extension and create dependencies for each project.** ✅



Explanation:

You need to **plan and manage consumer/producer relationships across multiple teams and multiple projects** in **Azure DevOps**, with a solution that provides a **single overview of all projects**.

The **Dependency Tracker extension** is purpose-built for this scenario:

* Visualizes **cross-team and cross-project dependencies**
* Models **consumer/producer relationships**
* Provides **roadmap and timeline views**
* Centralized dependency management
* Portfolio-level overview



Why the other options are incorrect:

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

You plan to centralize distributed tracing for the apps. You need to identify which libraries can 
integrate directly with Application Insights.

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
|  |  |
| OpenTelemetry | ✅                                             |
| OpenCensus    | ✅                                             |
| OpenTracing   | ❌                                             |
| Jaeger        | ❌                                             |
| Honeycomb     | ❌                                             |



✅ **Final answer: D. OpenTelemetry and E. OpenCensus**


### Question-34 ？？

You have an Azure web app named webapp1 that uses the NET Core runtime stack. 

You have an Azure Application Insights resource named AppInsights1. Webapp1 sends telemetry data to Applnsights1. You need to ensure that webapp1 sends the telemetry data at a fixed sampling rate.

What should you do?


* A. From the code repository of webapp1, modify the Applicationinsights.config file.
* **B. From the code repository of webapp1, modify the Startup.cs file.**
* C. From Applnsights1, modify the Usage and estimated costs settings.
* D. From Appinsights1, configure the Continuous export settings.

**Correct Answer: B**


The correct answer is:

**C. From AppInsights1, modify the Usage and estimated costs settings.** ✅

Explanation:

To **control the sampling rate of telemetry data** sent from an Azure web app to **Application Insights**, you can configure **fixed-rate sampling** at the **Application Insights resource level** without changing code.

* In **Azure Portal**:

  1. Navigate to **AppInsights1**
  2. Go to **Usage and estimated costs**
  3. Configure **Sampling** (Fixed-rate or Adaptive)

**Benefits of portal-level sampling:**

* Reduces telemetry volume
* Controls costs
* Minimal development/maintenance effort


Why the others are incorrect:

* **A. Modify ApplicationInsights.config** ❌ → Only applicable for **full .NET Framework apps**, not .NET Core
* **B. Modify Startup.cs** ❌ → Possible in code, but the requirement is to **minimize changes and manage via portal**
* **D. Continuous export** ❌ → Sends data elsewhere, does not control sampling



✅ **Final answer: C. From AppInsights1, modify the Usage and estimated costs settings.**


### Question-35

You use Azure Pipelines to build and deploy an app named App1. You plan to monitor App1 by using Application Insights. You create an Application Insights instance named Al1. You need to configure App1 to use Al1. Which file should you modify?

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

You have an Azure subscription that contains multiple Azure services. You need to send an SMS alert when scheduled maintenance is planned for the Azure services.

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

You are designing a strategy to monitor the baseline metrics of Azure virtual machines that run Windows Server. 

You need to collect detailed data about the processes running in the guest operating system.

Which two agents should you deploy? Each correct answer presents part of the solution.


* A. the Telegraf agent
* **B. the Azure Log Analytics agent**
* C. the Azure Network Watcher Agent for Windows
* **D. the Dependency agent**

Correct Answer: BD


### Question-38

You configure Azure Application Insights and the shared service plan tier for a web app. You enable Smart Detection. You confirm that standard metrics are visible in the logs, but when you test a failure, you do not receive a Smart Detection notification. 

What prevents the Smart Detection notification from being sent?


* A. You must enable the Snapshot Debugger for the web app.
* **B. Smart Detection uses the first 24 hours to establish the normal behavior of the web app**.
* C. The web app is configured to use the shared service plan tier.
* D. You must restart the web app before Smart Detection is enabled.

**Correct Answer: B**

The correct answers are:

**B. the Azure Log Analytics agent** ✅
**D. the Dependency agent** ✅



Explanation:

To **collect detailed process-level data from Azure Windows VMs**, the following agents are required:

1. **Azure Log Analytics agent (B)**

   * Collects **performance counters, event logs, and custom logs** from the VM.
   * Required to send data to **Log Analytics / Azure Monitor**.

2. **Dependency agent (D)**

   * Collects **process and network dependency information** within the VM.
   * Required for **Service Map** and detailed process monitoring.

Together, these agents provide a **complete view of running processes and their dependencies** on Windows VMs.



Why the others are incorrect:

* **A. Telegraf agent** ❌ → Primarily used for **InfluxDB / Time-series metrics**, not for full Azure monitoring
* **C. Azure Network Watcher Agent for Windows** ❌ → Monitors **network traffic and connectivity**, not processes



✅ **Final answer: B and D**



After setting up Application Insights for your project, and if your app generates a certain minimum amount of data, Smart Detection of failure anomalies takes 24 hours to learn the normal behavior of your app, before it is switched on and can send alerts.



### Question-39

You have an Azure DevOps organization named Contoso and an Azure subscription. The subscription contains an Azure virtual machine scale set named VMSS1 that is configured for autoscaling. You use Azure DevOps to build a web app named App1 and deploy App1 to VMSS1. App1 is used heavily and has usage patterns that vary on a weekly basis. You need to recommend a solution to detect an abnormal rise in the rate of failed requests to App1. The solution must minimize administrative effort.
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

Monitoring your application health is an important signal for managing and upgrading your deployment. 

Azure virtual machine scale sets provide support for rolling upgrades including automatic OS-image upgrades, which rely on health monitoring of the individual instances to upgrade your deployment. You can also use health extension to monitor the application health of each instance in your scale set and perform instance repairs using automatic instance repairs.

Reference: https://docs.microsoft.com/en-us/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-health-extension

### Question-42

You have a build pipeline in Azure Pipelines that occasionally fails. You discover that a test measuring the response time of an API endpoint causes the failures. 

You need to prevent the build pipeline from failing due to the test.

Which two actions should you perform? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

- A. Set Flaky test detection to Off.
- **B. Clear Flaky tests included in test pass percentage.**
- C. Enable Test Impact Analysis (TIA).
- **D. Manually mark the test as flaky.**
- E. Enable test slicing.

Correct Answer: BD

Reference: https://docs.microsoft.com/en-us/azure/devops/pipelines/test/flaky-test-management


### Question-43

Your company hosts a web application in Azure. 

The company uses Azure Pipelines for the build and release
Stakeholders management of the application. Stakeholders report that the past few releases have negatively affected system performance. You configure alerts in Azure Monitor.

You need to ensure that new releases are only deployed to production if the releases meet defined performance

baseline criteria in the staging environment first.

What should you use to prevent the deployment of releases that fall to meet the performance baseline?

- A. an Azure Scheduler job
- B. a trigger
- **C. a gate**
- D. an Azure function

Correct Answer: C. a gate

Scenarios and use cases for gates include: Quality validation. 


Query metrics from tests on the build artifacts such as pass rate or code coverage and deploy only if they are within required thresholds. Use Quality Gates to integrate monitoring into your pre-deployment or post-leployment. This ensures that you are meeting the key health/performance metrics (KPls) as your applications move from dev to production and any differences in the infrastructure environment or scale is not negatively impacting your KPIs.

Reference: https://docs.microsoft.com/en-us/azure/azure-monitor/continuous-monitoring

https://docs.microsoft.com/enus/azure/devops/pipelines/release/approvals/gates?view=azure-devops


### Question-44

You manage a project in Azure DevOps. You need to prevent the configuration of the project from changing over time.

Solution: Pertorm a subscription Health scan when packages are created 

Does this meet the goal?

A. Yes

B. No

Correct Answer: B. No

**Instead implement Continuous Assurance for the project.**

> Incorrect Options presents in part of this series Questions are

1- Implement Continuous Integration for the project   (wrong)

2- Add a code coverage step to the build pipelines.    (wrong)
 
3- Perform a Subscription Health scan when packages are created.   (wrong)

Correct Option is Implement Continuous Assurance for the project

> Note: The Subscription Security health check features in ASK contains a set of scripts that examines a subscription and flags off security issues, 

> misconfigurations or obsolete artifacts/settings which can put your subscription at higher risk.

Reference: https://azsk.azurewebsites.net/04-Continous-Assurance/Readme.html


### Question-45

You manage a project in Azure DevOps. You need to prevent the configuration of the project from changing over time.

Solution: Add a code coverage step to the build pipelines.

Does this meet the goal?

A. Yes

B. No

Correct Answer: B. No

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


Correct Answer: B. No

**Instead implement Continuous Assurance for the project.**


* 1- Implement Continuous Integration for the project
* 2- Add a code coverage step to the build pipelines.
* 3- Perform a Subscription Health scan when packages are created.


> Note: The Subscription Security health check features in ASK contains a set of scripts that examines a subscription and flags off security issues, misconfigurations or obsolete artifacts/settings which can put your subscription at higher risk.


Reference: https://azsk.azurewebsites.net/04-Continous-Assurance/Readme.html



### Question-47

You manage a project in Azure DevOps. You need to prevent the configuration of the project from changing over time.

**Solution: Implement Continuous Assurance for the project**

Does this meet the goal?

A. Yes

B. No

Correct Answer: A-Yes

incorrect Options presents in part of this series Questions are

* 1- Implement Continuous Integration for the project
* 2- Add a code coverage step to the build pipelines.
* 3- Perform a Subscription Health scan when packages are created.


**Correct Option is Implement Continuous Assurance for the project**

> The basic idea behind Continuous Assurance (CA) is to setup the ability to check for "drift" from what is considered a secure snapshot of a system. Support for Continuous Assurance lets us treat security truly as a 'state' as opposed to a 'point in time' achievement.

Reference: https://azsk.azurewebsites.net/04-Continous-Assurance/Readme.html


### Question-48

You use Azure Pipelines to manage build pipelines, Github to store source code, and Dependabot to manage dependencies. You have an app named App1. Dependabot detects a dependency in App1 that requires an update. What should you do first to apply the update?

* A. Create a pull request.
* B. Approve the pull request.
* C. Create a branch.
* D. Perform a commit.


**Correct Answer: B. Approve the pull request.**


DependaBot is a useful tool to regularly check for dependency updates. By helping to keep your project up to date, DependaBot can reduce technical debt and immediately apply security vulnerabilities when patches are released. How does DependaBot work? 

1. DependaBot regularly checks dependencies for updates 
2. If an update is found, DependaBot creates a new branch with this upgrade and Pull Request for approval 
3. You review the new Pull Request, ensure the tests passed, review the code, and decide if you can merge the change


### Question-49

You are designing a configuration management solution to support five apps hosted on Azure Ap Service. Each app is available in the following three environments: development, test, and production


You need to recommend a configuration management solution that meets the following requirements 


Supports teature flags, Tracks contiguration changes from the past 30 days, Stores hierarchically structured contiguratio values, Controls access to the configurations by using role-based access control (RBAC) permissions, Stores shared valur as keyivalue pairs that can be used by all the apps


Which Azure service should you recommend as the configuration management solution?


* A. Azure Cosmos DB
* B. Azure App Service
* C. Azure App Configuration
* D. Azure Key Vault

**Correct Answer: C - Azure App Configuration**

Reference: https://docs.microsoft.com/en-us/azure/azure-app-confiquration/overview

### Question-50

You have a containerized solution that runs in Azure Container Instances. 

The solution contains a frontend container named App1 and a backend container named DB1. DB1 loads a large amount of data during startup. 

You need to verify that DB1 can handle incoming requests before users can submit requests to App1. What should you configure?

* A. a liveness probe
* B. a performance log
* **C. a readiness probe**
* D. an Azure Load Balancer health probe

Correct Answer: C. a readiness probe

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

### Question-52

You have an Azure DevOps organization named Contoso and an Azure subscription. The subscription contains an Azure virtual machine scale set named VMSS1 that is configured for autoscaling.

You have a project in Azure DevOps named Project. Project is used to build a web app named App1 and deploy App1 to VMSS1.

You need to ensure that an email alert is generated whenever VMSS1 scales in or out.

Solution: From Azure DevOps, configure the Notifications settings for Project1.

Does this meet the goal?


* A. Yes
* **B. No**


Answer: B

Notifications help you and your team stay informed about activity that occurs within your projects in Azure DevOps. You can get notified when changes occur to the following items: 

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

### Question-54

You have an Azure DevOps organization named Contoso and an Azure subscription. The subscription contains an Azure virtual machine scale set named VMSS1 that is configured for autoscaling.

You have a project in Azure DevOps named Project. Project is used to build a web app named App1 and deploy App1 to VMSS1.

You need to ensure that an email alert is generated whenever VMSS1 scales in or out.

Solution: From Azure Monitor, create an action group.

Does this meet the goal?

* **A. Yes**
* B. No

Answer: A

An action group is a collection of notification preferences defined by the owner of an Azure subscription. Azure Monitor, Service Health and
Azure Advisor alerts use action groups to notify users that an alert has been triggered.

Reference
https://docs.microsoft.com/en-us/azure/azure-monitor/alerts/action-groups


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


Answer: AB

To entirely remove unwanted files from a repository's history you can use either the git filter-branch command or the BFG Repo-Cleaner open source tool.

Reference:

https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository

### Question-56

You plan to provision a self-hosted Linux agent.

Which authentication mechanism should you use to register the self-hosted agent?

* **A. personal access token (PAT)**
* B. SSH key
* C. Alternate credentials
* D. certificate

Answer: A

Note: PAT Supported only on Azure Pipelines and TFS 2017 and newer. 

After you choose PAT, paste the PAT token you created into the command prompt window. 

Use a personal access token (PAT) if your Azure DevOps Server or TFS instance and the agent machine are not in a trusted domain. PAT authentication is handled by your Azure DevOps Server or TFS instance instead of the domain controller.

Reference:

https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/v2-linux

### Question-57

You are building a Microsoft ASP.NET application that requires authentication.

You need to authenticate users by using Azure Active Directory (Azure AD).
What should you do first?

* A. Assign an enterprise application to users and groups
* **B. Create an app registration in Azure AD**
* C. Configure the application to use a SAML endpoint
* D. Create a new Auth token from the application
* E. Create a membership database in an Azure SQL database

Answer: B

Register your application to use Azure Active Directory. Registering the application means that your developers can use Azure AD to authenticate users and request access to user resources such as email, calendar, and documents.
Reference:

https://docs.microsoft.com/en-us/azure/active-directory/manage-apps/developer-guidance-for-integrating-applications

### Question-58

You have an Azure DevOps organization named Contoso.

You need to recommend an authentication mechanism that meets the following requirements:

Supports authentication from Git

Minimizes the need to provide credentials during authentication

What should you recommend?

* **A. personal access tokens (PATs) in Azure DevOps**
* B. Alternate credentials in Azure DevOps
* C. user accounts in Azure Active Directory (Azure AD)
* D. managed identities in Azure Active Directory (Azure AD)

Answer: A

Personal access tokens (PATs) give you access to Azure DevOps and Team Foundation Server (TFS), without using your username and password directly.


These tokens have an expiration date from when they're created. You can restrict the scope of the data they can access. 

Use PATs to authenticate if you don't already have SSH keys set up on your system or if you need to restrict the permissions that are granted by the credential.

### Question-59

You have an application that consists of several Azure App Service web apps and Azure functions.

You need to assess the security of the web apps and the functions.

Which Azure feature can you use to provide a recommendation for the security of the application?


* A. Security & Compliance in Azure Log Analytics
* B. Resource health in Azure Service Health
* C. Smart Detection in Azure Application Insights
* **D. Compute & apps in Azure Security Center**

Answer: D

Monitor compute and app services: Compute & apps include the App Services tab, which App services: list of your App service environments and current security state of each.

### Question-60

You have a branch policy in a project in Azure DevOps. The policy requires that code always builds successfully.

You need to ensure that a specific user can always merge changes to the master branch, even if the code fails to compile. The solution must use the principle of least privilege.

What should you do?

* A. Add the user to the Build Administrators group
* B. Add the user to the Project Administrators group
* C. From the Security settings of the repository, modify the access control for the user.
* **D. From the Security settings of the branch, modify the access control for the user.**

Answer: D

In some cases, you need to bypass policy requirements so you can push changes to the branch directly or complete a pull request even if branch policies are not satisfied. For these situations, grant the desired permission from the previous list to a user or group. You can scope this permission to an entire project, a repo, or a single branch. Manage this permission along the with other Git permissions.

Reference:

https://docs.microsoft.com/en-us/azure/devops/repos/git/branch-policies


### Question-61

You have an Azure Resource Manager template that deploys a multi-tier application

You need to prevent the user who performs the deployment from viewing the account credentials and connection strings used by the application.
What should you use?

* **A. Azure Key Vault**
* B. a Web.config file
* C. an Appsettings.json file
* D. an Azure Storage table
* E. an Azure Resource Manager parameter file


Answer. A

When you need to pass a secure value (like a password) as a parameter during deployment, you can retrieve the value from an Azure Key Vault.

You retrieve the value by referencing the key vault and secret in your parameter file. The value is never exposed because you only reference its key vault ID. The key vault can exist in a different subscription than the resource group you are deploying to.

Reference:
https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-manager-keyvault-parameter
ertStudyPro


### Question-62

You have an Azure DevOps organization named Contoso that contains a project named Project1.

You provision an Azure key vault named Keyvault 1.

You need to reference Keyvault1 secrets in a build pipeline of Praject1.
What should you do first?

* A. Add a secure file to Project1.
* B. Create an XAML build service.
* C. Create a variable group in Project.
* D. Configure the security policy of Contoso.


Answer: D

Before this will work, the build needs permission to access the Azure Key Vault. This can be added in the Azure Portal.

Open the Access Policies in the Key Vault and add a new one. Choose the principle used in the DevOps build.

Reference:
https://docs.microsoft.com/en-us/azure/devops/pipelines/release/azure-key-vault

### Question-63

Your company uses Azure DevOps.

Only users who have accounts in Azure Active Directory can access the Azure DevOps environment.

You need to ensure that only devices that are connected to the on-premises network can access the Azure DevOps environment.

What should you do?

* A. Assign the Stakeholder access level to all users.
* B. In Azure Active Directory, configure risky sign-ins.
* C.In Azure DevOps, configure Security in Project Settings.
* **D. In Azure Active Directory, configure conditional access.**


**Answer: D**

Conditional Access is a capability of Azure Active Directory. With Conditional Access, you can implement automated access control decisions for accessing your cloud apps that are based on conditions.

Conditional Access policies are enforced after the first-factor authentication has been completed.

Reference:
https://docs.microsoft.com/en-us/azure/active-directory/conditional-access/overview

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

### Question-65

You have an Azure DevOps organization named Contoso, an Azure DevOps project named Project, an Azure subscription named Sub1, and an Azure key vault named vault1.

You need to ensure that you can reference the values of the secrets stored in vault in all the pipelines of Project. The solution must prevent the values from being stored in the pipelines.

What should you do?

* **A. Create**** a variable group in Praject1.**
* B. Add a secure file to Project.
* C. Modify the security settings of the pipelines.
* D. Configure the security policy of Contoso.

Answer: A

Use a variable group to store values that you want to control and make available across multiple pipelines.

Reference:
https://docs.microsoft.com/en-us/azure/devops/pipelines/library/variable-groups

### Question-66

You have an Azure DevOps project that contains a build pipeline. The build pipeline uses approximately 50 open source libraries.

You need to ensure that all the open source libraries comply with your company's licensing standards.

Which service should you use?

* A. Ansible
* B. Maven
* **C. White Source Bolt**
* D. Helm

Answer: C

### Question-67

You are designing the security validation strategy for a project in Azure DevOps.

You need to identify package dependencies that have known security issues and can be resolved by an update.

What should you use?

* **A. Octopus Deploy**
* B. Jenkins
* C. Gradle
* D. SonarQube


Answer: A


Incorrect Answers:

* B: Jenkins is a popular open-source automation server used to set up continuous integration and delivery (CI/CD) for your software projects.
* D: SonarQube is a set of static analyzers that can be used to identify areas of improvement in your code. It allows you to analyze the technical debt in your project and keep track of it in the future.

Reference:
https://octopus.com/docs/packaging-applications


### Question-68

Your company is concerned that when developers introduce open source libraries, it creates licensing compliance issues.

You need to add an automated process to the build pipeline to detect when common open source libraries are added to the code base.

What should you use?


* A. Microsoft Visual SourceSafe
* B. Code Style
* **C. Black Duck**
* D. Jenkins


Answer. C

Secure and Manage Open Source Software

Black Duck helps organizations identify and migate open source secunty, license compliance and code-quality risks across application and container portfolios.

Black Duck Hub and its plugin for Team Foundation Server (TFS) allows you to automatically find and fix open source security vulnerabilities during the buiki process, so you can proactively manage risk. The integration allows you to receive alerts and fail bulds when any Black Duck

Hub policy violations are met.

There are several versions of this question in the exam. The question has two possible correct answers:

* Black Duck
* White Source Bolt

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


**Answer: C**

Secure and Manage Open Source Software

Black Duck helps organizations identify and mitigate open source security, license compliance and code-quality risks across application and container portfolios.

Black Duck Hub and its plugin for Team Foundation Server (TFS) allows you to automatically find and fix open source security vulnerabilities during the buiki process, so you can proactively manage risk. 

The integration allows you to receive alerts and fail builds when any Black Duck Hub policy violations are met.

Note: WhiteSource would also be a good answer, but it is not an option here.
Reference:

https://marketplace.visualstudio.com/items7itemName=black-duck-software.hub-tfs

### Question-70

Your company develops an app for iOS. All users of the app have devices that are members of a private distribution group in Microsoft Visual
Studio App Center.

You plan to distribute a new release of the app

You need to identify which certificate file you require to distribute the new release from App Center.

Which file type should you upload to App Center?

* A..cer
* B..pfx
* **C..p12**
* D..pvk


Answer. C

A successful IOS device build will produce an ipa file. In order to install the build on a device, it needs to be signed with a valid provisioning profile and certificate.

To sign the builds produced from a branch, enable code signing in the configuration pane and upload a provisioning profile (mobileprovision) and a valid certificate (p12), along with the password for the certificate.

Reference

https://docs.microsoft.com/en-us/appcenter/build/xamarin/ios/


### Question-71

Your company is concerned that when developers introduce open source libraries, it creates licensing compliance issues.
You need to add an automated process to the build pipeline to detect when common open source libraries are added to the code base.

What should you use?

- A. OWASP ZAP
- B. Jenkins
- C. Code Style
- **D. White Source Bolt**

Answer: D

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

You plan to use a NuGet package in a project in Azure DevOps. The NuGet package is in a feed that requires authentication.

You need to ensure that the project can restore the NuGet package automatically.

What should the project use to automate the authentication?

- A. an Azure Automation account
- **B. an Azure Artifacts Credential Provider**
- C.an Azure Active Directory (Azure AD) account that has multi-factor authentication (MFA) enabled
- D. an Azure Active Directory (Azure AD) service principal


Answer. B

The Azure Artifacts Credential Provider automates the acquisition of credentials needed to restore NuGet packages as part of your NET development workfiow. It integrates with MSBuild, dotnet, and NuGet exe) and works on Windows, Mac, and Linux. Any time you want to use packages from an Azure Artifacts feed,

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

### Question-74

You have an existing project in Azure DevOps.

You plan to integrate Github as the repository for the project

You need to ensure that Azure Pipelines runs under the Azure Pipelines identity.

Which authentication mechanism should you use?

- A. personal access token (PAT)
- **B. GitHub App**
- C.Azure Active Directory (Azure AD)
- D. DAuth

Answer. B

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

Answer: D


### Question-77

You plan to create a GitHub workflow that will use GitHub Actions. The actions will require a 256-KB secret.

You need to recommend a solution to store and encrypt the secret. The secret value must be accessible only to the workflow. The solution must minimize administrative effort

What should you recommend?

- A. Store the secret in the organization-level GitHub secrets.
- B. Store the secret in the repository-level GitHub secrets.
- **C. Encrypt the secret value and store the value in the repository. Store the decryption key in the repository-level Github secrets.**
- D.Encrypt the secret value and store the value in the repository. Store the decryption key in the organization-level GitHub secrets.

Answer: C

### Question-78

You have a GitHub Enterprise account.

You need to enable push pratection for secret scanning of the account repositories.

What should you do first?

- **A. Purchase a GitHub Advanced Security license.**
- B. Purchase Premium Plus support.
- C. Enforce multi-factor authentication (MFA).
- D. Create an access policy for secrets.

Answer: A


### Question-79

You have an Azure subscription that contains four Azure virtual machines.

You need to configure the virtual machines to use a single identity. The solution must meet the following requirements:

- Ensure that the credentials for the identity are managed automatically.
- Support granting privileges to the identity.

Which type of identity should you use?

- A. a system-assigned managed identity
- B. a user-assigned managed identity
- **C. a service principal**
- D. a user account

Answer: C

### Question-8O

You have a GitHub repository that contains multiple workflows and a secret stored at the environment level.

You need to ensure that the secret can be used by all the workflows.

What should you do first?

- A. Recreate the secret at the organization level.
- **B. Recreate the secret at the repository level.**
- C. Enable required reviewers.

Answer:B

### Question-B1

You are designing the development process for your company.

You need to recommend a solution for continuous inspection of the company's code base to locate common code patterns that are known to be problematic.
What should you include in the recommendation?

- A. Microsoft Visual Studio test plans
- B. Gradle wrapper scripts
- **C. SonarCloud analysis**
- D. the JavaScript task runner

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
- **B. No**

Answer: B

Instead reduce the code complexity.

Note: Technical debt is the accumulation of sub-optimal technical decisions made over the lifetime of an application. Eventually, it gets harder and harder to change things: it's the 'sand in the gears" that sees IT initiatives grind to a halt.

### Question-83

Your company uses Azure DevOps for the build pipelines and deployment pipelines of Java-based projects.

You need to recommend a strategy for managing technical debt.

Which two actions should you include in the recommendation? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

- **A. Configure post-deployment approvals in the deployment pipeline**.
- B. Configure pre-deployment approvals in the deployment pipeline.
- C. Integrate Azure DevOps and SonarQube
- **D.Integrate Azure DevOps and Azure DevTest Labs.**

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


Answer. A


SonarQube is a set of static analyzers that can be used to identify areas of improvement in your code. It allows you to analyze the technical debt in your project and keep track of it in the future. With Maven and Gradle build tasks, you can run SonarQube analysis with minimal setup in a new or existing Azure DevOps Services build task.


Prepare Analysis Configuration task, to configure all the required settings before executing the build.

This task is mandatory.

In case of NET solutions or Java projects, it helps to integrate seamlessly with MSBuild, Maven and Gradle tasks.

Incorrect Answers:

B: CocoaPods is the dependency manager for Swift and Objective-C Cocoa projects.

Note: There are several versions of this question in the exam. The question can have three correct answers:

* MSBuild
* Maven Gradle

The question can also have different incorrect options, including:

* Chef
* Octopus xCODE
* CocoaPods


### Question-85

Your company is building a new solution in Java.

The company currently uses a SonarQube server to analyze the code of .NET solutions.

You need to analyze and monitor the code quality of the Java solution.

Which task types should you add to the buld pipeline?

* A. Grunt
* B. Octopus
* C. Maven
* D. Gulp


Answer. C

SonarQube is a set of static analyzers that can be used to identify areas of improvement in your code. It allows you to analyze the technical bt in your project and keep track of it in the future. With Maven and Gradle build tasks, you can run SonarQube analysis with minimal setup in a new or existing Azure DevOps Services build task.

Prepare Analysis Configuration task, to configure all the required settings before executing the build.

This task is mandatory.

In case of NET solutions or Java projects, it helps to integrate seamlessly with MSBuiki, Maven and Gradle tasks.

Note: There are several versions of this question in the exam. The question can have three correct 

answers:

* MSBuild
* Maven
* Gradle

The question can also have different incorrect options, including:

* Chef 
* xCODE
* CocoaPods

### Question-86

Your company uses Azure DevOps for the build pipelines and deployment pipelines of Java-based projects.

You need to recommend a strategy for managing technical debt.

Which action should you include in the recommendation?

* A. Configure post-deployment approvals in the deployment pipeline.
* **B. Integrate Azure DevOps and SonarQube.**
* C. Integrate Azure DevOps and Azure DeTest Labs.


Answer: B

You can manage technical debt with SonarQube and Azure DevOps.

Note: Technical debt is the set of problems in a development effort that make forward progress on customer value inefficient. Technical debt saps productivity by making code hard to understand, fragile, time-consuming to change, difficult to validate, and creates unplanned work that blocks progress. Unless they are managed, technical debt can accumulate and hurt the overall quality of the software and the productivity of the development team in the long term

SonarQube an open source platform for continuous inspection of code quality to perform automatic reviews with static analysis of code to:

* Detect Bugs
* Code Smells
* Security Vulnerabilities
* Centralize Quality


### Question-87

During a code review, you discover many quality issues. Many modules contain unused variables and empty catch blocks.

You need to recommend a solution to improve the quality of the code.

What should you recommend?

* A. In a Grunt build task, select Enabled from Control Options.
* **B. In a Maven buiki task, select Run PMD**
* C. In a Xcode build task, select Use xepretty from Advanced.
* D.In a Gradle buld task, select Run Checkstyle.


**Answer. B**

### Question-88


Your development team is building a new web solution by using the Microsoft Visual Studio integrated development environment (IDE).

You need to make a custom package available to all the developers. The package must be managed centrally, and the latest version must be available for consumption in Visual Studio automatically.

Which three actions should you perform? Each correct answer presents part of the solution.
NOTE: Each correct selection is worth one point.

* **A. Publish the package to a feed**.
* **B. Create a new feed in Azure Artifacts.**
* C. Upload a package to a Git repository.
* D. Add the package URL to the Environment settings in Visual Studio.
* **E. Add the package URL to the NuGet Package Manager settings in Visual Studio.**
* F. Create a Git repository in Azure Repos

Answer: ABE

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

Answer: D

You can import an existing Git repo from GitHub, Bitbucket, GitLab, or other location into a new or empty existing repo in your project in Azure DevOps.


### Question-90

after you answer a question in this section, you wil NOT be able to return to it. As a result, these questions will not appear in the review screen The lead developer at your company reports that adding new application features takes longer than expected due to a large accumulated technical debt.

You need to recommend changes to reduce the accumulated technical debt.

Solution: You recommend increasing the code duplication.

Does this meet the goal?

* A. Yes
* **B. No**

**Answer. B**

Instead reduce the code complexity.

Note: Technical debt is the accumulation of sub-optimal technical decisions made over the lifetime of an application. 

Eventually, it gets harder and harder to change things: it's the 'sand in the gears" that sees IT initiatives grind to a halt.

### Question-91


The lead developer at your company reports that adding new application features takes longer than expected due to a large accumulated technical debt.

You need to recommend changes to reduce the accumulated technical debt.

Solution: You recommend increasing the test coverage.

Does this meet the goal?

* A. Yes
* **B. No**

**Answer: B**


### Question-92

The lead developer at your company reports that adding new application features takes longer than expected due to a large accumulated technical debt.

You need to recommend changes to reduce the accumulated technical debt.

Solution: You recommend reducing the code complexity.

Does this meet the goal?


* **A. Yes**
* B. No

**Answer: A**

### Question-93

During a code review, you discover quality issues in a Java application.

You need to recommend a solution to detect quality issues including unused variables and empty catch blocks.

What should you recommend?

* **A. In a Maven build task, select Run PMD**
* B. In an Xcode build task, select Use xepretty from Advanced.
* C. In a Gulp build task, specify a custom condition expression.
* D. In a Grunt build task, select Enabled from Control Options.


Answer: A

### Question-94

You use Azure Artifacts to host NuGet packages that you create.

You need to make one of the packages available to anonymous users outside your organization. The solution must minimize the number of publication points.

What should you do?

* A. Change the feed URL of the package
* **B. Create a new feed for the package**
* C. Promote the package to a release view.
* D. Publish the package to a public NuGet repository.

Answer: B

### Question-95

You have an Azure Automation account that contains a runbook. The runbook is used to configure the application infrastructure of an Azure subscription.

You have a project in Azure DevOps named Project. Project contains a repository that stores code for the runbook.

You need to ensure that every committed change to the code will update automatically and publish the runbook to Azure Automation.

What should you configure?

* A. the Service hooks settings for Project1
* B. the Connections settings for the Automation account

* **C. the Source control settings for the Automation account**
* D. the Service connections settings for Project1


**Answer: C**

### Question-96

You have a GitHub repository that contains multiple versions of an Azure Pipelines template

You plan to deploy multiple pipelines that will use a template stored in the repository.

You need to ensure that you use a fixed version of the template.

What should you use to reference which version of the template repository to use?

* A. the serial
* B. the SHA-based hashes
* C. the runner
* **D. the branch**

Answer: D


### Question-97

You manage source code control and versioning by using GitHub.

You need to ensure that a PowerShell script is executed automatically before rebase operations are performed.

What should you use?

* A. a package
* B. GitHub Copilot
* **C. a webhook**
* D. a gist


Answer: C

### Question-98

You use GitHub to host container packages that use Semantic Versioning (SemVer).

You have an app named App1. The current version of App1 is 11.2.0.

You change the code of App1 to fix a bug that was introduced in version 10.5.1.

Which version number should you assign to the release?

* A. 10.5.1-PATCH
* **B. 11.2.1**
* C. 10.5.2
* D. 10.6.0


Answer: B

### Question-99

You manage code by using GitHub.

You need to ensure that repository owners are notified if a new vulnerable dependency or malware is found in their repository.

What should you do?

* A. Configure CodeQL scanning actions.
* **B. Configure Dependabot alerts.**
* C. Configure branch protection rules for each repository.
* D. Subscribe all the repository owners to the GitHub Advisory Database.


**Answer: B**

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


Answer: B


### Question-101

You use GitHub for source control.

You are evaluating whether to use proxying to add a private upstream MyGet package feed to your MyGet feed.
What are two possible advantages of this approach? Each correct answer presents a complete solution.

NOTE: Each correct selection is worth one point.

* A. minimizes the impact of upstream source availability issues
* B. minimizes latency when accessing the package
* **C. provides automatic authentication**
* **D. minimizes the impact on your storage quota**


Answer: CD


### - Question-102

You manage source code control and versioning by using GitHub.

A large file is committed to a repository accidentally.

You need to reduce the size of the repository. The solution must remove the file from the repository.
What should you use?


* **A. bfg**

* B. Its

* C. gvfs

* D. init


Answer: A

### Question-103

Your company creates a new Azure DevOps team You plan to use Azure DevOps for sprint planning.

You need to visualize the flow of your work by using an agile methodology.

Which Azure DevOps component should you use?

* **A. Kanban boards**
* B. sprint planning
* C. delivery plans
* D. portfolio backlogs


Answer: A

### Question-104

Your team uses an agile development approach.

You need to recommend a branching strategy for the team's Git repository. The strategy must meet the following requirements.

Provide the ability to work on multiple independent tasks in parallel.

Ensure that checked-in code remains in a releasable state always.

Ensure that new features can be abandoned at any time.

Encourage experimentation.

What should you recommend?

* A. a single long-running branch without forking
* B. multiple long-running branches
* C. a single fork per team member
* **D. a single long-running branch with multiple short-lived feature branches**

Answer: D

### Question-105

After you answer a question in this section, you will NOT be able to return to it. As a result, these questions will not appear in the review screen.

You integrate a cloud-hosted Jenkins server and a new Azure DevOps deployment.

You need Azure DevOps to send a notification to Jenkins when a developer commits changes to a branch in Azure Repos.

Solution: You create a service hook subscription that uses the build completed event.
Does this meet the goal?

* A. Yes
* **B. No**

****
Answer: B

### Question-106

You have a project in Azure DevOps that has a release pipeline.

You need to integrate work item tracking and an Agile project management system to meet the following requirements:

Ensure that developers can track whether their commits are deployed to production.

Report the deployment status.

Minimize integration effort.

Which system should you use?

* A. Asana
* B. Basecamp
* C. Trello
* D. Jira

**Answer: D**


### Question-108

After you answer a question in this section, you will NOT be able to return to it. As a result, these questions will not appear in the review screen.

You integrate a cloud-hosted Jenkins server and a new Azure DevOps deployment.

You need Azure DevOps to send a notification to Jenkins when a developer commits changes to a branch in Azure Repos.

Solution: You create an email subscription to an Azure DevOps notification.

Does this meet the goal?

* A. Yes
* B. No

**Answer: B**

### - Question-109


You integrate a cloud-hosted Jenkins server and a new Azure DevOps deployment.

You need Azure DevOps to send a notification to Jenkins when a developer commits changes to a branch in Azure Repos.

Solution: You create a service hook subscription that uses the code pushed event.

Does this meet the goal?

* A. Yes
* B. No


Answer: A

### - Question-110

You integrate a cloud-hosted Jenkins server and a new Azure DevOps deployment.

You need Azure DevOps to send a notification to Jenkins when a developer commits changes to a branch in Azure Repos.

Solution: You add a trigger to the build pipeline.

Does this meet the goal?

* A. Yes
* B. No


Answer: B

### Question-111

You plan to create in Azure DevOps. Multiple developers will work on the project. 

The developers will work offline frequently and will require access to the full project history while they are offline.

Which version control solution should you use?

* A. Team Foundation Version Control
* B. Git
* C. TortoiseSVN
* D. Subversion

**Answer: B**

### Question-112

You have an Azure DevOps project that uses many package feeds.

You need to simplity the project by using a single feed that stores packages produced by your company and packages consumed from remote feeds. The solution must support public feeds and authenticated feeds.

What should you enable in DevOps?

* A. Universal Packages
* **B. upstream sources**
* C. views in Azure Artifacts
* D. a symbol server

**Answer: B**

### Question-113


You plan to onboard 10 new developers.

You need to recommend a development environment that meets the following requirements:
Integrates with GitHub

Provides integrated debugging tools

Supports remote workers and hot-desking environments

Supports developers who use browsers, tablets, and Chromebooks What should you recommend?


* A. VS Code
* B. Xamarin Studio
* C. MonoDevelop
* **D. Github Codespaces**

Answer: D


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


Answer: BD

### Question-115


You have an Azure DevOps organization that contains a project named Project1

You need to create a published wiki in Project1.

What should you do first?


* A. Modify the Storage settings of Project1.
* B. In Project, create an Azure DevOps pipeline.
* **C. In Project1, create an Azure DevOps repository**.
* D. Modify the Team configuration settings of Project1.


Answer: C

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


**Answer: D**

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

Answer: D

### Question-118


You are designing a YAML template for use with Azure Pipelines. The template will include the outputfile parameter.

Which two methods can you use to reference the parameter? Each correct answer presents a complete solution.
NOTE: Each correct selection is worth one point.

* A. `${{parameters.outputfile})`
* B. `$(parameters'outputfile)`
* C. `$(parameters.outputfile)`
* D. `$(parameters[outputfile])`
* E. `${{parameters|'outputfile']))`

Answer: AE


### _Question-119

You have a pipeline named Pipeline1 in Azure Pipelines.

You need to create a service connection to enable Pipeline1 to download a public container image.

Which type of service connection should you create?

* A. a Docker host
* B. a Docker registry
* C. Azure Service Fabric
* D. Azure Kubernetes Service (AKS)


Answer: B


### Question-120

You have a project in Azure DevOps named Project that contains a Kanban board named Board1.

You create a Microsoft Teams channel and add the Azure Boards app to the channel.

You need to ensure that users can create work items in Board1 from Microsoft Teams.

Which command should you run?

* A. @azure boards subscriptions
* B. @azure boards create
* C. @azure boards sign in
* **D. @azure boards** 


**Answer: D**


### Question-121

You have an Azure subscription that contains a storage account and 20 virtual machines

You plan to use LogRhythm for aggregation and analysis of the virtual machine logs.

You need to configure AzLog to export the logs and push them to the storage account.

In which format should you export the logs?


* A. JSON
* B. EVTX
* C. EVT
* D. binary


**Answer: A**

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

Answer: CE


### Question-124

You are integrating an Azure Boards project and a GitHub repository.

You need to authenticate Azure Boards to GitHub.
Which two authentication methods can you use? Each correct answer presents a complete solution.

NOTE: Each correct selection is worth one point.

* A. a publisher certificate
* B. a trusted root certificate
* C. Microsoft Azure Active Directory (Azure AD), part of Microsoft Entra
* **D. GitHub user credentials**
* **E. a personal access token (PAT)**\


Answer: DE

### Question-125

You have a GitHub repository that is integrated with Azure Boards. Azure Boards has a work item that has the number 715.

You need to ensure that when you commit source code in GitHub, the work item is updated automatically.

What should you include in the commit comments?

* A. the URL of the work item
* **B. AB#715**
* C. @715
* D. #715


Answer: B

### Question-126

You are creating a dashboard in Azure Boards.

You need to visualize the time from when work starts on a work item until the work item is closed.

Which type of widget should you use?

* **A. cycle time**
* B. velocity
* C. cumulative flow
* D. lead time


**Answer: A**

### Question-127

You manage code by using GitHub.

You plan to ensure that all GitHub Actions are validated by a security team.

You create a branch protection rule requiring that code changes be reviewed by code owners.

You need to create the CODEOWNERS file.

Where should you create the file?

* A.. github/actions/
* B. .github/
* **C.`.git/`**
* D. .github/workflows/


Answer: C

### Question-131

You need to recommend an integration strategy for the build process of a Java application. The solution must meet the following requirements:

The builds must access an on-premises dependency management system.

The build outputs must be stored as Server artifacts in Azure DevOps.

The source code must be stored in a Git repository in Azure DevOps.

Solution: Configure the build pipeline to use a Hosted VS 2019 agent pool. Include the Java Tool Installer task in the build pipeline.

Does this meet the goal?

* A. Yes
* **B. No**


Answer: B


### Question-132

You need to recommend an integration strategy for the build process of a Java application. The solution must meet the following requirements:

The builds must access an on-premises dependency management system.

The build outputs must be stored as Server artifacts in Azure DevOps.

The source code must be stored in a Git repository in Azure DevOps.

Solution: Configure the build pipeline to use a Hosted Ubuntu agent pool. Include the Java Tool Installer task in the build pipeline.

Does this meet the goal?

* A. Yes
* B. No

**Answer: B**

### Question-133

Your company uses a Git repository in Azure Repos to manage the source code of a web application. The master branch is protected from direct updates.

Developers work on new features in the topic branches.

Because of the high volume of requested features, it is difficult to follow the history of the changes to the master branch.

You need to enforce a pull request merge strategy. The strategy must meet the following requirements:

Consolidate commit histories.

Merge the changes into a single commit.

Which merge strategy should you use in the branch policy?

* **A. squash merge**
* B. fast-forward merge
* C. Git fetch
* D. no-fast-forward merge


**Answer: A**


### Question-134

You are automating the build process for a Java-based application by using Azure DevOps.
You need to add code coverage testing and publish the outcomes to the pipeline.
What should you use?

* A. Bullseye Coverage
* B. JUnit
* **C. JaCoCo**
* D. MSTest


Answer: C

### Question-135

You are automating the build process for a Java-based application by using Azure DevOps.

You need to add code coverage testing and publish the outcomes to the pipeline.

What should you use?

* **A. Cobertura**
* B. Bullseye Coverage
* C. MSTest
* D. Coverlet

**Answer: A**

### Question-136

You have an existing build pipeline in Azure Pipelines.

You need to use incremental builds without purging the environment between pipeline executions.

What should you use?

* A. a self-hosted agent
* B. Microsoft-hosted parallel jobs
* C. a File Transform task

**Answer: A**

### Question-137

You have a private project in Azure DevOps.

You need to ensure that a project manager can create custom work item queries to report on the project's progress. The solution must use the principle of least privilege.

To which security group should you add the project manager?

* A. Reader
* B. Project Collection Administrators
* C. Project Administrators
* **D. Contributor**


Answer: D

### Question-138


You use a Git repository in Azure Repos to manage the source code of a web application. Developers commit changes directly to the default branch.

You need to implement a change management procedure that meets the tollowing requirements:

* The detault branch must be protected, and new changes must be built in the feature branches first.
* Changes must be reviewed and approved by at least one release manager before each merge.
* Changes must be brought into the default branch by using pull requests.

What should you configure in Azure Repos?


* **A. branch policies of the default branch**
* B. Services in Project Settings
* C. Deployment pools in Project Settings
* D. branch security of the default branch

**Answer: A**

### Question-139

Your company uses Azure DevOps to manage the build and release processes for applications.

You use a Git repository for applications source control

You need to implement a pull request strategy that reduces the history volume in the master branch.

Solution: You implement a pull request strategy that uses an explicit merge.

Does this meet the goal?

* A. Yes
* **B. No**


Answer: B


### Question-141

You need to recommend a Docker container build strategy that meets the following requirements:

Minimizes image sizes

Minimizes the security surface area of the final image What should you include in the recommendation?

* A. multi-stage builds
* B. PowerShell Desired State Configuration (DSC)
* C. Docker Swarm
* D. single-stage builds


**Answer: A**

### Question-142


Your company has a project in Azure DevOps for a new web application.

You need to ensure that when code is checked in, a build runs automatically.

Solution: From the Triggers tab of the build pipeline, you select Batch changes while a build is in progress.

Does this meet the goal?

* A. Yes
* B. No

Answer: B

### Question-143

You have 50 Node.js-based projects that you scan by using WhiteSource. Each project includes Package.json, Package-lock.json, and Npm-shrinkwrap.json files.

You need to minimize the number of libraries reports by WhiteSource to only the libraries that you explicitly reference.

What should you do?

* A. Configure the File System Agent plug-in.
* **B. Add a devDependencies section to Package-lock.json.**
* C. Configure the Artifactory plug-in.
* D. Delete Package-lock.json.

Answer: B

### Question-144

Your company deploys applications in Docker containers.

You want to detect known exploits in the Docker images used to provision the Docker containers.

You need to integrate image scanning into the application lifecycle. The solution must expose the exploits as early as possible during the application lifecycle.

What should you configure?

* **A. a task executed in the continuous integration pipeline and a scheduled task that analyzes the image registry**
* B. manual tasks performed during the planning phase and the deployment phase
* C. a task executed in the continuous deployment pipeline and a scheduled task against a running production container
* D. a task executed in the continuous integration pipeline and a scheduled task that analyzes the production container

**Answer: A**

### Question-145

Your company has a hybrid cloud between Azure and Azure Stack.

The company uses Azure DevOps for its full CI/CD pipelines. Some applications are built by using Erlang and Hack.

You need to ensure that Erlang and Hack are supported as part of the build strategy across the hybrid cloud. The solution must minimize nanagement overhead.

Nhat should you use to execute the build

* A. a Microsoft-hosted agent
* B. Azure DevOps self-hosted agents on Azure DeTest Labs virtual machines.
* C. Azure DevOps self-hosted agents on Hyper-V virtual machines
* **D. Azure DevOps self-hosted agents on virtual machines that run on Azure Stack**

Answer: D

### Question-146


You are designing an Azure DevOps strategy for your company's development team.

You suspect that the team's productivity is low due to accumulate technical debt.

You need to recommend a metric to assess the amount of the team's technical debt.

What should you recommend?

* A. the number of code modules in an application
* B. the number of unit test failures
* C. the percentage of unit test failures
* **D. the percentage of overall time spent on rework**

Answer: D

### Question-147

You are developing an open source solution that uses a GitHub repository.

You create a new public project in Azure DevOps.


You plan to use Azure Pipelines for continuous build. The solution will use the GitHub Checks API.
Which authentication type should you use?

* A. OpenID
* B. GitHub App
* C. a personal access token (PAT)
* D. SAML

Answer: B

### Question-148

After you answer a question in this section, you will NOT be able to return to it. As a result, these questions will not appear in the review screen

Your company has a project in Azure DevOps for a new web application.

You need to ensure that when code is checked in, a build runs automatically.

Solution: From the Continuous deployment trigger settings of the release pipeline, you enable the Pull request trigger setting.

Does this meet the goal?


* A. Yes
* **B. No**

Answer: B

### Question-149

After you answer a question in this section, you will NOT be able to return to it. As a result, these questions will not appear in the review screen.

Your company has a project in Azure DevOps for a new web application.

You need to ensure that when code is checked in, a build runs automatically.

Solution: From the Pre-deployment conditions settings of the release pipeline, you select After stage.
Does this meet the goal?

* A. Yes
* **B. No**

Anewer B

### Question-150

Your company has a project in Azure DevOps for a new web application.

You need to ensure that when code is checked in, a build runs automatically.

Solution: From the Pre-deployment conditions settings of the release pipeline, you select Batch changes while a build is in progress.

Does this meet the goal?

* A. Yes
* B. No

**Answer: B**


### Question-151

Your company has a project in Azure DevOps for a new web application You need to ensure that when code is checked in, a build runs automatically.

Solution: From the Triggers tab of the build pipeline, you select Enable continuous integration.

Does this meet the goal?

* **A. Yes**
* B. No

Answer: A

### Question-152

Your company has a project in Azure DevOps.

You need to ensure that when there are multiple builds pending deployment, only the most recent build is deployed

What should you use?

* A. deployment conditions
* **B. deployment queue settings**
* C. release gates
* D. pull request triggers

Answer: B

### Question-153

You use Azure Pipelines to build and test a React js application.
You have a pipeline that has a single job

You discover that installing JavaScript packages from npm takes approximately five minutes each time you run the pipeline.

You need to recommend a solution to reduce the pipeline execution time.

Solution: You recommend defining a container job that uses a custom container that has the JavaScript packages preinstalled.

Does this meet the goal?

* A. Yes
* B. No

**Answer: B**

### Question-154

You use Azure Pipelines to build and test a React.js application.
You have a pipeline that has a single job.

You discover that installing Java Script packages from npm takes approximately five minutes each time you run the pipeline

You need to recommend a solution to reduce the pipeline execution time.

Solution: You recommend enabling pipeline caching.

Does this meet the goal?

* A. Yes
* B. No

**Answer. A**

### Question-155


You use Azure Pipelines to build and test a React js application.
You have a pipeline that has a single job.

You discover that installing JavaScript packages from npm takes approximately five minutes each time you run the pipeline.

You need to recommend a solution to reduce the pipeline execution time.

Solution: You recommend enabling parallel jobs for the pipeline.

Does this meet the goal?

* A. Yes
* B. No

**Answer: B**

### Question-156


You plan to create a release pipeline that will deploy Azure resources by using Azure Resource Manager templates. The release pipeline will create the following resources:

Two resource groups

Four Azure virtual machines in one resource group Two Azure SQL databases in other resource group

You need to recommend a solution to deploy the resources.

Solution: Create two standalone templates, each of which will deploy the resources in its respective group.

Does this meet the goal?

* A. Yes
* B. No

**Answer: B**

### Question-157


You plan to create a release pipeline that will deploy Azure resources by using Azure Resource Manager templates. The release pipeline will create the following resources:

Two resource groups

Four Azure virtual machines in one resource group Two Azure SQL databases in other resource group
You need to recommend a solution to deploy the resources.

Solution: Create a single standalone template that will deploy all the resources.

Does this meet the goal?

* A. Yes
* B. No

Answer: B

### Question-158


You have an Azure DevOps project.

Your build process creates several artifacts.

You need to deploy the artifacts to on-premises servers.

Solution: You deploy a Kubernetes cluster on-premises. You deploy a Helm agent to the cluster. You add a Download Build Artifacts task to the deployment pipeline.

Does this meet the goal?

* A. Yes
* B. No

Answer. B

### Question-159


You have an Azure DevOps project.

Your build process creates several artifacts.

You need to deploy the artifacts to on-premises servers.

Solution: You deploy a Docker build to an on-premises server. You add a Download Build Artifacts task to the deployment pipeline.

Does this meet the goal?

* A. Yes
* B. No

**Answer. B**

### Question-160


You have a project in Azure DevOps named Project. Project contains a pipeline that builds a container image named Image and pushes Image1

to an Azure container registry named ACR1. Image uses a base image stored in Docker Hub.

You need to ensure that Image1 is updated automatically whenever the base image is updated.
What should you do?

* A. Enable the Azure Event Grid resource provider and subscribe to registry events.
* B. Add a Docker Hub service connection to Azure Pipelines.
* **C. Create and run an Azure Container Registry task.**
* D. Create a service hook in Project.

**Answer: C**

### Question-161

You have an Azure DevOps project.

Your build process creates several artifacts.

You need to deploy the artifacts to on-premises servers.

Solution: You deploy an Octopus Deploy server. You deploy a polled Tentacle agent to an on-premises server. You add an Octopus task to the deployment pipeline.
Does this meet the goal?

* A. Yes
* B. No

Answer: B

### Question-162

You plan to create a release pipeline that will deploy Azure resources by using Azure Resource Manager templates. The release pipeline will create the following resources:

Two resource groups

Four Azure virtual machines in one resource group Two Azure SQL databases in other resource group

You need to recommend a solution to deploy the resources.

Solution: Create a main template that will deploy the resources in one resource group and a nested template that will deploy the resources in the other resource group.

Does this meet the goal?

* A. Yes
* B. No

Answer: B

### Question-163

You plan to create a release pipeline that will deploy Azure resources by using Azure Resource Manager templates. The release pipeline will create

the following resources:
Two resource groups


Four Azure virtual machines in one resource group Two Azure SQL databases in other resource group

You need to recommend a solution to deploy the resources.

Solution: Create a main template that has two linked templates, each of which will deploy the resources in its respective group

Does this meet the goal?

* **A. Yes**
* B. No

Answer: A

### Question-164

You have a project in Azure DevOps named Project. Project contains a build pipeline named Pipe1 that builds an application named App1.

You have an agent pool
 named Pool1 that contains a Windows Server 2019-based self-hosted agent. Pipe1 uses Pool1.
You plan to implement another project named Project2. Project2 will have a build pipeline named Pipe2 that builds an application named App2.

App1 and App2 have conflicting dependencies.

You need to minimize the possibility that the two build pipelines will conflict with each other. The solution must minimize infrastructure costs.

What should you do?

* A. Add another self-hosted agent.
* B. Add a Docker Compose task to the build pipelines.
* C. Change the self-hosted agent to use Red Hat Enterprise Linux (RHEL) 8.
* **D. Create two container jobs.**


Answer: D

### Question-165

You manage build pipelines and deployment pipelines by using Azure DevOps.

Your company has a team of 500 developers. New members are added continually to the team.

You need to automate the management of users and licenses whenever possible.

Which task must you perform manually?

* A. modifying group memberships
* B. adding users
* C. assigning entitlements
* **D. procuring licenses**


Answer: D

### Question-166

Your company is building a new solution in Java.

The company currently uses a SonarQube server to analyze the code of NET solutions.

You need to analyze and monitor the code quality of the Java solution.

Which task types should you add to the build pipeline?

* A. Octopus
* B. Chef
* C. CocoaPods
* **D. Gradle**

**Answer: D**

### Question-167


Your company is building a new solution in Java.

The company currently uses a SonarQube server to analyze the code of NET solutions.

You need to analyze and monitor the code quality of the Java solution.

Which task types should you add to the build pipeline?

* **A. Maven**
* B. CocoaPods
* C.Xcode
* D. Gulp

Answer: A

### Question-168

You have an Azure subscription named Subscription1 that contains a custom Azure policy named Policy. Policy is an audit policy that monitors

naming convention compliance for the resources deployed to Subscription1.

You have a pipeline named Pipeline 1 in Azure Pipelines. Pipeline 1 deploys Azure Resource Manager (ARM) resources to Subscription1.

You need to ensure that the resources deployed by Pipeline 1 comply with Policy1.
What should you add to Pipeline 1?

* **A. a pre-deployment task that runs a security and compliance assessment**
* B. a post-deployment task that runs a security and compliance assessment
* C. an ARM template deployment task to assign Policy1 to Subscription 1
* D. an ARM template deployment task to deploy Policy1 to Subscription1

Answer: A

### Question-169

You have a project in Azure DevOps.

You need to push notifications about pull requests to a Microsoft Teams channel. The solution must minimize development effort.

What should you do?

* A. Install the Azure Pipelines app for Teams and configure a subscription to receive notifications in the channel.
* B. Use Azure Automation to connect to the Azure DevOps REST API and send messages to Teams.
* **C. Install the Azure Repos app for Teams and configure a subscription to receive notifications in the channel**.
* D. Use an Azure function to connect to the Azure DevOps REST API and send messages to Teams.


**Answer: C**

### Question-170


You have an Azure DevOps project that produces Node Package Manager (npm) packages. Multiple projects consume the packages.

You need to configure Azure Artifacts to ensure that both the latest and pre-release versions of the packages are available for consumption.

What should you do?

* A. Create two feed views named @prerelease and @release, Set @release as the default view. Configure a release pipeline that tags the packages as release after successful testing.
* B. Create a feed view named @prerelease. Configure a release pipeline that tags the packages as release after successful testing.
* C. Create two feed views named @prerelease and @default. Configure a release pipeline that promotes a package to the @default view after successful testing.
* **D. Create two feed views named @prerelease and @release. Set @release as the default view. Configure a release pipeline that promotes a package to the @release view after successful testing**.


**Answer: D**

### Question-171

```
Name  Type
  
Feed1   Azure Artifacts feed
Project1 Project in Azure DevOps
```

Project produces pm packages that are published to Feed. Feed1 is consumed by multiple projects.

You need to ensure that only tested packages are available for consumption. The solution must minimize development effort.


What should you do?

* **A. Create a feed view named @release and set @release as the default view. After the pm packages test successfully, configure a release pipeline that promotes a package to the @release view.**
* B. Create a feed view named @release and set @release as the default view. Affer the npm packages test successfully, configure a release
* pipeline that tags the packages as release.
* C. Create a feed view named @default. After the nom packages test successfully configure a release pipeline that tags the packages as
* release.
* D. Create a feed view named @default. After the npm packages test successfully, configure a release pipeline that promotes a package to the @default view

**Answer: A**

### Question-172

Your company has an Azure DevOps project that produces Node Package Manager (npm) packages. Multiple projects consume the packages.

You need to minimize the amount of disk space used by older packages in Azure Artifacts.
What should you modify?

* A. the retention settings of the project's release
* **B. the retention settings of the project's pipeline**
* C. the retention settings of the project's tests
* D. the retention settings of the company pipeline

Answer: B


### Question-173


Your company builds a multi-tier web application.

You use Azure DevOps and host the production application on Azure virtual machines.

Your team prepares an Azure Resource Manager template of the virtual machine that you will use to test new features.

You need to create a staging environment in Azure that meets the following requirements:

* Minimizes the cost of Azure hosting
* Provisions the virtual machines automatically
* Uses the custom Azure Resource Manager template to provision the virtual machines

What should you do?

* A. In Azure Cloud Shell, run Azure CLI commands to create and delete the new virtual machines in a staging resource group.
* B. In Azure DevOps, configure new tasks in the release pipeline to deploy to Azure Cloud Services
* C. From Azure Cloud Shell, run Azure PowerShell commands to create and delete the new virtual machines in a staging resource group.
* **D. In Azure DevOps, configure new tasks in the release pipeline to create and delete the virtual machines in Azure DeTest Labs**.

Answer: D

### Question-174

Your company uses Azure DevOps to manage the build and release processes for applications.

You use a Git repository for applications source control.

You plan to create a new branch from an existing pull request. Later, you plan to merge the new branch and the target branch of the pull request.

You need to use a pull request action to create the new branch. The solution must ensure that the branch uses only a portion of the code in the pull request

Which pull request action should you use?


* A. Set as default branch
* B. Approve with suggestions
* **C. Cherry-pick**
* D. Reactivate
* E. Revert

Answer: C

### Question-175

You are designing a build pipeline in Azure Pipelines.

The pipeline requires a self-hosted agent. The build pipeline will run once daily and will take 30 minutes to complete.

You need to recommend a compute type for the agent. The solution must minimize costs.

What should you recommend?

* A. an Azure Kubernetes Service (AKS) cluster
* **B. Azure Container Instances**
* C. an Azure virtual machine scale set
* D. Azure virtual machines

Answer: B


### Question-176

You have a project in Azure DevOps. 

You have an Azure Resource Group deployment project in Microsoft Visual Studio that is checked in to the Azure DevOps project.

You need to create a release pipeline that will deploy resources by using Azure Resource Manager templates. 

The solution must minimize administrative effort.

Which task type should you include in the solution?

* A. Azure Cloud Service Deployment
* B. Azure RM Web App Deployment
* **C. Azure PowerShell**
* D. Azure App Service Manage

**Answer: C**


### Question-177

You have an Azure DevOps project that contains a release pipeline and a Git repository.

When a new code revision is committed to the repository, a build and release is triggered.

You need to ensure that release information for the pipeline is added automatically to the work items associated to the Git commit.


What should you do?

* A. Modify the Integrations options for the pipeline.
* **B. Modify the post-deployment conditions for the last stage of the pipeline.**
* C. Add an agentless job to the pipeline.
* D. Modify the service hooks for the project.

Answer: B

Configure your release definition to post deployment information to Work items.


Open Pipelines> Releases, choose to edit your release pipeline, then choose Options> Integrations.


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

### Question-179

You plan to use Terraform to deploy an Azure resource group from a Windows system.

You need to install the required frameworks to support the planned deployment.

Which two frameworks should you install? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

* A. Vault
* **B. Terratest**
* C. Node.js
* **D. Yeoman**
* E. Tiller


Answer: BD

### Question-180


You have an approval process that contains a condition. The condition requires that releases be approved by a team leader before they are deployed.

You have a policy stating that approvals must occur within eight hours.

You discover that deployment fail if the approvals take longer than two hours

You need to ensure that the deployments only fail if the approvals take longer than eight hours.

Solution: From Post-deployment conditions, you modify the Time between re-evaluation of gates option.
Does this meet the goal?

* A. Yes
* **B. No**

**Answer: B**


### Question-181


You have a policy stating that approvals must occur within eight hours.

You discover that deployment fail if the approvals take longer than two hours.

You need to ensure that the deployments only fail if the approvals take longer than eight hours.

Solution: From Post-deployment conditions, you modify the Timeout setting tor post-deployment approvals.
Does this meet the goal?

* A. Yes
* B. No

**Answer: B**

### Question-183

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

### Question-184

Your company develops an application named App1 that is deployed in production.

As part of an application update, a new service is being added to App1. The new service requires access to an application named App2 that is currently in development.

You need to ensure that you can deploy the update to App1 before App2 becomes available. You must be able to enable the service in App1 once 

App2 is deployed.

What should you do?

* **A. Implement a feature flag**
* B. Create a fork in the build
* C. Create a branch in the build
* D. Implement a branch policy.


Answer: A

### Question-185

You have a private distribution group that contains provisioned and unprovisioned devices.

You need to distribute a new iOS application to the distribution group by using Microsoft Visual Studio App Center.

What should you do?

* A. Request the Apple ID associated with the user of each device.
* **B. Register the devices on the Apple Developer portal.**
* C. Create an active subscription in App Center Test.
* D. Add the device owner to the organization in App Center.

Answer: B


### Question-186

You have a private distribution group that contains provisioned and unprovisioned devices.

You need to distribute a new iOS application to the distribution group by using Microsoft Visual Studio App Center.

What should you do?

* **A. Select Register devices and sign my app.**
* B. Create an active subscription in App Center Test.
* C. Create an unsigned build.
* D. Add the device owner to the collaborators group.

**Answer: A**

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

**Answer: DE**


### Question-188


You have a project in Azure DevOps.

You plan to deploy a self-hosted agent by using an unattended configuration script.

Which two values should you define in the configuration script? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

* **A. authorization credentials**
* B. the project name
* C. the deployment group name
* **D. the organization URL**
* E. the agent pool name

**Answer: AD**

### Question-189


You have Azure Pipelines and GitHub integrated as a source code repository.

The build pipeline has continuous integration enabled.

You plan to trigger an automated build whenever code changes are committed to the repository.

You need to ensure that the system will wait until a build completes before queuing another build.
What should you implement?

* A. path filters
* **B. batch changes**
* C. scheduled builds
* D. branch filters

Answer: B

### Question-190

You are using GitHub as a source code repository.

You create a client-side Git hook on the commit-msg event. The hook requires that each commit message contain a custom work item tag.

You need to make a commit that does not have a work item tag.

Which git commit parameter should you use?


* A. `--squash`
* B. `--no-verify`
* C. `--message`
* D. `--no-post-rewrite`

**Answer: B**


### Question-191

You have a private distribution group that contains provisioned and unprovisioned devices.

You need to distribute a new iOS application to the distribution group by using Microsoft Visual Studio App Center.

What should you do?

* **A. Select Register devices and sign my app.**
* B. Create an active subscription in App Center Test.
* C. Add the device owner to the organization in App Center.
* D. Create an unsigned build.

**Answer: A**

### Question-192

You have a private distribution group that contains provisioned and unprovisioned devices.

You need to distribute a new iOS application to the distribution group by using Microsoft Visual Studio App Center.

What should you do?

* **A. Register the devices on the Apple Developer portal.**
* B. Add the device owner to the organization in App Center.
* C. Create an unsigned build.
* D. Add the device owner to the collaborators group.

Answer: A

### Question-193


Your company uses Azure Artifacts for package management.

You need to configure an upstream source in Azure Artifacts for Python packages.

Which repository type should you use as an upstream source?

* A. npmjs.org
* B. PyPI
* C. Maven Central
* D. third-party trusted Python

**Answer: B**


### - Question-194


You have a GitHub repository that contains workflows. The workflows contain steps that execute predefined actions. Each action has one or more versions.

You need to request the specific version of an action to execute.

Which three attributes can you use to identify the version? Each correct answer presents a complete solution.

NOTE: Each correct selection is worth one point.

* **A. the SHA-based hashes**
* **B. the tag**
* C. the runner
* **D. the branch**
* E. the serial


Answer: ABD

### Question-195

You have an Azure subscription that contains multiple Azure pipelines.

You need to deploy a monitoring solution for the pipelines. The solution must meet the following requirements:

* Parse logs from multiple sources.
* Identify the root cause of issues.

What advanced feature of a monitoring tool should you include in the solution?

* **A. analytics**
* B. synthetic monitoring
* C. directed monitoring
* D. Alert Management


Answer: A


### Question-196

You have an on-premises app named App1 that accesses Azure resources by using credentials stored in a configuration file.

You plan to upgrade App1 to use an Azure service principal.

What is required for App1 to programmatically sign in to Azure Active Directory (Azure AD)?

* A. the application ID, a client secret, and the object ID
* B. a client secret, the object ID, and the tenant ID
* **C. the application ID, a client secret, and the tenant ID**
* D. the application ID, a client secret, and the subscription ID

**Answer: C**


### Question-197

Your team uses Azure Pipelines to deploy applications.

You need to ensure that when a failure occurs during the build or release process, all the team members are notified by using Microsoft Teams.

The solution must minimize development effort.

What should you do?

* A. Install the Azure Boards app for Teams and configure a subscription to receive notifications in a channel.
* B. Use Azure Automation to connect to the Azure DevOps REST API and notify the team members.
* C. Use an Azure function to connect to the Azure DevOps REST API and notify the team members.
* **D. Install the Azure Pipelines app for Teams and configure a subscription to receive notifications in a channel**.

Answer. D

### Question-198

You use Calendar Versioning (CalVer) for code assets.

You need to store an optional tag of beta as part of the version.

Which part of the version should you use for the tag?

* A. minor
* B. major
* C. micro
* D. modifier

Answer: D

### Question-199


You have a project in Azure DevOps named Project1.

You need to ensure that all new pipelines in Project1 execute three specific tasks during pipeline execution.

What should you create?

* **A. a task group**
* B. a JSON template
* C. a YAML template
* D. a PowerShell task

Answer: A


### Question-200

You use Azure DevOps processes to build and deploy code.

You need to compare how much time is spent troubleshooting issues found during development and how much time is spent troubleshooting

issues found in released code.

Which KPI should you use?

* **A. defect escape rate**
* B. unplanned work rate
* C. defect rate
* D. rework rate

Answer: A


### - Question-201

You have a project in Azure DevOps named Project1.

You implement a Continuous Integration/Continuous Deployment (CI/CD) pipeline that uses PowerShell Desired State
Configuration (DSC) to configure the application infrastructure.

You need to perform a unit test and an integration test of the configuration before Project is deployed.
What should you use?

* A. the PSScriptAnalyzer tool
* **B. the Pester test framework**
* C. the PSCodeHealth module
* D. the Test-DscConfiguration cmdlet


Answer: B

### - Question-202


You use Azure Repos to manage source code and Azure Pipelines to implement continuous integration and continuous deployment (CI/CD).

You need to ensure that all comments on pull requests are resolved before the pull requests are included in a build.

The solution must minimize administrative effort.

What should you include in the solution?

* A. a custom action
* B. a post-deployment gate
* C. a branch policy
* **D. a pre-deployment gate**


Answer: D

### - Question-203

You have a project in Azure DevOps named Project. Project1 contains a build pipeline named Pipe1 that builds an application named App1.

You have an agent pool named Pool1 that contains a Windows Server 2022-based self-hosted agent. Pipe 1 uses Pool1.

You plan to implement another project named Project. Project2 will have a build pipeline named Pipe2 that builds an application named App2.

App 1 and App2 have conflicting dependencies.

You need to minimize the possibility that the two build pipelines will conflict with each other. The solution must minimize infrastructure costs.

What should you do?

* A. Add another self-hosted agent
* B. Add a Docker Compose task to the build pipelines.
* C. Change the self-hosted agent to use Red Hat Enterprise Linux (RHEL) 9.
* **D. Create two container jobs.**

Answer: D

### Question-205


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
* **D. 4.0.1**

**Answer: D**

### Question-206

You are automating the testing process for your company.

You need to automate Ul testing of a web application.

Which framework should you use?

* A. JaCoco
* B. Playwright
* C. Xamarin. UlTest
* D. Microsoft.CodeAnalysis

Answer: B


### Question-207

You use Azure Pipelines to build and test code projects.

You notice an increase in cycle times.

You need to identify whether agent pool exhaustion is causing the issue.

What are two possible ways to achieve this goal? Each correct answer presents a complete solution.

NOTE: Each correct selection is worth one point.

* A. Query the PipelineRun/PipelineRuns endpoint.
* **B. Query the TaskAgentPoolSizeSnapshots endpoint**.
* C. View the Pipeline duration report.
* **D. View the pool consumption report at the organization level.**

**Answer: BD**