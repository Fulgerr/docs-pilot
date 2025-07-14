# Step 7: Configuring the disks

Before performing an Automation Suite installation, you must partition and configure the
            disk using LVM, so that you can alter its size easily and without any data migration or
            data loss.

# Partitioning the disks

The
                default partitioning structure on RHEL machines is not suitable for installing
                Kubernetes. This is because the Kubernetes infrastructure is usually installed under
                the /var partition, which is allocated only 8 GB of space by
                default.

The supported format for the
                        disks is ext4 or xfs.You must create all
                        partitions using LVM to ensure that the cluster data can reside on a
                        different disk but still be viewed coherently. This also helps extend the
                        partition size in the future without the risk of data migration or
                        loss.All the pods and application
                        logs are stored under the /var/log/pods directory. Make
                        sure that the capacity of this directory is at least 8 GB. We also recommend
                        configuring logrotate to rotate the logs at an interval
                        ranging from daily to weekly.If you use a single-node
                            RKE2 setup with in-cluster storage, it is mandatory to provide at least
                            an additional 512 GB of disk space for the storage of Ceph data backups.
                            For details, see How to schedule
                                Ceph backup and restore data.

The disk requirements for online and offline installations are the
                same, except for the extra space needed to unpack the offline UiPath®
                bundle.

For the RHEL OS, make sure you have the following minimum mount point
                sizes on the machine.

Disk
                                    labelServerAgentPartitionSizePurposeCluster diskIf you enable Document
                                            Understanding modern projects, the minimum size is
                                                400 GB. /var/lib/rancher190 GBStores the container images and layers./var/lib/kubelet56 GBStores runtime Kubernetes configurations such as
                                        secrets, configmaps, and emptyDir./opt/UiPathAutomationSuite10 GBStores the installer binary.etcd
                                        disk/var/lib/rancher/rke2/server/db16 GBStores the distributed database for
                                    KubernetesData disk/datadisk/insights15 GBRequired for Insights./datadisk/monitoring50 GBRequired for the monitoring tools./datadisk/registry1200 GBRequired for the Docker registry./datadisk/objectstore210 GBRequired for ceph-mon.Objectstore2N/A512
                                        GBRequired for in-cluster objectstore.AI
                                            Center3N/A51 GB minimum and 105 GB recommended
                                        for 1 training pipeline.Required only if you install AI Center.UiPath® bundle disk/uipath512
                                        GBRequired only for offline installations to store the
                                        offline bundleCeph
                                        backup/backup512
                                        GBRequired only for single-node RKE2 setup with in-cluster
                                    storage, to store Ceph data backups.1 This refers to the in-cluster Docker registry and is not
                applicable if you use an external registry.

2 This refers to the
                in-cluster objectstore and is not applicable if you use an external
                    objectstore.

3 This refers to the storage required by the AI
                Center training pipeline. The disk is required only on the machines on which you
                plan to run the AI Center training pipeline and on the dedicated Task Mining node.
                We recommend attaching this disk on the agent machines.

We recommend that you do not use
                    OS disk for any of the previous purposes, to ensure processes get their fair
                    share of resources.

## Using uipathctl to configure the disks

To configure and partition the disks, you must use uipathctl .

# Downloading uipathctl

uipathctl is a part of the as-installer.zip installation package. To use uipathctl, take the following steps:

1. Download as-installer.zip and save it to a temporary location. For the download instructions, see as-installer.zip.
2. Extract the contents by running the following command:unzip as-installer.zip -d installer

For details on how to use

uipathctl

to configure the disks, run the following command:

./bin/uipathctl rke2 disk --help


### Configuring the cluster disk on all the machines

To configure the cluster disk, run the following command on all the machines:

./bin/uipathctl rke2 disk --cluster-disk-name name_of_cluster_disk


### Configuring the etcd disk on all the server machines

To configure the etcd disk, run the following command on all the server machines:

./bin/uipathctl rke2 disk --etcd-disk-name name_of_etcd_disk


### Configuring the data disk on all the server machines

To configure the data disk, you must identify the specific disk to be used. Run the lsblk command to list all the block devices, their sizes, and mount points. Use the disk size to identify the relevant disk (for the --volume flag, the 512 GB data disk should be used).

Run the following command on all the server machines and provide the necessary flags based on your requirements:

./bin/uipathctl rke2 disk --volume name_of_data_disk


| Flag | Value |
| --- ---| -v|--volume | Disk name example: /dev/sdeYou need the disk name when partitioning the disks that host the various mounts for monitoring, Insights, objectstore, and registry.Providing the disk name is mandatory in the first-time configuration of the disk. If it is not provided during the subsequent run, then any existing disk associated with uipathdatavg is used to create the partition for the selected component. |
| --docker-registry | Optional. Only required if the external registry is not available. |
| --monitoring | Optional flag. The monitoring partition (Prometheus storage) is mandatory, so it is automatically created even if the flag is not specifically passed during the first run execution. However, the flag is required in the subsequent run, during the resize of the monitoring partition along with the --size flag. |
| --objectstore | Optional flag. Only required if the external objectstore is not available. When used, it also creates the datadisk partition required for ceph-mon. For details, see Partitioning the disks. |
| --insights | Optional flag. The Insights partition is automatically created even if the flag is not specifically passed during the first run execution. Insights storage configuration is required at infrastructure installation to allow you to enable Insights post-installation.However, the flag is required in the subsequent run, during the resize of the Insights partition along with the --size flag. |
| --size <int> | Optional. If the integer value is provided, the selected component is resized, provided that enough space is available. Otherwise, the entire disk is consumed to expand the selected partition. It is mandatory to indicate precisely one partition that must be resized.The --size option is not required during the disk configuration. It can be used after the configuration to extend the disk size. |
| --robot-package-cache | Path to the location on the Automation Suite Robots node to download the package for caching. This must be performed only on the Automation Suite Robots node. |

You can also use the command to resize the selected partition with the help of the --size flag, as shown in the following example:

./bin/uipathctl rke2 disk --docker-registry --size 300


### Configuring the objectstore disk on all the server machines

This step is only required if the external objectstore is not available.

You can add or expand your storage size for the in-cluster objectstore by running the following script on all server nodes:

./bin/uipathctl rke2 disk --ceph-raw-disk-name name_ceph_raw_disk

An Azure known issue incorrectly marks the Azure disk as non-SSD. If Azure is your cloud provider, and you want to configure the Objectstore disk, follow the instructions in Troubleshooting.Vertical scaling of the existing disks is not supported. To increase the size of your in-cluster storage post-installation, add new raw disks.


### Configuring the AI Center disk on selected machines

To configure the AI Center disk, run the following command on the machines where you plan to execute the training pipelines:

./bin/uipathctl rke2 disk --aicenter-disk-name name_of_aicenter_disk_to_partition

To extend the storage for AI Center:

* If you want to add a new AI Center disk, run the following command on the machine where you plan to add the disk: ./bin/uipathctl rke2 disk --aicenter-storage-extend name_of_new_aicenter_disk_to_attach
* If you have expanded the existing AI Center disk, run the following command on the machine where the underlying AI Center disk is expanded: ./bin/uipathctl rke2 disk --aicenter-storage-extend


### Configuring the hosting disk for the Automation Suite Robot package cache

This step is required for single-node setups without a dedicated Automation Suite Robot agent.

To host the Automation Suite Robot package cache on the server node, you need to create a disk of at least 10 GB:

./bin/uipathctl rke2 disk --volume name_of_data_disk --robot-package-cache

It is recommended that the disk is backed up by LVM.


### Configuring the bundle disk on the first server node for the in-cluster registry

This step is required in the following scenarios:

* When performing an offline (air-gapped) installation;
* When an external registry is not available.

To configure the bundle disk, run the following command only on the first server node:

./bin/uipathctl rke2 disk --bundle-disk-name name_of_bundle_disk


## Validating disk mounts

Make sure to add all mount points to the fstab file and to include the nofail option in those fstab entries so that it does not affect the VM boot in case of failure.

To validate that /etc/fstab is correctly configured and can handle a reboot of the system, take the following steps, run the following command:

mount -afv

You should get the following output:

/var/lib/rancher                  : already mounted
/var/lib/kubelet                  : already mounted
/opt/UiPathAutomationSuite        : already mounted
/datadisk/monitoring              : already mounted
/datadisk/insights                : already mounted
/var/lib/rancher/rke2/server/db   : already mounted
# Additional mount point is require if customer is installing offline with internal registry
/datadisk/registry                : already mounted
# Additional mount point is require if customer is using in-cluster objectstore
/datadisk/objectstore             : already mounted

