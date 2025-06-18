# Step 3: Post-deployment steps


### Checking the installation status

Due to the way in which the GCP Marketplace deployments work, it is not possible to wait until the installation scripts are finished. The deployment is completed after the infrastructure is successfully deployed.To get the status of the installation, you must use SSH to connect to the first server node using the following steps:

Select the deployment name.Get the suffix from one of the resources.Filter the VM instances with the suffix and SSH in the server with the lowest private IP (generally 10.0.0.7).View the prerequisite logs in the /tmp/prereqs.logs file by running the following command:cat /tmp/prereqs.logsThe prerequisite log file is generated on each node, at the beginning of the installation. The log generation process takes a few minutes.To continuously view the logs on screen, run the following command:tail -f /tmp/prereqs.logsCheck the kubernetes/infrastructure installation logs in the /opt/UiPathAutomationSuite/install.logs file by running the following command:cat /opt/UiPathAutomationSuite/install.logs #for all logs
tail -f /opt/UiPathAutomationSuite/install.logs #to follow the logsThe logs cover the entire installation, and the log file is created on all the machines.


### Updating certificates

The installation process generates self-signed certificates on your behalf. These certificates are compliant with FIPS 140-2 and will expire in 90 days. You must replace them with certificates signed by a trusted Certificate Authority (CA) as soon as installation completes. If you do not update the certificates, the installation will stop working after 90 days.

If you installed Automation Suite on a FIPS 140-2-enabled host and want to update the certificates, make sure they arecompatible with FIPS 140-2.

For instructions, see Managing certificates.


### Enabling FIPS 140-2

After completing an Automation Suite installation using the GCP deployment template, you can enable FIPS 140-2 on your machines. For instructions, see Security and compliance.


### Accessing the deployment outputs

You can find the deployment outputs in the Solution output section, as shown in the following image:


### Output definitions

The outputs give you the necessary information for accessing the suite and the cluster.

The following table describes the values:

KeyDescriptionFqdnThe fully qualified domain name provided for the installation. Make sure you use the same one when configuring the DNS.For instructions on how to configure the DNS, see Configuring the DNS.Lb IpThe load balancer’s IP address used for configuring the DNS.Bastion IpThe IP address of the bastion VM needed to access the cluster via SSH.Deployment IdThe deployment ID included in the name of all the resources in a deployment.Db CredentialsThe URL to the secret containing the credentials for the database.As Host CredentialsThe URL to the secret containing the credentials for the Host organization in the Automation Suite portal.As Default CredentialsThe URL to the secret containing the credentials for the Host organization in the Automation Suite portal.Argocd CredentialsThe URL to the secret containing the credentials for the ArgoCD console used to manage the installed products.Dashboard Monitoring UrlThe URL to dashboard (Grafana) monitoring tools: https://monitoring.${var.lb_fqdn}/dashboardMetrics Monitoring UrlThe URL to metrics (Prometheus) monitoring tools: https://monitoring.${var.lb_fqdn}/metricsAlertmanager Monitoring UrlThe URL to Alertmanager monitoring tools: https://monitoring.${var.lb_fqdn}/alertmanager


### Accessing the Cluster Administration portal

The Cluster Administration portal is a centralized location where you can find all the resources required to complete an Automation Suite installation and perform common post-installation operations. For details, see Getting started with the Cluster Administration portal.To access the Cluster Administration portal, take the following step:

Go to the following URL: https://${CONFIG_CLUSTER_FQDN}/uipath-management.You do not need any credentials to access the Cluster Administration portal.


### Accessing the services

To access the services, you must have a DNS configured. For details, see Configuring the DNS.

Alternatively, you can follow the instructions in Configuring a client machine to access the cluster for testing purposes only.

If using a self-signed certificate, you may get an certificate error as shown in the following image.

![34a5dd5-post_deployment2=GUID-3405CD15-AF13-44A5-8B9D-0B056BE17B7D=1=en=Default](/images/34a5dd5-post_deployment2=GUID-3405CD15-AF13-44A5-8B9D-0B056BE17B7D=1=en=Default.png)

Select Proceed to…, then update the cluster certificates as explained in .


### Accessing the Automation Suite portal

You can access the Automation Suite portal at https://<fqdn>. You can get the credentials via a secret available at:

* As Host Credentials URL for the Host organization;
* As Default Credentials URL for the Default organization.


### Accessing ArgoCD

You can access the ArgoCD console at https://alm.<fqdn>. You can get the credentials via a secret that can be found at the argocd_credentials URL.


### Accessing the monitoring tools




### Accessing the cluster

To access the cluster machines via SSH, make sure to configure and use SSH in the browser. For details, see Google documentation.


### Editing the number of nodes

Use the GPC console to edit number of nodes (server or agent nodes) as follows:

In the Instance Group tab, search for the MIGs, and select on the one corresponding to the node type you want to modify.Select Edit.Modify the Number of instances field according to your needs, and select Save.


### Removing the deployment

To remove the deployment, delete the solution on the Solution deployments page.

