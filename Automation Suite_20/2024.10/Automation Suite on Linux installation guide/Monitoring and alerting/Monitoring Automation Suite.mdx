# Monitoring Automation Suite

To monitor an Automation Suite deployment, you can use our pre-configured alerts, dashboards, and logs. Alternatively, you can choose to bring your own monitoring tools. For details, see External monitoring tools.

For a list of Automation Suite components that you can monitor, see Deployment architecture.

## Using the monitoring stack

The monitoring stack for Automation Suite clusters includes Prometheus, Grafana, Alertmanager, and FluentD. For details, see the official Rancher documentation.

Node failures might lead to a Kubernetes shutdown, which would disrupt Prometheus alerts. To prevent this, we recommend setting up a separate alert on the RKE2 server.

Here are some guidelines on how to use the Automation Suite monitoring stack:

You must configure alert receivers to prevent any issues that may lead to downtime.You can refer to dashboards for regular monitoring.You can refer to logs for troubleshooting.


### Accessing the monitoring tools

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

