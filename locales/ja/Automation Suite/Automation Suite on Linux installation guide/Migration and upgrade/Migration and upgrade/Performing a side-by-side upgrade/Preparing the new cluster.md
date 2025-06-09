# Preparing the new cluster


### Preparing the cluster_config.json file

You must not modify the source cluster after starting the export-import process.To prepare the cluster_config.json file, take the following steps:

Generate the cluster_config.json file on the source cluster by running one of the following commands:If you upgrade from versions prior to 2023.10.0, use the following options:Option A: If you already have a cluster_config.json file available, get it by navigating to the latest installer folder and running the following command:cd /opt/UiPathAutomationSuite/latest/installer

./configureUiPathAS.sh config get -i /path/to/old/cluster_config.json -o /opt/UiPathAutomationSuite/cluster_config.jsonOption B: If you do not have a cluster_config.json file available, generate it by navigating to the latest installer folder and running the following command:cd /opt/UiPathAutomationSuite/{version}/installer

./configureUiPathAS.sh config get -o /opt/UiPathAutomationSuite/cluster_config.jsonIf you upgrade from 2023.10.0 or later versions, generate the config file by navigating to the latest installer folder and running the following command:./bin/uipathctl manifest get-revision >> ./cluster_config.jsonIf you opted for Side-by-side upgrade (single node start) model, set or edit the following fields in the cluster_config.json file.{
....
"profile": "default",
"fault_tolerance": 0,
...
}Copy the cluster_config.json file from the source cluster and place it in the target cluster:scp cluster_config.json user@target_cluster_IP /foo/barUse a newly generated GUID for rke_token, as well as a different temporary FQDN, SQL Server, or other configurations, as needed for the target cluster, and update cluster_config.json accordingly.You must generate a new GUID for rke_token to prevent the new cluster from joining the source cluster. To do that, run the following command:LC_CTYPE=C tr </dev/urandom -dc '!@#$%q_A-Z-a-z-0-9' | head -c 16You can use any text editor to modify the cluster_config.json file.Optional external objectstore: Provide the external objectstore if you want to change any of its settings.If the target cluster is 2024.10.3 or higher and you want latest version of Airflow you need to bring a PostgreSQL database for AutomationSuite_Airflow and configure the connection string for it in cluster_config.json.

To ensure instant rollback in case of failures, you must bring different resources than the ones used for the source cluster, as follows:You must bring different SQL databases for the new target cluster.You must bring different external objectstore buckets for the new target cluster.We currently do not support migrating from an in-cluster objectstore to an external objectstore as part of the side-by-side upgrade process. To use an external objectstore in the new environment, you must migrate to an external objectstore either before starting or after completing the side-by-side upgrade.


### Installing the new cluster

To install the new cluster, take the following steps:

1. Install the infrastructure on the new target cluster, by following the preparation and installation instructions, with the mention that, in this case, you need to skip the Completing the installation step.
2. If you use an in-cluster objectstore, you must install the required in-cluster objectstore for import, by running the following command:

./bin/uipathctl manifest apply /opt/UiPathAutomationSuite/cluster_config.json --override argocd --versions versions/helm-charts.json

You must complete the installation of the services only after migrating the data.

