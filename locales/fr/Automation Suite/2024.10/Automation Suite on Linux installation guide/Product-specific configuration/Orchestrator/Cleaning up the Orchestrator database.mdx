# Cleaning up the Orchestrator database

The following scripts replace any and all previous database cleanup scripts. They cover all necessary maintenance tasks and can be configured as needed.

You can download the Orchestrator database maintenance scripts from the Customer Portal.If the number of Robot logs stored in
                    the table is higher than 1 million, we recommend creating the following index
                    for improved search
                    performance:CREATE NONCLUSTERED INDEX [IX_Search] ON [dbo].[Logs]
(
[TenantId] ASC,
[OrganizationUnitId] ASC,
[Level] ASC,
[TimeStamp] DESC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO

### SQL script

# Prerequisites

This is what you need to be able to run the CreateOrchestratorCleanupObjects.sql script:

* You must have access to the archive database from within the context of your Orchestrator database.
* You must be able to access the archive using 3-part names, such as Archive.dbo.QueueItemsTableArchive.

# How to use it

1. Run the CreateOrchestratorCleanupObjects.sql SQL script to create the following objects:

* The dbo.__CleanupLog table, which houses the execution logs.
* The dbo.GetOrCreateArchiveTable procedure, which creates or returns the archive table.
* The dbo.RunOrchestratorCleanup procedure, which performs the deletion and, optionally, the archival of old data.

2. Execute dbo.RunOrchestratorCleanup with the scheduling XML configuration file to perform the cleanup. For details on the XML file, see the Scheduling the cleanup section.

You can also use SQL Server Agent to perform the cleanup.

Script sampleDECLARE @cleanupConfigXml XML = 
'<CleanupConfig totalRunMaxMinutes="180">
	<Table name="QueueItems" runMaxMinutes="-1" idColumn="Id" dateTimeColumn="CreationTime" additionalFilter="Status IN (2, 3, 4, 5, 6)" daysOld="180" batchSize="50" forceCascade="1" shouldArchive="1" />
</CleanupConfig>';

EXEC dbo.RunOrchestratorCleanup 
@cleanupConfigXml = @cleanupConfigXml,
@archiveDatabaseName = 'OrchestratorArchive';


### PowerShell script

This is appropriate for situations where you cannot use the SQL script.

The PowerShell script is compatible with Powershell 5.1 and can be used with Azure Automation runbooks.

# Prerequisites

The RunOrchestratorCleanup.ps1 script must be able to communicate with both these connection strings:

* SourceConnectionString - this is the Orchestrator database connection string.
* DestinationConnectionString - this is the archive database connection string. Note that the archive database must be created and setup in advance.

# Objects it creates

* The dbo.__CleanupLog table, which houses the execution logs.
* The dbo.__CleanupIds table, which stores a temporary batch of IDs that need to be cleaned up.

# Limitations

The script opens two connections: one to the Orchestrator database (via SourceConnectionString) and one to the archive database (via DestinationConnectionString). As such, no actual transaction is involved, since the data is copied from Orchestrator to the archive, after which it is deleted from Orchestrator.

This means that, if an exception is thrown anywhere between the two actions, causing the script to be re-executed, the same data might be copied again, thus leading to duplicates in the archive database.

However, since uniqueness is not enforced in the archive database, this does not lead to any issues.

Script sample.\RunOrchestratorCleanup 
-SourceConnectionString "Data Source=.;Initial Catalog=UiPath;User ID=sa;Password=******" 
-DestinationConnectionString "Data Source=.;Initial Catalog=<OrchestratorArchive>;User ID=sa;Password=******" 
-CleanupConfigXml '<CleanupConfig totalRunMaxMinutes="180"><Table name="QueueItems" runMaxMinutes="-1" idColumn="Id" dateTimeColumn="CreationTime" additionalFilter="Status IN (2, 3, 4, 5, 6)" daysOld="180" batchSize="50" forceCascade="1" shouldArchive="1" /></CleanupConfig>'


### Scheduling the cleanup

You can choose what data to clean up from your database, when, and for how long the cleanup activity should be performed for each run, among others.

To do that, use the following XML file with either the SQL or the PowerShell script. It is preconfigured with our recommended parameters, but you can edit it if you want more advanced features. Please make sure you understand what each parameter does before you edit the script, as this can have serious consequences.

<CleanupConfig totalRunMaxMinutes="180">
    <Table name="QueueItems" runMaxMinutes="-1" idColumn="Id" dateTimeColumn="CreationTime" additionalFilter="Status IN (2, 3, 4, 5, 6)" daysOld="180" batchSize="50" forceCascade="1" shouldArchive="1" />
    <Table name="Jobs" runMaxMinutes="-1" idColumn="Id" dateTimeColumn="CreationTime" additionalFilter="State IN (4, 5, 6)" daysOld="180" batchSize="50" forceCascade="1" shouldArchive="1" />        
    <Table name="Logs" runMaxMinutes="-1" idColumn="Id" dateTimeColumn="TimeStamp" additionalFilter="" daysOld="90" batchSize="1000" forceCascade="0" shouldArchive="1" />    
    <Table name="AuditLogs" runMaxMinutes="-1" idColumn="Id" dateTimeColumn="ExecutionTime" additionalFilter="" daysOld="365" batchSize="25" forceCascade="1" shouldArchive="1" />
    
    <Table name="Tasks" runMaxMinutes="-1" idColumn="Id" dateTimeColumn="DeletionTime" additionalFilter="IsDeleted = 1" daysOld="180" batchSize="10" forceCascade="0" shouldArchive="1" />
    <Table name="QueueProcessingRecords" runMaxMinutes="-1" idColumn="Id" dateTimeColumn="ProcessingTime" additionalFilter="ReportType != -1" daysOld="30" batchSize="1000" forceCascade="0" shouldArchive="0" />
    <Table name="Sessions" runMaxMinutes="-1" idColumn="Id" dateTimeColumn="ReportingTime" additionalFilter="" daysOld="180" batchSize="50" forceCascade="1" shouldArchive="0" />    
    
    <Table name="RobotLicenseLogs" runMaxMinutes="-1" idColumn="Id" dateTimeColumn="StartDate" additionalFilter="" daysOld="180" batchSize="1000" forceCascade="0" shouldArchive="0" />    
    <Table name="UserNotifications" runMaxMinutes="-1" idColumn="Id" dateTimeColumn="CreationTime" additionalFilter="" daysOld="90" batchSize="1000" forceCascade="0" shouldArchive="0" />
    <Table name="TenantNotifications" runMaxMinutes="-1" idColumn="Id" dateTimeColumn="CreationTime" additionalFilter="" daysOld="90" batchSize="1000" forceCascade="0" shouldArchive="0" />    
    <Table name="Ledger" runMaxMinutes="-1" idColumn="LedgerId" dateTimeColumn="CreationTime" additionalFilter="" daysOld="7" batchSize="1000" forceCascade="0" shouldArchive="0" />
    <Table name="LedgerDeliveries" runMaxMinutes="-1" idColumn="Id" dateTimeColumn="LastUpdatedTime" additionalFilter="" daysOld="7" batchSize="1000" forceCascade="0" shouldArchive="0" />
    <Table name="Assets" runMaxMinutes="-1" idColumn="Id" dateTimeColumn="DeletionTime" additionalFilter="IsDeleted = 1" daysOld="120" batchSize="50" forceCascade="1" shouldArchive="0" />
    <Table name="__CleanupLog" runMaxMinutes="-1" idColumn="Id" dateTimeColumn="ExecutionTimeUtc" additionalFilter="" daysOld="7" batchSize="1000" forceCascade="0" shouldArchive="0" />
</CleanupConfig>

Even if one run only manages to partially clean up one or a few tables, subsequent runs will continue the cleanup, up until the script catches up with all the backlog. It is, therefore, important that you do not accumulate a larger backlog than the script is able to handle. If this happens, consider scheduling the script to run more frequently.


### SQL and PowerShell scripts compared

FeatureSQL scriptPowerShell scriptCleanup XMLThey both use the logic described in the  section.Execution logThey both create a dbo.__CleanupLogs table to store the logs of the execution.You can query the logs of an execution by using SELECT * FROM dbo.__CleanupLog WHERE ExecutionId = '<execution_id>' ORDER BY Id.You can check if an execution contained errors by using SELECT * FROM dbo.__CleanupLog WHERE ExecutionId = '<execution_id>' AND IsError = 1.The ExecutionId parameter is generated with each execution of either of these scripts.Archive tableThe archive table does not contain any indexes, foreign keys, or identity columns.Timestamp type columns are not archived.Archive table nameThe names follow the same logic, and include a string based on the table schema.Batch of IDs to be archived/deletedStored in a temporary table.Stored in the dbo.__CleanupIds table.TransactionA single transaction is performed for every batch, during which the data is both archived and deleted.The batch size, i.e. the number of table rows to be processed, is defined in the XML file, through the batchSize parameter.SqlBulkCopy is used to copy the data.There is no single transaction performed for archival and deletion.

