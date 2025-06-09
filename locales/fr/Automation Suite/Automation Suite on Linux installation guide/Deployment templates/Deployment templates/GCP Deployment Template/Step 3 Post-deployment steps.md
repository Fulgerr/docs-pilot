# Step 3: Post-deployment steps


### Updating certificates

The installation process generates self-signed certificates on your behalf. These certificates are compliant with FIPS 140-2 and will expire in 90 days. You must replace them with certificates signed by a trusted Certificate Authority (CA) as soon as installation completes. If you do not update the certificates, the installation will stop working after 90 days.

If you installed Automation Suite on a FIPS 140-2-enabled host and want to update the certificates, make sure they arecompatible with FIPS 140-2.

For instructions, see Managing certificates.


### Enabling FIPS 140-2

After completing an Automation Suite installation using the GCP deployment template, you can enable FIPS 140-2 on your machines. For instructions, see Security and compliance.


### Accessing the deployment outputs

To get the deployment outputs, take the following steps:

Open a terminal. Go to the directory from which you ran the deployment commands. Execute the following command:terraform output

The output should look similar to the following image:


### Output definitions

The outputs give you the necessary information for accessing the suite and the cluster.

The following table describes the values:


| Key | Description |
| --- ---| fqdn | The fully qualified domain name provided for the installation. Make sure you use the same one when configuring the DNS.For instructions on how to configure the DNS, see Configuring the DNS. |
| lb_ip | The load balancer’s IP address used for configuring the DNS. |
| bastion_ip | The IP address of the bastion VM needed to access the cluster via SSH. |
| deployment_id | The deployment ID included in the name of all the resources in a deployment. |
| db_credentials | The URL to the secret containing the credentials for the database. |
| as_host_credentials | The URL to the secret containing the credentials for the Host organization in the Automation Suite portal. |
| as_default_credentials | The URL to the secret containing the credentials for the Host organization in the Automation Suite portal. |
| argocd_credentials | The URL to the secret containing the credentials for the ArgoCD console used to manage the installed products. |
| dashboard_monitoring_url | The URL to dashboard (Grafana) monitoring tools: https://monitoring.${var.lb_fqdn}/dashboard |
| metrics_monitoring_url | The URL to metrics (Prometheus) monitoring tools: https://monitoring.${var.lb_fqdn}/metrics |
| alertmanager_monitoring_url | The URL to Alertmanager monitoring tools: https://monitoring.${var.lb_fqdn}/alertmanager |


### Accessing the Cluster Administration portal

The Cluster Administration portal is a centralized location where you can find all the resources required to complete an Automation Suite installation and perform common post-installation operations. For details, see Getting started with the Cluster Administration portal.To access the Cluster Administration portal, take the following step:

Go to the following URL: https://${CONFIG_CLUSTER_FQDN}/uipath-management.You do not need any credentials to access the Cluster Administration portal.


### Accessing the services

To access the services, you must have a DNS configured. For details, see Configuring the DNS.

Alternatively, you can follow the instructions in Configuring a client machine to access the cluster for testing purposes only.

If using a self-signed certificate, you may get an certificate error as shown in the following image.

![34a5dd5-post_deployment2=GUID-3405CD15-AF13-44A5-8B9D-0B056BE17B7D=1=en=Default](/images/34a5dd5-post_deployment2=GUID-3405CD15-AF13-44A5-8B9D-0B056BE17B7D=1=en=Default.png)

Select Proceed to…, then update the cluster certificates as explained in .


### Accessing Automation Suite portal

You can access the Automation Suite portal at https://<fqdn>. You can get the credentials via a secret available at:

* as_host_credentials URL for the Host organization;
* as_default_credentials URL for the Default organization.


### Accessing ArgoCD

You can access the ArgoCD console at https://alm.<fqdn>. You can get the credentials via a secret that can be found at the argocd_credentials URL.


### Accessing the monitoring tools




### Accessing the cluster

Open a terminal and use SSH to connect to bastion. You can find bastion_ip in the deployment outputs.ssh -i <path_to_private_key> <username>@<bastion_ip>From bastion, you can access other nodes via SSH using the following command. The username must be the same as the one used to connect to bastion. You can find the <node_address> in the GCP console, in the column Internal IP.ssh -i .ssh/private_key <username>@<node_address>

You should see the following dashboard showing the state of the cluster:


### Editing the number of nodes

Use the GPC console to edit number of nodes (server or agent nodes) as follows:

In the Instance Group tab, search for the MIGs, and select on the one corresponding to the node type you want to modify.Select Edit.Modify the Number of instances field according to your needs, and select Save.


### Removing the deployment

If you want to remove the deployment, take the following steps:

Open a terminal and go to the folder where you unzipped the templates. Run the following command:terraform destroyType Yes when asked for approval.

