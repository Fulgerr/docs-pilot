# Get Logs

UiPath.MobileAutomation.Activities.GetLogs

# Description

Retrieves the logs from a mobile device connected via the Mobile Device Connection scope activity.

# Project compatibility

Windows - Legacy | Windows

# Configuration

Properties panel

Common

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.
* DisplayName - The display name of the activity.

Input

* AppendToLogFile - A boolean variable which specifies whether the new logs should be appended to the log file or a new file should be created. By default, this property is set to True.
* LogFilePath - The full path where you want to save the logs. This path can point to an already existing log file, in which case the AppendToLogFile property dictates if the file is appended or overwritten, or to a new path, where a new file is created. This field supports only strings and String variables.
* LogType - Specifies which types of logs must be retrieved from the mobile device. This field supports only strings and String variables.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.
