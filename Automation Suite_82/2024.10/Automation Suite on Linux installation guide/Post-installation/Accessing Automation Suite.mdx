# Accessing Automation Suite


## Enabling kubectl

Before running any kubectl commands, make sure to enable kubectl. This allows you to run commands for retrieving passwords and configuration details for the cluster.

To enable kubectl, run the following command:

sudo su -
export KUBECONFIG="/etc/rancher/rke2/rke2.yaml" \
&& export PATH="$PATH:/usr/local/bin:/var/lib/rancher/rke2/bin"


## Managing certificates

The installation process generates self-signed certificates on your behalf. These certificates will expire in 90 days, and you must replace them with certificates signed by a trusted Certificate Authority (CA) as soon as installation completes. If you do not update the certificates, the installation will stop working after 90 days.For instructions, see Managing certificates.If you try to access the cluster with a web browser, and the certificates are not from a trusted CA, then you will see a warning in the browser. You can rectify this by importing and trusting the cluster SSL certificate on the client computer running the browser.To manage certificates, take the following steps:

To retrieve the current certificate, run the following command:kubectl get secrets/istio-ingressgateway-certs -n istio-system \
-o "jsonpath={.data['ca\.crt']}" | base64 --decodeTo update the certificates, see Managing certificates.


## Accessing the Cluster Administration portal

The Cluster Administration portal is a centralized location where you can find all the resources required to complete an Automation Suite installation and perform common post-installation operations. For details, see Getting started with the Cluster Administration portal.To access the Cluster Administration portal, take the following step:

Go to the following URL: https://${CONFIG_CLUSTER_FQDN}/uipath-management.You do not need any credentials to access the Cluster Administration portal.


## Accessing Automation Suite general interface

You need to accept the self-signed certificate in the web browser to be able to access a cluster that is still configured with self-signed certificates.The general-use Automation Suite user interface serves as a portal for both organization administrators and organization users. It is a common organization-level resource from where everyone can access all of your Automation Suite areas: administration pages, platform-level pages, product-specific pages, and user-specific pages.To access Automation Suite, take the following steps:

Go to the following URL:https://${CONFIG_CLUSTER_FQDN}Switch to the Default organization.The username is orgadmin.Retrieve the password using the following command:kubectl get secrets/platform-service-secrets -n uipath \
-o "jsonpath={.data['identity\.hostAdminPassword']}" | base64 -d ; echoUsing the same command to retrieve the organization admin and the host admin passwords is by design.This is because the two passwords are initially the same. If Change password on the first login is set to Required at the host level, the organization administrator must set a new password when they log in for the first time.


## Accessing host administration

The host portal is for system administrators to configure the Automation Suite instance. The settings that you configure from this portal are inherited by all your organizations, and some can be overwritten at the organization level.To access host administration, take the following steps:

Go to the following URL:https://${CONFIG_CLUSTER_FQDN}Switch to the Host organization.The username is admin.Retrieve the password using the following command:kubectl get secrets/platform-service-secrets -n uipath \
-o "jsonpath={.data['identity\.hostAdminPassword']}" | base64 -d ; echoUsing the same command to retrieve the organization admin and the host admin passwords is by design.This is because the two passwords are initially the same. If Change password on the first login is set to Required at the host level, the organization administrator must set a new password when they log in for the first time.


## Accessing ArgoCD

You can use the ArgoCD console to manage installed products.

Depending on the operations you want to carry out in ArgoCD, you can use two types of accounts to access the console:

* the read-only account in basic scenarios
* admin account in advanced scenarios

For more details on ArgoCD and how you can access it, see Managing the cluster in ArgoCD.


## Accessing the monitoring tools

# Overview

You can access the Automation Suite monitoring tools individually
                using the following URLs:

ApplicationToolURLExampleMetricsPrometheushttps://monitoring.fqdn/metricshttps://monitoring.automationsuite.mycompany.com/metricsDashboardGrafanahttps://monitoring.fqdn/grafanahttps://monitoring.automationsuite.mycompany.com/grafanaAlert ManagementAlert Managerhttps://monitoring.fqdn/alertmanagerhttps://monitoring.automationsuite.mycompany.com/alertmanager

For details on how to
                fetch Grafana credentials, refer to the Accessing Grafana
                    dashboard section.

# Monitoring tool
                authentication

To access the monitoring tools for the first time, log in as an
                admin with the following default credentials:

* Username: admin
* Password: to retrieve the password , run the following command:kubectl get secrets/dex-static-credential -n uipath -o "jsonpath={.data['password']}" | base64 --decode

# Dex authentication

To update the default password used for Dex authentication while
                accessing the monitoring tools, take the following steps.

Dex is a basic authentication method layered over the
                    monitoring tools. Therefore, updating the Dex password does not impact the
                    passwords for the monitoring tools. In this scenario, the passwords for the
                    monitoring tools remain the same as before.

1. Run the following command by replacing newpassword with your new password:password="newpassword" password=$(echo -n $password | base64) kubectl patch secret dex-static-credential -n uipath --type='json' -p="[{'op': 'replace', 'path': '/data/password', 'value': '$password'}]"
2. Run the following command to update the password:./bin/uipathctl manifest apply /opt/UiPathAutomationSuite/cluster_config.json --versions versions/helm-charts.json


## Accessing service database connection strings

You can access the database connection strings for each service as follows:

kubectl -n uipath get secret aicenter-secrets -o jsonpath='{.data.sqlConnectionString}' | base64 --decode
kubectl -n uipath get secret orchestrator-secrets -o jsonpath='{.data.sqlConnectionString}' | base64 --decode
kubectl -n uipath get secret automation-hub-secrets -o jsonpath='{.data.sqlConnectionString}' | base64 --decode
kubectl -n uipath get secret automation-ops-secrets -o jsonpath='{.data.sqlConnectionString}' | base64 --decode
kubectl -n uipath get secret insights-secrets -o jsonpath='{.data.sqlConnectionString}' | base64 --decode
kubectl -n uipath get secret platform-service-secrets -o jsonpath='{.data.sqlConnectionString}' | base64 --decode
kubectl -n uipath get secret test-manager-secrets -o jsonpath='{.data.sqlConnectionString}' | base64 --decode

