# AWS Marketplace deployment parameters

This page documents the AWS parameters you need to configure when deploying Automation Suite to AWS.

### Table 1. Network choice

| Parameter label (name) | Default value | Description |
| --- --- ---| Deploy to an existing VPC | false | Choose true to deploy Automation Suite in an                                 existing VPC. |


### Table 2. Network configuration

Configure this section only when deploying Automation Suite in an existing VPC.


| Parameter label (name) | Default value | Description |
| --- --- ---| VPC CIDR | 10.0.0.0/16 | VPC CIDR block. Example: x.y.0.0/16, x.y.z.0/24. |
| VPC ID | Requires Input | ID of the existing VPC. |
| Public subnet IDs | Blank string | List of public subnet IDs to deploy the internet-facing Load Balancer and the Bastion host. |
| Private Subnet IDs | Requires Input | List of private subnet IDs. |


### Table 3. Availability Zone configuration

Configure this section only when deploying Automation Suite in a
            new VPC.


| Parameter label (name) | Default value | Description |
| --- --- ---| Availability Zones | Requires input | Choose up to three Availability Zones to use for the VPC subnets. |


### Table 4. Common networking configuration

| Parameter label (name) | Default value | Description |
| --- --- ---| Number of Availability Zones | 2 | Choose the number of Availability Zones to use in the VPC. This must match the number of zones selected in the Availability Zones parameter. |
| Deploy Bastion host | true | Deploy a Bastion host inside the public subnet. |
| CIDR for bastion's ingress for SSH traffic | Empty string | Ingress Security Group CIDR (for SSH). Configure this parameter only if you have set the Deploy Bastion host parameter to true. Set to x.x.x.x/32 to allow one specific IP address access, 0.0.0.0/0 to allow all IP addresses access, or another CIDR range. |


### Table 5. Automation Suite node configuration

| Parameter label (name) | Default value | Description |
| --- --- ---| Server instance type | c5.4xlarge | Choose the node type for the Server node instances. |
| Server instance count | 3 | Choose the number of nodes to be deployed as Server node                                 instances. |
| Agent instance type | c5.4xlarge | Choose the node type for the Agent node instances. |
| Agent instance count | 1 | Choose the number of nodes to be deployed as Agent node                                 instances. |
| GPU agent instance type | p3.2xlarge | Choose the node type for the GPU Agent node instance. |
| Task Mining agent instance type | c4.8xlarge | Choose the node type for the Task Mining Agent node instance. |
| AS Robots agent instance type | c5a.4xlarge | Choose the node type for the AS Robots Agent node instance. |
| AS Robots agent instance count | 1 | Choose the number of nodes to be deployed as AS Robots Agent node                                 instances. |


### Table 6. Automation Suite instance configuration

| Parameter label (name) | Default value | Description |
| --- --- ---| Instance key pair | Requires input | Existing key pair to connect to virtual machine (VM) instances. |
| IAM role ARN | Blank string | ARN of a pre-deployed IAM Role with sufficient permissions for the                                 deployment. Leave empty to create a new role automatically during                                 deployment. |
| IAM role name | Blank string | Name of a pre-deployed IAM role with sufficient permissions for the                                 deployment. Leave empty to create a new role automatically during                                 deployment. |


### Table 7. Automation Suite deployment configuration

| Parameter label (name) | Default value | Description |
| --- --- ---| Enable cluster backup | true | Enable the cluster backup. |
| Use a shared bucket for external storage | false | Enable a shared bucket across products. If enabled, Process Mining and Data Service still require a dedicated bucket each. |
| Load balancer | ALB | Select either an Application Load Balancer (ALB) or a Network Load Balancer (NLB). If you select a Network Load Balancer, then you need to manually configure the TLS certificates post deployment. |
| Ingress Security Group CIDR (for https) | Empty string | Ingress Security Group CIDR (for HTTPS). Set the CIDR to                             allow access to Automation Suite. Set the CIDR to                                 x.x.x.x/32 to allow one specific IP address access,                                 0.0.0.0/0 to allow all IP addresses access, or                             another CIDR range. |
| Perform installation | true | Perform the Automation Suite installation. Choose false to perform only infrastructure provisioning and configuration. |
| Automation Suite version | e.g. 2023.10.1 | Automation Suite version to install |
| Add GPU-enabled VMs | false | Choose true to add a GPU-enabled VM to the deployment. |
| Extra configuration keys | Blank string | Extra configuration keys to add to the cluster configuration. Leave empty to use the default configuration. |
| Validity of the self-signed certificate | 1825 | Validity (in days) of the self-signed certificate that the deployment uses to encrypt traffic inside the VPC. |
| Disable presigned URL | false | Enable or disable objectstore access via pre-signed URLs. |


### Table 8: Automation Suite external registry configuration

| Parameter label (name) | Default value | Description |
| --- --- ---| External registry Fully Qualified Domain Name | Requires input | FQDN for the external registry. Leave empty to not use an external                                 registry. |
| External registry user name | Requires input | User name for connecting to the external registry. Leave empty to not                                 use an external registry. |
| External registry password | Requires input | Password for connecting to the external registry. Leave empty to not                                 use an external registry. |


### Table 9. Automation Suite service configuration

| Parameter label (name) | Default value | Description |
| --- --- ---| Service install flags(multiple) | true | Choose if a specific service is installed in the cluster. |


### Table 10. Automation Suite external Orchestrator configuration

| Parameter label (name) | Default value | Description |
| --- --- ---| Connect AI Center to an external Orchestrator | false | Register AI Center to an external Orchestrator. |
| Orchestrator URL | Blank string | URL of the external Orchestrator to which AI Center connects.Example: https://my-orchestrator.net |
| Identity URL | Blank string | URL of the Identity server used to authorize AI Center.Example: https://my-orchestrator.net/identity |
| Base64 encoded Orchestrator certificate | Blank string | Base64 encoded Orchestrator certificate stringExample: UExBQ0VIT0xERVI= |
| Base64 encoded Identity certificate | Blank string | Base64 encoded Identity certificate stringExample: UExBQ0VIT0xERVI= |


### Table 11. DNS or SSL configuration

| Parameter label (name) | Default value | Description |
| --- --- ---| Hosting FQDN | Requires input | Fully qualified domain name (FQDN) for Automation Suite. This must be either a subdomain or root domain of the ID of Amazon Route 53-hosted zone parameter. |
| ID of Amazon Route 53-hosted zone | Blank string | Enter the ID of the Amazon Route 53-hosted zone or leave blank. For details, see Valid domain name. |
| ARN of the ACM-hosted certificate | Blank string | ARN of the certificate present in the Amazon Certificate Manager (ACM) to use with the ALB. Leave empty to create the public certificate during deployment. |
| Use internal load balancer | false | Choose if you want to use an internal load balancer. |


### Table 12. Amazon RDS configuration

| Parameter label (name) | Default value | Description |
| --- --- ---| Engine of SQL Server deployed on Amazon RDS | sqlserver-se | Choose the Amazon Relational Database Service (Amazon RDS) SQL                                 engine |
| Version of SQL Server deployed on Amazon RDS | 15.00 | Choose the Amazon RDS SQL version. |
| AWS KMS Key Id used to encrypt Amazon RDS storage | Blank string | KMS Key ID to use for the encryption of the Amazon RDS storage. Leave                                 empty to skip encrypting the Amazon RDS storage. |

