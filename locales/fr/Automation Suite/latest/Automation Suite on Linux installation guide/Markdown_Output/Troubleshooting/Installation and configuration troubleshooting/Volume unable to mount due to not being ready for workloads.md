# Volume unable to mount due to not being ready for workloads

# Description

Due to a node reboot or a restart of the Longhorn management pods, the volume occasionally fails to complete the sync loop. This causes the volume to become unready for the new workload. Due to this issue, the underlying replica runs into a faulted state and requires a salvage operation to become ready. Although Longhorn has autoSalvage enabled, sometimes the replica is not salvaged and requires manual intervention.

To verify if this issue causes the failure in the volume attachment, check if the Longhorn manager logs contain the following error:

level=info msg="All replicas are failed, set engine salvageRequested to true" accessMode=rwo controller=longhorn-volume frontend=blockdev migratable=false node=agent0 owner=agent0 state=detached volume=pvc-49b22fef-772e-4c1f-b9eb-6bc15e7addbb
    level=warning msg="Cannot auto salvage volume: no data exists" accessMode=rwo controller=longhorn-volume frontend=blockdev migratable=false node=agent0 owner=agent0 state=detached volume=pvc-49b22fef-772e-4c1f-b9eb-6bc15e7addbb

# Solution

To fix this issue, take the following steps:

1. Scale down the impacted workload.
2. Trigger the salvage operation from the Longhorn UI. If this does not help, you can edit the relevant replica.longhorn.io resource and set failedAt to empty.
3. Scale up the impacted workload.
