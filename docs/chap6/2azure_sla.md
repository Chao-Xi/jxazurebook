# **2 微软Azure高韧性**

Azure 的总体可用性一直呈上升趋势，整个队列的韧性已达 99.999%，为用户提供优质的云基础设施服务。

Azure 的服务水平协议(Service-Level Agreements, SLA)阐述了微软在正常运行时间和连通性方面的承诺。如果某个特定服务的 SLA 是 99.9%，这意味着服务的预计可用时间为 99.9%。下表显示了各种 SLA 可能出现的停机时间总量。

## 01 如何设计 高可靠性应用？


设计HA（高可靠性）应用程序需**首先确定该项目的可用性需求**。

当您的项目涉及到多个潜在的故障点，如为一个写入 Azure SQL Database 的 App Service 创建一个网络应用程序，您就需要考虑每个服务故障的概率并计算，即复合 SLA。您可以通过创建独立的回退路径来提升复合 SLA。例如，当 SQL Database 不可用时，您可将交易放入队列中，稍后处理。

通过这种设计，即使不能连接到数据库，应用程序也仍旧可以使用。但是如果遇到数据库和队列同时故障，这个办法就不行了。应用程序的逻辑会更加复杂，您不仅需要付费使用队列，还要考虑数据的一致性。

SLA 也可以用于多区域部署，当应用程序在一个地区发生故障时，可以使用 Azure Traffic Manager 进行故障切换。多区域部署的复合 SLA 计算如下


设 N 为部署在一个地区的应用程序的复合 SLA，R为部署应用程序的地区数量。应用程序在所有区域同时故障的预期概率是`((1-N)^ R)`。

另外，在 active-passive 配置中，故障转移并不是即时的，因此失效转移期间可能会停机。

## 02 韧性服务方案中 有哪些重要指标？

韧性服务方案中还需要考虑以下4个重要指标：

### 恢复时间目标 Recovery time objective, RTO

事故发生后，**应用程序不可用的最大可接受时间**。

假设您的 RTO 是90分钟，那么您必须在灾难发生的90分钟内将应用程序恢复到运行状态。

如果您的 RTO 非常低，您可以让第二个区域部署在备用状态下持续运行一个 active/passive 配置来防止区域停机。



### 恢复点目标 Recovery point objective, RPO

**灾难期间可接受的数据丢失的最大持续时间**。

例如，如果您不将数据复制到其他数据库，仅将其存储在单个数据库中，每小时备份一次，那么您可能会丢失最多一个小时的数据。



### 平均恢复时间 Mean time to recover, MTTR

**组件发生故障时，恢复正常所需的平均时间。**通过估算每个组件的 MTTR可得出整个应用程序的 MTTR。MTTR越低，从故障中恢复正常所需的时间就越短。



### 平均故障间隔时间 Mean time between failures, MTBF

**组件在故障间隔期间预期可以正常运行的时间**。

**该指标可帮助您计算某项服务故障的频率**。不可靠组件的 MTBF 值较低，因此该组件的 SLA 值较低。但是，通过部署多重组件，并在它们之间实施故障转移，就可以缓解 MTBF 较低的情况。

另外还需要在设计阶段执行失效模式分析(FMA)。您应该将 FMA 作为架构和设计安排的一部分，从而确保您的系统是从一开始就建构了故障恢复

## 03 Azure有哪些 韧性策略？

Azure 为各类故障类型提供了可实施的常见韧性策略。这些策略中的每一种方法都不局限于某项特定技术

![Alt Image Text](../images/chap6_2_1.png "Body image")

无论是单个硬件节点故障、机架级故障、DC 故障还是大规模区域故障，微软Azure都能为您提供了解决方案，包括

* 可用性集(Availability Sets) 提供了虚拟机（VM）逻辑分组
* 可用分区（Availability Zones）
* Azure 负载均衡器（Azure Load Balancer）
* Azure 流量管理器（Azure Traffic Manager）可将互联网流量分布到不同区域。每个 Azure 区域与另一个配对，形成区域对
* Azure 站点恢复（Azure Site Recovery）
* Azure 备份(Azure Backup) 使用 Azure 备份服务保护在 Azure VM、Azure Managed Disks、Azure Blobs、Azure File Shares 等第运行的本地部署工作负载、Azure Virtual Machines、SQL Server 和 SAP HANA 数据库
* SQL 数据库异地备份(Geo Replication for Azure SQL Database)
* 本地冗余存储(Locally-redundant storage, LRS)
* 区域冗余存储（Zone-redundant storage, ZRS）
* 异地冗余存储(Geo-redundant storage, GRS)

![Alt Image Text](../images/chap6_2_2.png "Body image")

无论是单个硬件节点故障、机架级故障、DC 故障还是大规模区域故障，微软Azure都能为您提供了解决方案，包括：


* 故障注入测试（Fault injection testing）
* 负载测试
* 灾难恢复演练

为了避免应用程序部署到生产环境后，更新导致报错出现的情况，部署过程必须可预测、可重复。部署包括提供 Azure 资源、部署应用程序代码和使用配置设置。之后，为实现韧性仍需监视以检测故障并在报错出现时响应故障