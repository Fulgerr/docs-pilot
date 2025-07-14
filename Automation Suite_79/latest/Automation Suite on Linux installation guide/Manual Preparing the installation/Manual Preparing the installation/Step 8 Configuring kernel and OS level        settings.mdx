# Step 8: Configuring kernel and OS level
        settings

This page describes the OS and the kernel settings, which a Linux administratormust perform before performing an Automation Suite installation.

Usually, these settings are managed via deployment tools such as Puppet, Ansible, etc. Make sure that these changes are made via the control process of your environment to prevent them from being reverted later.

Make sure to complete the following steps before starting the installation, as misconfigurations at the OS and kernel level can lead to non-intuitive errors. Checking these specific settings can often avoid such errors.

## Disabling swap memory

You must disable swap memory before installing Automation Suite. Swap
                        memory is known to cause issues with container workloads. Additionally,
                        Automation Suite workloads do not benefit from using swap memory, and
                        Kubernetes already optimizes memory usage.


## Configuring sysctl settings

The following sysctl settings are required on the machine:

* enable IP forwarding
* disable reverse path filtering

You can do this by running the following command:

cat <<EOF >>"/etc/sysctl.d/99-sysctl.conf"
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
net.bridge.bridge-nf-call-ip6tables = 1
net.ipv4.conf.all.rp_filter=0
EOF

The nf-call-iptables is needed for most Kubernetes deployments. Kubernetes creates virtual networks internal to the cluster. This allows every pod to have its own IP address, which is used in conjunction with the internal name services to facilitate service-to-service communication. The cluster does not work without nf-call-iptables enabled. For details, see the official Kubernetes documentation.

To apply the settings, run the following command:

sysctl --system


## Configuring fapolicy settings

This step is optional and applies only if you use fapolicy. In this case, an RKE2 specific policy is required.

To generate the RKE2 policy, use the following command:

cat <<-EOF >>"/etc/fapolicyd/rules.d/69-rke2.rules"
allow perm=any all : dir=/var/lib/rancher/
allow perm=any all : dir=/opt/cni/
allow perm=any all : dir=/run/k3s/
allow perm=any all : dir=/var/lib/kubelet/
allow perm=any all : dir=/root/.local/share/helm
EOF

Ensure that the change is communicated to your Linux team and goes through the appropriate configuration management processes.


## Configuring noexec and nosuid settings

The disks used for the /var/lib/rancher mount must not have noexec or nosuid set. The uipathctl rke2 disk command automatically creates these mounts without these properties.

If a Linux administrator manually sets these properties, the instance becomes non-functional.

For more details on disk configuration, see .

