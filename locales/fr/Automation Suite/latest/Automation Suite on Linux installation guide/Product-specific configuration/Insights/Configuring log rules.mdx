# Configuring log rules


### Overview

Robot logs capture diagnostic and execution logs. You can configure the conditions for which Robot logs are ingested by Insights. For example, you only want to capture logs for Processes that include a specific name.

For more information, see Robot logs.


### Configure Log Rules

You can configure the Orchestrator settings in the nlog.custom.config file. To modify the settings, take the following steps:

1. Place the new log rules inside the nlog.custom.config file. Check the following details for an example: {
  "10_Robot_Insights": {
    "logger": "Robot.*",
    "ruleName": "insightsRobotLogsRule",
    "minLevel": "Info",
    "writeTo": "insightsRobotLogs",
    "enabled": false,
    "final": false,
    "filters": {
      "defaultAction": "Ignore",
      "conditions": [
        {
          "condition": "level >= LogLevel.Error or ends-with('${message}', ' execution ended')",
          "action": "Log"
        }
      ]
    }
  }
}
2. Use the Orchestrator Configurator Tool to update the configuration. Use the following command to merge the keys from the custom nlog.custom.config file with the settings already available in the orchestrator-customconfig configuration map. ./orchestrator-configurator.sh -l nlog.custom.config This command does not remove any existing settings.


### Log Rules Example

In the following example, we are only sending logs that exceed a certain level or contain the message that the execution has ended:

{
  "10_Robot_Insights": {
    "logger": "Robot.*",
    "ruleName": "insightsRobotLogsRule",
    "minLevel": "Info",
    "writeTo": "insightsRobotLogs",
    "enabled": false,
    "final": false,
    "filters": {
      "defaultAction": "Ignore",
      "conditions": [
        {
          "condition": "level >= LogLevel.Error or ends-with('${message}', ' execution ended')",
          "action": "Log"
        }
      ]
    }
  }
}

