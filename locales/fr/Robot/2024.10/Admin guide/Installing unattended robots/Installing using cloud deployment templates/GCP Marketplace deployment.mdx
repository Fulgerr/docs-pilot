# GCP Marketplace deployment

The GCP Marketplace UiPath Robot deployment is a solution that enables UiPath and GCP customers to deploy the Robot through the GCP marketplace.

# Capabilities

The Robot deployment to GCP Marketplace allows you to:

* Create the infrastructure for the Robot.
* Set up the Robot to execute either:Attended automations, in which case, only the Service URL is pre-populated, enabling easy sign in for attended automations.Unattended automations, where the Robot is connected to Orchestrator.

# Prerequisites



Before installing and connecting the Robot to execute unattended automations, you need:

* The Orchestrator URL, for example: https://myrobotorch.azurewebsites.net/<TenantName> // standalone Orchestrator https://cloud.uipath.com/<OrganizationName>/<TenantName> // Automation Cloud Orchestrator https://<AS domain>/<OrganizationName>/<TenantName> // Automation Suite OrchestratorFor attended automations, robots deployed using this template can connect via the Service URL.
* The machine template credentials (machine client ID and machine secret).

When private connectivity is required, such as connecting to an Automation Suite cluster, use an existing Virtual Private Cloud (VPC) that has access to the desired endpoint.



# Infrastructure components

Compute engine instances—Computational resources needed for running the Robot and executing automations. They host the Robot software and provide the memory, CPU, and storage resources necessary for automation tasks.Networking resources —Parameters to manage connectivity.A virtual network (VPC) defines the networking environment in the cloud including IP address range, subnets, route tables, and network gateways.Subnets further partition the IP address range of the VPC and can be used to segment network functional areas.The Identity Aware Proxy (IAP) firewall rule manages who can connect to the Robot via IAP, enhancing security.A compute engine router and Network Address Translation (NAT) config ensure the Robot deployment can communicate with external resources for outbound connectivity.Secret and Secret Version (optional)—Parameters that store the machine secret used for secure communication between the Robot and the Orchestrator instance.Google service account—The account used to access Google cloud services and retrieve the machine secret from the Secret Manager. The Google Service account must have specific permissions to accomplish its tasks, securing the overall Robot deployment process.The following image describes the GCP Marketplace deployment architecture:



# Permissions for the Google service account

The Google Service account requires the following permissions:

* Compute admin—manages compute resources, such as creating or deleting instances.
* Compute network admin—manages networking resources, such as Virtual Private Clouds (VPCs), subnets, and firewalls.
* Secret manager admin—manages machine secrets.
* Project IAM admin—manages all Identity and Access Management (IAM) policies within the project, such as assigning roles to service accounts, creating policies, or adjusting permissions.
* Create service account—creates other service accounts, which helps provide each Robot with a unique set of permissions.
* Delete service account—deletes other service accounts.
* Service account user—allows instances to use this service account so it can use its permissions.

# Outbound connections

To install and connect the Robot to the Orchestrator, use the following endpoints:

* download.uipath.com - to download the installation package
* The Orchestrator/ Service URL

# Naming conventions

Use the following standard names for the infrastructure components:

* Compute engine instance: <instance name>-<instance number>
* VPC network: <VPC network name>
* Subnet: <subnet name>
* IAP firewall rule: <VPC network name>-allow-ingress-from-iap
* Compute router: nat-router-<instance name>
* NAT config: nat-config-<instance name>
* Secret ID: machine-secret-<instance name>
* Service account: <instance name>-sa-<instance number>

Where:

* <instance name> - placeholder for the component name
* <instance number> - placeholder for the count of instances defined via the Instance Count parameter

# Deployment

To deploy the Robot, consider the following recommendations:

* Read and accept the license agreement.
* Configure deployment parameters:Instance count - To simultaneously deploy multiple Robot instances with the same configuration.Machine client ID and secret - Required to execute unattended automations.VPC network and subnet - To add a new VPC network and subnet, select the Create new VPC network and subnet option, then provide details in the corresponding New VPC network configuration section. To use an existing VPC network and subnet, provide details in the Existing VPC network configuration section.If you are deploying to an existing virtual network, it must support outbound internet connectivity.
