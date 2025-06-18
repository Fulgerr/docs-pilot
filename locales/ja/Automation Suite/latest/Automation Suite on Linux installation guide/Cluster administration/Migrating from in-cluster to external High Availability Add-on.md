# Migrating from in-cluster to external High Availability Add-on

To migrate from in-cluster to external High Availability Add-on, take the following steps. Note that this operation might cause downtime.

Update the cluster_config.json file. For more details, see External High Availability Add-on configuration.Rerun the installer to update the cluster_config.json configuration../bin/uipathctl manifest apply cluster_config.json --versions versions/helm-charts.json

At this point, the services should be connected to the external Redis, and the in-cluster High Availability Add-on should be uninstalled.
