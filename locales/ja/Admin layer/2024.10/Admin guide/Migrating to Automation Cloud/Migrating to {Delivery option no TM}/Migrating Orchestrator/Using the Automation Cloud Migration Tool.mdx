# Using the Automation Cloud Migration Tool

The Automation Cloud Migration Tool is a desktop application designed to simplify the process of migration from one deployment option to another. The tool automates various migration steps, making it easier to transition either your standalone or Automation Suite Orchestrator to Automation Cloud, Automation Cloud Dedicated, Automation Cloud Public Sector, or Automation Suite.

Instructions on this page apply for migrating your on-premises Orchestrator, either standalone or via Automation Suite, to {Delivery option}.

When planning your migration from on-premises Orchestrator to {Delivery option}, it is advisable that you take the following steps:

1. Upgrade to a supported on-premises Orchestrator version.
2. Migrate from classic to modern folders, as
                            classic folders have restrictions in {Delivery option no TM}.
3. Run the migration tool to migrate from on-premises Orchestrator to {Delivery option}.

While other sequences are technically possible, this is the most common approach.The Automation Cloud Migration Tool operates independently and does not conform to our standard Product Lifecycle.

### Requirements

To use the migration tool, you must meet the following criteria:

* Your standalone Orchestrator version must be supported. For specific version details, refer to our Product Lifecycle documentation.
* You need an active license for Automation Cloud Public Sector. For more information, refer to our Licensing documentation.


### Prerequisites

Before opening the Automation Cloud Migration Tool, make the following preparations:

1. Check that the Enterprise or Enterprise Trial licensing plan is active in {Delivery option} (Admin > Licenses).
2. Make sure you have sufficient robot licenses to match the number of robots being migrated (Admin > Licenses > Robots & Services). The tool migrates robots as long as there are licenses available, after which it starts to skip robots.
3. Make sure you have administrator credentials for the environment you migrate from.
4. Make sure you have View permission for all entities being migrated. If you do not have the View permission for some entities, those entities will not be migrated.
5. Make sure you are an organization administrator in Automation Cloud to register the tool as an external application.
6. Make sure the machine you run the Automation Cloud Migration Tool on meets the following requirements: Can connect to standalone Orchestrator, Orchestrator in Automation Cloud, or Orchestrator in Automation Suite.Can access {Delivery option} (has internet access and a supported browser);Runs the Windows operating system.
7. Download the migration tool on the machine that meets the requirements in the previous step.


### Entities migrated by the migration tool

When using the migration tool, the following entities, as described in the table, are automatically created in {Delivery option} to mirror your Orchestrator setup:

EntityMigratedNot migratedSettingsYes, with exceptionsSome on-premises settings, such as passwords and certain settings exposed to tenantsPackagesAll packages and package versionsEntities that rely on external package feeds requiring authenticationAuthentication is required after migration is completed for external package feeds configured with basic authenticationLibrariesTenant-level feeds onlyEntities that rely on libraries with host-level configurations or inaccessible external librariesCalendarsYesN/AMachinesYesPotential machine slot assignments limitations due to missing licensesMachine keysFoldersYesPersonal workspace foldersEnvironmentsYes, for classic folders.N/A(for modern folders)Robots (classic)YesPotential robot creation limitations due to missing licensesSkipped when licenses run out, with an error logged for each skipped robotRobots (modern)YesIf certain conditions are met, robots are associated with an on-premises user that has an email address, and that same email was already invited to {Delivery option} and is associated to a user.Skipped when licenses run out, with an error logged for each skipped robotFails if a user in {Delivery option} does not existEnvironment associationsThe robot-environment mappingN/AProcessesYesThe migration tool may refer to processes as releasesN/AQueuesYesN/ATriggersYes, but they are set as disabledN/AAssetsCertain asset types are fully supported, with some considerations for credential assetsPer-user asset values in modern foldersFolder feedsYesN/A


### Entities not migrated by the migration tool

The migration tool does not migrate the following entities:

* User and robot accounts
* Role assignments
* Queue items
* Action catalogs
* Webhooks
* Testing entities (test sets, test cases, test executions, test schedules, test data queues)
* Storage buckets
* Logs
* Tasks


### Registering the migration tool as an external application

The migration tool must connect to the Orchestrator service API in {Delivery option} to create the migrated entities. It uses the OAuth flow for this and, therefore, must be registered as an external application.

To register the Automation Cloud Migration Tool as an external application, take the following steps:

1. Add the tool as a new external application by following the instructions in Adding an external application. Make sure to use the following configuration: Type: Non-confidentialResources: Orchestrator APIUser scopes: OR.Folders, OR.Settings, OR.Robots, OR.Machines, OR.Execution, OR.Assets, OR.Users, OR.Jobs, and OR.Queues.Redirect URL: http://127.0.0.1:8888/auth/
2. Save the Application ID for later use.


### Running the migration tool

The migration tool can migrate one tenant at a time. You can run the tool for each of your tenants. With each run, the tool performs the following operations:Connects to your on-premises Orchestrator to export entities for the given tenant.Connects to {Delivery option} to import and create the migrated entities in Orchestrator.For more information about entities that are subject to migration, refer to Entities migrated by the migration tool.

Extract the .zip file you downloaded for the tool, and then run the .exe tool.To choose your export environment, take one of the following steps:Select On-premises MSI, if you migrate from standalone Orchestrator.Select Automation Suite to connect to the external application and fill in the export input form, if you migrate from Automation Suite Orchestrator.Fill in the information to allow the tool to connect to your on-premises Orchestrator.Ensure that the credentials you provide are for an administrator account that also has View permissions on all the entities you want to migrate.Select Start Export to connect to your source environment and download the setup information. The export begins and may take a while to complete.When finished, the export summary lists all entities that were successfully exported. You can select Open File to view the local file created for the export summary, which includes a few more details.Select Home to return to the first screen of the migration tool.For the activation method, this time choose Connect to {Delivery option}.Fill in the information to allow the tool to connect to {Delivery option} to upload the setup information. The following table describes the necessary fields to connect to {Delivery option}.FieldDetailsClient Application IdThe Application ID value associated with the external application registration in {Delivery option}.You can find this value on the Admin > External Applications page.Organization NameThe organization-specific part of your {Delivery option} URL. Organization administrators can find this information in the URL field in Admin > Organization Settings.You do not need to include the full URL, but only the editable part, which is specific to your organization. For example, if the URL is {baseURL_vanilla}/myOrgName, add myOrgName to the field.Tenant NameThe exact name of the {Delivery option} tenant where you want to add the migrated information. The migrated data will be visible in the Orchestrator service associated to that tenant.Select Start Import to connect to {Delivery option} and start to migrate the information to the target Orchestrator service.The import begins and may take a while to complete.To connect to {Delivery option} using OAuth, a user with the adequate permissions for the scopes added when you registered the external application must log in to {Delivery option}. When they do, a new window opens with a success message, if the OAuth flow was successful.When finished, the import summary lists all entities that were successfully imported into the Orchestrator service in {Delivery option}.Anything that was not imported is listed as an error and partial imports are listed as warnings. You can select View Report for more details about exactly which entities encountered an error or warning.When ready, select Done to close the tool.

If needed, you can run the tool again to migrate data for additional tenants.


### Post-migration tasks

Because the Automation Cloud Migration Tool cannot migrate all data, there are some final tasks that you must perform manually.

In {Delivery option}, select the tenant that was the import target, and open Orchestrator. Check that folders and entities were successfully migrated. You can use the import summary to check the specific items that had warnings or errors.Allocate robot and service licenses for Orchestrator. Machines are created and licensed while available licenses exist, but after licenses run out, machines continue to be created without licenses, so you must update them to allocate the adequate number of licenses.Manually upload any library feeds that the tool did not migrate.If any robots were skipped during export or import, manually create them.Create any webhooks, task catalogs, credential stores, or other information that the tool does not migrate. The section Entities migrated by the migration tool also includes a list of what the tool does not migrate.Manually connect robots to the cloud Orchestrator service.Manually enable triggers as needed.Check any locations in Orchestrator where a password is required and add it: robots, settings, and credential assets.


### Getting help

If you need assistance with an issue encountered during export, import, or after import, open a support ticket and include the following files:

* Log file (in the logs sub-folder)
* Export report file (in the MigrationAssets sub-folder)
* Import report file (in the MigrationAssets sub-folder)

In addition to the previous files, it would be helpful to know the following:

* The version of your on-premises Orchestrator;
* Your {Delivery option} organization and tenant names.

