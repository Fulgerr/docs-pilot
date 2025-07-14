# Switching to the secondary cluster
        manually in an Active/Passive setup

To switch to the secondary Automation Suite cluster, take the following steps:

1. Turn on all the nodes of the
                Automation Suite cluster.
2. Bring back all products.
3. Wait for all the components and
                products to be healthy.
4. Sync the AI Center skills on the
                secondary cluster.
5. Switch the traffic to the secondary
                cluster.

When switching to the secondary site, products such as Insights, Task Mining, Process Mining, and Automation Hub are not available.

### Bringing back the products

You can scale up the cluster and bring back all inactive products using the following
            command:

./bin/uipathctl config products scale-up --ha


### Syncing the AI Center ML Skill

You can use the following script to re-sync the AI Center ML Skilll in the secondary cluster. The script triggers the re-sync in the background if no active sync is in progress. You can use the same script to switch back to the primary cluster.

The script syncs the skills in the background (async) and returns. The job ensures that the skills are deployed and updates the DB entry to reflect the current status.

./bin/uipathctl service aicenter sync-skills [skill_ids]ParameterDescription[skill_ids]The optional array of the skill IDs separated by space. If you provide the skill ID, then only
                  those skills are updated; otherwise, all deployed skills are re-synced.

Example:

./bin/uipathctl service aicenter sync-skills 783273-3232-3232-323 32-32-323-3232

//this will only sync the skills with ID 783273-3232-3232-323 and 32-32-323-3232

To monitor the skill status, you must run a different script, as shown in the following section.


### Checking the status of the AI Center ML Skill

To view the status of the AI Center ML Skill, run the following command:

./bin/uipathctl service aicenter sync-skill-status [skill_ids]The
            command can return any of the following statuses:

InProgess - skill deployment is in progress.Failed - skill deployment is failed.OutOfSync - skill is available in the database; however, it has yet to be deployed.Available - when the skills are deployed and available to consume.

