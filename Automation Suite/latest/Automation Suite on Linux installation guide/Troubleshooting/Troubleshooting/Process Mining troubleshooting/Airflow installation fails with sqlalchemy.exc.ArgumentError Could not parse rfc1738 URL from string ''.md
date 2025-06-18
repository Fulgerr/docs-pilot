# Airflow installation fails with sqlalchemy.exc.ArgumentError: Could not parse rfc1738 URL from string ''

# Possible cause

The sqlalchemy PYODBC connection strings for Process Mining are not defined correctly in the

cluster_config.json

.

# Solution

1. Check the processmining section in the cluster_config.json to verify if connections strings are specified properly.
2. Check if there is sqlalchemy_pyodbc_sql_connection_str specified.

If the sqlalchemy_pyodbc_sql_connection_str is not specified in the processmining section it should be specified in template string sql_connection_string_template_sqlalchemy_pyodbc
