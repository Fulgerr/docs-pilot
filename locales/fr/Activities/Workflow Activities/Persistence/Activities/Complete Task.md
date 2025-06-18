# Complete Task

UiPath.Persistence.Activities.Tasks.CompleteTask

# Description

Completes the specified Action without the need for the corresponding human intervention.

# Conditions

The Complete Tasks activity can only be executed if the assigned Actions and
                                the account attempting to complete the action match. For instance,
                                if an Action is assigned to a specific user or robot account (using
                                the  activity), an automation project using the
                                        Complete Task activity for that Action must also be
                                executed by the same user or robot account.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Windows, Windows - Legacy configuration

Designer panel

* TaskID - The ID of the Action that you want to complete. This field supports integer values only.
* Task Action - The action the user needs to perform for completing the Action. It must match the Property Name of the Button Component in the Form Designer. For example, "submit". This field supports string values only.
* TaskData -The JSON format of the user input, where the key is the Property Name in the form, and the value is the user input.

Properties panel

Common

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field supports Boolean values (True, False) only. The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.

If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.

* DisplayName - The display name of the activity.
* TimeoutMS - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).

Input

* Orchestrator Folder Path - The path to the Orchestrator Folder you want to use with this activity. If left empty, the current Orchestrator folder is used. This field supports only strings and String variables.

If the user performing this action does not have the required permissions for the target folder, task completion fails and throws a critical error. You can view more info on Folder Permissions here.

* Task Action - The action the user needs to perform for completing the Action. It must match the Property Name of the Button Component in the Form Designer. For example, "submit". This field supports string values only.
* TaskData -The JSON format of the user input, where the key is the Property Name in the form, and the value is the user input.
* TaskID - The ID of the Action that you want to complete. This field supports integer values only.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

# Cross-platform configuration

* TaskID - The ID of the Action that you want to complete. This field supports integer values only.
* Task Action - The action the user needs to perform for completing the Action. It must match the Property Name of the Button Component in the Form Designer. For example, "submit". This field supports string values only.
* TaskData -The JSON format of the user input, where the key is the Property Name in the form, and the value is the user input.

Advanced options

Common

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field supports Boolean values (True, False) only. The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.

If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.

* TimeoutMS - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).

Input

* Orchestrator Folder Path - The path to the Orchestrator Folder you want to use with this activity. If left empty, the current Orchestrator folder is used. This field supports only strings and String variables.

If the user performing this action does not have the required permissions for the target folder, task completion fails and throws a critical error. You can view more info on Folder Permissions here.
