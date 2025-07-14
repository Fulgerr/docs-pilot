# Managing products

You can enable and disable products in Automation Suite at any point post-installation.To do that, you must access and update the cluster_config.json file stored in the /opt/UiPathAutomationSuite folder, and rerun the installer step.You need to perform these steps only from Server Nodes.You cannot enable or disable any product
                during an Automation Suite upgrade.

## Step 1: Changing the product selection in the configuration file

Change the product selection in the configuration file.To do that, navigate to the
                            UiPathAutomationSuite folder and edit
                            cluster_config.json.cd /opt/UiPathAutomationSuite
nano cluster_config.json #optionally use any favourite editor of your choice.In the services list, set the enable flags to true or false for the specific services you want to enable or disable. See the following examples for individual products.You can manage Action Center and Apps simply by updating the enable flag. Other products might require an additional step to configure the installation. See the following instructions for details.


### Enabling or disabling Action Center

See the following configuration details for enabling or disabling Action Center in the
          cluster_config.json file:

"actioncenter": {
  "enabled": "true" //Set to "false" to disable the Action Center
}


### Enabling or disabling Apps

Apps requires updating the enable flag and an SQL database.

If you previously set a value for sql_connection_string_template_odbc in
          cluster_config.json, then the default database name
      is AutomationSuite_Apps.

To change the default database name, you need to update the sql_connection_str inside the Apps field. This overrides the default database and connection string template set in sql_connection_string_template_odbc.

See the following configuration details for enabling or disabling Apps in the cluster_config.json file:

"apps": {
  "enabled": "true" //Set to "false" to disable the Apps
  "sql_connection_str": "" ////Optional and only require to override the default database name
}


### Enabling or disabling AI Center

AI Center requires updating the enable flag and an SQL database.

If you previously set a value for sql_connection_string_template_jdbc in cluster_config.json, then the default AI Center database name is AutomationSuite_AICenter.

To change the default database name, you need to update the sql_connection_str inside the AI Center field. This overrides the default database and connection string template set in sql_connection_string_template_jdbc.

* If AI Center does not require an external Orchestrator, see the following configuration details for enabling or disabling AI Center in cluster_config.json: "aicenter": {
  "enabled": "true", //Set to "false" to disable the AICenter
  "sql_connection_str": "" //Optional and only required to override the default database name
}
* If AI Center requires an external Orchestrator, see the following configuration details for enabling or disabling AI Center in cluster_config.json: "aicenter": {
    "enabled": "true", //Set to "false" to disable the AI Center
    "sql_connection_str": "" //Optional and only required to override the default database name
    "orchestrator_url": "https://orchestrator.example.com", //Specify the Orchestrator URL for AI Center
    "identity_server_url": "https://orchestrator.example.com/identity", //Specify the Identiy URL for AI Center
    "orchestrator_cert_file_path": "/opt/UiPathAutomationSuite/UiPath_Installer/orch.cer", //Specify the path to the Orchestrator certificate
    "identity_cert_file_path": "/opt/UiPathAutomationSuite/UiPath_Installer/orch.cer", //Specify the path to Identity certificate file
    "metering_api_key": "test" //Specify the metering API key
  } metering_api_key is the Document Understanding or AI Units API key from the AI Center cloud account.

To complete the installation, run the following post-installation command:

./bin/uipathctl service aicenter --installation-token <identity token>


### Enabling or disabling Automation Hub

To enable Automation Hub, in the automation_hub section of the cluster_config.json file, set the enabled flag
      to true:

"automation_hub": {
  "enabled": "true" //Set to "false" to disable Automation Hub
  "sql_connection_str": "" //Optional and only require to override the default database name
}

To disable Automation Hub, set the enabled flag to false in the
        automation_hub section of the cluster_config.json file.


### Enabling or disabling Automation Ops

Automation Ops requires updating the enable flag and an SQL database.

If you previously set a value for sql_connection_string_template in cluster_config.json, then the default database name for
      Automation Ops is AutomationSuite_Platform.

To change the default database name, you need to update the sql_connection_str inside the Automation Ops field. This overrides the default database and connection string template set in sql_connection_string_template.

Automation Ops shares a database with the core platform, including Orchestrator. If you change the database here, you update the database for the core platform as well.

See the following configuration details for enabling or disabling Automation Ops in cluster_config.json:

"automation_ops": {
  "enabled": "true", //Set to "false" to disable the Automation Ops
  "sql_connection_str": "" //Optional and only require to override the default database name
}


### Enabling or disabling Automation Suite Robots

Before enabling Automation Suite Robots, make sure you meet the requirements.

To enable Automation Suite Robots, take the following steps:

1. Enable the asrobots flag in the cluster_config.json file. If you want to enable package caching, make sure to properly configure the packagecaching and packagecachefolder flags as well. {
  "asrobots": {
     "enabled": Boolean,
     "packagecaching": Boolean,
     "packagecachefolder": String
  }
} ParameterDefault valueDescriptionpackagecachingtrueWhen set to true, robots use a local cache for package resolution.packagecachefolder/uipath_asrobots_package_cacheThe disk location on the serverless agent node where the packages are stored. Package caching optimizes your process runs and allows them to run faster. NuGet packages are fetched from the filesystem instead of being downloaded from the Internet/network. This requires an additional space of minimum 10GB and should be allocated to a folder on the host machine filesystem of the dedicated nodes.
2. If you use a multi-node HA-ready production setup, you must configure a specialized agent node for Automation Suite Robots. In single-node evaluation mode, an additional node is optional. For instructions, see Adding a dedicated agent node for Automation Suite Robots.

To disable Automation Suite Robots, disable the asrobots flag in the cluster_config.json file.


### Enabling or disabling Data Service

Data Service requires updating the enable flag and an SQL database.

If you previously set a value for sql_connection_string_template in cluster_config.json, then the default database name is
        AutomationSuite_DataService.

To change the default database name, you need to update the sql_connection_str inside the Data Service field. This overrides the default database and connection string template set in sql_connection_string_template.

See the following configuration details for enabling or disabling Data Service in cluster_config.json:

"dataservice": {
  "enabled": "true", //Set to "false" to disable the Data Service,
  "sql_connection_str": "" //Optional and only require to override the default database name
}


### Enabling or disabling Document Understanding

Document Understanding requires updating the enable flag and an SQL database.

If you previously set a value for sql_connection_string_template_odbc in
          cluster_config.json, then the default database name
      is AutomationSuite_DU_Datamanager.

To change the default database name, you need to update the sql_connection_str inside the Document Understanding field. This overrides the default database and connection string template set in sql_connection_string_template_odbc.

If you perform an offline
      installation, you need to download the offline bundle for Document Understanding as well.
      Before enabling Document Understanding, please refer to Install and Use Document
        Understanding.

If you want to only enable AI Center-based projects, provide the following configuration
      details in the cluster_config.json
      file:"documentunderstanding": {
  "enabled": "true", //Set to "false" to disable the Document Understanding
  "sql_connection_str": "" //Optional and only required to override the default database name
}
  "pyodbc_sql_connection_str": "" //Optional and only required to override the default database name
    }

If you want to enable both AI Center-based projects and Document Understanding modern
      projects, provide the following configuration details in the cluster_config.json file:"documentunderstanding": {
  "enabled": "true", //Set to "false" to disable the Document Understanding
  "sql_connection_str": "" //Optional and only required to override the default database name
}
  "pyodbc_sql_connection_str": "" //Optional and only required to override the default database name
  "modernProjects": {
      "enabled": true //Set to "false" to disable Document Understanding modern projects
    }


### Enabling or disabling Insights

Insights requires updating the enable flag and an SQL database.

If you previously set a value for sql_connection_string_template in cluster_config.json, then the default database name is
        AutomationSuite_Insights.

To change the default database name, you need to update the sql_connection_str inside the Insights field. This overrides the default database and connection string template set in sql_connection_string_template.

To enable the Insights Real-time monitoring feature, set the enable_realtime_monitoring flag to true.

Insights has an optional SMTP
      configuration to enable receiving email notifications. Refer to Advanced
          installation experience for more details.

See the following configuration details for enabling or disabling Insights in cluster_config.json:

"insights": {
  "enabled": "true", //Set to "false" to disable the Insights,
  "enable_realtime_monitoring": "false", //Set to "true" to enable Insights Real-time monitoring,
  "sql_connection_str": "" //Optional and only require to override the default database name
}


### Enabling or disabling Orchestrator

To enable Orchestrator, set the orchestrator flag to true in
            the cluster_config.json file.

"orchestrator": {
  "enabled": "true" //Set to "false" to disable Orchestrator
  "sql_connection_str": "" //Optional and only require to override the default database name
}

To disable Orchestrator, set the orchestrator flag to false in
            the cluster_config.json file.


### Enabling or disabling Process Mining

To enable Process Mining, make the following changes to the cluster_config.json file:

1. Enable the processmining flag.
2. Configure the following connection string templates: sql_connection_string_templatesql_connection_string_template_jdbcsql_connection_string_template_odbcsql_connection_string_template_sqlalchemy_pyodbc
3. In multi-node HA-ready production
          installations, add a separate connection string for the second SQL Server. Note that in
          single-node evaluation installations, the seconds SQL Server is recommended. For
          instructions on how to configure the seconds SQL Server, see SQL requirements for Process Mining "processmining": {
  "enabled": true,
  "sql_connection_str": "", // dotnet connection string
  "sqlalchemy_pyodbc_sql_connection_str": "", 
  "warehouse": {
        "sql_connection_str": "",
        "sqlalchemy_pyodbc_sql_connection_str": ""
     }
}

To disable Process Mining, disable the processmining flag.


### Enabling or disabling Task Mining

Task Mining requires update the enable flag and an SQL Database.

If you previously set a value for sql_connection_string_template in cluster_config.json, then the default database name is
        AutomationSuite_Task_Mining.

To change the name to something other than the default, you can update the sql_connection_str inside the Task Mining field to override the default database and connection string template set in sql_connection_string_template

Task Mining requires a few additional steps, including the provisioning of a dedicated agent node
      for AI-specific workloads.

Before enabling Task Mining,
      please refer Task Mining installation section Adding a dedicated agent node for Task
      Mining.

See the following configuration details for enabling or disabling Task Mining in cluster_config.json:

"task_mining": {
  "enabled": "true", //Set to "false" to disable the Task Mining,
  "sql_connection_str": "" //Optional and only require to override the default database name
}

# Un-tainting for workloads

If desired, the Task Mining node can be repurposed as an agent node. To accomplish this, run the
        following commands:

1. Check an actual taint using kubectl describe node task-mining_nodename command.
2. Run the command kubectl taint nodes task-mining_nodename task.mining/cpu=present:NoSchedule-.
3. Check taint has disappeared using kubectl describe node task-mining_nodename command.


### Enabling or disabling Test Manager

Test Manager requires updating the enable flag and an SQL database.

If you previously set a value for sql_connection_string_template in cluster_config.json, then the default database name is
        AutomationSuite_Test_Manager.

To change the default database name, you need to update the sql_connection_str inside the Test Manager field. This overrides the default database and connection string template set in sql_connection_string_template.

See the following configuration details for enabling or disabling Test Manager in cluster_config.json:

"test_manager": {
  "enabled": "true", //Set to "false" to disable the Test Manager,
  "sql_connection_str": "" //Optional and only require to override the default database name
}


## Step 2: Running the installer to update the new product configuration

Once you update the cluster_config.json, run the following command on the installer to update the service configuration:

./bin/uipathctl manifest apply cluster_config.json --versions versions/helm-charts.json

