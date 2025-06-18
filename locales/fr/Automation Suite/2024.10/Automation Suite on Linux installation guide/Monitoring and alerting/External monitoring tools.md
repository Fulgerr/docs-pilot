# External monitoring tools

To effectively monitor Automation Suite, you should understand the Automation Suite architecture. We provide pre-configured alerts via Alert Manager, metrics via Prometheus compatible endpoints, and logs via FluentD that you can collect in your monitoring tool.

## Alerts

* You can find the pre-configured alerts in the Alerts section in Prometheus.
* You must configure receivers to receive alerts for issues that may lead to downtime: Adding an email receiverAdding webhooks to send alerts to external tools


## Metrics

For details on the metrics relevant in monitoring the storage, networking and hardware utilization, see the following:

* Automation Suite component dashboards
* Metrics used to configure alerts
* Automation Suite architecture

You can push the metrics to your monitoring tool using the Prometheus remote write feature. Alternatively, you can deploy a collector to pull metrics from Prometheus-compatible endpoints, also known as targets. You can view the targets under the Status section in the Prometheus UI.

UiPath® does not support or maintain the remote write endpoint integrations or the collectors. For any issues with the integrations, you should contact the vendor of your monitoring tool.

When using collectors, enabling Application Monitoring in certain monitoring tools may disrupt the functionality of Automation Suite.


## Exporting Prometheus metrics to an
        external system

Prometheus uses the Prometheus remote write
                        feature to collect and export Prometheus metrics to an external
                system.UiPath®
                does not support or maintain the remote write endpoint
                        integrations. However, the endpoints are compatible with the
                Prometheus instance delivered within Automation Suite.To configure
                    remote_write on an Automation Suite cluster:

Connect to ArgoCD.Select Applications.Navigate to monitoring.Open the APP DETAILS panel and disable self-heal.Navigate to the monitoring application.Open the APP DETAILS panel > MANIFEST tab.Select EDIT and navigate to the values > prometheus
                    > prometheusSpec section.Add the desired remoteWrite configurations.Discover the available
                                configurations for the remote write feature.SAVE the new configuration. The monitoring application displays
                        OutOfSync until the new configuration is applied.Prometheus does not need to restart to apply the new remote write
                            configurations.Test the desired remote write integration. Return to step 8 to add a new
                    configuration.


## Logs

Automation Suite logs typically serve as a resource for troubleshooting. For details, see Logs.

