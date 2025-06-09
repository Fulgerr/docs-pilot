# Migrating objectstore from persistent volume to raw disks

The following instructions are applicable only if you upgraded from Automation Suite 2021.10 or 2022.4.

In Automation Suite releases prior to 2022.10, Ceph in-cluster objectstore depended on the persistent volume for storage. The persistent volume is carved out of the /datadisk attached to all server nodes. To provide High Availability, this configuration has a replication overhead of 18x.

Starting with Automation Suite 2022.10, Ceph needs its disk attached to each server node. With a dedicated disk for Ceph, the overall replication factor for storage decreased 18x to 3x.

To take advantage of the storage optimizations, you must perform the following steps.

## Configuring the Ceph disk

After attaching the new disk on all server nodes, you must configure it with Ceph objectstore.

For instructions, see Configuring the objectstore disk.


## Migrating Ceph data from /datadisk to raw disk




### Execution

# Untitled Section

To migrate Ceph data, run the following command on any of the server nodes:

./bin/uipathctl manifest apply cluster_config.json --versions versions/helm-charts.json


### Verifying the migration status

The migration job might take some time to complete. Once finished, you can check the migration status by running the following command:

kubectl -n rook-ceph get pod -l portable=true

Migration is successful when the command outputs zero pods.

