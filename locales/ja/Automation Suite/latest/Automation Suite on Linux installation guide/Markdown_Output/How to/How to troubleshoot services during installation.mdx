# How to troubleshoot services during installation

Take the following steps on one of the cluster server nodes:

1. Obtain Kubernetes access. on server nodes:
export KUBECONFIG="/etc/rancher/rke2/rke2.yaml"
export PATH="$PATH:/usr/local/bin:/var/lib/rancher/rke2/bin"

on agent nodes:
export KUBECONFIG="/var/lib/rancher/rke2/agent/kubelet.kubeconfig"
export PATH="$PATH:/usr/local/bin:/var/lib/rancher/rke2/bin"

# To validate, execute the following command which should not return an error:
kubectl get nodes
2. Retrieve the ArgoCD password by running the following command: kubectl get secrets/argocd-initial-admin-secret -n argocd --template '{{ .data.password }}' | base64 -d
3. Connect to ArgoCD.
4. Navigate to https://alm.<fqdn>/:443
5. Login using admin as the username and the password obtained at Step 2.
6. Locate the UiPath Services application as follows:
7. Using the search bar provided in ArgoCD, type in uipath .
8. Then open the UiPath® application by selecting its card.
9. Check for the following: Application was not synced due to a failed job/pod .
10. If the previous error exists, take the following steps.
11. Locate any un-synced components by looking for the red broken heart icon, as shown in the following image.
12. Open the right-most component (usually pods) and select the Logs tab. The Logs will contain an error message indicating the reason for the pod failure.
13. Once you resolve any outstanding configuration issues, go back to the home page and select the Sync button on the UiPath® application.
