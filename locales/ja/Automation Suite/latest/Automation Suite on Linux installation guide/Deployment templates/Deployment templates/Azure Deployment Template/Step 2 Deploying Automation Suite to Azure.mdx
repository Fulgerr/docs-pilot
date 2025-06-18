# Step 2: Deploying Automation Suite to Azure

After setting up the Azure environment, navigate to one of the following links to install Automation Suite:

* For Azure for US Government, access this link.
* For Azure Public Cloud, access this link.

The following table provides an overview of the parameters used in the deployment:


| Parameter name | Description |
| --- ---| Subscription | The Azure subscription. |
| Resource Group | The Azure Resource Group, under the subscription. |
| Resource Group Name | The name of the resource group where the cluster is deployed. |
| Region | The default region of the Resource Group. |
| Location | A valid Azure Region where the infrastructure is deployed. Make sure that the region has enough cores for the instance types used.You can use the [resourceGroup().location] if this is the same as the Resource Group’s region. |
| Automation Suite version | The version of Automation Suite.Example: 21.10.2 |
| Run Automation Suite Install | Choose whether Automation Suite should be installed after the infrastructure is provisioned. |
| Accept License Agreement | By setting the parameter as true, you agree to the applicable license agreement. |
| DNS Load Balancer | The prefix used for the load balancer subdomain.If you use a custom domain you will only be able to access the cluster through the custom domain, not directly using the load balancer's domain (eg. <prefix>.<region>.cloudapp.azure.com). |
| Virtual Network New Or Existing | Parameter indicating whether the Virtual Network used for the deployment should be created or if it already exists. |
| Existing Virtual Network Resource Group | Resource group where the existing Virtual Network you want to use is deployed.Parameter used only if the Virtual Network New Or Existing parameter is set to existing. |
| Existing Virtual Network Name | Name of the existing Virtual Network used for deployment.Parameter used only if the Virtual Network New Or Existing parameter is set to existing. |
| Existing Subnet Name | Name of an existing subnet inside the previously mentioned Virtual Network. The subnet must satisfy these requirements.Parameter used only if the Virtual Network New Or Existing parameter is set to existing. |
| Deploy Bastion Host | Deploy a Bastion Host on the Virtual Network. Parameter used only if Virtual Network New Or Existing is set to new. |
| Enable Custom Domain | Set to true if you want to use your own custom domain. The needs post-install configuration. |
| Custom domain | This is the domain you want to use for the cluster. Post-installation, create two CNAME/A records that will point to the public load balancer. See DNS configuration. |
| Enable Custom Certificates | Set to true if you want to use your own custom certificates for your own domain. Make sure to use this together with the Enable Custom Domain parameter set to true. |
| Custom Server Certificate | This is a base64 encoded string.Encode the contents of the .crt server certificate to a base64 string. The server certificate should have the following properties. |
| Custom Server Cert Key | This is a base64 encoded string.Encode the contents of the .key server certificate key, to a base64 string. This is the private key from the Custom Server Certificate parameter. |
| Custom Server Cert Authority Bundle | This is a base64 encoded string.Create a .crt file containing all public certificates (.crt) from all of the CA certificates in the Server Certificate chain (excluding the server certificate).Create a base64 string from the contents of this file. |
| Automation Suite Installer URL | Optional: The link to the Automation Suite installation package.Changing this parameter overwrites the Automation Suite version parameter and install the version specified in this URL.Keep set to None if not used. |
| Automation Suite Advanced Config | This is a valid json string that will be merged in the cluster_config.json file that is being built by the template. Will overwrite existing settings.See advanced installation experience for details. |
| Server Node Count | The number of VMs created to work as the servers for the cluster. Should be an odd number. |
| Server Node Instance Type | The instance type for the server nodes.Example: Standard_D16s_v3 |
| Server Node Hostname | Server node hostname/computer name prefix. For details on the appended sequence, see Azure documentation. |
| Enable Ultra Disks | Enable to use ultra disks for etcd (server nodes). Should only be disabled if the region you are deploying to does not have zones support. |
| Agent Node Count | The number of VMs created to serve as the agent nodes for the cluster. If 0, an empty agent scale set is still created. |
| Agent Node Instance Type | The instance type for the agent nodes.Example: Standard_D16s_v3 |
| Agent Node Hostname | Agent node hostname/computer name prefix. For details on the appended sequence, see Azure documentation. |
| Gpu Node Count | The number of VMs with GPU created to be the agents for the cluster. Designed for ML workloads. If 0, no GPU scale set is created. |
| Gpu Node Instance Type | The type of instances with GPU to be provisioned and to be the agents for the cluster.Example: Standard_NC12s_v2 |
| Gpu Node Hostname | GPU node hostname/computer name prefix. For details on the appended sequence, see Azure documentation. |
| Task Mining Node Type | Optional: Instance type of the task mining node. This will only be used if you enable the Task Mining service. Example: Standard_B20ms |
| Task Mining Node Hostname | Task Mining node hostname/computer name. |
| AS Robots Node Count | The number of dedicated Automation Suite Robots nodes. If 0, the scale set is still created. |
| AS Robots Node Instance Type | The instance type for the dedicated Automation Suite Robots nodes.Example: Standard_D16s_v3 |
| AS Robots Node Hostname | Automation Suite Robots node hostname/computer name prefix. For details on the appended sequence, see Azure documentation. |
| SQL new or existing | Parameter indicating whether the SQL Server used for the deployment should be created or it already exists. For SQL server requirements, see our documentation . |
| SQL Server FQDN or IP | FQDN or IP associated with the SQL Server. This is only used if the SQLNewOrExisting parameter is set to existing. |
| SQL Server Username | SQL Server user login. If the SQL new or existing parameter is set to existing, this is the user for the existing SQL server. Otherwise, this username will be set on the SQL server created. For details on the required permissions, see our documentation for permissions. |
| SQL Server Password | SQL Server user password. If the SQL new or existing parameter is set to existing, this is the user password for the existing SQL server. Otherwise, this password is set on the created SQL server. |
| SQL Server Port | SQL Server port. If the SQLNewOrExisting parameter is set to existing, this port is used. |
| WarehouseSQLServerFqdnOrIP | FQDN or IP associated with the Warehouse SQL Server. This is only used if the SQLNewOrExisting parameter is set to existing, and you want to install Process Mining. |
| WarehouseSQLServerUsername | Warehouse SQL Server user login. This is only used if you want to install Process Mining. If the SQLNewOrExisting parameter is set to existing, this is the user for the existing SQL server. Otherwise this username is set on the created SQL Server. For details on permissions, see Configuring Microsoft SQL server. |
| WarehouseSQLServerPassword | Warehouse SQL Server user password. This is only used if you want to install Process Mining. If the SQLNewOrExisting parameter is set to existing, this is the user password for the existing SQL server. Otherwise this password is set on the created SQL server. |
| WarehouseSQLServerPort | Warehouse SQL Server port. This is only used if you want to install Process Mining. If the SQLNewOrExisting parameter is set to existing, this port is used. |
| UiPath Admin Username | The admin username to be set on all nodes. This is also used as the host tenant admin. |
| UiPath Admin Password | The password for the node admin user. This is also used as the host tenant admin password. |
| Vm Admin Username | The admin username to be used in the virtual machine instances. |
| Vm Admin Password | The admin password to be used in the virtual machine instances. |
| Enable Cluster Backup | Set to true if you want to deploy the external NFS file share. Also, the backup will be enabled at cluster level if the Run Automation Suite Install parameter is set to true. |
| Services Install flags (multiple) | Choose if the specific service is installed in the cluster. |
| externalRegistryFQDN | The external registry FQDN. |
| externalRegistryUsername | The external registry username. |
| externalRegistryPassword | The external registry password. |
| AI Center Connect To External Orchestrator Flag | Flag which determines whether AI Center connects to an external Orchestrator. Only works if AiCenterInstallFlag is set to 'true'. You need to specify how AI Center connects to the Orchestrator in the following parameters. |
| OrchestratorUrl | The URL for Orchestrator to which AI Center connects. Fill this in only if you want to install AI Center and connect it to an external Orchestrator and Identity Service. |
| IdentityUrl | The URL for the Identity Service to which AI Center connects. Fill this in only if you want to install AI Center and connect it to an external Orchestrator and Identity Service. |
| OrchestratorCertficate | The Certificate in Base64 for the Orchestrator to which AI Center connects. Fill this in only if you want to install AI Center and connect it to an external Orchestrator and Identity Service. |
| IdentityCertificate | The Certificate in Base64 for the Identity Service to which AI Center connects. Fill this in only if you want to install AI Center and connect it to an external Orchestrator and Identity Service. |
| Tags by resource | Optional: Tags per resource. Can be empty or have the following format:{ "Microsoft.Web/serverFarms": { "<TagName>": "<TagValue>" }, "Microsoft.Insights/components": { "<TagName>": "<TagValue>" } } |
| Enable FIPS | Set to true to enable FIPS 140-2 for the Automation suite installation.Insights does not work with FIPS 140-2 enabled. If you want to enable FIPS-2, make sure to disable Insights before starting the installation. |
