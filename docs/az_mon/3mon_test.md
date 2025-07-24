

## Monitoring Microsoft Azure

1. Who is responsible for establishing a connection from the on-premises network to Azure?

**The customer only**

2. You have concerns that old, unsupported applications are running in your hybrid cloud environment. How can you use Azure Security Center recommendations to prevent this?

**Use the adaptive application controls feature and create a new application policy based on recommendations.**

3. You have an application running on load balanced virtual machines (VMs). You are intermittently experiencing failing outbound connections. Which scenario can you use to determine the root cause?

**Create a metrics chart to monitor the load balancer for source-network address translation (NAT) connection count.**

4. What do you need to create alerts for Azure SQL databases from Log Analytics?

**Azure SQL Analytics**

5. You plot a chart in Azure Monitor for a resource. The chart must display the resource's metrics for the last week. When you visualize the chart, it's empty. Why might the data be missing?


**The resource did not send any metric in the defined time span.**

6. Which items are displayed in the alerts overview page?

**Fired alerts and enabled alert count**

7. When would an alert trigger in Azure Monitor?

**If the result count of a log query is greater than 100.**

8. What will enabling diagnostic settings on a virtual machine (VM) allow you to do that is otherwise unavailable?

**Create metric alerts on guest processor thresholds**

9. You want to exclude certain types of resources that developers can create in Azure to ensure that only essential, work-related assets exist. How would you go about doing this using Azure Policy?

**Configure the "Not allowed resource types" policy.**

10. Which is a condition of an alert rule in the unified alerting experience?

**Signal**

11. You allocate a certain amount of money to resources with specific tags. How will you verify if you allocated the cost successfully in the Azure portal?


Select Cost analysis, and select Tag under Add Filter. Choose the tag key/value that you want.

12. Which qualifies as a high severity recommendation?

**Enable network security groups on subnets**

13. You want to create a chart for your web application with two instances that shows connections by instance. What configuration options should you use?

**Metric = Connections, Add Splitting**

14. Which section in the Azure Security Center displays security recommendations?

**Resource security hygiene**

15. How would you automatically generate and send a monthly invoice for your Azure spending to the finance department?

**Use the email invoice function.**

16. Which monitoring service is best suited for monitoring ExpressRoute connections?

Network Performance Monitor

17. You are an IT administrator new to an organization. You see several custom views in production that were created through View Designer. What should you do?


Gradually convert the views one by one into Azure Monitor Workbooks.

18. To control costs, you want to shut down all virtual machines (VMs) in a certain resource group after all sessions have been disconnected each night. What is the most efficient procedure you can use to accomplish this?

**In Log Analytics, create a log search query to return session states for all VMs in the workspace created for that resource group. Create an alert rule based on the query that runs a PowerShell runbook to stop the VMs.**

19. Which PowerShell command can you use deploy an Azure Resource Manager template?

**New-AzResourceGroupDeployment**

20. What steps should you follow to diagnose connectivity issues for a site-to-site connection between on-premises and Azure networks?

**Enable Network Watcher and use the VPN diagnostics tool.**

21.Which dataset can you consider as part of a non-dimensional metric in Azure Monitor?

**A dataset with timestamps and metric values**

22.You use an Azure pay-as-you-go plan and rely on budget alerts to keep a check on your spending. Budget alerts cannot track your department spending (alert at 75% of the quota) and Azure Prepayment (alert at 90% of credit balance). What can you do to keep track of all three cost alert types?

**Switch to Enterprise Agreement Azure account type**.

23 During an application update, a number of application servers become unavailable. How might you use Azure monitoring services to gain insight into the nature of the issue?

**Use the Smart Groups functionality of Azure Alerts.**

24 You create an action group and send emails to 20 group users with the email address azure-noreply@microsoft.com. One user did not receive the email. You try sending the email to the remaining user with the email address azureemail-noreply@microsoft.com as well but it does not work. What could be true of the user

**The user's email account filtering setting marked emails from microsoft.com as spam.**

25 Which is a baseline policy in Microsoft Entra ID?

**Require multi-factor authentication (MFA) for administrators**

26 You run a usage query in the log search page that returns seven days of data on five virtual machines (VMs). You want to refine the results to MyVM01 and the most recent three days. How can you change the query to accomplish this?

```
Usage | where Computer == "MyVM01" | where TimeGenerated > ago(3d)

```

27 Which data is collected when resources report events in Azure?

**Running processes**

28 You want to automatically create work items in System Center Service Manager for activity log alerts. Which action type must you configure for this?

**`IT Service Management Connector (ITSM)`**

29 Upper management requested an interactive visual report on the company's Enterprise Agreement (EA) subscription. What would be an efficient way to produce this?

**Install Power BI Desktop and use the Azure Consumption Insights connector.**

30  Which is a requirement to set up an Azure Security Center event dashboard?

**Security Center’s standard tier plan**

31 What is the first step in creating a new alert in the unified alerting experience?

**Navigate to Monitor and use the Create rule wizard.**


32 Because of an increase in the number of identity-related attacks, you use the feature baseline protection in Microsoft Entra ID. What does this consist of?

**Conditional access policies**

33 Which payment option is available only when you are use Azure through an organization?

**Check or wire transfer**

34 You must query data from multiple sources in your Azure subscription and visualize them in one place for real-time insights into their resource utilization and performance. Which tool should you use?

**Azure Monitor Workbooks**

35 You execute a command in the Azure portal to download 1,000,000 audit activity logs for the last month. It only downloads last week's records. Why did the past records go missing?

**Because the default download limit is set to 250,000 records**

36 Which Azure feature automatically reviews your environment for cost savings based on resource utilization?

**Azure Advisor**

17 Which alert property signifies a high priority alert?

**Severity 0**

18 Your Azure Storage account has a requirement that, "Storage accounts should be migrated to new Azure Resource Manager resources". What should you do if a resource does not comply with this requirement?


**Apply the Microsoft Defender for Cloud recommendation.**

19 You are creating a new visualization for an Azure Kubernetes Service node in Azure Monitor Workbooks. This node consists of a hierarchy of resources. Which type of visualization is best suited for such workloads?

**Trees**

20 What is a requirement for monitoring Azure virtual machines (VMs) from a third-party tool running outside of Azure?

**Network security group (NSG) rules that allows the necessary traffic between the Virtual Network (VNet) and the monitoring tool**