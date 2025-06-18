# MongoDB pods in CrashLoopBackOff or pending PVC provisioning after deletion

The MongoDB pods might get stuck in CrashLoopBackOff due to a corrupt PVC. The most probable cause of this issue is an unclean shutdown.

When experiencing this issue, the logs show the following:

Common point must be at least stable timestamp
{"t":{"$date":"2022-05-18T09:37:55.053+00:00"},"s":"W",  "c":"STORAGE",  "id":22271,   "ctx":"initandlisten","msg":"Detected unclean shutdown - Lock file is not empty","attr":{"lockFile":"/data/mongod.lock"}}
    ['currentState.Running' = false]
    ['currentState.IsVCRedistCorrect' = true]
    ['desiredState.ProcessType' != mongos ('desiredState.ProcessType' = mongod)]

# Recovery steps

1. Delete the failing pod. If this solution does not work, continue to the next steps.kubectl delete pod <pod-name> -n mongodb
2. Get the name of the corrupt PVC for the failing pods. kubectl -n mongodb get pvc
3. Delete the PVC for the failing pod.kubectl -n mongodb delete pvc <pvc-name>At this point, the PVC should be auto-synced, and the pod should experience no issues anymore. If auto-provisioning does not happen, you need to perform the operation manually by taking the following steps.
4. Get the PVC YAML for a healthy node.kubectl -n mongodb get pvc <pvc-name> -o yaml > pvc.yaml
5. Edit the name and remove uuids/pvc-ids from the YAML.
6. Remove the volume name and UID, and rename the PVC to the deleted PVC name.
7. Apply the PVC.kubectl -n mongodb apply pvc.yaml
8. The PVC should be provisioned and attached to the PVC for the pod, and the pod should no longer experience any issues. If the pod does not resync, then delete it.
