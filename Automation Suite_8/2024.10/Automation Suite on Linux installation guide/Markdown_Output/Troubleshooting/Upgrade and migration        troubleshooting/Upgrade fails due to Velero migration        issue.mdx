# Upgrade fails due to Velero migration
        issue

# Description

An issue related to Velero migration causes the in-place upgrade to Automation Suite
                2024.10.1 and 2024.10.2 to fail when the backup is enabled.

# Solution

To address the problem, take the following steps:

If you have enabled backup in cluster, then disable the backup and uninstall
                            Velero.To disable backup,
                                refer to the Disabling the schedule snapshot backup
                                section.To uninstall Velero, run the following command:kubectl delete ns veleroAfter executing the first step, create a copy of your
                            cluster_config.json and modify the original
                            cluster_config.json to remove the
                        snapshot field. Run the following command:cp cluster_config.json orig.cluster_config.json
cat cluster_config.json | jq "del(.snapshot)" > cluster_config.jsonOnce you complete the upgrade, use original JSON file,
                            orig.cluster_config.json, and reconfigure the backup as
                        described in the  section.
