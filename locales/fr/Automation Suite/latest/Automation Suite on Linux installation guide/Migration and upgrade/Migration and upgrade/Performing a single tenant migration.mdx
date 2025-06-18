# Performing a single tenant migration

# Untitled Section

You can use the UiPath Automation Cloud™ Migration Tool to automatically migrate entities
        from your standalone Orchestrator to the Orchestrator service in Automation Suite.

This page provides details on the type of entities being migrated, the requirements for the
        migration from standalone Orchestrator to Automation Suite, the specific migration
        procedure, and any operations that may be necessary after the migration.

When planning your migration from on-premises
        Orchestrator to Automation Suite, it is advisable that you take the following steps: Upgrade to a supported on-premises
              Orchestrator version.Migrate from classic to modern folders, as
                classic folders have restrictions in
              Automation Suite.Run the migration tool to migrate from on-premises Orchestrator to Automation
              Suite.

## Entities being migrated

When you run the Automation Cloud Migration Tool, it automatically creates the following entities in Automation Suite to match your standalone Orchestrator setup:


| Entity | Migrated | Not Migrated |
| --- --- ---| Settings | Yes, with exceptions (see on the right). | Some settings that are exposed to the tenant on the read path cannot be modified in Automation Suite, like host logo and color.Passwords in the Settings table cannot be exported because the API removes the values from the response. As a result no passwords will be migrated. This affects email alerts (SMTP password) and external feeds with basic authentication. |
| Packages | Migrates all packages and all package versions.If a package feed is external and configured with basic authentication, the credentials will need to be input after the migration completes. | If a package feed is external and not accessible over the internet, entities that rely on these packages are not migrated. |
| Libraries | Tenant-level feeds only. | If a library feed is at the host level or is external and not accessible over the internet, entities that rely on these libraries are not migrated. |
| Calendars | Yes | N/A |
| Machines | Yes, but if there are not enough licenses to accommodate Machine slot assignments, the Machine will be imported with all slots set to 0. | Machine keys are not migrated. |
| Folders | Yes | Personal workspace folders are not migrated. |
| Environments | Yes, for classic folders. | N/A for modern folders. |
| Robots (classic) | Yes, but if there are not enough licenses to accommodate robot creation, the robot is skipped during import. | Skipped when licenses run out and an error is logged for each. |
| Robots (modern) | Modern robots are migrated if the user with which they are associated exists in Automation Suite and has the same email address. | If the user doesn’t exist in Automation Suite, that specific robot migration fails.Skipped when licenses run out and an error is logged for each. |
| Environment associations | The robot-environment mapping is migrated. | N/A |
| Processes | Processes are migrated. The tool may refer to these as Releases. | N/A |
| Queues | Yes | N/A |
| Triggers | Triggers are migrated, but are all set as disabled. |  |
| Assets | Boolean, Text, and Integer asset types are fully supported.Credential assets are also migrated, but a dummy password is used because passwords cannot be migrated by the tool. You will need to manually update the passwords for each credential asset after migration. Credential assets are assigned to the default credential store in Automation Suite.Per-robot values are also migrated, but if the robot wasn’t migrated, this value is skipped and an import warning is logged. | Per-user asset values in modern folders are not supported. The asset is imported with the default value or skipped if none is set. |
| Machine associations | Robot-machine mappings are migrated. | N/A |


### Entities not migrated

The following entities are not migrated by the tool:

* Folder feeds
* Users
* Queue items
* Action catalogs
* Webhooks
* Testing entities (test sets, test cases, test executions, test schedules, test data queues)
* Logs


## Prerequisites

Before opening the tool, make the following preparations:

1. Make sure you have sufficient robot licenses in Automation Suite to match the
                number of robots being migrated ( Admin > Licenses > Robots
                    & Services ). The tool only migrates robots as long as there are licenses
                available, after which it starts to skip robots.
2. You must have administrator
                credentials for the standalone Orchestrator and View permissions for all
                entities being migrated. If you don't have the View permission for some entities,
                those entities are not migrated.
3. You must be an organization administrator in Automation
                Suite.
4. To run the tool, you need a machine
                    that: can connect to the standalone
                        Orchestrator and to Automation Suite (has internet access)has the Windows operating
                        system
5. Download the tool on the mentioned
                machine from this link .
6. Register the tool as an external application in the target Automation
                Suite organization.


### Registering the tool as an external application

The migration tool needs to connect to the Orchestrator service API in Automation Suite to create the migrated entities. It uses the OAuth flow for this and therefore must be registered in Automation Suite as an external application.

Follow these instructions to add the tool as a new external application with the following specifics:Type: Non-confidential Resources: Orchestrator API User scopes: OR.Folders, OR.Settings, OR.Robots, OR.Machines, OR.Execution, OR.Assets, OR.Users, OR.Jobs, and OR.Queues. Redirect URL: http://127.0.0.1:8888/auth/Save the Application ID for later use.


## Running the tool

The tool can migrate one tenant at a time. You can run the tool multiple times for each of your tenants.With each run, the tool:Connects to your standalone Orchestrator to export entities for the given tenant.Connects to Automation Suite to import and create the migrated entities in the Orchestrator tenant.For more information about entities that are subject to migration, see Entities Being Migrated.To run the tool:

Extract the ZIP file you downloaded for the tool and then run the tool EXE.For the activation method, choose Connect to On-Premises:Fill in the information to allow the tool to connect to your standalone Orchestrator:Make sure that the credentials you provide are for an administrator account that also has View permissions on all the entities you want to migrate.Select Start Export to connect to your standalone Orchestrator and download the setup information.The export begins and may take a while to complete:When finished, the export summary lists all entities that were successfully exported: You can select Open File to view the local file created for the export summary, which includes a few more details.Select Home to return to the first screen.For the activation method, this time choose Connect to Automation Suite.Fill in the information to allow the tool to connect to Automation Suite to upload the setup information:FieldDetailsAutomation Suite URLThe URL where Automation Suite is hosted, including the protocol and ending with a slash (/).You can pick up this URL from your browser address bar while in Automation Suite, but do not include the part of the URL beginning with the organization name. For example, if the URL in your browser is https://mySite.com/docs/Migration/orchestrator_/?tid=34&fid=82, with docs being the organization name, you must specify only https://mySite.com/ in this field.Client Application IdThe Application ID value associated with the external application registration in Automation Suite.You can find this value on the Admin > External Applications page.Organization NameThe organization-specific part of your Automation Suite URL. Organization administrators can find this information in the Organization Name field under Admin > Organization Settings.You do not need to include the full URL, only the editable part, which is specific to your organization. For example, if the URL is https://mySite.com/myOrgName, add myOrgName to the field.Tenant NameThe exact name of the Automation Suite tenant where you want to add the migrated information. The migrated data will be visible in the specified Orchestrator tenant.Select Start Import to connect to Automation Suite and start to migrate the information to the target Orchestrator tenant.The import begins and may take a while to complete:To connect to Automation Suite using OAuth, a user with the adequate permissions for the scopes added when you registered the external application must log in to Automation Suite. When they do, a new window opens with a success message if the OAuth flow was successful:When finished, the import summary lists all entities that were successfully imported into the Orchestrator tenant in Automation Suite: Anything that was not imported is listed as an error and partial imports are listed as warnings. You can select View Report for more details about exactly which entities encountered an error or warning.When ready, select Done to close the tool.If needed, you can run the tool again to migrate data for additional tenants.


## Post-migration tasks

Because the tool cannot migrate everything, there are some final tasks that you must perform manually to obtain the same setup as you had in your standalone Orchestrator.

In Automation Suite, log in to the organization of the tenant that was the import target and then open Orchestrator.Check that folders and entities were successfully migrated.You can use the import summary to check the specific items that had warnings or errors.Allocate robot and service licenses for Orchestrator.During import, machines are created and licensed while available licenses exist. After licenses run out, machines continue to be created without licenses, so you must update any such machines to allocate the adequate number of licenses.If you migrated without activating your Automation Suite license, at this stage you need to activate it to continue with the setup.Manually upload any library feeds that the tool did not migrate. If any robots were skipped during export or import, manually create them. Create any webhooks, task catalogs, credential stores, or other information that the tool does not migrate.The section Entities being migrated includes a list of what the tool does not migrate.Manually connect robots to the Automation Suite Orchestrator service.Manually enable triggers as needed.While the tool migrates triggers, they are all disabled and you must manually enable them.Check any locations in Orchestrator where a password is required and add it: Robots, Settings, and Credential Assets.


## Getting help

If you need assistance with an issue encountered during export, import, or after import, open a Support ticket and include the following files:

* Log file (in the logs sub-folder)
* Export report file (in the MigrationAssets sub-folder)
* Import report file (in the MigrationAssets sub-folder)

In addition to these files, it would be helpful to know:

* The version of your standalone Orchestrator
* Your Automation Suite organization and tenant names.

