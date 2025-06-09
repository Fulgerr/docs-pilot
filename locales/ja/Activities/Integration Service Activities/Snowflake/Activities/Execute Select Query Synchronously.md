# Execute Select Query Synchronously

# Description

Executes a select query on a Snowflake warehouse and returns the query result.

The default limit for retrieved records is 200 records.
                    You can set the LIMIT and OFFSET parameters directly in the Select Query
                    property (example: SELECT * PERSONS LIMIT 2000 OFFSET 1000),
                    within a Do While activity, to paginate through
                    all records without timing out the process.

# Project compatibility

Windows | Cross-platform

# Configuration

* 
* Select Query - Input a valid SELECT query and then click the Generate output schema button. Query example: SELECT * FROM PERSONS.Add a valid query (without variables) to generate the schema. You can add or update variables in the query after the schema is successfully generated. See the Snowflake official documentation on query syntax.





* Query results - The query results. Dynamic output based on the used query.During design time, the query builds the output properties while running. You can then use these properties in downstream activities as input.
