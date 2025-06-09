# Wait For Job And Resume

UiPath.Persistence.Activities.Job.WaitForJobAndResume

# Description

Suspends the execution of the current workflow until a specified Job is completed. To designate a Job, a JobData object, retrieved from the Start Job and Get Reference activity, must be supplied. When the Job is completed, the execution of the workflow is resumed.

Jobs can have the following states:

After a Job is resumed it transitions to the Running state.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Windows, Windows - Legacy configuration

Designer panel

* Job Object (Input) - The Job you want to suspend, stored in a JobData variable. This variable can be obtained from a Start Job and Get Reference activity, This field supports only JobData variables.
* Job Object - The updated Job object obtained from Orchestrator after the execution of this activity.

Properties panel

Common

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.

If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.

* DisplayName - The display name of the activity.
* StatusMessage - The message specified in this property field is displayed in Orchestrator alongside the workflow that is suspended by this activity. This field supports strings and String variables only.
* TimeoutMS - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).

Input

* Job Object (Input) - The Job you want to suspend, stored in a JobData variable. This variable can be obtained from a Start Job and Get Reference activity, This field supports only JobData variables.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* Job Object - The updated Job object obtained from Orchestrator after the execution of this activity.

# Cross-platform configuration

* Job Object (Input) - The Job you want to suspend, stored in a JobData variable. This variable can be obtained from a Start Job and Get Reference activity, This field supports only JobData variables.
* Job Object - The updated Job object obtained from Orchestrator after the execution of this activity.

Advanced options

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.

If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.

* TimeoutMS - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).
* StatusMessage - The message specified in this property field is displayed in Orchestrator alongside the workflow that is suspended by this activity. This field supports strings and String variables only.
