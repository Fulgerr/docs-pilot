# Guidelines on upgrading an
            Active/Passive or Active/Active deployment

For step-by-step instructions, see Upgrading
                    Automation Suite.

# Execution steps

A successful upgrade requires that both clusters are on the same version. To upgrade the clusters, you must follow the standard upgrade procedure of the standalone Automation Suite cluster, individually for each clusters.

You must take the following high-level steps on each cluster separately:

1. Hydrate the Docker registry for both clusters.
2. Enable the backup of the primary cluster. Optionally, you can also enable the backup for the secondary cluster.
3. Put both clusters into maintenance mode.
4. Upgrade both the cluster individually
5. Disable the maintenance mode once the upgrade is a success.

# Rollback on error

Primary cluster recovery - you must use the backup to restore the Automation Suite cluster.Secondary cluster recovery - you can either use the backup to restore the data if you enabled it before the upgrade, or you can choose to build the new secondary cluster from the primary. The steps here will remain the same as adding a new secondary Automation Suite cluster.
