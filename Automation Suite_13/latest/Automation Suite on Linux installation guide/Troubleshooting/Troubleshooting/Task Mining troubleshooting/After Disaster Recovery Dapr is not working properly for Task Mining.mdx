# After Disaster Recovery Dapr is not working properly for Task Mining

This page describes the steps you should take to resolve the issue.

# Overview of the steps

1. Delete all dapr secrets and the mutatingwebhookconfiguration.
2. Resync all dapr secrets and the mutatingwebhookconfiguration.
3. Restart dapr-sentry deployment and wait to the deployment is finished.
4. Restart dapr-operator deployment and wait to the deployment is finished.
5. Restart dapr-sidecar-injector deployment and wait to the deployment is finished.

A detailed description of the steps is provided next.

# Deleting dapr secrets and the mutatingwebhookconfiguration

1. Go to Applications in ArgoCD.
2. Select the dapr application card to open the dapr app details tree.
3. Locate the dapr secrets. The secrets must be recreated. You can do this by deleting each secret.
4. Open the context menu of the secret and select Delete.
5. In the Delete resource confirmation dialog enter the name of the secret and select OK to confirm.
6. Repeat steps 4 and 5 for the remaining secrets.
7. In the dapr app details tree, locate the mutatingwebhookconfiguration.You can recognize the mutatingwebhookconfiguration from the label MWC.
8. Open the context menu of the secret and select Delete. In the Delete resource confirmation dialog enter the name of the mutatingwebhookconfiguration and select OK to confirm.

# Syncing the dapr secrects and the mutatingwebhookconfiguration

Some of the secrets are immediately recreated. This is indicated by a green check mark on the secret card. If a secret is not recreated, you need to sync to recreate the secret.Locate the secret you want to recreate and select Sync from the context menu.In the pop-up panel, select SYNCHRONIZE.Repeat steps 2 and 3 for all the secrets that you want to recreate.In the dapr app details tree, locate the mutatingwebhookconfiguration.You can recognize the mutatingwebhookconfiguration from the label MWC.Open the context menu for the mutatingwebhookconfiguration and select Sync.In the pop-up panel, select SYNCHRONIZE.

# Restarting the deployment

After you deleted and synchronized the secrets and the mutatingwebhookconfiguration, you need to restart the deployment.

1. In the dapr app details tree, locate the dapr-sentry deploy card.
2. Open the context menu and select Restart.A confirmation dialog is displayed.
3. Select OK to confirm the restart. The dapr-sentry deployment starts. When the deployment is finished, a green heart appears. Wait for the deployment to be finished.
4. In the dapr app details tree, locate the dapr-operator deploy card.
5. Open the context menu and select Restart.
6. In the confirmation dialog, select OK to confirm the restart. Wait for the deployment to be finished.
7. In the dapr app details tree, locate the dapr- sidecar-injector deploy card.
8. Open the context menu and select Restart.
9. In the confirmation dialog, select OK to confirm the restart. Wait for the deployment to be finished.

Restart the deployments in the described order and make sure a deployment is ready before starting the next deployment.dapr-sentrydapr-operatordapr-sidecar-injector

You can now check that dapr is working correctly by looking at processmining, as previously described. Now there should be 3 containers in the pod and the daprd container should be present in the LOGS. Task Mining should work properly now.
