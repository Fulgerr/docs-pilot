# Assign Tasks

UiPath.Persistence.Activities.Tasks.AssignTasks

# Description

Assigns one or more tasks in the current workflow to a user in Orchestrator by using an email address or a username registered in Orchestrator.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Prerequisites

To assign tasks correctly, you must make sure you have the needed folder permissions set in Orchestrator. The Folder Permissions for the Robot role in Orchestrator must have the Create action enabled.

# Windows, Windows - Legacy configuration

Designer panel (for single task assignment)

* Task Id - The Id of the task.
* User Name or Email - The username or email address of the user that you want to assign this task to.
* Task Assignment Type - The type of the assignment operation to be performed. By default, the Assign operation is set, and it can be changed to Reassign if you want to assign the same action to a different user.
* TaskUserAssignments - A list of task identifiers and corresponding user information to which an action is to be assigned/reassigned, stored in a List<TaskUserAssignment> object. This field supports List<TaskUserAssignment> objects only. The object must contain a task identifier and its corresponding user information, such as an email address or a username that is registered in Orchestrator.
* FailedTaskAssignments - If any of the user assignment requests fail, a list is created, containing the task identifier, error message, and error code, as well as the email address or username that is registered in Orchestrator, in a List<TaskAssignmentResponse> object in this property field. This field supports List<TaskAssignmentResponse> objects only.

Designer panel (for multiple task assignment)

Select Enable Multiple Assignments. The following properties show in the
                designer panel:

TaskUserAssignments
                            (Input) - A list of task identifiers and corresponding user
                        information to which an action is to be assigned/reassigned, stored in a
                            List<TaskUserAssignment> object. This field
                        supports List<TaskUserAssignment> objects only. The
                        object must contain a task identifier and its corresponding user
                        information, such as an email address or a username that is registered in
                        Orchestrator. Task Assignment Type - The type of the assignment operation to be
                        performed. By default, the Assign operation is set, and it can be
                        changed to Reassign if you want to assign the same action to a
                        different user. FailedTaskAssignments - If any of the user assignment requests fail,
                        a list is created, containing the task identifier, error message, and error
                        code, as well as the email address or username that is registered in
                        Orchestrator, in a List<TaskAssignmentResponse>
                        object in this property field. This field supports
                            List<TaskAssignmentResponse> objects only.

Properties panel

Common

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.

If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.

* DisplayName - The display name of the activity.
* TimeoutMS - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).

Input

* Enable Multiple Assignments - Enables the option to assign multiple tasks.
* Orchestrator Folder Path - The path to the Orchestrator Folder you want to use with this activity. If left empty, the current Orchestrator folder is used. This field supports only strings and String variables.
* Task Assignment Type - The type of the assignment operation to be performed. By default, the Assign operation is set, and it can be changed to Reassign if you want to assign the same action to a different user.
* Task Id - The Id of the task.
* TaskUserAssignments - A list of task identifiers and corresponding user information to which an action is to be assigned/reassigned, stored in a List<TaskUserAssignment> object. This field supports List<TaskUserAssignment> objects only. The object must contain a task identifier and its corresponding user information, such as an email address or a username that is registered in Orchestrator.
* User Name or Email - The username or email address of the user that you want to assign this task to.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* FailedTaskAssignments - If any of the user assignment requests fail, a list is created, containing the task identifier, error message, and error code, as well as the email address or username that is registered in Orchestrator, in a List<TaskAssignmentResponse> object in this property field. This field supports List<TaskAssignmentResponse> objects only.

# Cross-platform configuration

Enable Multiple Assignments - Enables the option to assign multiple
                        tasks.Task Id - The Id of the task.User Name or Email - The username or email address of the user that
                        you want to assign this task to.Task Assignment Type - The type of the assignment operation to be
                        performed. By default, the Assign operation is set, and it can be
                        changed to Reassign if you want to assign the same action to a
                        different user. FailedTaskAssignments - If any of the user assignment requests fail,
                        a list is created, containing the task identifier, error message, and error
                        code, as well as the email address or username that is registered in
                        Orchestrator, in a List<TaskAssignmentResponse>
                        object in this property field. This field supports
                            List<TaskAssignmentResponse> objects only.

Advanced options

Common

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.

If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.

* TimeoutMS - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).

Input

* Orchestrator Folder Path - The path to the Orchestrator Folder you want to use with this activity. If left empty, the current Orchestrator folder is used. This field supports only strings and String variables.

Output

* FailedTaskAssignments - If any of the user assignment requests fail, a list is created, containing the task identifier, error message, and error code, as well as the email address or username that is registered in Orchestrator, in a List<TaskAssignmentResponse> object in this property field. This field supports List<TaskAssignmentResponse> objects only.
