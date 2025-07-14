# Database configuration


### Database creation workflow

The interactive installer automatically creates databases using the following workflow:

1. The interactive installer script checks the value of the sql.create_db parameter
                    in the cluster_config.json file. If  the sql.create_db parameter is set to true, the installer
                                                  automatically generates all the databases on your
                                                  behalf. In this case, the installer uses the
                                                  default database names and default templates, and
                                                  ignores any custom database names you
                                                  provided.For details, see Automatically create the necessary databases.If sql.create_db is set to false, you must bring your own databases. In this case, you must manually set up your databases. Note that you can use custom database names, provided that you follow the provided naming conventions. This step is critical because we use the database name in conjunction with the connection template to form the database connection string. If you do not follow the recommended naming convention, you must provide the SQL connection strings yourself.For details, see Bring your own databases.
2. The interactive installer generates the connection strings as follows: If you did not define a connection string for your service, the installer uses the connection template to generate all database connection strings.If you defined a connection string for your service, the installer uses the provided connection string for your database.


### Automatically create the necessary databases

If you want the installer to create the databases, fill in the following fields of the cluster_config.json file:


| Parameter | Description |
| --- ---| sql.create_db | Set to true to allow the installer to create the databases. Note that the installer uses the default database names and default templates, and ignores any custom database names you provided. |
| sql.server_url | FQDN of the SQL server, where you want the installer to configure database. |
| sql.port | Port number on which a database instance should be hosted in the SQL server. |
| sql.username | Username / user ID to connect to the SQL server. |
| sql.password | Password of the username provided earlier to connect to the SQL server. |

Ensure the user has the dbcreator role. This grants them permission to create the database in SQL Server. Otherwise, the installation fails. Automatically creating the necessary databases does not work in combination with directory authentication. If you use directory authentication, you must bring your own databases. ODBC connection does not support usernames that contain special characters. For database usernames for AI Center, Document Understanding, and Apps, use only uppercase and lowercase letters.

For Process Mining on Automation Suite 2024.10.3 or higher, using PostgreSQL for the Airflow database is the recommended option. If you choose to use a PostgreSQL database, you need to manually create the PostgreSQL database for AutomationSuite_Airflow before installing or upgrading to Automation Suite 2024.10.3 or higher. The PostgreSQL database for Airflow will not be created automatically by the installer.Refer to  for more information.


### Bring your own databases

If you choose to bring your own databases for a new Automation Suite installation, we
      strongly recommend setting up new databases rather than using existing ones. This precaution
      is necessary to prevent any conflicts with the operation of Automation Suite that might occur
      due to leftover metadata from old databases.

If you bring your own database, you must provide the SQL connection strings for every
      database. Automation Suite supports the following SQL connection string formats:

For Document Understanding, make sure that you are using the same
      database, unless otherwise explicitly stated. Specific connection strings are assigned to
      various services and jobs that connect to the same database.


| Parameter | Description | Products |
| --- --- ---| sql_connection_string_template | Full ADO.NET connection                 string where Catalog name is set to DB_NAME_PLACEHOLDER. The installer will replace                 this placeholder with the default database names for the installed suite                 services. | PlatformOrchestratorAutomation Suite RobotsTest Manager                   Automation HubAutomation OpsInsightsIntegration                   ServiceStudio WebTask MiningData ServiceProcess                   MiningDocument Understanding |
| sql_connection_string_template_jdbc | Full JDBC connection string                 where database name is set to DB_NAME_PLACEHOLDER. The installer will replace this                 placeholder with the default database names for the installed suite               services. | AI                 Center 1 |
| sql_connection_string_template_odbc | Full ODBC connection string                 where database name is set to DB_NAME_PLACEHOLDER. The installer will replace this                 placeholder with the default database names for the installed suite               services. | Document UnderstandingApps |
| sql_connection_string_template_sqlalchemy_pyodbc | Full SQL alchemy PYODBC connection                 string where database name is set to DB_NAME_PLACEHOLDER. The installer will replace                 this placeholder with the default database names for the installed suite                 services. | Document UnderstandingProcess Mining |
| postgresql_connection_string_template_sqlalchemy_pyodbc | Full SQL alchemy PSYCOPG2 connection               string where database name is set to DB_NAME_PLACEHOLDER. The installer will replace               this placeholder with the default database names for the installed suite               services. | Process Mining (2024.10.3 or newer) |

1 To install AI
      Center on a FIPS 140-2-enabled machine, you must append the following to
        sql_connection_string_template_jdbc:
        encrypt=true;trustServerCertificate=false;fips=true;.

Make sure the SQL account specified in the connection strings is granted the
          db_owner role for all Automation Suite databases. If security
        restrictions do not allow the use of db_owner, then the SQL account should
        have the following roles and permissions on all databases:db_securityadmindb_ddladmindb_datawriterdb_datareaderEXECUTE permission on
          dbo schemaWe only use the db_securityadmin and db_ddladmin roles
        during installation or if the databases are reprovisioned, so you may revoke these
        permission afterwards.Insights requires the db_owner role to be
        assigned for a successful installation.

If you manually set the connection strings in the configuration file, you
        can escape SQL, JDBC, ODBC, or PYODBC passwords as follows:for SQL: add ' at the
          beginning and end of the password, and double any other '.for JDBC/ODBC: add { at
          the beginning of the password and } at the end, and double any other
            }.for PYODBC: username and
            password should be url encoded to account for special characters.
          Document Understanding database passwords cannot start with {.

The AutomationSuite_ProcessMining_Airflow database for
      Process Mining product must have READ_COMMITTED_SNAPSHOT
      enabled.

By default,
          TrustServerCertificate is set to False, and you must
        provide an additional CA certificate for the SQL Server. This is required if the SQL Server
        certificate is self-signed or signed by an internal CA. If you do not provide the SQL Server
        certificate in this scenario, the prerequisite check will fail.See Certificate configuration on this page for more details.

sql_connection_string_template example

Server=tcp:sfdev1804627-c83f074b-sql.database.windows.net:1433;Initial Catalog=DB_NAME_PLACEHOLDER;Persist Security Info=False;User Id=testadmin@sfdev1804627-c83f074b-sql.database.windows.net;Password=***;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;Max Pool Size=100;

sql_connection_string_template_jdbc example

jdbc:sqlserver://sfdev1804627-c83f074b-sql.database.windows.net:1433;database=DB_NAME_PLACEHOLDER;user=testadmin;password=***;encrypt=true;trustServerCertificate=false;Connection Timeout=30;hostNameInCertificate=sfdev1804627-c83f074b-sql.database.windows.net"

sql_connection_string_template_odbc example

SERVER=sfdev1804627-c83f074b-sql.database.windows.net,1433;DATABASE=DB_NAME_PLACEHOLDER;DRIVER={ODBC Driver 17 for SQL Server};UID=testadmin;PWD=***;MultipleActiveResultSets=False;Encrypt=YES;TrustServerCertificate=NO;Connection Timeout=30;"

sql_connection_string_template_sqlalchemy_pyodbc example

mssql+pyodbc://testuser%40sfdev3082457-sql.database.windows.net:_-%29X07_%5E3-%28%3B%25e-T@sfdev3082457-sql.database.windows.net:1433/DB_NAME_PLACEHOLDER?driver=ODBC+Driver+17+for+SQL+Server"

postgresql_connection_string_template_sqlalchemy_pyodbc example (Process Mining )

postgresql+psycopg2://<user>:<password>@<host>:<port>/DB_NAME_PLACEHOLDER

sql_connection_string_template and
      postgresql_connection_string_template_sqlalchemy_pyodbc example (Process Mining)

"sql_connection_string_template": "Server=tcp:sfdev4515230-sql.database.windows.net,1433;Initial Catalog=DB_NAME_PLACEHOLDER;Persist Security Info=False;User Id=testadmin@sfdev4515230-sql.database.windows.net;Password='07<l[xj-=~:z`Ds&nl';MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;Max Pool Size=100;"

"postgresql_connection_string_template_sqlalchemy_pyodbc ": 
"postgresql+psycopg2://<user>:<password>@sfdev4515230-postgresql.database.windows.net:5432/DB_NAME_PLACEHOLDER"

sql_connection_string_template and sql_connection_string_template_sqlalchemy_pyodbc
      example (Process Mining)

"sql_connection_string_template": "Server=tcp:sfdev4515230-sql.database.windows.net,1433;Initial Catalog=DB_NAME_PLACEHOLDER;Persist Security Info=False;User Id=testadmin@sfdev4515230-sql.database.windows.net;Password='07<l[xj-=~:z`Ds&nl';MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;Max Pool Size=100;"

"sql_connection_string_template_sqlalchemy_pyodbc": "mssql+pyodbc://testadmin%40sfdev4515230-sql.database.windows.net:07%3Cl%5Bxj-%3D~%3Az%60Ds%26nl@sfdev4515230-sql.database.windows.net:1433/DB_NAME_PLACEHOLDER?driver=ODBC+Driver+17+for+SQL+Server"

Default and optional DB names for Automation Suite services

{
  "orchestrator": "AutomationSuite_Orchestrator",
  "orchestrator_ta": "AutomationSuite_Orchestrator",
  "asrobots": "AutomationSuite_Orchestrator",
  "orchestrator_upd": "AutomationSuite_Platform",
  "platform": "AutomationSuite_Platform",
  "test_manager": "AutomationSuite_Test_Manager",
  "automation_ops": "AutomationSuite_Platform",
  "automation_hub": "AutomationSuite_Automation_Hub",
  "insights": "AutomationSuite_Insights",
  "task_mining": "AutomationSuite_Task_Mining",
  "dataservice": "AutomationSuite_DataService", 
  "aicenter": "AutomationSuite_AICenter",
  "documentunderstanding": "AutomationSuite_DU_Datamanager",
  "processmining_airflow": "AutomationSuite_Airflow",
  "processmining_metadata": "AutomationSuite_ProcessMining_Metadata",
  "processmining_warehouse": "AutomationSuite_ProcessMining_Warehouse",
  "apps": "AutomationSuite_Apps",
  
}

If you want to override the
        connection string for any of the mentioned services, set the
          sql_connection_str for that specific service.You still have to
        manually create these databases before running the installer.

Overriding the default connection string for Orchestrator and the platform

{
  "orchestrator": {
    "sql_connection_str": "Server=tcp:sfdev1804627-c83f074b-sql.database.windows.net,1433;Initial Catalog=CustomOrchDB;Persist Security Info=False;User Id=testadmin@sfdev1804627-c83f074b-sql.database.windows.net;Password=***;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;Max Pool Size=100;"
  },
  "platform": {
    "sql_connection_str": "Server=tcp:sfdev1804627-c83f074b-sql.database.windows.net,1433;Initial Catalog=CustomIDDB;Persist Security Info=False;User Id=testadmin@sfdev1804627-c83f074b-sql.database.windows.net;Password=***;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;Max Pool Size=100;"
  }
}

To override the database connection strings for other products, set the
        sql_connection_str in the corresponding product blocks. The connection
      string should have a format supported by the respective product.

Example for setting database connection string for AI Center


| Parameter | Description |
| --- ---| aicenter.sql_connection_str | AI Center JDBC connection string |

Make sure the JDBC connection
      string has the format in the following sample:

"aicenter": {
    "enabled": true,
    "sql_connection_str": "jdbc:sqlserver://sfdev1804627-c83f074b-sql.database.windows.net;database=aicenter;user=testadmin@sfdev1804627-c83f074b-sql.database.windows.net;password=TFgID_9GsE7_P@srCQp0WemXX_euHQZJ"
}

Sample Document Understanding connection string

"documentunderstanding": {
        "enabled": true,
        "sql_connection_str": "Server=SERVER_PLACEHOLDER;Initial Catalog=DB_NAME_PLACEHOLDER;Persist Security Info=False;User Id=USER_PLACEHOLDER;Password='PASSWORD_PLACEHOLDER';MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;Max Pool Size=100;",
        "datamanager": {
            "sql_connection_str": "SERVER=SERVER_PLACEHOLDER;DATABASE=DB_NAME_PLACEHOLDER;DRIVER={ODBC Driver 17 for SQL Server};UID=USER_PLACEHOLDER;PWD={PASSWORD_PLACEHOLDER};;Encrypt=yes;TrustServerCertificate=no;Connection Timeout=30;hostNameInCertificate=customer-sql.database.windows.net",
            "pyodbc_sql_connection_str": "mssql+pyodbc://testadmin%40sql.database.windows.net:Z%3Aw%21%zE%3Cb4@sql.database.windows.net:1433/DB_NAME_PLACEHOLDER?driver=ODBC+Driver+17+for+SQL+Server"
        }
    }

The data manager SQL connection
      string is optional only if you want to overwrite the default with your own.

For more information, check the
        Document Understanding configuration file.

Sample Process Mining connection string (PostgreSQL)

"processmining": {
    "enabled": true,
    "app_security_mode": "system_managed",
    "airflow": {
      "metadata_db_connection_str": "postgresql+psycopg2://testadmin:<password>@sfdev8454496-postgresql.postgres.database.azure.com:5432/AutomationSuite_Airflow"
    },
    "warehouse": {
      "sql_connection_str": "Server=tcp:kerberossql.autosuitead.local,1433;Initial Catalog=AutomationSuite_Warehouse;Persist Security Info=False;User Id=testadmin;Password='password';MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=True;Connection Timeout=30;Max Pool Size=100;",
      "sqlalchemy_pyodbc_sql_connection_str": "mssql+pyodbc://testadmin:<password>@kerberossql.autosuitead.local:1433/AutomationSuite_Warehouse?driver=ODBC+Driver+17+for+SQL+Server&TrustServerCertificate=YES&Encrypt=YES",
      "master_sql_connection_str": "Server=tcp:kerberossql.autosuitead.local,1433;Initial Catalog=master;Persist Security Info=False;User Id=testadmin;Password='password';MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=True;Connection Timeout=30;Max Pool Size=100;"
    }
    "sql_connection_str": "Server=tcp:sfdev4515230-sql.database.windows.net,1433;Initial Catalog=AutomationSuite_ProcessMining_Metadata;User Id=testadmin@sfdev4515230-sql.database.windows.net;Password='password';Persist Security Info=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=True;Connection Timeout=30;Max Pool Size=100;",
  }

Sample Process Mining connection string (SQL Server)

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

When using Kerberos authentication,
        utilize the Integrated Security and Trusted_Connection
        parameters. By setting Integrated Security to true and
        setting Trusted_Connection to yes, the credentials of the
        currently logged in user are used for the connection. In this case, you do not need to
        specify a separate username and password.

Note that the names for
          template PYODBC connection string
          postgresql_connection_string_template_sqlalchemy_pyodbc (for PostgreSQL)
        respectively sql_connection_string_template_sqlalchemy_pyodbc (for MS SQL
        Server) and the PYODBC connection string
          sqlalchemy_pyodbc_sql_connection_str used when you bring your own
          database are different. Also connection string names are different for the template
        SQL sql_connection_string_template and sql_connection_str
        used when you bring your own database.

If you bring your own
        database and you configured this using the sql_connection_str and
          sqlalchemy_pyodbc_sql_connection_str connection strings in the
          processmining section of the cluster_config.jsonfile, the template connection strings
          sql_connection_string_template and
          postgresql_connection_string_template_sqlalchemy_pyodbc (for PostgreSQL)
        respectively sql_connection_string_template_sqlalchemy_pyodbc (for MS SQL
        Server) are ignored if specified.

Set
          MultiSubnetFailover=True for sql_connection_str and
          master_sql_connection_str and MultiSubnetFailover=Yes
        for sqlalchemy_pyodbc_sql_connection_str connection strings.Note
        that for pyodbc you use '=Yes' instead of '=True'.

Depending on the
        app_security_mode setting either a new SQL user is created for every
      Process Mining app by the system (app_security_mode="system_managed"), or a
      single SQL user account is created that is used for all process apps
        (app_security_mode="single_account"). Note that
        app_security_mode="system_managed" is the default setting, and that this
      requires advanced permissions for the database user.See Configuring process app
        security.

Sample Process Mining connection string

* Scenario: setup with Kerberos
          authentication (PostgreSQL)

"processmining": {
    "enabled": true,
    "airflow": {
      "metadata_db_connection_str": "postgresql+psycopg2://kerberos_user:@kerberospostgres.AUTOSUITEAD.LOCAL:5432/automationsuite_airflow"
    }
    "warehouse": {
        "sql_connection_str": "Server=tcp:assql2019.autosuitead.local,1433;Initial Catalog=AutomationSuite_ProcessMining_Warehouse;Persist Security Info=False;Integrated Security=true;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=True;Connection Timeout=30;Max Pool Size=100;",
        "sqlalchemy_pyodbc_sql_connection_str": "mssql+pyodbc://:@assql2019.autosuitead.local:1433/AutomationSuite_ProcessMining_Warehouse?driver=ODBC+Driver+17+for+SQL+Server&TrustServerCertificate=YES&Encrypt=YES&Trusted_Connection=yes",
        "master_sql_connection_str": "Server=tcp:assql2019.autosuitead.local,1433;Initial Catalog=master;Persist Security Info=False;Integrated Security=true;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=True;Connection Timeout=30;Max Pool Size=100;"
      },
  },

* Scenario: setup with Kerberos
          authentication (Microsoft SQL Server).

"processmining": {
    "enabled": true,
    "warehouse": {
        "sql_connection_str": "Server=tcp:assql2019.autosuitead.local,1433;Initial Catalog=AutomationSuite_ProcessMining_Warehouse;Persist Security Info=False;Integrated Security=true;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=True;Connection Timeout=30;Max Pool Size=100;",
        "sqlalchemy_pyodbc_sql_connection_str": "mssql+pyodbc://:@assql2019.autosuitead.local:1433/AutomationSuite_ProcessMining_Warehouse?driver=ODBC+Driver+17+for+SQL+Server&TrustServerCertificate=YES&Encrypt=YES&Trusted_Connection=yes",
        "master_sql_connection_str": "Server=tcp:assql2019.autosuitead.local,1433;Initial Catalog=master;Persist Security Info=False;Integrated Security=true;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=True;Connection Timeout=30;Max Pool Size=100;"
      },
    "sqlalchemy_pyodbc_sql_connection_str": "mssql+pyodbc://:@assql2019.autosuitead.local:1433/AutomationSuite_Airflow?driver=ODBC+Driver+17+for+SQL+Server&TrustServerCertificate=YES&Encrypt=YES&Trusted_Connection=yes"
  },

Sample Process Mining connection string

* Scenario: Metadata database and data
          warehouse use separate SQL server (Non-Kerberos authentication).

"processmining": {
    "enabled": true,
    "warehouse": {
      "sql_connection_str": "Server=tcp:uipath-integration1.database.windows.net,1433;Initial Catalog=AutomationSuite_ProcessMining_Warehouse;Persist Security Info=False;User Id=userid;Password='password';MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=True;Connection Timeout=30;Max Pool Size=100;",
      "sqlalchemy_pyodbc_sql_connection_str": "mssql+pyodbc://userid:password@uipath-integration1.database.windows.net:1433/AutomationSuite_ProcessMining_Warehouse?driver=ODBC+Driver+17+for+SQL+Server&TrustServerCertificate=YES&Encrypt=YES",
      "master_sql_connection_str": "Server=tcp:uipath-integration1.database.windows.net,1433;Initial Catalog=master;Persist Security Info=False;User Id=userid;Password='password';MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=True;Connection Timeout=30;Max Pool Size=100;"
    },
    "sqlalchemy_pyodbc_sql_connection_str": "mssql+pyodbc://userid:password@uipath-integration2.database.windows.net:1433/AutomationSuite_Airflow?driver=ODBC+Driver+17+for+SQL+Server&TrustServerCertificate=YES&Encrypt=YES"
    "sql_connection_str": "Server=tcp:uipath-integration2.database.windows.net,1433;Initial Catalog=AutomationSuite_Airflow;Persist Security Info=False;User Id=userid;Password='password';MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=True;Connection Timeout=30;Max Pool Size=100;",  
},

Sample Process Mining connection string

* Scenario: using custom
            app_security_mode.

"processmining": {
    "enabled": true,
    "app_security_mode": "system_managed",
    "warehouse": {
        "sql_connection_str": "Server=tcp:assql2019.autosuitead.local,1433;Initial Catalog=AutomationSuite_ProcessMining_Warehouse;Persist Security Info=False;Integrated Security=true;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=True;Connection Timeout=30;Max Pool Size=100;",
        "sqlalchemy_pyodbc_sql_connection_str": "mssql+pyodbc://:@assql2019.autosuitead.local:1433/AutomationSuite_ProcessMining_Warehouse?driver=ODBC+Driver+17+for+SQL+Server&TrustServerCertificate=YES&Encrypt=YES&Trusted_Connection=yes",
        "master_sql_connection_str": "Server=tcp:assql2019.autosuitead.local,1433;Initial Catalog=master;Persist Security Info=False;Integrated Security=true;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=True;Connection Timeout=30;Max Pool Size=100;"
      },
    "sqlalchemy_pyodbc_sql_connection_str": "mssql+pyodbc://:@assql2019.autosuitead.local:1433/AutomationSuite_Airflow?driver=ODBC+Driver+17+for+SQL+Server&TrustServerCertificate=YES&Encrypt=YES&Trusted_Connection=YES"
  },

