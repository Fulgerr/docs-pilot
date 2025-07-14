# Redis probe failure

# Description

Redis probe can fail if the node ID file does not exist. This can happen if the pod is not yet bootstrapped.

There is a recovery job that automatically fixes this issue, and the following steps should not be performed while the job is running.

When a Redis Enterprise cluster loses contact with more than half of its nodes (either because of failed nodes or network split), then the cluster stops responding to client connections. The Pods also fail to rejoin the cluster.

# Solution

1. Disable argo sync, delete the Redis database and the Redis Cluster resource, re-enable argo sync and start a recovery job, using the following commands:kubectl -n argocd patch application redis-cluster --type=json -p '[{"op":"replace","path":"/spec/syncPolicy/automated/selfHeal","value":false}]' kubectl -n argocd patch application redis-operator --type=json -p '[{"op":"replace","path":"/spec/syncPolicy/automated/selfHeal","value":false}]' kubectl delete redb -n redis-system redis-cluster-db --force --grace-period=0 & kubectl delete rec -n redis-system redis-cluster --force --grace-period=0 & kubectl patch redb -n redis-system redis-cluster-db --type=json -p '[{"op":"remove","path":"/metadata/finalizers","value":"finalizer.redisenterprisedatabases.app.redislabs.com"}]' kubectl patch rec redis-cluster -n redis-system --type=json -p '[{"op":"remove","path":"/metadata/finalizers","value":"redbfinalizer.redisenterpriseclusters.app.redislabs.com"}]' kubectl -n redis-system get pods | grep services-rigger | awk '{print $1}' | xargs kubectl -n redis-system delete pod --force kubectl -n redis-system get pods | grep -E "redis-cluster-[0-2]" | awk '{print $1}' | xargs kubectl -n redis-system delete pod --force kubectl -n argocd patch application redis-cluster --type=json -p '[{"op":"replace","path":"/spec/syncPolicy/automated/selfHeal","value":true}]' kubectl -n argocd patch application redis-operator --type=json -p '[{"op":"replace","path":"/spec/syncPolicy/automated/selfHeal","value":true}]' kubectl -n redis-system create job --from=cronjob/redis-cluster-recovery-job cronjob-manual-run
2. If the error still persists, check if there is a clock skew between the Kubernetes nodes. If any node is even a few seconds ahead or behind, the Redis pod will fail to run on it. To fix it, you must make sure all nodes have the clocks synced.
