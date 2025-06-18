# Migrating Looker data to Automation Suite

Use this procedure to migrate Looker data from Insights Standalone to Insights Automation Suite.

### Step 1: Create Backup TAR File From Insights Linux Server

1. Open an SSH client and run the following command
        to authenticate. ssh <username>@<hostname>
2. Create a
          backup. image=$(sudo docker container inspect looker-container -f '{{ .Image }}')
backupPath="$HOME/insights/backup" && mkdir "$backupPath" -p
sudo docker run -u root --rm --platform linux --volumes-from looker-container -v "$backupPath":/backup "$image" bash -c "tar cvf /backup/looker_backup.tar --absolute-names /app/workdir/.db /mnt/lookerfiles /app/workdir/looker.key" Starting with the 2022.10
          version, the looker.key is included in the migration backup.
3. Exit the SSH. exit
4. Copy the files to the local machine using Secure
        Copy Protocol (SCP). scp <username>@<hostname>:~\insights\backup\looker_backup.tar <path-to-download-dir>


### Step 2: Restore Looker

1. Download the kubeconfig file. The following screenshot shows an Azure deployment template for Automation Suite .
2. Open an SSH client and run the following command to get the Insights Looker pod name $Env:KUBECONFIG="C:\Users\username\Downloads\output.yaml" # path to the optput.yaml
kubectl get pods -n uipath
3. The Insights Looker pod is now listed (e.g., insights-insightslooker-c987df55c-gngqd).
4. Set a variable name for the Insights Looker pod. $PodName = "insights-insightslooker-74db798bc5-dt68p"
5. Create a backup for the Automation Suite data. The backup file will be stored on a machine with console where command is initiated. Please make sure to delete created backup because it contains sensitive information. kubectl cp ${PodName}:/app/workdir/.db/ .\sf_db_backup -n uipath -c insightslooker
kubectl cp ${PodName}:/mnt/lookerfiles/ .\sf_lookerfiles_backup -n uipath -c insightslooker
6. Unzip the TAR file from the Insights Linux Server. 7z x .\looker_backup.tar -olooker_backup # looker_backup is the output folder
7. (Conditionally required if the Automation Suite password is different from the one used in the Standalone deployment model) Edit the following files before the migration and update url and/or password in both looker.log and looker.script files. Open sf_db_backup/looker.log and search for host_url to find the string that starts with https://. Search for INSERT INTO "CREDENTIALS_EMAIL" VALUES(1,1,'admin@uipath.com' in sf_db_backup/looker.log. Copy the string that starts with $2a$12$ and overwrite all occurrences in looker_backup/app/.db/looker.log.Turn off regex in the editor if you cannot find these lines.If there are multiple occurrences of INSERT INTO "CREDENTIALS_EMAIL" VALUES(1,1,'admin@uipath.com' you need to update all of them.
8. Change the working directory to the looker_backup folder. In this folder you will see two sub-folders named app and mnt . cd looker_backup
9. Copy files to the insights Looker pod and then restart the deployment. kubectl cp .\app\workdir ${PodName}:/app -n uipath -c insightslooker
kubectl cp .\mnt\lookerfiles ${PodName}:/mnt -n uipath -c insightslooker
kubectl rollout restart statefulset insights-insightslooker -n uipath

