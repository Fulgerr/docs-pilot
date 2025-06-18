# Cleaning up the Task Mining database

This page describes the necessary maintenance tasks for the Task Mining databases.

# Overview

The default Task Mining database, named [AutomationSuite_Task_Mining], uses a single schema [tddiscovery] for data storage. Primarily, Task Mining stores data in the object store, reducing the need of frequent database maintenance. If required, you can use the Remove_Active_History.sql database maintenance script to periodically clean up the following database table:

* [AutomationSuite_Task_Mining].[tddiscovery].[ActivityHistory]

Ensure to back up the Task Mining database [AutomationSuite_Task_Mining] before executing any scripts.

# Prerequisites

The following prerequisites are assumed:

* You have access to the [AutomationSuite_Task_Mining] database with the required permissions.

# Remove_Active_History.sql script

CREATE PROCEDURE [tddiscovery].[Delete_TaskMining_ActivityHistory] 
   @CutoffTimeStamp datetime2, 
   @BatchSize INT = 10000 
AS
BEGIN
  
   DECLARE @total_deleted_items BIGINT = 0; 
   
   SET NOCOUNT ON;
   
   -- delete ActivityHistoryItems 
   DECLARE @Deleted_Rows_ActivityHistoryItems INT = @BatchSize; 
   WHILE(@Deleted_Rows_ActivityHistoryItems = @BatchSize)
   BEGIN
     DELETE TOP(@BatchSize) FROM [tddiscovery].[ActivityHistory] WHERE At <= @CutoffTimeStamp; 
     SET @Deleted_Rows_ActivityHistoryItems = @@ROWCOUNT; 
     SET @total_deleted_items = @Deleted_Rows_ActivityHistoryItems + @total_deleted_items;
   END;

   PRINT('The script executed successfully!');
   PRINT('Total deleted rows from [tddiscovery].[ActivityHistory]: ' + CONVERT(NVARCHAR, @total_deleted_items));

END; 
GO

# Steps

1. Run the Remove_Active_History.sql database maintenance script to create the Delete_TaskMining_ActivityHistory Stored Procedure.Always use the most recent version of the Stored Procedure.It is strongly recommended to archive previously executed SQL Stored Procedures by renaming the Stored Procedures. This provides an opportunity to detect and address any potential issues or anomalies within that particular version of the SQL Stored Procedure. The following code provides an example on how to rename a SQL Stored Procedure for archiving purposes.EXEC sp_rename '[tddiscovery].[Delete_TaskMining_ActivityHistory]', '[Delete_TaskMining_ActivityHistory_2024-10-10_001]';
2. Execute the Delete_TaskMining_ActivityHistory Stored Procedure. This deletes all data related to Activity History for a cut-off timestamp from the [AutomationSuite_Task_Mining].[tddiscovery].[ActivityHistory] table.



# SQL Stored Procedure: Delete active history

Before executing the PROCEDURE [tddiscovery].[Delete_TaskMining_ActivityHistory] script, ensure that Task Mining usage is suspended.

Although there is no restriction on deleting data using a SQL Stored Procedure, it would be a good practice to retain the activity history in the system for a minimum period, for example, 30 days, to preserve recent activity records. This also provides an opportunity to detect and address any potential issues or anomalies within the SQL Stored Procedure before it is permanently deleted.

The following table describes the parameters for the Delete_TaskMining_ActivityHistory SQL Stored Procedure.

ParameterDescriptionMandatory Y/N@CutoffTimeStampDelete all data before a specified timestamp (e.g., 2021-01-01 01:00:05).Do not provide a timestamp that leads to an empty table.Y@BatchSize INT = 10000The number of rows to be deleted at a time. This enables you to delete the data batch by batch.The default is set to 10000.NThe following code provides an example of how to run the Stored Procedure.

DECLARE @ProcessTime datetime2;
SET @ProcessTime = '2024-07-11 13:44:42.7856026';
EXEC [tddiscovery].[Delete_TaskMining_ActivityHistory] @CutoffTimeStamp = @ProcessTime;

For more information, see the official Microsoft documentation on Stored procedures.
