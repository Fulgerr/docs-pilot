# Upgrade fails due to overridden Insights PVC sizes

# Description

The upgrade can fail due to an issue where existing insights PVC sizes get overridden during the process. This issue occures due to unexpected changes to the PVC sizes that are not correctly reflected during the upgrade.

# Solution

To address the problem, you must manually change the PVC sizes in ArgoCD UI:

1. In the ArgoCU UI, select Insights.
2. From the upper-left corner, select the Details button and then select the Parameters tab.
3. From the upper-right corner, select the Edit button and update the size parameter under insightslooker.insightslooker.persistence according to your deployed PVC size.To retrieve the correct size of insights-looker-lookerdir-pvc, run the following command:kubectl get pvc -n uipath insights-looker-lookerdir-pvc -o json |jq -r .status.capacity.storageTo retrieve the correct size of insights-looker-datadir-pvc, run the following command:kubectl get pvc -n uipath insights-looker-datadir-pvc -o json |jq -r .status.capacity.storage
4. After you update the VALUES field, select the SAVE button and sync Insights.
