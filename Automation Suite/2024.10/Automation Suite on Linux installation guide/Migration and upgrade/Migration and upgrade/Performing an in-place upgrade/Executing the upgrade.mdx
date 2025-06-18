# Executing the upgrade

To perform an Automation Suite upgrade, you must put the cluster in maintenance mode. Maintenance mode causes downtime during the entire upgrade process, and your business automation is suspended during this time.It is strongly recommended to create a backup of the cluster and the SQL database before the upgrade. This is to ensure you can restore the cluster if something goes wrong during the upgrade operation.

### Running the prerequisite checks

You must verify that all the upgrade requirements are met before you put the cluster in maintenance mode.

Run the infrastructure prerequisite checks, using the following command:cd /opt/UiPathAutomationSuite/latest/installer
./bin/uipathctl rke2 prereq run cluster_config.json --versions versions/helm-charts.jsonRun the shared component and services prerequisite checks, using the following command:cd /opt/UiPathAutomationSuite/latest/installer
./bin/uipathctl prereq run cluster_config.json --versions versions/helm-charts.json


### Configuring the backup

To configure the backup, take the following steps:

Make sure you enabled the backup on the cluster. You must create the backup using the same version of the installer as the one you used for the current deployment. For instructions, see the backup and restore documentation corresponding to the Automation Suite version from which you plan to upgrade. For instance, if you plan to upgrade from Automation Suite 2023.4, follow the instructions in the 2023.4 guide.Connect to one of the server nodes via SSH.Verify that all desired volumes have backups in the cluster:If you upgrade from 2022.4 or older, run the following command:/path/to/old-installer/configureUiPathAS.sh verify-volumes-backupIf you upgrade from 2022.10 or newer, run the following command:./configureUiPathAS.sh snapshot listIf you upgrade from 2024.10 or newer, run the following command:./bin/uipathctl snapshot listThe backup might take some time, so wait for approximately 15-20 minutes, and then verify the volumes backup again.

Once the backup is created, continue with the following steps.Make sure you use the uipathctl command from the target version directory when you upgrade from 23.10.0 or later versions.


### Disabling the backup

Before you place the cluster in the maintenance mode, you must disable the backup to avoid
      backing up the cluster in a suboptimal state. For details, see Disabling the snapshot backup.

If you have enabled the
        backup and you are upgrading to 2024.10.1 or 2024.10.2, then make sure you follow the steps
        described in the 
        page.


### Putting the cluster in maintenance mode

Putting the cluster in maintenance mode shuts down the ingress controller and all the UiPath® services, blocking all the incoming traffic to the Automation Suite cluster.

To put the cluster in maintenance mode, run:./bin/uipathctl cluster maintenance enableTo verify that the cluster is in maintenance mode, run:./bin/uipathctl cluster maintenance is-enabled


### Migrating Longhorn workloads, MongoDB data, and Ceph to Helm-based deployment

If you upgrade from Automation Suite 2024.10.0 to Automation Suite 2024.10.1, before running the pre-upgrade command, you must take additional steps. For details, see to the Troubleshooting section.

Run the following mandatory pre-upgrade command:

./bin/uipathctl cluster pre-upgrade cluster_config.json --versions-dir ./versions

This command selectively migrates Longhorn workloads to local PV, MongoDB data to SQL, and migrates the Ceph deployment from ArgoCD to a Helm-based deployment.


### Updating Kubernetes and other infrastructure components

To upgrade Kubernetes and the other infrastructure components, run the following command on the primary server node:Make sure you updated the generated cluster_config.json file as described in Updating the cluster configuration.cd /opt/UiPathAutomationSuite/latest/installer

./bin/uipathctl rke2 upgrade cluster_config.json --versions versions/helm-charts.json

Running the previous command on the primary server node copies the installer and cluster_config.json to the /opt/UiPathAutomationSuite/<version>/installer default location and upgrades the infrastructure on all the machines.The /opt/UiPathAutomationSuite/<version> default location must have at least 5 GB available across all nodes.To change the default location, update the following environment variable with the desired location. Make sure that the location is available on all the nodes and has the required permissions to run the upgrade.export INSTALLER_DIRECTORY=/path/to/copy/installerAfter executing the previous command and running the upgrade, the installer is copied to the /path/to/copy/installer/<version>/installer location. version is replaced with the version of the installer that you execute.TroubleshootingThe upgrade logs on the primary server are available in the /opt/UiPathAutomationSuite/latest/installer/upgrade-logs default location, unless you explicitly used a custom location for the installer.On all the other nodes, the logs are available in the /opt/UiPathAutomationSuite/<version>/installer/upgrade-logs default location, unless you explicitly changed this location via the INSTALLER_DIRECTORY variable.


### Installing the shared components and UiPath® services

If you have Insights enabled, you must run the following command to ensure that the Insights data persists after the upgrade:kubectl -n uipath create cm migration-lock --from-literal=migration=pending --dry-run=client -o yaml | kubectl apply -f -Running this command will not have any adverse impact if Insights is not enabled.To install the shared components and the UiPath® product services, run the following command on the primary server node:cd /opt/UiPathAutomationSuite/latest/installer
./bin/uipathctl manifest apply cluster_config.json --versions versions/helm-charts.jsonAfter completing the upgrade, maintenance mode is disabled automatically.To verify if Automation Suite is healthy, run one of the following commands:cd /opt/UiPathAutomationSuite/latest/installer
./bin/uipathctl health checkIf you cannot find helm-charts.json, you can alternatively use versions.json. To download versions.json, see Downloading the installation packages.

After completing the upgrade, perform the cleanup and migration activity applicable to you.

