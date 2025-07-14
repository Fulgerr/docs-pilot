# Performing Insights database maintenance


### Overview

Insights Database works using two tables: dbo and read. Both tables store data from Orchestrator databases and pass data between each other. Over time, tables store a large amount of data that can impact database performance. You can free up space by removing data that is not relevant or outdated.

The estimated threshold for storing historical data is set to

* Up to 100 million jobs
* Up to 1 billion job events
* Up to 100 million queue items
* Up to 500 million queue item events
* Up to 1 billion robot logs

Use the following database maintenance SQL scripts to create SQL Stored Procedures, then execute these SQL Stored Procedures to either delete all data from [dbo].Jobs, [dbo].JobEvents, [dbo].QueueItems, [dbo].QueueItemEvents, [dbo].RobotLogs tables, or just the [dbo].RobotLogs.

Back up your database before
            executing the scripts. Before running the PROCEDURE
                [read].[Delete_Insights_Data_Read] and PROCEDURE
                [read].[Delete_Process_Logs_Read] scripts, the Insights module needs to be
            disabled.


### Considerations

* Scripts with the _DBO suffix are used to delete data from DBO schema tables,
* Scripts with the _Read suffix are used to delete data from Read schema tables.
* Large-sized batches might impact the speed of execution. Consider using the default batch size, which is set to 100000.


### Prerequisites

Before running the PROCEDURE [read].[Delete_Insights_Data_Read] and
        PROCEDURE [read].[Delete_Process_Logs_Read] scripts, the Insights module
      needs to be disabled.

Log in to the Automation Suite cluster.Remove files that may conflict with the commands:rm -f appsettings.jsonGet the current settings:./bin/uipathctl config orchestrator get-config --app-settings > appsettings.json || echo '{}' > appsettings.jsonIgnore the following message if it is displayed:
              Cannot print custom config: Orchestrator custom config is missing
              appsettings.. This error message only implies there are no custom
            settings.Add the Insights.ModuleEnabled key and set it to
            False:jq '.["Insights.ModuleEnabled"] = "false"' appsettings.json > temp.json && mv -f temp.json appsettings.jsonUpdate the configuration:./bin/uipathctl config orchestrator update-config --app-settings appsettings.jsonValidate the configuration:./bin/uipathctl config orchestrator get-config --app-settingsThe expected result is as follows:{
    "Insights.ModuleEnabled": "false"
}The result can contain other settings unrelated to Insights.Run the maintenance scripts.After you run the maintenance script, re-enable Insights using the following
          steps.Remove any conflicting files:rm -f appsettings.jsonRemove the Insights.ModuleEnabled key:jq 'del(.["Insights.ModuleEnabled"])' appsettings.json > temp.json && mv -f temp.json appsettings.jsonUpdate the configuration:./bin/uipathctl config orchestrator update-config --app-settings appsettings.jsonConfirm the configuration:./bin/uipathctl config orchestrator get-config --app-settingsThe expected result is as
          follows:{}The result can contain other
          settings unrelated to Insights.


### Resources

SQL Stored Procedures download location


### SQL stored procedure 1: delete all data based on cut-off timestamp

Generate and save the following SQL Stored Procedures to delete all data types (Jobs, JobEvents, QueueItems, QueueItemEvents, RobotLogs) for a cut-off timestamp.


| SQL Stored Procedures | Parameter | Description |
| --- --- ---| Delete_Insights_Data_DBO | @CutoffTimeStamp DATETIME (Required)Delete all five types of data before a specified timestamp (e.g., 2021-01-01 01:00:05).Do not provide a timestamp that deletes all data to an empty table.@BatchSize INT = 100000 (Optional)Default is set to 100000.Data is deleted batch by batch. For example, if you have 1 million RobotLogs and leave the default value, the delete command runs ten times to remove all data. | Delete data from [dbo].[Jobs],[dbo].[JobEvents], [dbo].[QueueItems], [dbo].[QueueItemEvents], [dbo].[RobotLogs] tables based on a cut-off timestamp. |
| Delete_Insights_Data_Read | N/A | Truncate [read].Jobs, [read].JobEvents,[read].QueueItems, [read].QueueItemEvents, [read].RobotLogs tables. |

The Insights Dashboard widgets are available again after SQL Stored Procedure 1 has finished, and the data has been backfilled. Keep in mind that the backfill process may take hours to complete given that you have a large amount of data.When you first run the Delete_Insights_Data_DBO SQL Script, it creates a QueueItems.IX_CreationTime nonclustered index with the purpose of making future executions faster.


### SQL stored procedure 2: delete RobotLogs data based on ProcessNames and Tenant ID

Generate and save this SQL Stored Procedure to delete RobotsLogs based on ProcessNames and Tenant ID.


| SQL Stored Procedures | Parameter | Description |
| --- --- ---| Delete_Process_Logs_DBO | @ProcessName NVARCHAR(128) (Required)The Orchestrator process name.@TenantId INT (Required)Tenant ID is required as two tenants might run processes with identical names.@BatchSize INT = 100000 (Optional)Delete data in batches of 100000. See Considerations. | Delete data from [dbo].[RobotLogs] table by ProcessName and Tenant ID. |
| Delete_Process_Logs_Read | @ProcessName NVARCHAR(128) (Required)@TenantId INT (Required) | Truncate [read].RobotLogs table. |

The Insights Dashboard widgets related to RobotLogs are available again after SQL Stored Procedure 2 has finished, and the data has been backfilled. Keep in mind that the backfill process may take hours to complete given that you have a large amount of data.


### Related articles

Stored Procedures (Database Engine)

