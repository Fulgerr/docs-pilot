# Orchestrator pod in CrashLoopBackOff or restarts multiple times

# Description

If the Orchestrator pod is in CrashLoopBackOff or 1/2 is running with multiple restarts, the failure could be related to the authentication keys for the object storage provider, Ceph.

To check if the failure is related to Ceph, run the following commands:

kubectl -n uipath get pod -l app.kubernetes.io/component=orchestrator

If the output of this command is similar to one of the following options, you need to run an additional command.

Option 1:
NAME                            READY   STATUS    RESTARTS   AGE
orchestrator-6dc848b7d5-q5c2q   1/2     Running   2          6m1s
OR 
Option 2
NAME                            READY   STATUS             RESTARTS   AGE
orchestrator-6dc848b7d5-q5c2q   1/2     CrashLoopBackOff   6          16m

Verify if the failure is related to Ceph authentication keys by running the following command:

kubectl -n uipath logs -l app.kubernetes.io/component=orchestrator | grep 'Error making request with Error Code InvalidAccessKeyId and Http Status Code Forbidden' -o

If the output of the previous command contains the string Error making request with Error Code InvalidAccessKeyId and Http Status Code Forbidden, the failure is due to the Ceph authentication keys.

# Solution

Rerun the rook-ceph-configure-script-job and credential-manager jobs using the following commands:

kubectl -n uipath-infra get job "rook-ceph-configure-script-job" -o json | jq 'del(. | .spec.selector, .spec.template.metadata.labels)' | kubectl replace --force -f -
kubectl -n uipath-infra get job "credential-manager-job" -o json | jq 'del(. | .spec.selector, .spec.template.metadata.labels)' | kubectl replace --force -f -
kubectl -n uipath delete pod -l app.kubernetes.io/component=orchestrator
