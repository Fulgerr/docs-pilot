# Updating the cluster configuration

After regenerating the cluster_config.json file but before performing the upgrade, you can make various changes, such as updates to the database configuration, certificate configuration, and more. For details, see Performing advanced configuration.

Additionally, there are a few service-specific configurations that you must apply before upgrading. To check which changes are required for your Automation Suite cluster, see the following table:

ConditionsActions1. You installed Automation Suite 2023.4 or earlier in an offline environment.AND2. You upgrade to Automation Suite 2023.10 or later.You must manually add install_type: offline to the cluster_config.json file.{
"install_type": "offline"
"fqdn": "<sample_fqdn>" ,
…
}1. Orchestrator is installed on the old Automation Suite version.AND2. You upgrade from Automation Suite 2022.10.Set the following parameter in the cluster_config.json file to confirm that you agree with blocking classic folder executions. Without consent, the upgrade will fail....
"orchestrator": {
  "enabled": true,
  "block_classic_executions": true,
...For details, refer to Orchestrator-specific configuration.1. Apps is installed on the old Automation Suite version.AND2. You upgrade from Automation Suite 2022.10 or earlier.Create a database for Apps with the following default name: AutomationSuite_Apps.If you want to overwrite the default SQL connection string, update the ODBC connection string for the Apps database in the cluster_config.json file.{ 
  "apps": {
    "sql_connection_str": "SERVER=sqlserver.mycompany.com,1433;DATABASE=AutomationSuite_Apps;DRIVER={ODBC Driver 17 for SQL Server};UID=testadmin;PWD=***;MultipleActiveResultSets=False;Encrypt=YES;TrustServerCertificate=NO;Connection Timeout=30;"
  }
}For an example of the ODBC connection string, refer to Database configuration.1. AI Center is installed on the old Automation Suite version and connects to an external Orchestrator.Copy the Orchestrator certificates to the server node on which you plan to trigger the upgrade. For details, refer to Copy the Orchestrator certificate to the virtual machine.Update the cluster_config.json file with the following configuration:"aicenter": {
    "enabled": true,
    "orchestrator_url": "https://orchestrator.example.com", //Specify the Orchestrator URL for AI Center
    "identity_server_url": "https://orchestrator.example.com/identity", //Specify the Identiy URL for AI Center
    "orchestrator_cert_file_path": "/opt/UiPathAutomationSuite/UiPath_Installer/orch.cer", //Specify the path to the Orchestrator certificate
    "identity_cert_file_path": "/opt/UiPathAutomationSuite/UiPath_Installer/orch.cer", //Specify the path to Identity certificate file
    "metering_api_key": "test" //Specify the metering API key
  }Ensure that cluster_config.json includes the following parameter:{
  "sql_connection_string_template": "DOTNET connection string templates", 
  "sql_connection_string_template_odbc": "ODBC connection string templates",
  "pyodbc_sql_connection_str": "***" // python sql connection string
}1. Process Mining is installed on the old Automation Suite version.AND2. You want to use latest version of Airflow which needs PostgreSQL.For Process Mining on Automation Suite 2024.10.3 or higher, using PostgreSQL for the Airflow database is the recommended option.Update the sqlalchemy connection string template applicable for PostgreSQL in the cluster_config.json file before the upgrade.postgresql_connection_string_template_sqlalchemy_pyodbcpostgresql+psycopg2://<user>:<password>@<postgresql host>:<postgresql port>/<airflow db name>When upgrading from Microsoft SQL Server to PostgreSQL database data migration is not required.For details, refer to Providing the new connection strings for installed products.1. Process Mining is not installed on the old Automation Suite version.AND2. You want to use latest version of Airflow which needs PostgreSQL.For Process Mining on Automation Suite 2024.10.3 or higher, using PostgreSQL for the Airflow database is the recommended option.Add the sqlalchemy connection string template applicable for PostgreSQL in the cluster_config.json file before the upgrade.postgresql_connection_string_template_sqlalchemy_pyodbcpostgresql+psycopg2://<user>:<password>@<postgresql host>:<postgresql port>/DB_NAME_PLACEHOLDERWhen upgrading from Microsoft SQL Server to PostgreSQL database data migration is not required.For details, refer to Providing the new connection strings for installed products.1. You enabled FIPS.You must add the fips_enabled_nodes parameter in cluster_config.json. For details, refer to General configuration.1.You have configured the additional-ca-certs file in a previous version of Automation Suite.AND2. You want to upgrade to any version from Automation Suite 2024.10.0 up to 2024.10.3.Update the cluster_config.json with the path to your additional-ca-certs file.  "server_certificate": {
    "ca_cert_file": "/opt/UiPathAutomationSuite/UiPath_Installer/rootCA.crt",
    "tls_cert_file": "/opt/UiPathAutomationSuite/UiPath_Installer/server.crt",
    "tls_key_file": "/opt/UiPathAutomationSuite/UiPath_Installer/server.key"
  },
  "additional_ca_certs": "/opt/UiPathAutomationSuite/UiPath_Installer/additional-ca.crt"        <<<<<<<========== parameter for additional-ca crt
}If you do not have the additional-ca certs file, you can retrieve it using the following command:./configureUiPathAS.sh additional-ca-certs get > /opt/UiPathAutomationSuite/UiPath_Installer/additional-ca.crt
