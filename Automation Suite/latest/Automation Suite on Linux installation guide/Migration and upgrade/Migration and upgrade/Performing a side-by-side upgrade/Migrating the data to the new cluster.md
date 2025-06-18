# Migrating the data to the new cluster

# Offline only

1. Hydrate the docker registry running on the source cluster with the bundle corresponding to the version to which you plan to upgrade. Make sure to download as.tar.gz on the server machine of the source cluster where you attached the UiPath® bundle disk on the /uipath mount point. The preferred location is /uipath/<new_version>/as.tar.gz.
2. Create a temporary location to untar the bundle.mkdir -p /uipath/tmp
3. Hydrate the source cluster docker registry with the latest offline bundle../bin/uipathctl registry upload --offline-bundle /uipath/<new_version>/as.tar.gz --offline-tmp-folder /uipath/tmp

You can run the data migration script before putting the cluster in maintenance mode to reduce the migration time during the downtime period.

# Cloning your source cluster databases

You can allow the installer to create the new databases with the default names during the shared components and services installation. For details, see Configuring the Microsoft SQL Server.If your database names are different, you must delete the databases created by the installer, copy the databases from the source SQL Server to the new SQL Server, and retain the database names.If you choose to change the name of the database in the new SQL Server, you must carefully edit the cluster_config.json file for each product you install.

1. Make sure to get the new installer on your source cluster to migrate the data to the new target cluster. Follow the steps in Downloading the installation packages and getting them on the machines on the one of the server nodes of the source cluster from where you plan to trigger the migration.
2. Put the source cluster in maintenance mode:./bin/uipathctl cluster maintenance enableDowntime starts now.
3. Copy your databases to the target cluster using your preferred method. For example, you could use the Copy Database Wizard.

# Cloning your source cluster data

1. Get the target_kubeconfig file of the target cluster to perform the data migration by running the following command:./bin/uipathctl config kubeconfig get --migrationThe target_kubeconfig file is required to fetch the information of the target in-cluster objectstore and perform the data copy needed for the target version.
2. Copy the file generated to the source cluster. You will need to use this file during the data migration.
3. Copy the data from source cluster to the target cluster by running the data migration script on the source cluster.cd /opt/UiPathAutomationSuite/<new_version>/installer ./bin/uipathctl cluster migration run cluster_config.json --target-kubeconfig <target_kubeconfig> --versions versions/helm-chart.jsonThe previous migration command is idempotent. If the command fails in between due to network connectivity, you can re-run it, and it will continue the migration process from where it was left off.Optionally, you can perform a differential sync of the data migration by running the migration command again.If the cluster is using in-cluster objectstore (Ceph) and if you have opted for Side-by-side upgrade (single node start), then the migration command might fail in the CEPH_SPACE_VALIDATION prerequisite check.This happens because the source cluster has three replicas of data and the target cluster is non-HA with single node. You can skip the pre-requisite check in this case:./bin/uipathctl cluster migration run cluster_config.json --target-kubeconfig <target_kubeconfig> --versions versions/helm-chart.json --skip-pre-reqs
4. If you use an external objectstore in the source cluster, clone the objectstore buckets.
