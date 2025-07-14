# snapshot-controller-crds pod in CrashLoopBackOff state after upgrade

# Description

During an RKE2 upgrade, the newly installed snapshot-controller conflicts with the pre-existing snapshot-controller. As a result, the installation pod for snapshot-controller-crds enters a CrashLoopBackOff state.

# Solution

To fix this issue, take the following steps:

1. Update the /etc/rancher/rke2/config.yaml file with the following details on all server nodes:disable: - rke2-ingress-nginx - rke2-snapshot-controller - rke2-snapshot-controller-crd - rke2-snapshot-validation-webhook
2. Restart the rke2-server using the following command:systemctl restart rke2-server.service
3. Run the following commands to clean up the existing snapshot controller pods:to clean up the snapshot-controller-crd installation job:kubectl delete jobs -n kube-system helm-delete-rke2-snapshot-controller-crd --ignore-not-foundto clean up the snapshot-controller installation job:kubectl delete jobs -n kube-system helm-install-rke2-snapshot-controller --ignore-not-foundto clean up the snapshot-controller deployments:kubectl delete deploy -n kube-system snapshot-controller, rke2-snapshot-controller --ignore-not-found
