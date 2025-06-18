# Launch Workflow Interactive

UiPath.Core.Activities.InvokeWorkflowInteractive

Starting with v2018.2, this activity has been deprecated.

Synchronously invokes a specified workflow, forcing an interactive Windows session, if necessary. Optionally, you can pass it a list of input arguments.

# Properties

Input

* KeepSessionConnected - If this check box is selected, in case the interactive session is disconnected, an automatic reconnection is attempted. By default, this check box is selected.
* LoginToConsole - If this check box is selected, the interactive session connects to the console. Otherwise, it uses remote desktop protocol to connect to the machine. By default, this check box is cleared.
* WorkflowFileName - The file path of the .xaml file to be invoked. This field accepts only string variables. The file path is relative to the current project folder.All string variables must be placed between quotes.
* Arguments - The parameters that can be passed to the application at startup.

Screen Resolution

* Width - The new screen width of the interactive session to be opened. Positive and negative integers are supported.
* Height - The new screen height of the interactive session to be opened. Positive and negative integers are supported.
* Depth - The color depth of the interactive session to be opened. Standard color depth values compatible with your machine's graphical capabilities are accepted. For example, 16, 24, 32, 48 etc.

Common

* DisplayName - The display name of the activity.
* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.
