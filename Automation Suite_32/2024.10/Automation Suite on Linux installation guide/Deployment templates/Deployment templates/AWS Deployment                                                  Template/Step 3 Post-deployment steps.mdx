# Step 3: Post-deployment steps

This page provides instructions on the operations you can perform after deploying
            Automation Suite to AWS.

### Validating the installation

Under CloudFormation > Stacks, you can find all of your deployments.Select the stack you deployed, a status of CREATE_COMPLETE indicates the deployment has completed successfully.


### Updating certificates

The installation process generates self-signed certificates on your behalf. By default, these certificates are compliant with FIPS 140-2 and expire after 1825 days, but you can choose any of the following expiry periods at the time of deployment: 90, 365, 730, 1825, or 3650 days.

You must replace the self-signed certificates with certificates signed by a trusted Certificate Authority (CA) as soon as the installation completes. If you do not update the certificates, the installation will stop working after the certificate expiry date.

If you installed Automation Suite on a FIPS 140-2-enabled host and want to update the certificates, make sure they are compatible with FIPS 140-2.

For instructions, see Managing certificates.


### Enabling FIPS 140-2

After completing an Automation Suite installation using the AWS deployment template, you can enable FIPS 140-2 on your machines. For instructions, see Security and compliance.


### Accessing the installer package

In AWS deployments, the installer package containing all the scripts for post-deployment operations is decompressed in the /root/installer directory.


### Accessing the deployment outputs

From the Stack you selected, select the Output tab on the top. On this tab, you should have access to all the information you need for next steps.For any of the credentials, you can access them via the secrets link provided in the table. Select on the link and go to Retrieve Secret Value for the credentials.KeyValueDescriptionArgoCDhttps://alm.${CONFIG_CLUSTER_FQDN}You can use the ArgoCD console to manage installed products.ArgoCD Secret< See link in console >Credentials for ArgoCDAutomation Suite Secret< See link in console >Credentials for Automation Suite PortalCluster Administration URLhttps://${CONFIG_CLUSTER_FQDN}/uipath-managementPortal centralizes the resources required to complete an Automation Suite installation and perform common post-installation operations.Automation Suite URLhttps://${CONFIG_CLUSTER_FQDN}Automation Suite PortalHost Administration Portalhttps://${CONFIG_CLUSTER_FQDN}The host portal is for system administrators to configure the Automation Suite instance. The settings that you configure from this portal are inherited by all your organizations, and some can be overwritten at the organization level.Host Administration Secret< See link in console >Credentials for Host AdministrationInterface TourInterface tourThe general-use Automation Suite user interface serves as a portal for both organization administrators and organization users. It is a common organization-level resource from where everyone can access all the Automation Suite areas: administration pages, platform-level pages, service-specific pages, and user-specific pages.Rancherhttps://monitoring.${CONFIG_CLUSTER_FQDN}Automation Suite uses Rancher to provide cluster management tools out of the box. This helps you manage the cluster and access monitoring and troubleshooting.Dashboard (Grafana) Monitoring URLhttps://monitoring.${CONFIG_CLUSTER_FQDN}/dashboardThe URL to dashboard (Grafana) monitoring toolsMetrics (Prometheus) Monitoring URLhttps://monitoring.${CONFIG_CLUSTER_FQDN}/metricsThe URL to metrics (Prometheus) monitoring tools.Alertmanager MonitoringURLhttps://monitoring.${CONFIG_CLUSTER_FQDN}/alertmanagerThe URL to Alertmanager monitoring tools.


### Accessing the Cluster Administration portal

The Cluster Administration portal is a centralized location where you can find all the resources required to complete an Automation Suite installation and perform common post-installation operations. For details, see Getting started with the Cluster Administration portal.To access the Cluster Administration portal, take the following step:

Go to the following URL: https://${CONFIG_CLUSTER_FQDN}/uipath-management.You do not need any credentials to access the Cluster Administration portal.


### Accessing the Automation Suite portal

The general-use Automation Suite user interface serves as a portal for both organization administrators and organization users. It is a common organization-level resource from where everyone can access all Automation Suite areas: administration pages, platform-level pages, service-specific pages, and user-specific pages.To access Automation Suite, take the following steps:

Go to the following URL: https://{CONFIG_CLUSTER_FQDN}.Switch to the Default organization.The username is orgadmin.Retrieve the password by selecting the secrets link provided in the output table for AutomationSuiteSecret. Go to Retrieve Secret Value for the credentials.


### Accessing host administration

The host portal is where system administrators configure the Automation Suite instance. The settings configured from this portal are inherited by all your organizations, and some can be overwritten at the organization level.To access host administration, take the following steps:

Go to the following URL: https://{CONFIG_CLUSTER_FQDN}.Switch to the Host organization.The username is admin.Retrieve the password by selecting the secrets link provided in the output table for HostAdministrationSecret. Go to Retrieve Secret Value for the credentials.


### Accessing ArgoCD

You can use the ArgoCD console to manage installed products.To access ArgoCD, take the following steps:

Go to the following URL: https://alm.${CONFIG_CLUSTER_FQDN}.The username is admin if you want to use the ArgoCD admin account, or argocdro if you want to use the ArgoCD read-only account.Retrieve the password by selecting to the secrets link provided in the output table for ArgoCdSecret. Go to Retrieve Secret Value for the credentials.


### Accessing the monitoring tools




### Accessing cluster VMs

Navigate to EC2 and find your Automation Suite instance(s) depending if you deployed single-node or multi-node. Find the public IP of the Bastion or instance you want to connect to.Open a terminal and use SSH to connect to Bastion.ssh -i <path_to_private_key> <username>@<bastion_ip>From Bastion, you can access other nodes via SSH using the following command. The username must be the same as the one used to connect to Bastion.ssh -i .ssh/private_key <username>@<node_address>


### Performing cluster operations

The templates provide automations for cluster operations leveraging Systems Manager documents.


### Completing an upgrade

After performing an Automation Suite cluster upgrade, AWS template deployments require some changes to ensure a new node joins the cluster correctly. To automate the changes, we recommend using the dedicated script. For instructions, see the AWS deployment template docs.

