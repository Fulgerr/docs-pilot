# Step 1: Preparing the Azure deployment

To prevent data loss, ensure the infrastructure you use does not automatically delete cluster disks on cluster reboot or shutdown. If this capability is enabled, make sure to disable it.

### Azure subscription and permissions

The deployment requires access to an Azure subscription and a Resource Group with the RBAC role Owner. The Owner role is needed to create a user-assigned Managed Identity with the Contributor role assigned at the Resource Group scope. The Managed Identity is needed for managing the VMs (perform scale-in and scale-out actions, apply instance protection, update the OS).

You can check your role assignment by going through the following:

Resource Group → Access Control (IAM) → Check Access → View My Access

![4ce60cf-azure_subscription=GUID-F28F5C30-B0BF-4890-9093-AE3679B3C8E9=1=en=Default](/images/4ce60cf-azure_subscription=GUID-F28F5C30-B0BF-4890-9093-AE3679B3C8E9=1=en=Default.png)


### Quotas

The deployment provisions a number of Standard_D (general purpose), Standard_F and/or Standard_NC (with GPU) VMs. The Azure subscription has a quota on the number of cores that can be provisioned for the VM family.

Some of the deployed VMs must be provisioned with Premium SSDs and, depending on the configuration, Ultra SSDs. Make sure these SSDs are available and are not blocked by any policy.

We use SQL elastic pools to deploy the databases. Make sure that SQL elastic pools are not blocked by any policy.

To check the subscription quota, go to Usage + quotas in the Azure portal.

![d2edec1-azure_quotas=GUID-69C0E11D-04DB-4D2B-BE13-93FF7445EA4C=1=en=Default](/images/d2edec1-azure_quotas=GUID-69C0E11D-04DB-4D2B-BE13-93FF7445EA4C=1=en=Default.png)

Make sure your quota is sufficient for the Automation Suite deployment, otherwise the deployment will fail. Request an increase by selecting the Request Increase.


### Instance protection

As part of the installation process, we add instance protection from scale set operations to all nodes of the Server Scales Set. Since these operations are performed from Azure, without the server context, cluster malfunction is prevented. We provide runbooks for cluster management operations. For more about Scale Set Instance Protection, see Azure documentation.


### Instance termination

Terminating the Server Virtual Machine instances will most likely result in data loss and cause the cluster to crash. Do not attempt terminating the Server Virtual Machine instances.

We provide instance termination support for Agent Virtual Machine Instances. This means that when an Agent Virtual Machine Instance is terminated, we cordon, drain, and delete that node from the Automation Suite cluster.

We run a script on each Agent Virtual Machine Instance that is pooling the Instance Metadata Service for Termination events. Whenever receiving an event, we trigger a cordon and a drain command on the respective node, and a server also runs a delete node command for that specific node.

Extended logs are available for this process. You can find the logs for each node termination operation under the deployment main storage account in the logs container. Each log file contains the name of the node and has the -termination.log suffix.

![de67eac-InstanceTermination=GUID-1D346D06-F72E-4196-A4C5-31FF6CB43C7F=1=en=Default](/images/de67eac-InstanceTermination=GUID-1D346D06-F72E-4196-A4C5-31FF6CB43C7F=1=en=Default.png)


### VM family region availability

Make sure that the VM SKUs are available for the region in which you deploy.

You can check the availability at: Azure Products by Region.


### Cluster certificate configuration

The Azure template allows you to provide certificates for a custom domain you specify during deployment so that you do not need to manually do that post-deployment. However, you need to ensure the .crt certificates are Base64-encoded before providing them.

The following script generates the Base64-encoded strings from a single .pfx certificate (server certificate). You can then use these strings when filling in the template parameters. You can run this bash script on a Windows machine using Windows Subsystem for Linux. It uses openssl to convert the certificates. Keep in mind that the server certificate (the .pfx) should meet somerequirements.

Run the following commands one by one as some require the .pfx cert password:

pfxFile=<path of the pfx file>

# Key
openssl pkcs12 -in $pfxFile -nocerts -out serverCertKeyEncrypted.key
openssl rsa -in serverCertKeyEncrypted.key -out serverCertKeyDecrypted.key

# Server cert
openssl pkcs12 -in $pfxFile -clcerts -nokeys -out serverCert.crt

# CA Bundle:
openssl pkcs12 -in $pfxFile  -cacerts -nokeys -chain | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > caBundle.crt

# Converting to base64 and removing newlines
cat serverCertKeyDecrypted.key | base64 | tr -d '\n' > base64CertKey
cat serverCert.crt | base64 | tr -d '\n' > base64Cert
cat caBundle.crt | base64 | tr -d '\n' > base64CABundle


### External Orchestrator certificates

To connect AI Center to an external Orchestrator, you must set Connect AiCenter to an external Orchestrator to true and provide certificates for Orchestrator and Identity to the parameters listed in Deploying Automation Suite to Azure. For details on how to obtain the certificates, see Chain certificates.

To encode the certificates in base64 format, run the following commands:

cat orchestrator.cer | base64 | tr -d '\n' > orchestratorCert
cat identity.cer | base64 | tr -d '\n' > identityCert

To register AI Center to the external Orchestrator, you must run the RegisterAiCenterExternalOrchestrator runbook.


### Resilience to zonal failures in a multi-node HA-ready production cluster

By default, the templates deploy the VMs across as many Azure Availability Zones as possible to enable the resilience to zonal failures in a multi-node HA-ready production cluster.

Not all Azure Regions support Availability Zones. See Azure Geograpies for details.VM SKUs have additional Availability Zones restrictions that you can check using the CLI cmdlet. See Get-AzComputeResourceSku for details.

The cluster is considered resilient to zonal failures if the servers are spread across three Azure Availability Zones. If the Azure region does not support Availability Zones for the type of VM selected for servers, the deployment will continue without zone resilience.


### DNS

The template provisions an Azure Load Balancer with a public IP and a DNS label to access the services.

The DNS label is Microsoft-owned and should have a format similar to: <dnsName>.<regionName>.cloudapp.azure.com.

We also deploy a private DNS zone, for the cluster VMs to be able to resolve several subdomains. This is needed for the installation process. To resolve records in a private DNS zone from the Virtual Network, make sure the DNS server is either set to Azure-provided or 168.63.129.16.

If you want to access the cluster over the internet, you can check out Step 3: Post-deployment steps.


### Deploying into an existing virtual network

The template allows you to deploy the nodes in an existing Virtual Network. However, the Virtual Network must have a subnet that meets the following requirements:

* has enough free address space to accommodate all the nodes and the internal load balancer
* outbound connectivity, preferably configured through a NAT gateway as per Microsoft recommendation
* allows HTTPS traffic on port 443
* Optional : has a service endpoint configured for Microsoft.Storage . This is needed if you enable the backup at deployment time.

When deploying into an existing Virtual Network, you must have the Owner RBAC role on it to create a Contributor role assignment at its scope. This is needed for the Instance Refresh operation when scaling out.


### Backup

The template allows you to enable the backup at deployment time. This implies creating a Microsoft Storage Account with a variable storage capacity (depending on the number of server nodes - # of server nodes x 512GB) used as an NFS share and configuring the backup for the cluster. By default, the backup interval is set to 90 minutes, and the retention interval is 72 hours. You can change the backup and retention intervals post-deployment. For details, see BackupCluster.

