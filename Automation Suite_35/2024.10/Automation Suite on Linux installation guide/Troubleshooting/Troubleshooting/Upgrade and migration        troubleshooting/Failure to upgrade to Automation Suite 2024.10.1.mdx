# Failure to upgrade to Automation Suite 2024.10.1

# Description

The upgrade from Automation Suite 2024.10.0 to Automation Suite 2024.10.1 can fail due to an issue related to the upgrade-journal configmap.

# Solution

To address the issue, you must delete the upgrade-journal configmap by running the following commands:

You must run this command a single time. If you run it multiple times, it can potentially place the cluster in an inconsistent state.

# If upgrade-journal cm present in the cluster
cm=$(kubectl -n kube-system get configmap upgrade-journal --ignore-not-found)
if [[ -n "${cm}" ]]; then
  echo "upgrade-journal cm present in the cluster, deleting it"
  ### Create a back of configmap
  kubectl -n kube-system get configmap upgrade-journal -oyaml > upgrade-journal-bk.yaml
  ### Delete configmap
  kubectl -n kube-system delete configmap upgrade-journal
else
 echo "upgrade-journal cm not present in the cluster, proceed with the upgrade"
fi
