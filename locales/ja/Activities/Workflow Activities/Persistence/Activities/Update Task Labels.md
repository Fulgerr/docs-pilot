# Update Task Labels

UiPath.Persistence.Activities.Tasks.UpdateTaskLabels

# Description

This activity updates the labels for existing actions.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Windows, Windows - Legacy configuration

Designer panel

* TaskID - The ID of the Action for which you want to update the existing labels. This field supports integer values only.

To allow automatic actions labeling through Persistence activities, the robot account executing the workflow needs View, Create, and Delete permissions on Tags.

* Add Labels - Input one or more labels to add to an existing Action. This field supports string values only and has naming restrictions. Use commas to separate different values.

Properties panel

Common

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field supports Boolean values (True, False) only. The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.

If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.

* DisplayName - The display name of the activity.
* TimeoutMS - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30,000 milliseconds (30 seconds).

Input

* Add Labels - Input one or more labels to add to an existing Action. This field supports string values only and has naming restrictions. Use commas to separate different values.
* Delete Labels - Input one or more labels to remove from an existing Action. The label names you enter must be valid (that is, the labels must be associated to the Action represented by the TaskId field). This field supports string values only. Use commas to separate different values.
* Orchestrator Folder Path - The path to the Orchestrator Folder you want to use with this activity. If left empty, the current Orchestrator folder is used. This field supports string values only.
* TaskID - The ID of the Action for which you want to update the existing labels. This field supports integer values only.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

# Cross-platform configuration

* TaskID - The ID of the Action for which you want to update the existing labels. This field supports integer values only.

To allow automatic actions labeling through Persistence activities, the robot account executing the workflow needs View, Create, and Delete permissions on Tags.

* Add Labels - Input one or more labels to add to an existing Action. This field supports string values only and has naming restrictions. Use commas to separate different values.

Advanced options

Common

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field supports Boolean values (True, False) only. The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.

If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.

* TimeoutMS - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30,000 milliseconds (30 seconds).

Input

* Delete Labels - Input one or more labels to remove from an existing Action. The label names you enter must be valid (that is, the labels must be associated to the Action represented by the TaskId field). This field supports string values only. Use commas to separate different values.
* Orchestrator Folder Path - The path to the Orchestrator Folder you want to use with this activity. If left empty, the current Orchestrator folder is used. This field supports string values only.
