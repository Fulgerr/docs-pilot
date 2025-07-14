# Process Mining-specific configuration

If enabling Process Mining, we recommend users to specify a SECONDARY SQL server to act as a data warehouse that is separate from the primary Automation Suite SQL Server. The data warehouse SQL Server will be under heavy load and can be configured in the processmining section:


| Parameter | Description |
| --- ---| sql_connection_str | DotNet formatted connection string with database set as a placeholder: Initial Catalog=DB_NAME_PLACEHOLDER. |
| airflow.metadata_db_connection_str | This applies to PostgreSQL AutomationSuite Airflow database and is recommended for version 2024.10.3 or higher.Sqlalchemy PSYCOPG2 formatted connection string for custom airflow metadata database location: PostgreSQL:5432/DB_NAME_PLACEHOLDER.Example:postgresql+psycopg2://testadmin:<password>@postgres.company.com:5432/DB_NAME_PLACEHOLDERYou can also use the metadata_db_connection_str in the processmining section at the global level in the cluster_config.json to provide the value for the Airflow metadatabase. In this case, the airflow.metadata_db_connection_str is optional."processmining": {      "enabled": true,     "app_security_mode": "system_managed",     "airflow": {       "metadata_db_connection_str": "postgresql+psycopg2://testadmin:<password>@sfdev8454496-postgresql.postgres.database.azure.com:5432/AutomationSuite_Airflow"}, |
| sqlalchemy_pyodbc_sql_connection_str | This is only applicable for Microsoft SQL Server AutomationSuite Airflow database and can no longer be used starting from version 2025.10.Sqlalchemy PYODBC formatted connection string for custom airflow metadata database location: sqlServer:1433/DB_NAME_PLACEHOLDER.Example:mssql+pyodbc://testadmin%40myhost:mypassword@myhost:1433/AutomationSuite_Airflow?driver=ODBC+Driver+17+for+SQL+Server&TrustServerCertificate=YES&Encrypt=YESwhereuser: testadmin%40myhostIf there is '@' in user name it has to be urlencoded to %40Example: (SQL Server setup with Kerberos authentication)mssql+pyodbc://:@assql2019.autosuitead.local:1433/AutomationSuite_ProcessMining_Warehouse?driver=ODBC+Driver+17+for+SQL+Server&TrustServerCertificate=YES&Encrypt=YES&Trusted_Connection=yes |
| warehouse.sql_connection_str | DotNet formatted SQL connection string to the processmining data warehouse SQL Server with placeholder for dbname:Initial Catalog=DB_NAME_PLACEHOLDER. |
| warehouse.sqlalchemy_pyodbc_sql_connection_str | Sqlalchemy PYODBC formatted SQL connection string to the processmining data warehouse SQL Server with placeholder for dbname:sqlServer:1433/DB_NAME_PLACEHOLDER. |
| warehouse.master_sql_connection_str | If the installer is creating databases through sql.create_db: true setting, a DotNet formatted master SQL connection string must be provided for the processmining data warehouse SQL Server. Database in the connection string must be set as master. |

Sample Process Mining connection string with PostgreSQL for AutomationSuite_Airflow

"processmining": {
    "enabled": true,
    "app_security_mode": "system_managed",
    "airflow": {
      "metadata_db_connection_str": "postgresql+psycopg2://testadmin:<password>@sfdev8454496-postgresql.postgres.database.azure.com:5432/AutomationSuite_Airflow"
    },
    "warehouse": {
      "sql_connection_str": "Server=tcp:kerberossql.autosuitead.local,1433;Initial Catalog=AutomationSuite_Warehouse;Persist Security Info=False;User Id=testadmin;Password='<password>';MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=True;Connection Timeout=30;Max Pool Size=100;",
      "sqlalchemy_pyodbc_sql_connection_str": "mssql+pyodbc://testadmin:<password>@kerberossql.autosuitead.local:1433/AutomationSuite_Warehouse?driver=ODBC+Driver+17+for+SQL+Server&TrustServerCertificate=YES&Encrypt=YES",
      "master_sql_connection_str": "Server=tcp:kerberossql.autosuitead.local,1433;Initial Catalog=master;Persist Security Info=False;User Id=testadmin;Password='<password>';MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=True;Connection Timeout=30;Max Pool Size=100;"



Sample Process Mining connection string with Microsoft SQL Server for AutomationSuite_Airflow

"processmining": {
    "enabled": true,
    "app_security_mode": "system_managed",
    "warehouse": {
        "sql_connection_str": "Server=tcp:sfdev4515230-sql.database.windows.net,1433;Initial Catalog=AutomationSuite_ProcessMining_Warehouse;User Id=testadmin@sfdev4515230-sql.database.windows.net;Password='password';Persist Security Info=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=True;Connection Timeout=30;Max Pool Size=100;",
	    "sqlalchemy_pyodbc_sql_connection_str": "mssql+pyodbc://testadmin%40sfdev4515230-sql.database.windows.net:<password>:@sfdev4515230-sql.database.windows.net:1433/AutomationSuite_ProcessMining_Warehouse?driver=ODBC+Driver+17+for+SQL+Server&TrustServerCertificate=YES&Encrypt=YES",
        "master_sql_connection_str": "Server=tcp:sfdev4515230-sql.database.windows.net,1433;Initial Catalog=master;Persist Security Info=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=True;Connection Timeout=30;Max Pool Size=100;"
    },
    "sqlalchemy_pyodbc_sql_connection_str": "mssql+pyodbc://testadmin%40sfdev4515230-sql.database.windows.net:<password>@sfdev4515230-sql.database.windows.net:1433/AutomationSuite_Airflow?driver=ODBC+Driver+17+for+SQL+Server&TrustServerCertificate=YES&Encrypt=YES"
    "sql_connection_str": "Server=tcp:sfdev4515230-sql.database.windows.net,1433;Initial Catalog=AutomationSuite_ProcessMining_Metadata;User Id=testadmin@sfdev4515230-sql.database.windows.net;Password='password';Persist Security Info=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=True;Connection Timeout=30;Max Pool Size=100;",  
},

When using Kerberos authentication, utilize the Integrated Security and Trusted_Connection parameters. By setting Integrated Security to true and setting Trusted_Connection to yes, the credentials of the currently logged in user are used for the connection. In this case, you do not need to specify a separate username and password.

If you use Microsoft SQL Server for AutomationSuite_Airflow database, make sure you meet the following requirements.Make sure that the timezone of the SQL Server machine where the Airflow database is installed, is set to UTC.You must use the default server port 1433 for Airflow database connections. Non-standard SQL server ports are not supported.

When configuring the connection strings for the Process Mining data warehouse SQL Server, the named instance of the SQL Server should be omitted.Named instances of SQL Server cannot operate on the same TCP port. Therefore, the port number alone is sufficient to distinguish between instances.For example, use tcp:server,1445 instead of tcp:server\namedinstance,1445.

Note that the names for template PYODBC connection string postgresql_connection_string_template_sqlalchemy_pyodbc (for PostgreSQL) respectively sql_connection_string_template_sqlalchemy_pyodbc (for MS SQL Server) and the PYODBC connection string sqlalchemy_pyodbc_sql_connection_str used when you bring your own database are different. Also connection string names are different for the template SQL sql_connection_string_template and sql_connection_str used when you bring your own database.

If you bring your own database and you configured this using the sql_connection_str and sqlalchemy_pyodbc_sql_connection_str or airflow.metadata_db_connection_str connection strings in the processmining section of the cluster_config.jsonfile, the template connection strings sql_connection_string_template and postgresql_connection_string_template_sqlalchemy_pyodbc (for PostgreSQL) respectively sql_connection_string_template_sqlalchemy_pyodbc (for MS SQL Server) are ignored if specified.
