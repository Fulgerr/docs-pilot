# Log storage

# Orchestrator storage

When the Robot is connected to Orchestrator, only logs matching the level set in Assistant or Orchestrator appear on the Logs page. If Orchestrator is unavailable, logs are stored in a local path - C:\Windows\System32\config\systemprofile\AppData\Local\UiPath\Logs\execution_log_data, within the available disk space, until the connection is restored. When the connection is restored, the logs are sent in batches in the order they had been generated.

# NLog storage

The Robot update overwrites and resets this file, removing any prior edits.

Additionally, log storage can be configured by editing the NLog.config file. Diagnostic logs are collected by the Internal type logger and are forwarded by using NLog targets. By default, execution logs are stored in a file in the %LocalAppData%\UiPath\Logs folder. The messages are collected by the WorkflowLogging logger and can be forwarded by using NLog targets, as specified by the following parameters in the NLog.config file:

<?xml version="1.0" encoding="utf-8" ?>
<nlog xmlns="http://www.nlog-project.org/schemas/NLog.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <variable name="WorkflowLoggingDirectory" value="${specialfolder:folder=LocalApplicationData}/UiPath/Logs" />
  <rules>
    <logger name="WorkflowLogging" writeTo="WorkflowLogFiles" final="true" />
  </rules>
  <targets>
    <target type="File" name="WorkflowLogFiles" fileName="${WorkflowLoggingDirectory}/${shortdate}_Execution.log" layout="${time} ${level} ${message}" keepFileOpen="true" openFileCacheTimeout="5" concurrentWrites="true" encoding="utf-8" writeBom="true" />
  </targets>
</nlog>

# Log storage by Robot mode

Robot logs are stored differently, based on the user running the automation, which can be the local user (for User Mode robots), or the Local System user (for Service Mode robots):

Log typeStorage for Service Mode robotsStorage for User Mode robotsExecution logs in .log formatWindows OS—C:\Users\user\AppData\Local\UiPath\LogsWindows OS—%LocalAppData%\UiPath\LogsLinux—~/.local/share/UiPath/LogsMacOS—~/Library/Application Support/UiPath/LogsExecution logs in LiteDB formatWindows OS—C:\Windows\System32\config\systemprofile\AppData\Local\UiPath\Logs\execution_log_dataWindows OS—%LocalAppData%\UiPath\Logs\execution_log_dataLinux—~/.local/share/UiPath/Logs/execution_log_dataMacOS—~/Library/Application Support/UiPath/Logs/execution_log_dataDiagnostic (or internal) logsWindows OS—%ProgramData%\UiPath\Logs\internalWindows OS—%LocalAppData%\UiPath\Logs\internalLinux—~/.local/share/UiPath/Logs/internalMacOS—~/Library/Application Support/UiPath/Logs/internalUpdate logsWindows OS—%ProgramData%\UiPath\UpdateService\LogsWindows OS—%LocalAppData%\UiPath\UpdateService\LogsLinux—~/.local/share/UiPath/UpdateService/LogsMacOS—~/Library/Application Support/UiPath/UpdateService/Logs
