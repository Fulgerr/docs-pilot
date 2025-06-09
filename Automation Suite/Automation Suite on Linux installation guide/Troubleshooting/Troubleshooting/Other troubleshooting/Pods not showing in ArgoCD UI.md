# Pods not showing in ArgoCD UI

# Description

Occasionally, the ArgoCD UI does not show pods, but only displays applications and corresponding deployments. See the following image for details:

![cf0773e-5f7351e-image-2021-12-07-18-15-59-583=GUID-94ABA3D0-0A80-4A4B-B52A-357E79943FCF=1=en=Default](/images/cf0773e-5f7351e-image-2021-12-07-18-15-59-583=GUID-94ABA3D0-0A80-4A4B-B52A-357E79943FCF=1=en=Default.png)

When selecting on any of the deployments, the following error is displayed: Unable to load data: EOF.

![8a7d691-3f616b5-image-2021-12-07-18-17-00-245=GUID-D270F8C3-731C-47EE-8D86-5FA2F3CA2EC8=1=en=Default](/images/8a7d691-3f616b5-image-2021-12-07-18-17-00-245=GUID-D270F8C3-731C-47EE-8D86-5FA2F3CA2EC8=1=en=Default.png)

# Solution

You can fix this issue by deleting all Redis replicas from ArgoCD namespace and waiting for it to come back up again.

kubectl -n argocd delete pod argocd-redis-ha-server-0 argocd-redis-ha-server-1 argocd-redis-ha-server-2

# Wait for all 3 pods to come back up
kubectl -n argocd get pods | grep argocd-redis-ha-server
