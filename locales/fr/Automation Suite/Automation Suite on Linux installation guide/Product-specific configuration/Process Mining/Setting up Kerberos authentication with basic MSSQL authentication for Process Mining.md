# Setting up Kerberos authentication with basic MSSQL authentication for Process Mining

When you are performing a new installation and you want to use Kerberos authentication, it is strongly recommended to configure process app security as single_account. Refer to  for details.

When you want to use Kerberos authentication for login to Automation Suite and use basic MSSQL authentication for Process Mining you need to add the following in the processmining section in the cluster_config.json file.

"kerberos_auth_config": {
      "enabled": false
    },

# Example Kerberos authentication with basic MSSQL and PostgreSQL authentication for Process Mining

The following code shows an example processmining section with Kerberos authentication with basic MSSQL and PostgreSQL authentication for Process Mining.

"processmining": {
    "enabled": true,
    "kerberos_auth_config": {
      "enabled": false
    },
    "airflow": {
      "metadata_db_connection_str": "postgresql+psycopg2://testadmin:<password>@sfdev8454496-postgresql.postgres.database.azure.com:5432/AutomationSuite_Airflow"
    },
    "sql_connection_str": "Server=tcp:servername.database.windows.net,1433;Initial Catalog=AutomationSuite_ProcessMining_Metadata;Persist Security Info=False;User ID=username;Password=Password@password;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;Max Pool Size=100;",
    "warehouse": {
          "sql_connection_str": "Server=tcp:servername.database.windows.net,1433;Initial Catalog=AutomationSuite_ProcessMining_Warehouse;Persist Security Info=False;User ID=username;Password=Password@password;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;Max Pool Size=100;",
          "sqlalchemy_pyodbc_sql_connection_str": "mssql+pyodbc://username%servername.database.windows.net:Password%password@servername.database.windows.net:1433/AutomationSuite_ProcessMining_Warehouse?driver=ODBC+Driver+17+for+SQL+Server"
       }
    },

# Example Kerberos authentication with basic MSSQL for Process Mining

The following code shows an example processmining section with Kerberos authentication with basic MSSQL authentication for Process Mining.

"processmining": {
    "enabled": true,
    "kerberos_auth_config": {
      "enabled": false
    },
    "sql_connection_str": "Server=tcp:servername.database.windows.net,1433;Initial Catalog=AutomationSuite_ProcessMining_Metadata;Persist Security Info=False;User ID=username;Password=Password@password;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;Max Pool Size=100;",
    "sqlalchemy_pyodbc_sql_connection_str": "mssql+pyodbc://username%servername.database.windows.net:password%password@servername.database.windows.net:1433/AutomationSuite_Airflow?driver=ODBC+Driver+17+for+SQL+Server",
    "warehouse": {
          "sql_connection_str": "Server=tcp:servername.database.windows.net,1433;Initial Catalog=AutomationSuite_ProcessMining_Warehouse;Persist Security Info=False;User ID=username;Password=Password@password;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;Max Pool Size=100;",
          "sqlalchemy_pyodbc_sql_connection_str": "mssql+pyodbc://username%servername.database.windows.net:Password%password@servername.database.windows.net:1433/AutomationSuite_ProcessMining_Warehouse?driver=ODBC+Driver+17+for+SQL+Server"
       }
    },
