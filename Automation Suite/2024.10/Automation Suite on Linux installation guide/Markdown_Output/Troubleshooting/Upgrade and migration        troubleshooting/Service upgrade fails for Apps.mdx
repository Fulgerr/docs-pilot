# Service upgrade fails for Apps

# Description

The service upgrade might fail for Apps with the following logs:

Error: [failed to wait for application argocd/ba: timed out waiting for the condition, error waiting for components [] to be synced affecting their dependencies: [failed to wait for application argocd/ba: timed out waiting for the condition]]

This issue happens when ArgoCD cannot invalidate the cache, causing MongoDB to remain in scaled-down state.

# Solution

To fix this issue, you must take the following steps:

1. Scale up MongoDB: kubectl scale deploy -n mongodb mongodb-kubernetes-operator --replicas=1 kubectl rollout status deploy -n mongodb mongodb-kubernetes-operator kubectl rollout status sts -n mongodb mongodb-replica-set
2. Check if MongoDB pods are up and healthy:kubectl get pods -n mongodb -l app=mongodb-replica-set-svc
3. Once MongoDB pods are up and running, you can re-run the service upgrade.
