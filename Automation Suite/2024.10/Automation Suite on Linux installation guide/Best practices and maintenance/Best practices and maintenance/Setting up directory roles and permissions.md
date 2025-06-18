# Setting up directory roles and permissions

To grant permissions to a specific admin or regular user to access the Kubernetes cluster and RKE2 file, you must update the sudoers file with the required settings.

The following section provides details on the files to which you must grant access to the admin or regular user.

* /var/lib/rancher/rke2/bin/kubectl executable requires sudo access to operate on cluster resources. To grant the required permissions to the executable without a password, update the sudoers file accordingly. For details, see the following configuration sample: USERNAME ALL = NOPASSWD: /var/lib/rancher/rke2/bin/kubectl
* /etc/rancher/rke2/ stores the following files required to configure or access the cluster: /etc/rancher/rke2/config.yaml file used to configure the cluster. The default permission for this file is -rw-r--r-- . To allow users to modify /etc/rancher/rke2/config.yaml, update the sudoers file accordingly. For details, see the following configuration sample:USERNAME ALL=NOPASSWD: /usr/local/bin/vim /etc/rancher/rke2/config.yaml/etc/rancher/rke2/rke2.yaml file used along with the kubectlcommand to operate on the cluster. The default permission for this file is -rw-------. To allow users to operate on the cluster, update the sudoers file accordingly. For details, see the following configuration sample:Defaults!/var/lib/rancher/rke2/bin/kubectl env_keep += KUBECONFIG/etc/rancher/rke2/registries.yaml file required to configure the registry for the cluster. The default permission for this file is -rw-r--r--. To allow users to modify /etc/rancher/rke2/registries.yaml, update the sudoers file accordingly. For details, see the following configuration sample:USERNAME ALL=NOPASSWD: /usr/local/bin/vim /etc/rancher/rke2/registries.yaml
* /var/lib/rancher/rke2/ directory stores the cluster related data, which includes kubelet logs, containerized data, static pod configuration files, RKE2 certificates, and etcd data. Admins may be required to read the file and check the size of the directory. To do this, you must give the required permissions to the ls, cat, and du commands. For details, see the following configuration sample: USERNAME ALL=NOPASSWD: /usr/bin/ls /var/lib/rancher/rke2/*
USERNAME ALL=NOPASSWD: /usr/bin/cat /var/lib/rancher/rke2/*
USERNAME ALL=NOPASSWD: /usr/bin/du /var/lib/rancher/rke2/*

For maintenance purposes, we recommend creating a separate file under the /etc/sudoers.d/ directory with the configuration described on this page.
