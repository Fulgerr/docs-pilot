# Technical references


## Working with Snowflake activities

This page includes some tips you may find useful
            when working with Snowflake activities.

When you expect your query to
                    result in a large set of rows, always use LIMIT and
                    OFFSET to paginate through your results. Refer to the
                    Snowflake documentation for query examples for this use case.Generate Output Schema works successfully only for query statements that
                    do not contain any workflow variables. Once the output schema is generated, you
                    can replace the query with variables. We recommend using a query that you’re
                    successfully able to run in Snowflake directly.Use  for any
                    queries that take more than 30 seconds to execute.You can execute non-Select
                    commands (such as insert, update, stored procedures, etc.) only with the 
                    activity.Use  with the
                    query ID obtained from the output of .You can use the  trigger to
                    initiate a process when a query was successfully executed or encountered an
                    error.To get the results of an
                    asynchronous query, use . Use the query ID from the output of  to generate
                    the output schema. Once the schema is generated, you can use a variable query
                    ID. Changing the input to a variable does not affect the output properties,
                    which remain the same. This means the generated output can't be changed unless
                    you manually regenerate it. We recommend setting up different workflow processes
                    if needed. If you’re using Studio Desktop, you can use the Native Search
                    activity from Snowflake package version 5.0.1.For the Record Created and
                    Record Updated triggers to run successfully, you must execute the
                    following query on the tables you are monitoring for events: ALTER TABLE
                        [TABLE_NAME] SET CHANGE_TRACKING = TRUE;. Additionally, make sure
                    you have the required permissions configured in Snowflake.


## Identifying the Primary Key output while
        inserting a row in Snowflake

If you have a table with an auto-incrementing ID column, a common use case is wanting to insert a
            row in that table and output the ID of the created row.

The simplest workaround to this problem is to maintain a foreign key relationship in the
            table where you want to offload your data. In the example below, you may find that in
            the Snowflake Insert Record activity, even though you have an Output
                SNOWFLAKE_ID, there is no real output during execution when the row
            gets added. This is a Snowflake limitation. Therefore, we maintain a Foreign Key Column
                (SFDC_OPPORTUNITY_ID) for this table.

Once the row is added, we can use the Snowflake Native search activity to query
            the Primary Key (SNOWFLAKE_ID) in exchange for the Foreign Key
                (SFDC_OPPORTUNITY_ID) and using a subsequent Get Row Item
            system activity.

The returned SNOWFLAKE_ID (Primary Key) can also be stored in
            the upstream application in a custom field (Salesforce in this case), so that each time
            an update needs to be performed in a row, the ID does not need to be queried with
            Foreign Key.

