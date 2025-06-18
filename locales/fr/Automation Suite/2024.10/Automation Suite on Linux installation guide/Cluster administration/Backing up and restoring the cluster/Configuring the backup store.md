# Configuring the backup store


### Providing the backup store configuration

To back up and restore your cluster, you must provide the location of the cluster snapshots to the Automation Suite cluster via cluster_config.json.

Make the following changes to your cluster_config.json before enabling a scheduled backup or taking an on-demand backup.

You can provide this information during the installation of the Automation Suite cluster or later, as a post-installation operation, while enabling or taking the backup of the cluster.

# cluster_config.json example

cluster_config.json sample

{
 //... cluster_config.json
  "snapshot": {
    "enabled": true,
    "nfs": {
      "server": "nfs_server_endpoint",
      "location": "nfs_server_mountpoint"
    }
  }
}cluster_config.json parameters

KeyValueserverThe FQDN or the IP address of the snapshot storage location (such as mynfs.mycompany.com or 192.23.222.81).locationNFS Server path, which is the mount path created according to the instructions
                    in . Make
                    sure that it has sufficient permissions and that the directory structure already
                    exists.Make sure that the NFS server is reachable from all nodes.As part of the next step, uipathctl mounts this path automatically. You
                          do not need to mount this path manually.


### Applying the backup store configuration

After making the changes to the cluster_config.json, as described in the previous section, run the following command to apply the configuration:

./bin/uipathctl manifest apply cluster_config.json --only velero,rke2-backup-hook --versions versions/helm-charts.json

