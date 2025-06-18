# Node removal failure due to incorrect scaling operation naming

# Description

After a node removal, an attempt is made to scale up the Prometheus operator. However, due to a misnaming error, the scale-up command fails with an error: no objects passed to scale message.

# Solution

To address the issue, you must manually scale up the operator using the following command:

kubectl -n monitoring scale --replicas=1 deploy/monitoring-kube-prometheus-operator

For future node removals, make sure to use the correct Prometheus operator name. You must edit the node removal script by running the following command from the installer directory:

sed -i 's/rancher-monitoring-operator/monitoring-kube-prometheus-operator/g' Modules/graceful-node-removal.sh
