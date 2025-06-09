# Failure after certificate update

# Description

This issue occurs when the certificate update step fails internally. You may not able to access Automation Suite or Orchestrator.

# Error

![dab0315-Screenshot_2021-10-01_at_9.43.39_PM=GUID-5385CBDC-2024-4818-8423-178C80BB44B5=1=en=Default](/images/dab0315-Screenshot_2021-10-01_at_9.43.39_PM=GUID-5385CBDC-2024-4818-8423-178C80BB44B5=1=en=Default.png)

# Solution

1. Run the following commands from any of the server node:export KUBECONFIG=/etc/rancher/rke2/rke2.yaml export PATH=$PATH:/var/lib/rancher/rke2/bin kubectl -n uipath rollout restart deployments
2. Wait for the previous command to succeed and then run the following command to verify the status of previous command.deployments=$(kubectl -n uipath get deployment -o name) for i in $deployments; do kubectl -n uipath rollout status "$i" -w --timeout=600s; if [[ "$?" -ne 0 ]]; then echo "$i deployment failed in namespace uipath." fi done echo "All deployments are succeeded in namespace uipath"

Once the previous command has finished executing, you should able to access Automation Suite and Orchestrator.
