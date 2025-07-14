# Unable to access Automation Hub following upgrade to Automation Suite 2024.10.0

# Description

After upgrading to Automation Suite 2024.10.0, you can no longer access Automation Hub due to database schema discrepancies. We fixed the issue in Automation Suite 2024.10.1.

# Solution

To address the problem, you must run the following SQL script on the AutomationSuite_Automation_Hub database:

-- IMPORTANT:
-- This script should be executed in the AutomationSuite_Automation_Hub database.

-- Purpose:
-- This script resolves potential issues encountered during the upgrade to version 2024.10.0 of Automation Hub. 
-- Please replace placeholders with actual data before running the script.

-- Assumptions:
-- The customer has an existing Automation Hub instance running a version prior to 2024.10.0.

-- Variables:
-- @AccountName: Logical name of the Automation Suite organization. Replace '<USER_INPUT>' with the actual name.
-- @TenantName: Logical name of the Automation Suite tenant. Replace '<USER_INPUT>' with the actual name.

-- Note:
-- The script will terminate if any errors occur and will provide error details for debugging.

SET XACT_ABORT ON;

-- Replace placeholders with actual values
DECLARE @AccountName NVARCHAR(255) = '<USER_INPUT>';
DECLARE @TenantName NVARCHAR(255) = '<USER_INPUT>';

-- DO NOT EDIT ANYTHING AFTER THIS POINT --

BEGIN TRY
    BEGIN TRANSACTION;

    -- Validate placeholders
    IF @AccountName = '<USER_INPUT>' OR 
       @TenantName = '<USER_INPUT>'
    BEGIN
        RAISERROR('Placeholders were not replaced with actual values. Please update the script and retry.', 16, 1);
        RETURN;
    END;

    -- Declare variables for tenant information
    DECLARE @TenantUUID NVARCHAR(255);
    DECLARE @TsTablePrefix NVARCHAR(255);

    -- Retrieve tenant_uuid from the cloud_tenants table based on TenantName and AccountName
    DECLARE @sql NVARCHAR(MAX);
    DECLARE @params NVARCHAR(MAX);

    SET @sql = N'SELECT @TenantUUID = tenant_uuid 
                  FROM ah.cloud_tenants 
                  WHERE cloud_TenantName = @TenantName 
                    AND cloud_AccountName = @AccountName;';
    SET @params = N'@TenantName NVARCHAR(255), @AccountName NVARCHAR(255), @TenantUUID NVARCHAR(255) OUTPUT';

    EXEC sp_executesql @sql, 
                       @params, 
                       @TenantName = @TenantName, 
                       @AccountName = @AccountName, 
                       @TenantUUID = @TenantUUID OUTPUT;

    -- Abort if tenant_uuid is not found
    IF @TenantUUID IS NULL
    BEGIN
        RAISERROR('No tenant found for the provided TenantName and AccountName. Script execution aborted.', 16, 1);
        RETURN;
    END;

    -- Retrieve tenant_db_table_prefix from tenants table using tenant_uuid
    SET @sql = N'SELECT @TsTablePrefix = tenant_db_table_prefix 
                  FROM ah.tenants 
                  WHERE tenant_uuid = @TenantUUID;';
    SET @params = N'@TenantUUID NVARCHAR(255), @TsTablePrefix NVARCHAR(255) OUTPUT';

    EXEC sp_executesql @sql, 
                       @params, 
                       @TenantUUID = @TenantUUID, 
                       @TsTablePrefix = @TsTablePrefix OUTPUT;

    -- Abort if tenant_db_table_prefix is not found
    IF @TsTablePrefix IS NULL
    BEGIN
        RAISERROR('No tenant found in the tenants table for the provided tenant_uuid. Script execution aborted.', 16, 1);
        RETURN;
    END;

    -- Drop the default constraint for assignment_days column
    DECLARE @ConstraintName NVARCHAR(200);
    SELECT @ConstraintName = dc.name
    FROM sys.default_constraints dc
        INNER JOIN sys.columns c
            ON dc.parent_object_id = c.object_id
           AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID(@TsTablePrefix + 'process_cost_benefit_one_time_costs_estimates')
        AND c.name = 'assignment_days';

    IF @ConstraintName IS NOT NULL
    BEGIN
        EXEC('ALTER TABLE ' + @TsTablePrefix + 'process_cost_benefit_one_time_costs_estimates DROP CONSTRAINT [' + @ConstraintName + ']');
    END;

    -- Recreate the default constraint for assignment_days
    DECLARE @UniqueConstraintName NVARCHAR(255) = '[' + @TsTablePrefix + 'DF_assignment_days]';
    BEGIN
        EXEC('ALTER TABLE ' + @TsTablePrefix + 'process_cost_benefit_one_time_costs_estimates ADD CONSTRAINT ' + @UniqueConstraintName + ' DEFAULT 0.00 FOR assignment_days');
    END

    -- Drop the index on the assignment_days column
    IF EXISTS (SELECT 1 
               FROM sys.indexes 
               WHERE name = 'assignment_days' 
				 AND object_id = OBJECT_ID(@TsTablePrefix + 'process_cost_benefit_one_time_costs_estimates')
	)
    BEGIN
        EXEC('DROP INDEX assignment_days ON ' + @TsTablePrefix + 'process_cost_benefit_one_time_costs_estimates');
    END;

    -- Alter the assignment_days column
    EXEC('ALTER TABLE ' + @TsTablePrefix + 'process_cost_benefit_one_time_costs_estimates ALTER COLUMN assignment_days NUMERIC(15, 2) NOT NULL');

    -- Recreate the index on assignment_days
    EXEC('CREATE NONCLUSTERED INDEX assignment_days ON ' + @TsTablePrefix + 'process_cost_benefit_one_time_costs_estimates (assignment_days ASC)');

    -- Insert a record into the migrations table
    EXEC('INSERT INTO ' + @TsTablePrefix + 'migrations (name, run_on) VALUES (''tenants/20230925145641-edit-cba-one-time-costs-estimates-table-column'', CURRENT_TIMESTAMP)');

    -- Commit the transaction
    COMMIT TRANSACTION;

    PRINT 'Script executed successfully.';
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION;

    -- Output error details
    PRINT 'Error occurred during script execution:';
    PRINT 'Error Number: ' + CAST(ERROR_NUMBER() AS VARCHAR(10));
    PRINT 'Error Severity: ' + CAST(ERROR_SEVERITY() AS VARCHAR(10));
    PRINT 'Error State: ' + CAST(ERROR_STATE() AS VARCHAR(10));
    PRINT 'Error Procedure: ' + ISNULL(ERROR_PROCEDURE(), '');
    PRINT 'Error Line: ' + CAST(ERROR_LINE() AS VARCHAR(10));
    PRINT 'Error Message: ' + ERROR_MESSAGE();
END CATCH;
