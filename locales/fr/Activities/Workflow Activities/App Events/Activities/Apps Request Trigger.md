# Apps Request Trigger

UiPath.AppEvents.Activities.AppRequestTrigger

# Description

Use the Apps Request Trigger activity to automatically start the execution of a workflow whenever a user runs an app in UiPath Apps. Together with the Handle Apps Request activity, it instantly sends user inputted data and updates the app with the response received from the attended robot.

If you cannot find the Apps Request Trigger activity in the Activities panel, make sure to select the Triggers filter from the toolbar.Consider the following conditions when you design an app-triggered project:

* Use UiPath Studio version 2023.4 and above.
* Use UiPath Robot version 2023.4 and above.
* Use only Windows projects.
* Always use Apps Request Trigger as the first activity in the workflow.
* The Apps Request Trigger activity must be used together with the Handle Apps Request activity. UiPath Studio bundles these two activities into a template which you can use to quick-start your app-triggered workflow.
* You must catch the case of losing the connection with the app (for example, users closes the browser) in an If activity.
* The Main.xaml file must contain the Run Local Triggers activity. This ensures that the Apps Request Trigger is executed.
* Create the executable workflows as separate .xaml files and configure them as entry points. This way, the Trigger Workflow rule can identify them while designing the app.

# How the Apps Request Trigger activity works:

The Run Local Triggers activity in the Main.xaml file loads the trigger activity.Upon loading, the Apps Request Trigger activity opens the communication channel between UiPath Apps and UiPath Robot.When the app invokes a workflow (a .xaml entry point), it sends the data inputted by Apps users to UiPath Robot via RobotJS.When the Apps Request Trigger activity receives the response data, it emits a payload which is sent to Handle Apps Request activity and compiled as output arguments.

# The TriggerEventArgs argument

When you add the Apps Request Trigger to the workflow, the TriggerEventArgs argument is automatically created. This argument passes on the data in the workflow invocation from the Apps Request Trigger activity to the Handle Apps Request activity.

# Project compatibility

* Windows

### Windows configuration

# Properties panel

Common

DisplayName - The display name of the activity.

Misc

Enabled - If left empty, the trigger starts but does not fire any events. You can enable it later at runtime, using the Enable Trigger activity.Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

