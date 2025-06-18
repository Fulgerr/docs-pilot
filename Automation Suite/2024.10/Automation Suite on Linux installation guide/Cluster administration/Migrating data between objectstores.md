# Migrating data between objectstores

You may need to migrate your Objectstore data if you want to perform any of the following operations:

* Take a one-time backup of the data from the Objectstore;
* Migrate the Objectstore data from one Automation Suite cluster to another.

## Requirements

Before starting the Objectstore data migration, make sure you meet the following requirements:

* You have downloaded the following files: objectstore-migration.sh migration script. For download instructions, see objectstore-migration.sh. automation-suite-util.tar.gz utility tarball. For download instructions, see automation-suite-util.tar.gz.
* You have temporary storage, required to download and upload to the Objectstore. The size of the temporary storage depends on the size of the data stored in the Objectstore. To identify the required storage size, run the following command on any server node: object_size=$(kubectl -n rook-ceph exec deploy/rook-ceph-tools -- ceph status --format json | jq -r '.pgmap.data_bytes')
echo "You need '$(numfmt --to=iec-i $object_size)' storage space"


## Preparing for an offline installation

The instructions in this section are applicable only if your Automation Suite setup is offline.You may have to perform these steps on both the machine from where you download and the one where you upload the Objectstore data.Take the following steps on any of the server nodes with root access.

Log in to the private docker registry in the offline installation:dpr_username=$(grep -m1 'username:' /etc/rancher/rke2/registries.yaml | awk -F 'username:' '{print $2}' | tr -d ' ')
dpr_password=$(grep -m1 'password:' /etc/rancher/rke2/registries.yaml | awk -F 'password:' '{print $2}' | tr -d ' ')

podman login localhost:30071 --username ${dpr_username} --password ${dpr_password} --tls-verify=falsePush the utility tarball to the private docker registry:Make sure you have copied the utility tarball to the server node, and navigate to its location.Extract and upload the image to a private docker registry by running the following command:gzip -dk -c automation-suite-util.tar.gz > sf-k8-utils-rhel_24_10_2.tar
podman load -i sf-k8-utils-rhel_24_10_2.tar
podman push --tls-verify=false localhost:30071/uipath/sf-k8-utils-rhel:24.10.2


## Downloading the data from the objectstore

Make sure you have available storage space on the server node to take the Objectstore backup before proceeding with the following steps.

Copy the objectstore-migration.sh script to the server node where you have identified the available storage to take the backup.Navigate to the folder where you have copied the migration script. Back up the Objectstore data by running the following command:Before running the main script, make sure to provide the absolute folder path where the backup data will be stored. Use the CEPH_BACKUP_PATH variable to specify the path.export CEPH_BACKUP_PATH=/ceph/backup/path # please replace /ceph/backup/path with the path where you want to take the backup
export CEPH_OPERATION=backup 
./objectstore-migration.shIf the backup is successful, you should see the following output:job.batch/ceph-objectstore-ondemand-backup-job created
job.batch/ceph-objectstore-ondemand-backup-job condition met


## Uploading the data to the objectstore

If you upload the data to a different Automation Suite Objectstore, make sure that the data backed up in the previous section is available on any server node. You can either mount the disk on the new cluster’s server node, or you can also transfer the data by any other means you may prefer.To upload the data to the Objectstore, take the following steps:

Copy the objectstore-migration.sh script to the server node where you have identified the available storage to take the backup.Navigate to the folder where you have copied the migration script. Upload the data to the Objectstore by running the following command:Before running the main script, make sure to provide the absolute folder path where the backup data will be copied to the Objectstore. Use the CEPH_BACKUP_PATH variable to specify the path.export CEPH_BACKUP_PATH=/ceph/backup/path 
export CEPH_OPERATION=restore
export CEPH_RESTORE_CLEAN=true # set this to false to allow restore without deleting existing data
./objectstore-migration.shIf the upload is successful, you should see the following output:job.batch/ceph-objectstore-ondemand-restore-job created
job.batch/ceph-objectstore-ondemand-restore-job condition met

