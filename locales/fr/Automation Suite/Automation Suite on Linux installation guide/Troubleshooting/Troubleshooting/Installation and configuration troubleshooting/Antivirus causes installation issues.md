# Antivirus causes installation issues

# Description

Using an antivirus results in an Automation Suite installation issue.

# Solution

If your antivirus application leads to issues, it's recommended to raise a support ticket with the antivirus provider.

You can also consider the following actions:

* You can include the following folders in the antivirus allowlist:/var/lib/rancher /var/lib/kubelet /opt/UiPathAutomationSuite /datadisk /var/lib/rancher/rke2/server/db /run/k3s /var/lib/rook /var/lib/rancher/rke2 /etc/rancher/rke2 /tmp /run/containerd /var/run /var/lib/containerd /var/log/pods /var/log/containers /etc/cni /opt/cni /sys /procThe exclusion applied to these folders must be recursive.

* You can include the following list of processes/services in the antivirus allowlist:rke2-server # For control-plane nodes rke2-agent # For worker nodes containerd kubelet etcd kube-apiserver kube-controller-manager kube-scheduler containerd runc ctr

* You can include the following list of ports in the antivirus allowlist:6443 Kubernetes API server 9345 RKE2 supervisor (node registration) 2379-2380 etcd (control-plane nodes only) 8472/udp VXLAN overlay network 10250 Kubelet API (metrics, logs, exec)

Make sure that these exclusions are persisted across node reboots.
