# Data residency

Automation Cloud is deployed across
            various global regions for optimal coverage for our diverse worldwide customer base. As
            our cloud infrastructure expands, we can better meet global needs for data sovereignty
            while maintaining high availability and low latency, providing a robust foundation for
            cloud deployment.

Determining regions for cloud organizations and tenants
            depends on licensing plans and regional preferences. This documentation aims to show
            where your business data is stored globally.

{Delivery option} allows
            you to select the Azure cloud region where your data is stored. When onboarding, choose
            the cloud region where you want to deploy your {Delivery option} instance. Some Azure regions may have limited features or hardware
            availability, such as GPU, and as a result, we may not able to deploy {Delivery option} instances to those regions.

For more information on Azure regions availability,
            contact your UiPath account team.

## Organization and tenant services data

Automation Cloud organization data includes critical information such as user identity, metadata, and license details. Each Automation Cloud organization is assigned a unique hosting region based on licensing plans and regions selected by admins.

Each cloud organization has a single region, and enterprise customers have multi-regionality options for their organizations' tenants.


### Data residency for cloud organizations

Community

Data for cloud organizations created using community plan is stored in community data centers in the European Union.

Free

Data for cloud organizations created using free plan is stored in community data centers in the European Union.

Pro trial

Data for cloud organizations created using pro trial plan is stored in the region selected during creation.

Pro

Customers on pro plans inherit the organization region. If your organization was created using a non-commercial community or free plan, the data is hosted in the European Union.

Enterprise

Customers on enterprise plans inherit the organization region. If your organization was created using a non-commercial community or free plan, the data is hosted in the European Union. If you are interested in upgrading your plan, contact a sales expert.


### Data residency for cloud tenants

Community

A single cloud tenant is provisioned by default for a cloud organization created using Community plan. Data for this tenant is stored in Community scale unit in the European Union.

Free

A single cloud tenant is provisioned by default for a cloud organization created using Free plan. Data for this tenant is stored in community scale unit in the European Union.

Pro Trial

Customers using Pro Trial are offered up to three cloud tenants. These tenants are automatically created in the same region as the cloud organization region selected during sign-up.

Pro

Customers on Pro plans will inherit the tenant(s) region(s).

* If your organization was created using Community plan, tenant data is hosted in the European Union.
* If your organization was created using Free plan, tenant data is hosted in the European Union.
* If your organization was created using Pro Trial plan, tenant data is stored in the same region as the cloud organization region selected during sign-up.
* For newly created tenants, the data is stored in the same region as the cloud organization region selected during sign up.

Enterprise

Customers on Enterprise plans will inherit tenant(s) region(s).

* If your organization was created using Community plan, tenant data is hosted in the European Union.
* If your organization was created using Free plan, tenant data is hosted in the European Union.
* If your organization was created using Pro Trial plan, tenant data is stored in the same region as the cloud organization region selected during sign-up.
* For newly created tenants, the data is stored in the region chosen by admins during creation.

Establishing the region for newly created cloud tenants has no effect on already-created cloud tenants in your organization. Customers using Enterprise plans can request changes to regions elections they made in the past for their cloud organization or their tenants. You can contact support to request to schedule the data move to a different region.

In cases where Enterprise customers do not explicitly make region elections for their organizations or default tenants, we proactively move the customer data (from the organization and tenant services) to the corresponding scale units, to ensure the cloud services are deployed in optimal regions worldwide. We use predefined rules to determine region selection. However, in certain situations, our rules might default services to Enterprise scale units in the European Union, if a more suitable location was not identified.

# Resources

* Licensing plans

* Managing organization settings

* Managing tenant settings

# Untitled Section

The following table describes data residency for Automation Cloud organization and tenants in accordance with their used plans:

Data residency for Automation Cloud organization and tenantsCommunityFreePro trialProEnterpriseCloud organization regionsEuropean Union onlyEuropean Union only1 chosen regionInheritedInherited (can be changed)Tenant regionsEuropean Union onlyEuropean Union only1 chosen region1 inherited regionInherited for Default Tenant (can be changed)Multiple regions are available for new tenants.Max. number of tenants1133As needed

Community and Free plans are for non-commercial use only. If you want to test Automation Cloud before buying a license, start with a Pro Trial plan.


## Global cloud regions

We aim to store your cloud data in the optimal region, which is the region that provides the best performance, decreased network latency, and data locality. However, your data can be hosted across different regions, depending on the services you have active in your organization and tenant, and their availability in your region, as detailed in the following table:

Legend:

- Available

- Not available

Some services might process data beyond their designated storage region. However, no data is stored outside the services' respective region.


| Service | European Union | United States | Japan | Canada | Australia | Singapore | United Kingdom | India | United States(delayed region) | European Union(delayed region) |
| --- --- --- --- --- --- --- --- --- --- ---| Action Center(Actions and Processes) |  |  |  |  |  |  |  |  |  |  |
| Agents11 |  |  |  |  |  |  |  |  |  |  |
| AI Center |  |  |  |  |  |  |  |  |  |  |
| AI Computer Vision3 |  |  |  |  |  |  |  |  |  |  |
| Apps1 |  |  |  |  | 6 | 6 |  | 6 |  |  |
| Automation Cloud portal2 |  |  |  |  |  |  |  |  |  |  |
| Automation Hub |  |  |  |  |  |  |  |  |  |  |
| Automation Ops1 |  |  |  |  |  |  |  |  |  |  |
| Communications Mining |  |  |  |  |  | 4 |  |  |  |  |
| Context Grounding |  |  |  |  |  |  |  |  |  |  |
| Data Service |  |  |  |  |  |  |  |  |  |  |
| Document Understanding | 9 |  | 9 | 9 | 9 | 5, 9 | 9 | 9 |  |  |
| Insights |  |  |  |  |  |  |  |  |  |  |
| Integration Service |  |  |  |  |  |  |  |  |  |  |
| Maestro |  |  |  |  |  |  |  |  |  |  |
| Orchestrator10(including ACR - VM and ACR - Serverless) | 12 | 12 | 12 |  |  |  |  |  | 12 |  |
| Process Mining |  |  |  |  |  |  |  |  |  |  |
| Studio Web1 |  |  |  | 7 |  | 7 | 7 | 7 |  |  |
| Task Mining |  |  |  |  |  |  |  |  |  |  |
| Test Manager8 |  |  |  |  |  |  |  |  |  |  |

1 Organization-level service that is provisioned in the organization region, not in the tenant region.

2 The Automation Cloud portal includes the home page, all pages under Admin, and the Resource center (Help) page. For a list of all services handled by an organization administrator, refer to Administration services and capabilities.

3 Design-time data is centralized in the European Union and in the United States of America, no matter the region of origin.

The service is available worldwide and it can be accessed from any location around the world. For more details, check the Public endpoints page.

In the case of a regional Azure failure, to ensure continued service operation for our customers, global AI Computer Vision traffic (using the cv.uipath.com endpoint) may be temporarily failed over/redirected to another Azure data center location. The redirection will happen in the same geography, if possible (for example, traffic usually served by the North Europe Azure data center will be redirected to West Europe, if possible, in case of a regional failure in North Europe). In case redirection in the same geography is not possible (examples include, but are not limited to: insufficient GPU availability in Azure or disasters affecting both the primary and secondary regions in a geography), traffic may be redirected to another geography. The redirection will happen for a limited time, until the regional failure has stopped and the service has stabilized.

The traffic using the region specific endpoints, documented in the Public endpoints page, will not be redirected during such failures, and therefore may face degraded SLA or interruption of service during such regional failures.

4 The optional features in Communications Mining, which rely on Azure OpenAI Services, currently use an Azure endpoint transiting the European Union to provide them in Singapore. There is no data saved outside Singapore.

5 Data for generative AI features (Extract Document Data and Classify Document activities and Document Manager pre-labeling and annotation and validation features) are transiting the European Union to provide them in Singapore. There is no data saved outside Singapore. The generative model is deployed the same way as our specialized pre-trained models, hence, the same data privacy applies.

6 The Apps AI-powered features, provided by AutopilotTM, which rely on Azure OpenAI Services, currently use an Azure endpoint located in the European Union to provide these features in Australia, India, and Singapore for data transit. No data is saved outside of the respective region.

7 The Studio Web AI-powered features, provided by AutopilotTM, which rely on Azure OpenAI Services, currently use an Azure endpoint located in the European Union to provide these features in Canada, the United Kingdom, Singapore, and India for data transit. No data is saved outside of the respective region.

8 The Test Manager AI-powered features, provided by AutopilotTM, which rely
            on Azure OpenAI Services, use region-specific Azure endpoints for data transit. The
            United States Azure endpoint provides the features in United States and Canada, the
            European Union Azure endpoint provides in the European Union and United Kingdom, and the
            Japan Azure endpoint provides for Japan, Singapore, India, and Australia. No data is
            saved outside of the respective regions.

9 Currently, UiPath DocPath is only available for US-based tenants.

10 stores customer data in Orchestrator.

11 The UiPath LLMs that support Agents are available in the following regions: Azure
            OpenAI GPT-4o models – Europe, Japan, United States; Anthropic Claude models: 3.5 Sonnet
            v1 model – Europe, Japan, United States; 3.5 Sonnet v2 model – United States, Australia;
            3.7 Sonnet model – United States; Google Vertex AI Gemini Flash 2.0 – Europe, United
            States. We continue to assess and add additional regional support as demand requires.
            Note that data residency is not strictly enforced and will fall back to the closest
            region with available capacity.

12 The UiPath LLMs that support Autopilot for Everyone are available in the following regions: Azure OpenAI GPT-4o models – Europe, Japan, United States; Anthropic Claude-3.5 Sonnet v1 model – Europe, Japan, United States. We continue to assess and add additional regional support as demand requires and availability permits.


## Safe deployment practices

We consistently deploy new releases every two weeks for cloud products and services, adhering to
            the company's safe and secure deployment practices.

Initial deployment is made available to community
            users where applicable, and later to enterprise customers within a one hour to 14-day
            window post community deployment.

Initial deployment is made available first to our
            multi-tenant Automation Cloud community users where applicable, and later to enterprise
            and Automation Cloud Dedicated customers.

# Delayed ring deployments

Automation Cloud is available in cloud scale units in the United
                States and the European Union with delayed deployments.

To ensure GxP regulatory compliance in life sciences, UiPath® offers Advanced
                Platform SKU customers the option of a delayed update scale unit for their
                Automation Cloud setup. Typically, customers utilize a standard scale unit for
                testing (in any of the Automation Cloud standard
                    regions), alongside a second organization on a delayed update scale unit
                for production. Automation Cloud is available to customers in a delayed update scale
                unit accessible in the United States, and a second one in the European Union is
                available to enterprise customers.

Each Automation Cloud release reaches delayed update scale units at least 14 days
                after standard scale units, enabling customers to complete an evaluation before the
                update is released in the delayed scale unit.

Further details regarding delayed update scale units are available in Delayed update organizations.

