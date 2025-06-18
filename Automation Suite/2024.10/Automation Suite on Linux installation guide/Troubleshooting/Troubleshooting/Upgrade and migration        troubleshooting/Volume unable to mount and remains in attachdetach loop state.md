# Volume unable to mount and remains in attach/detach loop state

# Description

Due to a Longhorn bug, the race condition causes the replica size to expand. To check if the volume faces this issue, look for the following error in the Longhorn manager logs:

--  9776:2023-10-12T00:17:01.290911721Z [pvc-1f5d7c52-819a-4d4a-ac36-4f42541bdd25-e-41a36772] time="2023-10-12T00:17:01Z" level=info msg="Creating volume pvc-1f5d7c52-819a-4d4a-ac36-4f42541bdd25 controller with iSCSI target request timeout 15s and engine to replica(s) timeout 8s" 9777:2023-10-12T00:17:01.298832774Z [pvc-1f5d7c52-819a-4d4a-ac36-4f42541bdd25-e-41a36772] time="2023-10-12T00:17:01Z" level=info msg="Starting with replicas [\"tcp://10.42.2.132:10015\"]" 9780:2023-10-12T00:17:01.322556233Z [pvc-1f5d7c52-819a-4d4a-ac36-4f42541bdd25-e-41a36772] time="2023-10-12T00:17:01Z" level=warning msg="Backend tcp://10.42.2.132:10015 size does not match 3221225472 != 16106127360 in the engine initiation phase" 9782:2023-10-12T00:17:01.330974089Z [pvc-1f5d7c52-819a-4d4a-ac36-4f42541bdd25-e-41a36772] time="2023-10-12T00:17:01Z" level=error msg="no available backend due to replica error from the addresses [tcp://10.42.2.132:10015]"  ---

Alternatively, check if the volume shows in expansion state in the Longhorn UI.

# Solution

To fix this issue, take the following steps:

1. Scale down the application/workload pod.
2. Expand the PVC to the size of the replica.
3. Scale up the application/workload pod.
