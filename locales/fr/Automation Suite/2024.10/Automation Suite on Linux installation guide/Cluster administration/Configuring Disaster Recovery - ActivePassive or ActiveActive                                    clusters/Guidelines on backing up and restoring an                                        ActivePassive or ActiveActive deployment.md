# Guidelines on backing up and restoring an
                                        Active/Passive or Active/Active deployment

For detailed instructions on how to back up and restore Automation Suite, see Backing up and
                    restoring the cluster.

# Backing up the cluster

* You must back up only the primary cluster and external storage (SQL and Objectstore).
* It is not mandatory to take a backup of the secondary cluster. Instead, you can choose to take a backup of the secondary. However, you can still use the primary cluster to set up the secondary cluster.

# Restoring the primary cluster

If the primary cluster goes down, you must use the backup to restore it.If you applied a new configuration on the secondary cluster while the primary cluster is down,
                                                  then at the time of the restore, you can reuse the
                                                  cluster_config.json file of the
                                                  secondary cluster and update the critical
                                                  parameter, which is very specific to the primary
                                                  cluster, and then you can restore the cluster.

# Restoring the secondary cluster

If the secondary cluster’s backup is unavailable, you can restore it from the primary cluster by taking the following steps:Generate the cluster_config.json from the primary
                                                  cluster.Update the cluster_config.json with the specific value of
                                                  the secondary cluster.Install the secondary cluster.If the backup for the secondary cluster is available, you can restore the secondary cluster from the backup.
