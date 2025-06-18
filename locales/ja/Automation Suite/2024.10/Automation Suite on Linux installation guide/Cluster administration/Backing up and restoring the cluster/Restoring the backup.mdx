# Restoring the backup

Once a cluster is restored, the snapshot backup is not enabled. To enable it after restore, see Enabling the backup snapshot.Restoring the cluster does not restore external data sources such as SQL Server, objectstore, or the OCI-compliant registry. Make sure to restore these datasource to the relevant snapshot.

To restore the cluster, take the following steps:

1. Install the cluster infrastructure on all the server nodes. Details... The hardware you provide for the restore cluster must be similar to the backup cluster hardware. For details, see Hardware and software requirements.
2. Configure the snapshot on the restored cluster. Details...
3. Select the snapshot to restore. Details...
4. Restore the data and settings. Details...

### Step 1: Installing the cluster infrastructure




### Step 2: Preparing the cluster for restore

Once the infrastructure is installed, you need to prepare the cluster snapshot for restore. Based on your scenario, you must run the following commands:

* If you use an external objectore: ./bin/uipathctl manifest apply /opt/UiPathAutomationSuite/cluster_config.json --only velero --versions versions/helm-charts.json

* If you use an in-cluster ceph-objectstore: ./bin/uipathctl manifest apply /opt/UiPathAutomationSuite/cluster_config.json --only base,rook-ceph-operator,rook-ceph-object-store,velero --versions versions/helm-charts.json

To configure the backup of the restored cluster, follow the steps in the Configure the cluster snapshot section.


### Step 3: Selecting the snapshot to restore

After configuring the snapshot, list the existing snapshots and decide on the one you want to use as a restoring point.


### Step 4: Restoring data and settings

To restore to a previous cluster, provide the snapshot name you want to convert from using the --from-snapshot <snapshot-name> flag.

./bin/uipathctl snapshot restore create <restore_name> --from-snapshot <snapshot_name>

The command triggers the restore process in the background. To wait for command
            completion until the restore process is complete, pass the --wait
            option. To check the status of the restore process, run the following
            command:./bin/uipathctl snapshot restore history

If you do not specify the snapshot name, the cluster restores the latest successful snapshot. See the snapshot list for available snapshots.

