

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

