# Step 3: Post-deployment steps

When using Azure Bastion, keep in mind that copy-pasting commands split over multiple lines using \ may not work as expected. To ensure new lines are interpreted correctly, use the console's clipboard widget.

### Validating the installation

To check if Automation Suite was installed successfully, you must go to the storage account, inside the flags container. The installation is complete if the contents of the auto-generated file called installResult (in the container) is successful. The contents will be failed if the installation failed.


### Updating certificates

The installation process generates self-signed certificates on your behalf. These certificates are compliant with FIPS 140-2. The Azure deployment template also gives you the option to provide a CA-issued server certificate at installation time instead of using an auto-generated self-signed certificate.

Self-signed certificates will expire in 90 days, and you must replace them with certificates signed by a trusted CA as soon as installation completes. If you do not update the certificates, the installation will stop working after 90 days.

If you installed Automation Suite on a FIPS 140-2-enabled host and want to update the certificates, make sure they are FIPS 140-2-compatible.

For instructions, see Managing certificates.


### Enabling FIPS 140-2

After completing an Automation Suite installation using the Azure deployment template, you can enable FIPS 140-2 on your machines. For instructions, see Security and compliance.


### Exploring flags and logs

If you need more information on the Automation Suite installation process or other operations, a good place to start is the storage account used to store various flags and logs during cluster deployment and maintenance.To locate the storage account, take the following steps:

Navigate to the resource group where the deployment was performed. Filter by resource type Storage Account.Locate the storage account whose name ends with st. For example:Select the storage account, and then select Containers. You options are flags and logs.


### Accessing deployment outputs

Once the installation is complete, you need to access the Deployment Outputs in the Outputs tab.

To do that, go to your Resource Group, and then to Deployments → mainTemplate (or something like Microsoft.Template-DateTime) → Outputs.

![2972f5f-post_deployment1=GUID-059C6981-B1BD-4FA4-BFD5-95C9939716EB=1=en=Default](/images/2972f5f-post_deployment1=GUID-059C6981-B1BD-4FA4-BFD5-95C9939716EB=1=en=Default.png)

![4c7b9a9-post_deployment2=GUID-46368B81-1337-4A6F-9802-B79938C81BA4=1=en=Default](/images/4c7b9a9-post_deployment2=GUID-46368B81-1337-4A6F-9802-B79938C81BA4=1=en=Default.png)

![8031774-DeploymentOutputs=GUID-F99064A3-28D2-4846-9FBC-C7C0648F9801=1=en=Default](/images/8031774-DeploymentOutputs=GUID-F99064A3-28D2-4846-9FBC-C7C0648F9801=1=en=Default.png)


### Accessing cluster VMs

The VMs are provisioned inside a private VNet. You can access them through Azure Bastion by following these steps:

Navigate to the resource group where you have deployed Automation Suite. Because agents, GPU agents, and server VMs are inside Scale Sets, you have to go to the Scale Set that contains your desired instance.Go to the Instances section in the Settings tab.Select the name of the VM you want to connect.Select the Connect button, and then choose Bastion from the drop-down menu.Enter the credentials provided in the deployment (Admin Username and Admin Password parameters, which you can find in the credentials keyvault, under Secrets) and select Connect.


### DNS requirements

As mentioned in Step 1: Preparing your Azure Deployment, the Automation Suite Azure deployment creates a Load Balancer with a public IP and a DNS label associated. This DNS label is Microsoft-owned.

The deployment also provisions a Private DNS zone inside the cluster VNet and adds several records that are used during the installation and configuration process.

If you choose to connect from an external machine, you will not be able to use the private DNS zone to resolve the DNS for various services, so you need to add these records to your host file.

See Step 4: Configuring the DNS for more details.

You should now be able to connect to various services running on your cluster.


### Accessing the cluster administration portal

The Cluster Administration portal is a centralized location where you can find all the resources required to complete an Automation Suite installation and perform common post-installation operations. For details, see Getting started with the Cluster Administration portal.To access the Cluster Administration portal, take the following step:

Go to the following URL: https://${CONFIG_CLUSTER_FQDN}/uipath-management.You do not need any credentials to access the Cluster Administration portal.


### Accessing Automation Suite general interface

The general-use Automation Suite user interface serves as a portal for both organization administrators and organization users. It is a common organization-level resource from where everyone can access all Automation Suite areas: administration pages, platform-level pages, service-specific pages, and user-specific pages.To access Automation Suite, take the following steps:

Go to the following URL: https://${Loadbalancer_dns}, where <loadbalancer_dns> is the DNS label for the load balancer and is found under outputs.Switch to the Default organization.The username is orgadmin.Retrieve the password by going to Keyvault,Secrets, and then Host Admin Password.


### Accessing host administration

The host portal is where system administrators configure the Automation Suite instance. The settings configured from this portal are inherited by all your organizations, and some can be overwritten at the organization level.To access host administration, take the following steps:

Go to the following URL: https://${Loadbalancer_dns}, where <loadbalancer_dns> is the DNS label for the load balancer and is found under Outputs.Switch to the Host organization.Enter the username you previously specified as a value for the UiPath Admin Username parameter.Enter the password you previously specified as a value for the UiPath Admin Password parameter. Retrieve the password by going to Keyvault,Secrets, and then Host Admin Password.


### Accessing ArgoCD

You can use the ArgoCD console to manage installed products.To access ArgoCD, take the following steps:

Go to the following URL: https://alm.${Loadbalancer_dns}, where <loadbalancer_dns> is the DNS label for the load balancer and is found under Outputs. Note that you must configure external access to this URL as described in Step 4: Configuring the DNS.The username is admin.To access the password, go to the Outputs tab or the credential Keyvault.


### Accessing the monitoring tools




### Scaling your cluster

Compute resources provisioned from the deployment consist of Azure Scale Sets, which allow for easy scaling.You can manually add additional resources to a specific Scale Set, including adding server nodes, agent nodes, or specialized agent nodes (such as GPU nodes).You can perform a manual scale by identifying the specific Scale Set and add resources directly.To do so, take the following steps:

Go to the Azure Portal and filter on the specific Scale Set:Select the appropriate Scale Set and select Scaling.Modify the Instance count field either by using slider or the input field next to it, and then select Save.For Server Scale Sets, the instance count needs to be an odd number.The scaling operation should start in the background, and new resources become available upon completion.


### Completing an upgrade

After performing an Automation Suite cluster upgrade, Azure template deployments require some changes to ensure a new node joins the cluster correctly. To automate the changes, we recommend using the dedicated script. For instructions, see the Azure deployment template docs.


### Azure VM lifecycle operations

Azure allows a 15-minute window at most to prepare for shutdown, whereas the graceful termination of an Automation Suite node varies from 20 minute (for agent and GPU agent nodes) to hours (in the case of server nodes).To avoid data loss, the server's VMSS upgrade policy is set to manual, and the server VMs have the protection for the scale set actions enabled. As a result, we recommend managing the servers lifecycle via the provided Runbooks.The InstanceRefresh, RemoveNodes, RemoveServers, and CheckServerZoneResilience runbooks are supported only for multi-node HA-ready production deployments.The number of servers after running any runbook must be odd and greater than three ( e.g., you cannot execute an Instance Refresh if you have 4 servers; you cannot remove a server if you have a total of five).All the VMs in VMSSes should be in Running state.Only one runbook must run at a time.

The InstanceRefresh, RemoveNodes, and RemoveServers runbooks are affected by an issue causing node removal operations to fail if you use Azure for US Government.

