# Get Task Data

UiPath.Persistence.Activities.Tasks.GetTaskData

# Description

Fetches the current state of the specified action's task data.

# Project compatibility

Windows - legacy | Windows | Cross-platform

# Windows, Windows - Legacy configuration

Designer panel

* TaskId - The ID of the Action you want to fetch the data from. The action may be outside the current workflow. This field supports integer values only.
* TaskObject(Output) - The task object that is returned from Orchestrator as a FormTaskData object, containing the current state of task data.

Properties panel

Common

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field supports Boolean values (True, False) only. The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.

If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.

* DisplayName - The display name of the activity.
* TimeoutMS - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).

Input

* Orchestrator Folder Path - The path to the Orchestrator Folder you want to use with this activity. If left empty, the current Orchestrator folder is used. This field supports strings and String variables only.
* TaskId - The ID of the Action you want to fetch the data from. The action may be outside of the current workflow. This field supports integer values only.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* TaskObject(Output) - The task object that is returned from Orchestrator as a FormTaskData object, containing the current state of task data.

# Cross-platform configuration

* TaskId - The ID of the Action you want to fetch the data from. The action may be outside the current workflow. This field supports integer values only.
* TaskObject(Output) - The task object that is returned from Orchestrator as a FormTaskData object, containing the current state of task data.

Advanced options

Common

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field supports Boolean values (True, False) only. The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.

If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.

* TimeoutMS - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).

Input

* Orchestrator Folder Path - The path to the Orchestrator Folder you want to use with this activity. If left empty, the current Orchestrator folder is used. This field supports strings and String variables only.
