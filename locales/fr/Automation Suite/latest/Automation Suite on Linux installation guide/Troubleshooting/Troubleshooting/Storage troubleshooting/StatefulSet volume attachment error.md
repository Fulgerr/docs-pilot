# StatefulSet volume attachment error

Pods in RabbitMQ or cattle-monitoring-system or other StatefulSet pods are stuck in the init state.

# Description

Occasionally, upon node power failure or during upgrade, an issue causes the pods in RabbitMQ or cattle-monitoring-system to get stuck in init state as the volume required for attaching the PVC to a pod is missing.

Verify if the problem is indeed related to the StatefulSet volume attachment by running the following command:

kubectl -n <namespace> describe pod <pod-name> | grep "cannot get resource \"volumeattachments\" in API group \" storage.k8s.io\""

If it is related to the StatefulSet volume attachment, it will show an error message.

# Solution

To fix this issue, reboot the node.
