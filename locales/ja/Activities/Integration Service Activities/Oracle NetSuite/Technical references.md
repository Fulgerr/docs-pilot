# Technical references

This section includes useful information you may require when interacting with Oracle
            NetSuite activities:

## Using the Execute Suite QL Query activity

This guide explains how to use the  activity.

Suite QL is an SQL-like query language that provides you with advanced query capabilities for interacting with NetSuite records and data.

In the example below, our goal is to query the Subsidiary table in NetSuite.

Add an  activity to
                    your workflow. To begin with, you must identify the query and determine the output object it will generate based on the query provided. Currently, the output is missing. You must generate it by using the Generate output schema button.Use a TOP 1 clause in your query to minimize execution time while creating the output object. This ensures that even if the query result is large, the process remains efficient. Also, you can include only the column names in your query to generate output properties accordingly, to further reduce execution time. Add a Write Line or Log Message activity to check and verify the output properties.Using the SuiteQL Query Response in a Write Line activityUsing the SuiteQL Query Response in a Write Line activityNext, run the process. During the process execution time, ensure that the output of the query you are using aligns with the properties of the output you generated. This can include some or all properties, depending on your specific requirements.

# Recommendations and limitations

It is recommended to first generate the output schema of your query results. Then, at design time, replace any column values with variables.Only SELECT queries are supported.The query must be executed within 90 seconds. This is a platform limitation. SuiteQL has certain limitations. These remain applicable when using the activity.

