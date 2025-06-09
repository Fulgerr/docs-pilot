# Performing post-upgrade operations

After completing the upgrade, you must perform the required cleanup and migration operations before starting to use the Automation Suite cluster.

The following table describes the possible scenarios where you must perform the cleanup and migration operations:

ConditionAction1. You enabled AI Center.Start the skills:The [skill_ids] parameter is optional. For more details, refer to Syncing the AI Center ML Skill.sync the skills by running the following command:./bin/uipathctl service aicenter sync-skills [skill_ids]check the skills status by running the following command:./bin/uipathctl service aicenter sync-skill-status [skill_ids]The command can return any of the following statuses:InProgess - the skill deployment is in progress.Failed - the skill deployment is failed.OutOfSync - the skill is available in the database,but has not been deployed yet.Available - the skills are deployed and available to consume.1. You upgraded from Automation Suite 2023.4 or older.AND2. You enabled AI Center.Add the disk for the AI Center training pipeline. For details on the requirements, see Hardware requirements for AI Center. For instructions on configuring the disk to be used for the training pipeline, see Configuring the AI Center disks on selected machines.1. You upgraded to Automation Suite 2023.10.5 or newer.AND2. You configured an offline setup with an in-cluster registry.Clean up the previous version images after the upgrade from the in-cluster Docker registry. For instructions, see How to delete images from the old installer after upgrade.1. You configured the temporary Docker registry before the upgrade, as described in Setting up the temporary registry.Uninstall the temporary registry by running the following command:./bin/uipathctl registry uninstall-temp-registry -i cluster_config.json1. You performed an upgrade, and you now have issues with image vulnerabilities or storage consumption.Delete the images from the old installer. For instructions, see How to delete images from the old installer after upgrade.1. You upgrade to Automation Suite 2024.10.3 or higher.AND2. You enabled Process Mining.AND3. You have configured Airflow to use PostgreSQL as database (AutomationSuite_Airflow).Delete the Airflow Microsoft SQL Server database (AutomationSuite_Airflow).

### Enabling the backup post-upgrade

Make sure Automation Suite is up
                    and running and your automation continues as expected before proceeding with the
                    following steps.If you are upgrading to 2024.10.1 or 2024.10.2 then you need to reconfigure the
                    backup, as described in the  page.You
                must resume the backup after upgrading and performing the cleanup and migration
                operations. To enable the backup, follow the instructions described in the Enabling the
                    schedule snapshot backup section.


### Uninstalling the internal registry

This step is required if you migrated to an external OCI-compliant registry during the upgrade process.

To uninstall the internal registry, run the following command:

kubectl delete ns docker-registry

