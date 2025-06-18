# How to schedule Ceph backup and restore data

For configurations using a single-node RKE2 setup with in-cluster storage, a prerequisite check validates that you have provisioned a minimum 512 GB additional disk to store Ceph data backups.

To partition the disk for Ceph backup, use the following command and replace the <disk-name> with your disk name:

uipathctl rke2 disk --backup-disk-name <disk-name>

The following procedures ensure that you have a reliable backup and restore process for your Ceph storage in a single-node RKE2 cluster setup.

### Scheduling hourly Ceph backups

After the disk partition, you must take the following steps to configure a CronJob that backs up data to the specified disk every hour.

Grant permissions to backup directory so backup pod can write data to it, by using the following command:chown 65534:65534 /backupNavigate to the backup directory, by using the following command:cd Scripts/24.10/ceph-singlenode-backup/backupEdit the values.yaml file to configure the container registry according to your setup.Install the backup Helm chart, by using the following command:helm install ceph-backup . -n rook-ceph

This way you deploy the backup CronJob, which handles the periodic backup of your Ceph data to the specified disk.

If you encounter an error message related to helm not being found, use the following command:/opt/UiPathAutomationSuite/UipathInstaller/bin/helm install ceph-backup . -n rook-ceph


### Restoring Ceph backup data

To restore data from the Ceph backup, take the following steps:

Navigate to the restore directory, by using the following command:cd Scripts/24.10/ceph-singlenode-backup/restoreEdit the image attribute in the objectstore-restore-jobs.yaml file to use the correct container registry according to your setup.Apply the restore job, by using the following command:kubectl apply -f objectstore-restore-jobs.yamlMonitor the progress of the restore operation by checking the logs of the restore job, by using the following command:kubectl logs job/restore-objectstore-job -n rook-ceph

