# Step 4: Configuring SQL databases


## Databases

Only Microsoft ODBC Driver 17 is
                supported.

Unless otherwise specified in the dedicated requirements
                sections, these requirements are applicable to all Automation Suite
            products.

Each product in Automation Suite requires its own SQL database with corresponding
            specifications.

By default, the installer creates all the databases for you during the installation
            process. You must provide the necessary permissions for the installer to do so on your
            SQL server.

Alternatively, you can create your own databases. Refer to the following table for the
            names you need to use.

If you choose to bring your own databases for a new Automation Suite installation, we
            strongly recommend setting up new databases rather than using existing ones. This
            precaution is necessary to prevent any conflicts with the operation of Automation Suite
            that might occur due to leftover metadata from old databases.

The following table lists out the database names and their corresponding format.


| Product / service | Default database name | Connection string format |
| --- --- ---| Shared Platform Capabilities | AutomationSuite_Platform | ADO.NET |
| Orchestrator | AutomationSuite_Orchestrator | ADO.NET |
| Action Center | AutomationSuite_Orchestrator | ADO.NET |
| Automation Suite Robots | AutomationSuite_Orchestrator | ADO.NET |
| Automation Hub | AutomationSuite_Automation_Hub | ADO.NET |
| Data Service | AutomationSuite_DataService | ADO.NET |
| Insights | AutomationSuite_Insights | ADO.NET |
| Test Manager | AutomationSuite_Test_Manager | ADO.NET |
| Task Mining | AutomationSuite_Task_Mining | ADO.NET |
| AI Center | AutomationSuite_AICenter | JDBC |
| Apps | AutomationSuite_Apps1 | ODBC |
| Document Understanding | AutomationSuite_DU_Datamanager | ODBCPYODBC |
| Process Mining | AutomationSuite_ProcessMining_MetadataAutomationSuite_ProcessMining_Warehouse2AutomationSuite_Airflow3                                     4 | ADO.NETPYODBCPSYCOPG2 |

1 The password for the Apps database must not contain #{.

2AutomationSuite_ProcessMining_Warehouse uses both
            ADO.NET and PYODBC formats.

3AutomationSuite_Airflow
            PostgreSQL database use SQL alchemy connection string format. The connection to the
                AutomationSuite_Airflow database can not begin with a
                { character.

4AutomationSuite_Airflow Microsoft
            SQL Server database use SQL alchemy connection string format.
                AutomationSuite_Airflowmust have READ_COMMITTED_SNAPSHOT enabled when creating
            databases manually. The connection to the AutomationSuite_Airflow
            database can not begin with a { character.

For Process Mining
                on Automation Suite 2024.10.3 or higer versions, you are recommended to use
                PostgreSQL for AutomationSuite_Airflow .

If you manually set
                the connection strings in the configuration file, you can escape SQL, JDBC, or ODBC
                passwords as follows:for SQL: add '
                    at the beginning and end of the password, and double any other
                        '.for JDBC/ODBC: add
                        { at the beginning of the password and }
                    at the end, and double any other }.

You could use the
                databases in an elastic pool for better cost-effectiveness.


## SQL collation

Automation Suite supports SQL collation set to SQL_Latin1_General_CP1_CI_AS at both the server and database level. We strongly recommend this particular setup for optimum performance and stability.

While you have the flexibility to use a collation of your choice, be aware that untested configurations can potentially lead to unexpected issues.

We do not recommend using Binary SQL or any collations that are case-sensitive, as they cause known issues while installing Automation Suite.


## Permissions

If you want the installer to create a database on the provided SQL server, make sure to
            grant at least the dbcreator role to the SQL account used to connect to
            the database.

If you want to create your own databases for all the products, you must grant the SQL
            account the db_owner role for all Automation Suite databases.

If security restrictions do not allow the use of db_owner, then the SQL
            account should have the following roles and permissions on all databases (the only
            exception is Insights which still requires db_owner).

* db_securityadmin
* db_ddladmin
* db_datawriter
* db_datareader
* EXECUTE permission
                on dbo schema

We only use the
                db_securityadmin and db_ddladmin roles during
            installation or if the databases are reprovisioned, so you may revoke these permission
            afterwards.


## SQL server ciphers

Only the listed SQL ciphers are supported in
            Automation Suite:

* TLS_AES_256_GCM_SHA384
* TLS_CHACHA20_POLY1305_SHA256
* TLS_AES_128_GCM_SHA256
* TLS_AES_128_CCM_SHA256
* ECDHE-ECDSA-AES256-GCM-SHA384
* ECDHE-RSA-AES256-GCM-SHA384
* ECDHE-ECDSA-CHACHA20-POLY1305
* ECDHE-RSA-CHACHA20-POLY1305
* ECDHE-ECDSA-AES256-CCM
* ECDHE-ECDSA-AES128-GCM-SHA256
* ECDHE-RSA-AES128-GCM-SHA256
* ECDHE-ECDSA-AES128-CCM
* ECDHE-ECDSA-AES128-SHA256
* ECDHE-RSA-AES128-SHA256
* ECDHE-ECDSA-AES256-SHA
* ECDHE-RSA-AES256-SHA
* ECDHE-ECDSA-AES128-SHA
* ECDHE-RSA-AES128-SHA
* AES256-GCM-SHA384
* AES256-CCM
* AES128-GCM-SHA256
* AES128-CCM
* AES256-SHA256
* AES128-SHA256
* AES256-SHA
* AES128-SHA
* DHE-RSA-AES256-GCM-SHA384
* DHE-RSA-CHACHA20-POLY1305
* DHE-RSA-AES256-CCM
* DHE-RSA-AES128-GCM-SHA256
* DHE-RSA-AES128-CCM
* DHE-RSA-AES256-SHA256
* DHE-RSA-AES128-SHA256
* DHE-RSA-AES256-SHA
* DHE-RSA-AES128-SHA
* PSK-AES256-GCM-SHA384
* PSK-CHACHA20-POLY1305
* PSK-AES256-CCM
* PSK-AES128-GCM-SHA256
* PSK-AES128-CCM
* PSK-AES256-CBC-SHA
* PSK-AES128-CBC-SHA256
* PSK-AES128-CBC-SHA
* DHE-PSK-AES256-GCM-SHA384
* DHE-PSK-CHACHA20-POLY1305
* DHE-PSK-AES256-CCM
* DHE-PSK-AES128-GCM-SHA256
* DHE-PSK-AES128-CCM
* DHE-PSK-AES256-CBC-SHA
* DHE-PSK-AES128-CBC-SHA256
* DHE-PSK-AES128-CBC-SHA
* ECDHE-PSK-CHACHA20-POLY1305
* ECDHE-PSK-AES256-CBC-SHA
* ECDHE-PSK-AES128-CBC-SHA256
* ECDHE-PSK-AES128-CBC-SHA
* RSA-PSK-AES256-GCM-SHA384
* RSA-PSK-CHACHA20-POLY1305
* RSA-PSK-AES128-GCM-SHA256
* RSA-PSK-AES256-CBC-SHA
* RSA-PSK-AES128-CBC-SHA256
* RSA-PSK-AES128-CBC-SHA


## SQL requirements for Full-Text Search

Document Understanding requires the SQL Server to have the Full-Text Search component of the SQL Server Database Engine, which is not always installed by default.

If you did not select Full-Text Search when you installed SQL Server, run SQL Server Setup again to add it before configuring Document Understanding.

For more info, check this guide on how to add/install features on SQL server. You can also check here all the components that can be added to the SQL Server, which includes also Full-Text Search.


## SQL requirements for Insights

Insights does not support Azure AD authentication. If you
            authenticate using Azure AD, dashboards cannot be loaded and data cannot be fetched from
            the Microsoft SQL database.

Insights requires SQL Server 2019 or 2022, including support for columnstore index and
                .json functions. SQL Server Enterprise is recommended due to more
            efficient threading and scalability.

For Azure SQL, ensure the database is S3 service objective or higher.

Make sure the compatibility level for Insights database is set to 130 or higher. In most cases, the default settings meet this requirement. For more info, refer to View or Change the Compatibility level of a Database - SQL Server.

The installation validates both conditions and alerts you if minimum requirements are not met.


## SQL requirements for Data Service

Data Service requires SQL Server version 2016 or higher.

If you create your own database using SQL Server version 2019 or higher, make sure to grant the following Data Service permissions to your users:

GRANT ALTER ANY SENSITIVITY CLASSIFICATION TO {userName};
GRANT VIEW ANY SENSITIVITY CLASSIFICATION TO {userName};


## SQL requirements for Process Mining

When you enable Process Mining for installation on Automation Suite 2024.10.3 or higher you can choose to bring either a PostgreSQL database or a Microsoft SQL Server database for AutomationSuite_Airflow.

For Process Mining on Automation Suite 2024.10.3 or higher versions, you are recommended to move to PostgreSQL for the AutomationSuite_Airflow database, as PostgreSQL runs with the latest versions of Apache Airflow. Running the latest version of Airflow ensures you make use of new functionality, performance, and security fixes.If you choose not to use a PostgreSQL database and keep using a Microsoft SQLServer database, Process Mining on Automation Suite will run with legacy Airflow. Legacy versions of Apache Airflow may lack functionality, performance, and security fixes.Starting with Process Mining on Automation Suite 2025.10 only PostgreSQL database is supported for the AutomationSuite_Airflow database.

# AutomationSuite_Airflow PostgreSQL database

For Process Mining on Automation Suite 2024.10.3 or higher versions, you can choose to use a PostgreSQL database for the AutomationSuite_Airflow database.

Before installing or upgrading to Automation Suite 2024.10.3 or higher, you need to manually create the PostgreSQL database for AutomationSuite_Airflow. The PostgreSQL database for Airflow will not be created automatically by the installer.

When migrating from Microsoft SQL Server to PostgreSQL database data migration is not required. With a correct configuration setup, the database is rebuild when running Sync Airflow.

Supported PostgreSQL versions

PostgreSQL versions 12.x to 16.x are supported. It is recommended to use the most recent version of PostgreSQL within this range for optimal compatibility and performance.

Hardware requirements

The machine on which the PostgreSQL database for Airflow is installed must meet the following harware requirements.

* Cores: 4
* Memory: 16 GiB
* Storage: 64 GiB
* IOPS: >=500 IOPS

Required permissions

The PostgreSQL Airflow user (or any dedicated database user) must have

* "All Privileges" permissions for the designated Airflow database.
* "all grants" on the server’s public schema.
* "search_path" set to "public".

You may need to update PostgreSQL Host-Based Authentication file pg_hba.conf to add the Airflow user to the database access control list and reload the database configuration to apply the changes.

The following code shows an example for setting up a PostgreSQL database.

CREATE DATABASE airflow_db
  WITH ENCODING 'UTF8'
  LC_COLLATE='en_US.UTF-8'
  LC_CTYPE='en_US.UTF-8'
  TEMPLATE template0;

CREATE USER airflow_user WITH PASSWORD 'airflow_pass';
GRANT ALL PRIVILEGES ON DATABASE airflow_db TO airflow_user;

-- PostgreSQL 15 requires additional privileges:
GRANT ALL ON SCHEMA public TO airflow_user;

The following code shows a database encoding validation example.

SELECT pg_encoding_to_char(encoding) AS encoding
FROM pg_database
WHERE datname = 'airflow_db';

Refer to the official Airflow documentation for more information on how to set up a PostgreSQL database for Airflow.

Default server port

The default server port for Airflow database connections with PostgreSQL is 5432. If you are using the PgBouncer connection pooler, it is common to use port 6432.

The following code blocks show some example connection strings for PostgreSQL using port 5432.

Sample connection string:

postgresql+psycopg2://testadmin:<password>@test-cu231009v3-postgresql.postgres.database.azure.com:5432/automationsuite_airflow

Sample connection string for using Kerberos:

postgresql+psycopg2://kerberos_user:@kerberospostgres.AUTOSUITEAD.LOCAL:5432/automationsuite_airflow

Sample connection string for using Managed Identitiy:

postgresql+psycopg2://testmanagedidentity:@test-postgresql-1.postgres.database.azure.com/airflow-ci-sfasaksqacu8524745

The default server port can be configured to use any available port as per your system requirements.

PgBouncer

Since Airflow uses short-lived connections, it is highly recommended to set up PgBouncer. PgBouncer is a lightweight connection pooler for PostgreSQL.

Refer to the official PgBouncer documentation for more information on how to set up PgBouncer.

When migrating from Microsoft SQL Server to PostgreSQL database data migration is not required. With a correct configuration setup, the database is rebuild when running Sync Airflow.

# AutomationSuite_Airflow Microsoft SQL Server database

For the AutomationSuite_Airflow database, Microsoft SQL Server is the only option available for Process Mining on Automation Suite versions 2024.10.2 and earlier. For Process Mining on Automation Suite 2024.10.3 or higher versions, you are recommended to move to PostgreSQL.

If you use Microsoft SQL Server for AutomationSuite_Airflow database, make sure you meet the following requirements.You must use the default server port 1433 for Airflow database connections.Non-standard SQL Server ports are not supported.When setting up Microsoft SQL Server make sure that the timezone of the SQL Server machine where the Airflow database is installed, is set to UTC.

# AutomationSuite_ProcessMining_Warehouse database

Process Mining on Automation Suite requires a separate Microsoft SQL Server for the AutomationSuite_ProcessMining_Warehouse for data storage for Process Mining process apps.

To ensure proper functioning of Process Mining, it is recommended to use Microsoft SQL Server 2022.This is an overview of hardware requirements and recommendations for setting up a Microsoft SQL Server database machine for AutomationSuite_ProcessMining_Warehouse.

To calculate the hardware requirements, you need to have an indication of:

* the number of (million) events in your process.
* the number of case and event fields in your output data.In a development environment, for performance reasons, it is recommended to work on a small development dataset with a limited number of records.

You can use the UiPath Automation Suite Install Sizing Calculator to determine the hardware requirements for setting up a dedicated Microsoft SQL Server machine for Process Mining. When you add Process Mining to the Product section, the minimum requirements for 1 Dedicated SQL Server are displayed.

Refer to Hardware requirements for more informations.

The SQL user used in the connection strings must have the db_securityadmin database-level role both during and post-installation to enable per app security on the Process Mining data warehouse SQL Server. For details, see the official Microsoft documentation on Database-level roles.

Refer to  for more information.


## SQL requirements for AI Center

# Requirements for AI Center
                connected to an external Orchestrator

If you install an AI Center that connects to an external Orchestrator, you must
                ensure you create a new database named AutomationSuite_Platform for
                AI Events and AI Storage services.

Currently, AI Center requires SQL Server version 2019
                    and higher to function optimally.

# Requirements for AI Center installed
                on a FIPS 140-2-enabled machine

To install AI Center on a FIPS
                140-2-enabled machine, take the following steps:Before starting the
                            Automation Suite installation, take the following steps:Enable FIPS 140-2
                                    on the machine on which you plan to install Microsoft Server by
                                    following the Microsoft instructions.Install Microsoft
                                    SQL Server on the FIPS 140-2-enabled machine.Get the Microsoft
                                    SQL Server certificate by running the following command from the
                                    SQL Server or any server that can connect to the SQL server with
                                    the configured SQL host
                                name:nmap -sV -p <port> -vv --script ssl-cert domainDuring the Automation
                            Suite installation, take the following steps:Append the
                                        following values to the AI Center
                                            sql_connection_string_template_jdbc
                                        connection string in the cluster_config.json file:
                                            encrypt=true;trustServerCertificate=false;fips=true;.Example:jdbc:sqlserver://sfdev1804627-c83f074b-sql.database.windows.net:1433;database=DB_NAME_PLACEHOLDER;user=testadmin;password=***;encrypt=true;trustServerCertificate=false;fips=true;Connection Timeout=30;hostNameInCertificate=sfdev1804627-c83f074b-sql.database.windows.net"For
                                        details on database configuration, see Advanced installation experience and Updating the SQL database.Add the
                                        exported cert from step 1.c. to the trust store of the host
                                        machine. For details see Updating the CA Certificates.


## SQL requirements for HA

For a high-availability configuration of your SQL Server, select an Always On availability group. For more info, refer to Overview of Always On availability groups.


## SQL requirements for Orchestrator

To increase performance, avoid deadlocks, and
            prevent dirty reads in SQL, make sure that the READ_COMMITTED_SNAPSHOT
            option is set to ON.

Use this query to check if READ_COMMITTED_SNAPSHOT is enabled or
            disabled:

SELECT is_read_committed_snapshot_on FROM sys.databases
   WHERE name= 'UiPath'

If it is enabled, the returned value will be 1.

If it is disabled, the returned value will be 0. Use this query to
            enable it:

ALTER DATABASE UiPath
SET READ_COMMITTED_SNAPSHOT ON

If you use different databases for Test Automation and/or Update Server,
                READ_COMMITTED_SNAPSHOT must be enabled on those as well.

