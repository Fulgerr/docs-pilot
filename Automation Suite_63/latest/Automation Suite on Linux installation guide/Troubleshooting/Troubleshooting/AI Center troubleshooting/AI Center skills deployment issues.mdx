# AI Center skills deployment issues

Sometimes intermittently DU Model Skill Deployments can fail with Failed to list deployment or Unknown Error when deploying the model for the first time. The workaround is to try deploying the model again. Second time, it will be faster as most of the deployment work of image building would have been done during the first attempt. DU Models takes around 1-1.5 hours for deploying first time, and it will be faster when deploying them again.

In a rare scenario, due to cluster state, asynchronous operations like Skill Deployment or Package upload could be stuck for a long time. If DU Skill deployment is taking more than 2-3 hours, try deploying a simpler model (e.g, TemplateModel). If the model also takes more than an hour, then the mitigation is to restart AI Center services with the following commands:

kubectl -n uipath rollout restart deployment ai-deployer-deployment
kubectl -n uipath rollout restart deployment ai-trainer-deployment
kubectl -n uipath rollout restart deployment ai-pkgmanager-deployment
kubectl -n uipath rollout restart deployment ai-helper-deployment
kubectl -n uipath rollout restart deployment ai-appmanager-deployment

Wait for the AI Center pods to be back up by verifying with the following command:

kubectl -n uipath get pods | grep ai-*

All the pods should be Running state with container state shown as 2/2.
