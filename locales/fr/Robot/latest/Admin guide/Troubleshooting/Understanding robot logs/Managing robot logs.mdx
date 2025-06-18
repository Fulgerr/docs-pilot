# Managing robot logs

# Setting the logging level

You can change the log level via:

* the Log Level setting in Assistant > Preferences > General page. By default, it is set to Information. For the Service Mode Robot, you need administrator permissions.
* the Logging Level setting in Orchestrator > Manage Access > Users > user or robot account > Robot Settings page. By default, it is set to Information.The log level you set in Orchestrator overrides the level configured in Assistant.

# Deleting log files

To prevent disk space usage, you can choose to archive log files after they reach a specific count. Configure your logging files in the NLog.config file, under the <target> section, as follows:

By adding the properties archiveNumbering="Date" and archiveEvery="Day", you instruct the system to archive log files on a daily basis, with each archive named by the date.The property archiveDateFormat="yyyy-MM-dd" sets the format for the dates in the archive file names.With archiveFileName="${WorkflowLoggingDirectory}/{#}_Execution.log", you specify the location and format for the archived file names.The maxArchiveFiles="10" property sets a limit to only keep the 10 most recent archived log files.For example:

<?xml version="1.0" encoding="utf-8" ?>
<nlog xmlns="http://www.nlog-project.org/schemas/NLog.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <variable name="WorkflowLoggingDirectory" value="${specialfolder:folder=LocalApplicationData}/UiPath/Logs" />
  <rules>
    <logger name="WorkflowLogging" writeTo="WorkflowLogFiles" final="true" />
  </rules>
  <targets>
    <target type="File"
      name="WorkflowLogFiles"
      fileName="${WorkflowLoggingDirectory}/${shortdate}_Execution.log"
      layout="${time} ${level} ${message}"
      keepFileOpen="true"
      openFileCacheTimeout="5"
      concurrentWrites="true"
      encoding="utf-8"
      writeBom="true"
      archiveNumbering="Date"
      archiveEvery="Day"
      archiveDateFormat="yyyy-MM-dd"
      archiveFileName="${WorkflowLoggingDirectory}/{#}_Execution.log"
      maxArchiveFiles="10"
    />
  </targets>
</nlog>

# Customizing detailed logs

Verbose-level logs may contain extra information and can be large. You can control this by customizing the UiPath.Executor.exe.config file. Add the following XML snippet under the <system.serviceModel> section, then restart the Robot Service:

<tracking>
    <profiles>
        <trackingProfile name="StandardProfile">
         <workflow>
          <activityStateQueries>  
            <activityStateQuery activityName="*">
                <states>  
                    <state name="Faulted"/>  
                </states>
                <arguments>  
                    <argument name="*"/>  
                </arguments> 
                 <variables>  
                    <variable name="*"/>  
                </variables>             
            </activityStateQuery>
          </activityStateQueries>    
         </workflow>
        </trackingProfile>       
    </profiles>
</tracking>

The

<states>

tag contains sub-tags for each state you want to log. If it only contains

<state name="Faulted"/>

, then only activities that end in a

Faulted

state, meaning they encountered an error, are logged.

To include other states, use <state name="Executing"/>.

You can customize variables and arguments as well. Refer to the Microsoft documentation.

# Managing driver diagnostic logs

To enable driver tracing:

1. Open Command Prompt with administrator rights.
2. Access the installation directory using the cd argument, such as cd C:\Program Files\UiPath\Studio.
3. Run the UiRobot.exe --enableLowLevel command.

To disable driver tracing:

1. Open Command Prompt with administrator rights.
2. Access the installation directory using the cd argument, such as cd C:\Program Files\UiPath\Studio.
3. Run the UiRobot.exe --disableLowLevel command.

### Using the Diagnostic tool

Check the About the Diagnostic Tool page in the Studio guide for information about how you can configure it to retrieve execution logs.

