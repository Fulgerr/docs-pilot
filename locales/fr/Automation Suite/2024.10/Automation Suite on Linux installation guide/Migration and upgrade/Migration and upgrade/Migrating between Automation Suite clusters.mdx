# Migrating between Automation Suite clusters


## About the cluster migration

You can migrate from one Automation Suite cluster to another if you use the uipath namespace instead of a custom namespace and want to move from one Automation Suite flavor to another. We support the following scenarios:

* Migrate from Automation Suite on Linux to a new installation of Automation Suite on EKS/AKS;
* Migrate from Automation Suite on EKS/AKS to a new installation of Automation Suite on OpenShift;
* Migrate from Automation Suite on OpenShift to a new installation of Automation Suite on EKS/AKS;
* Migrate from Automation Suite on EKS to Automation Suite on AKS or from Automation Suite on AKS to Automation Suite on EKS.

Note that you can attempt to perform the migration operation multiple times with no impact on your existing cluster.

The following migration scenarios are not supported:

* Migrating from Automation Suite on Linux to an existing installation of Automation on EKS/AKS or Automation Suite on OpenShift;
* Migrating an Automation Suite on OpenShift cluster to Automation Suite on Linux cluster.


## Process overview

| Step | Description |
| --- ---| 1. | Mandatory. Make sure you meet the migration requirements.RequirementsData migration and responsibilities |
| 2. | Mandatory. Prepare the target cluster and the docker images for both source and target cluster.Preparing the target clusterOptional. If your deployment is offline or if you use a private OCI registry, make sure the required images are available.Hydrating the OCI-compliant registry in an offline setupHydrating the OCI-compliant registry in an online setup |
| 3. | Mandatory. Start the migration, move the data, and run the Automation Suite installation.Running the cluster migration |
| 4. | Optional. If AI Center is enabled on both the source and target clusters, migrate the skills.Migrating the AI Center skills |


## Requirements

To migrate from an Automation Suite cluster to another, you must meet the following
            requirements:

* Download the following
                    artifacts: uipathctlversions.json
* You must establish connectivity
                    between the two environments.
* You must have an external
                    objectstore configured in your source cluster. If you use in-cluster storage,
                    see Migrating in-cluster objectstore to external
                        objectstore.
* If you migrate from Automation
                    Suite on Linux, the version of your source cluster must be 2022.10 or
                newer.
* If you migrate to Automation Suite
                    on OpenShift, the version of your source cluster must be 2023.10 or
                newer.
* Offline-only requirements: You
                    must hydrate the target cluster.


## Data migration and responsibilities

| Data | Migration mechanism |
| --- ---| Status | Responsibility |
| SQL | RetainedYou have two options:Reuse the same databases for the new installation. Point the cluster configuration's SQL connection strings to the existing database server.Clone your databases and use the clones instead. | Customer |
| Docker registry | Not migratedIf you use a private registry, you must hydrate the target registry. If you use registry.uipath.com for the target cluster, no further steps are needed.) | Customer |
| FQDN | OptionalYou must choose a new FQDN for the new cluster. Optionally, you can revert to the previous FQDN if needed. | Customer |
| Certificates | Not migratedYou must bring certificates as part of the new cluster installation. | Customer |
| Cluster configuration | Not migratedYou must generate the new input.json applicable to the target cluster type (AKS or EKS). | Customer |
| Custom alerts and dashboards created by users | Not migratedYou must reconfigure the custom alerts and dashboards post-migration. | Customer |
| Application logs / Prometheus streaming configuration created by users | Not migratedYou must reconfigure application log and Prometheus streaming. | Customer |
| Dynamic workloads | Depends on applicationAI Center training jobs are lost; Skills are retained. | Skills (script needed to be executed after upgrade): UiPath®Training jobs: Customer |
| Objectstore | External objectstore: RetainedFor external objectstore, you have two options:Reuse the existing external object store and connect it to the new environment.Create a replica of your current object store and use this for the new setup.Important: If you're using an in-cluster object store, you must perform a ceph-to-external migration before the upgrade. | Migrating from in-cluster to external objectstore: CustomerExternal objectstore: UiPath® |
| Insights | Retained | UiPath® |
| MongoDB data | RetainedMongoDB data is moved to the target SQL. | UiPath® |
| RabbitMQ | Not needed | UiPath® |
| Monitoring (data) | Not neededMonitoring data does not apply to the new cluster. | N/A |


## Preparing the cluster migration




### Preparing the target cluster

Do not modify the source cluster after starting the migration process.To prepare the target cluster, take the following steps:

Download the targeted version of cluster_config.json on the source cluster and generate the cluster_config.json file by running the following command:uipathctl manifest get-revisionFor details, refer to the following diagram:Based on the previously generated input.json file, modify the input.json file of the target cluster.You must transfer the Orchestrator-specific configuration that includes the encryption key per tenant and Azure/Amazon S3 storage buckets settings.For Process Mining on Automation Suite 2024.10.3 or higher, using PostgreSQL for the Airflow database is the recommended option.If you migrate from a version prior to 2024.10.3, the generated input.json file for the target cluster does not contain the connection string for the Airflow PostgreSQL database. To use the latest version of Airflow, which requires PostgreSQL, you will need to manually add the sqlalchemy connection string template for PostgreSQL to the input.json file for the target cluster before migration.Postgresql_connection_string_template_sqlalchemy_pyodbcpostgresql+psycopg2://<user>:<password>@<postgresql host>:<postgresql port>/DB_NAME_PLACEHOLDERValidate the prerequisites in the target cluster by running the following command:uipathctl prereq run input-target.json --kubeconfig kubeconfig.target --versions versions.jsoninput-target.json is the input.json file corresponding to the target cluster.Clone the SQL databases from the source deployment to the target deployment.


### Hydrating the OCI-compliant registry registry without internet access

The migration process requires the latest uipathcore Docker image tag to be available for both the source and target clusters. If your source cluster is offline, make the image available by taking the following steps:

Follow the steps to hydrate the registry used by the target cluster with the offline bundle in .Copy the uipathctl binary and versions.json file on a VM with access to the source cluster.Run the following command:jq -r '.[][] | select(.name=="uipath/uipathcore") | .ref + ":" + .version' "/path/to/versions.json" > images.txtSeed the uipathcore image from the registry of the target cluster to the registry of source cluster:./uipathctl registry seed --tag-file ./images.txt \
            --source-registry "target.registry.fqdn.com" \
            --source-password "target-registry-username" \
            --source-username "target-registry-password" \
            --dest-registry "source.registry.fqdn.com" \
            --dest-username "source-registry-username" \
            --dest-password "source-registry-password"Make sure to update the command as follows:Replace target.registry.fqdn.com,
                    target.registry.fqdn.com, and
                    target-registry-password with the proper values that correspond
                  to the registry associated with the target cluster;Replace source.registry.fqdn.com,
                    source.registry.fqdn.com, and
                    source-registry-password with the proper values that correspond
                  to the registry associated with the source cluster.


### Hydrating the OCI-compliant registry with internet access

If you use a private registry, you must seed it. For instructions, see Configuring the OCI-compliant registry.


## Running the cluster migration

To migrate to the target Automation Suite cluster, take the following steps:

Execute the migration by running the following command:uipathctl cluster migration run input-target.json --kubeconfig kubeconfig.source --target-kubeconfig kubeconfig.target --versions versions-target.jsonComplete the Automation Suite installation on the target cluster by running the following command:uipathctl manifest apply input-target.json --kubeconfig kubeconfig.target --versions versions-target.json


## Migrating the AI Center skills

The steps in this section are applicable only if you enabled AI Center on both the source and target clusters. Note that the instructions assume that AI Center on the target cluster points to the database containing the skill data for running the skills.

After completing the migration, you must sync the AI Center skills so that you can use them again.


### Checking the skill migration status

To retrieve the status of the skills on the target Automation Suite on EKS/AKS cluster, take the following steps:

Set up the variables for executing the next commands.aicJobsImage=$(kubectl -n <uipath> get configmap aic-jobs-config -o "jsonpath={.data['aicenter/aicenter-jobs:v23.10-10.15-rc02']}")
podName="skillstatuspod"Clean up any skillstatuspod that might be running before retrieving the skill status again. The following command deletes the pod from the previous iteration, so use it carefully.kubectl -n <uipath> delete pod "$podName" --force. Create the skillstatuspod to get the skill status. The pod may take some time to pull the image and run, typically less than 30 seconds.skill_arr="[]"
kubectl -n <uipath> run "$podName" --image="$aicJobsImage" --restart=Never --labels="app.kubernetes.io/component=aicenter" --overrides='{ "metadata": { "annotations": {"sidecar.istio.io/inject": "false"}}}' --command -- /bin/bash -c "curl -sSL -XPOST -H 'Content-Type: application/json' 'ai-deployer-svc.uipath.svc.cluster.local/ai-deployer/v1/system/mlskills:restore-status' -d \"$skill_arr\" | jq -r '([\"SKILL_ID\",\"SKILL_NAME\", \"STATUS\"] | (., map(length*\"-\"))), (.data[] | [.skillId, .skillName, .syncStatus]) | @tsv' | column -ts $'\t'; exit"Replace $skill_arr with [] to run all skills, or ['abcd', 'efgh'] to run only the two skills mentioned.The skills id ouput is needed for the next commands.Check the output of the skill status.kubectl -n <uipath> logs -f "$podName" -c "$podName"


### Running the skill migration

To run the skill migration, take the following steps:

Set up the variables for executing the next commands.aicJobsImage=$(kubectl -n uipath get configmap aic-jobs-config -o "jsonpath={.data['AIC_JOBS_IMAGE']}")
podName="skillsyncpod"Clean up any skillsyncpod that might be running before retrieving the skill status again. The following command deletes the pod from the previous iteration, so use it carefully.kubectl -n uipath delete pod "$podName" --forceInitiate the skill sync. The pod may take some time to pull image and run, typically less than 30 seconds.kubectl -n uipath run "$podName" --image="$aicJobsImage" --restart=Never --labels="app.kubernetes.io/component=aicenter" --overrides='{ "metadata": { "annotations": {"sidecar.istio.io/inject": "false"}}}' --command -- /bin/bash -c "curl -sSL -XPOST -H 'Content-Type: application/json' 'ai-deployer-svc.uipath.svc.cluster.local/ai-deployer/v1/system/mlskills:restore-all' -d \"[\"skill_id1\", \"skill_id2\", .... ]\"; exit"Replace skill ids with the values copied during the Checking the skill migration status procedure.Check the following example for declaring the skill_arr variable:skill_arr='[\"fb14154a-ce63-43ab-yyyy-xxxxxxxxxxxxxx\", \"ad58942d-e038-4d38-yyyy-xxxxxxxxxxxx\"]' # Replace them with ML skill ids in your environment
kubectl -n uipath run "$podName" --image="$aicJobsImage" --restart=Never --labels="app.kubernetes.io/component=aicenter" --overrides='{ "metadata": { "annotations": {"sidecar.istio.io/inject": "false"}}}' --command -- /bin/bash -c -x "curl -sSL -XPOST -H 'Content-Type: application/json' '/ai-deployer/v1/system/mlskills:restore-all' -d \"$skill_arr\"; exit"Check the output of the skill sync status.kubectl -n uipath logs -f "$podName" -c "$podName"The operation may take a long time, depending on the number of skills to sync, so you can rely on the skill migration status to check it periodically until there is no skill in IN_PROGRESS state.

When checking the skill migration status or running the skill migration, you cover all skills at the same time. Alternatively, you can perform these operations only for select skills by passing -d "[skill_id1, skill_id2, .... ]" as an extra argument to curl in step 3.

