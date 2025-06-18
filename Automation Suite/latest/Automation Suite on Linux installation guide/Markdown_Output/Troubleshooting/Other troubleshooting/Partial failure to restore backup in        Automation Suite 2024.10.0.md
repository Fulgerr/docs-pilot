# Partial failure to restore backup in
        Automation Suite 2024.10.0

# Description

Attempting to restore a backup in Automation Suite 2024.10.0 results in the following
                error:time="2024-11-18T08:13:48Z" level=info msg="Listing restore from namespace velero"
time="2024-11-18T09:28:35Z" level=info msg="Restore rst-000001-as wait for completion failed at namespace velero: restore PartiallyFailed"
Error: could not restore backup: restore PartiallyFailed

The problem occurs due to a Dapr sync issue. We fixed the issue in Automation Suite
                2024.10.1.

# Solution

To address the issue, take the following steps:

1. To check if the restore process failed due to a Dapr sync issue, take the following steps: Check if the hook failed by running the following command:velero restore describe <restore-name>If the hook failed, the output of the command looks similar to the following example:HooksAttempted: 1 HooksFailed: 1In case of hook failure, check the logs of the restore process by running the following command:velero restore logs <restore-name> | grep 'dapr\\" not found'If a Dapr sync issue caused the hook failure, the output of the command looks similar to the following example: 'App cert-manager is synced and healthy'\n++ date +%Y-%m-%dT%H:%M:%S%z\n+ echo '[INFO] [2024-11-18T04:28:35-0500]: App cert-manager is synced and healthy'\n+ for app in ${apps[@]}\n+ set +x\nError from server (NotFound): applications.argoproj.io \"dapr\" not found\n\x1b[0;31m[ERROR][2024-11-18T04:28:35-0500]:\x1b[0m Failed to fetch argocd app=dapr\n" hookCommand="[/bin/bash -c OP=restore RESTORE_NAME=mytstbackup bash /script/backup-restore-rke2.sh]" hookContainer=backup-hook-service hookName=restore-rke2-hook hookOnError=Fail hookPhase=post hookSource=spec hookTimeout="{5h0m0s}" hookType=exec logSource="pkg/podexec/pod_command_executor.go:180" pod=uipath-infra/backup-hook-service-78769845d7-x8hkq restore=velero/rst-000001-as
2. To address the partial failure of the restore process, take the following steps: Modify the hook configuration by running the following command:kubectl get cm -n uipath-infra backup-hook-script-cm -o yaml | sed "s/alerts auth cert-manager dapr event-listener gatekeeper goldpinger logging/alerts auth cert-manager event-listener gatekeeper goldpinger logging/g" | kubectl apply -f -Rerun the restore process by using the uipathctl tool.
