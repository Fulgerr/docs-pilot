# Estimating cloud infrastructure costs

On this page, we use the cloud templates as a reference point to evaluate the infrastructure costs required to support Automation suite. We also call out a few additional notes to help forecast the total cost of ownership for Automation Suite. The resulting estimates can approximate your future spending on infrastructure with high confidence for cloud deployments. You can also use the estimates as a reference point to compare the costs of physical bare-metal implementations.

Each cloud template deployment automatically provisions a set of components based on the provided
            inputs.

To check out the list of components for each cloud provider, see the following:Azure componentsAWS componentsGCP components

To calculate the cost of the infrastructure provisioned by the cloud templates based on your scenario needs, refer to the following guidelines and estimates.

### Identifying the cost factors

There are multiple factors impacting the cost of the infrastructure deployed by the cloud templates, such as the following:

* Number of server nodes
* Server node instance type
* Number of agent nodes
* Number of GPU nodes
* GPU node instance type
* Products selected


### Using the pricing calculator

You can accurately estimate the cost of your cloud infrastructure by taking the following steps:

1. Determine the resources your scenario requires using the UiPath® Automation Suite Install Sizing Calculator .
2. Use the pricing calculator of your public cloud provider: Azure pricing calculatorAWS Pricing CalculatorGoogle Cloud pricing calculator

Refer to the following examples to help you get started with the pricing calculators.


### Estimate examples

The following table describes the multi-node HA-ready production infrastructure cost estimate for the Complete product selection in the context of the previously introduced guidelines.

The estimates do not account for the load balancers, Bastion, key vault, and backup.


| Number of server nodes | AWS | Azure |
| --- --- ---| 3 | Complete installation estimate | Complete installation estimate |

The estimate examples are based on public listed prices. To better match your current prices, contact your cloud provider.


### Automation Suite vs. standalone products: infrastructure costs

Automation Suite seems to have a considerable infrastructure footprint. However, when comparing it with the total amount of infrastructure needed to run production use cases of standalone UiPath® products, the costs are similar and, in some cases, even lower for Automation Suite.

To give concrete examples of infrastructure cost differences between Automation Suite and standalone products, we leveraged the pricing calculators of cloud providers where possible, along with our hardware requirements. The following table summarizes the results:

Automation Suite MilestoneProductMonthly cost in standaloneMonthly cost in Automation SuiteYearly cost in Automation SuiteLink to estimate in AzureEnterprise grade OrchestratorOrchestrator$2,250$2,813$33,756EstimateComing from standaloneOrchestrator$2,850$3,144$37,728EstimateTest ManagerInsightsAction CenterModern basic platformOrchestratorN/A$3,476$41,712EstimateTest ManagerInsightsAction CenterData ServiceAutomation HubAutomation OpsApps lightOrchestratorN/A$3,476$41,712EstimateData ServiceAppsModern platform with AppsOrchestratorN/A$3,808$45,696EstimateTest ManagerInsightsAction CenterData ServiceAutomation HubAutomation OpsAppsFull platform + Document Understanding StarterOrchestratorN/A$4,139$49,668EstimateTest ManagerInsightsAction CenterData ServiceAutomation HubAutomation OpsAppsAI CenterDocument UnderstandingScale to Document Understanding for every 50k pages/dayExtraction$100$1,200D4 VMClassification$100$1,200D4 VMOCR$100$2,400NC4 VMTask MiningTask Mining on dedicated agentN/A$531$6,372B20MsProcess MiningProcess Mining on dedicated agentN/A$498$5,952F16s v2 + SQL licenseAutomation Suite RobotsAutomation Suite Robots on dedicated agentN/A$496$5,925F16s v2

In addition, the total costs of supporting Automation Suite are lower compared to standalone product deployments when considering the following:

* Automation Suite requires fewer staff members to maintain operation since fewer machines must be managed as compared to standalone products.
* The IT department does not require any new skills to support additional products because the Automation Suite instance management is the same regardless of which products are used. Therefore, Automation Suite required less IT staff to support the range of UiPath® products.
* The infrastructure spend does not change significantly when adding new products to the Automation Suite instance and increasing its ROI (i.e., when adding Automation Hub).
* Automation Suite also includes out-of-the-box monitoring, cluster management, as well as unified admin and end-user experiences across all products.

