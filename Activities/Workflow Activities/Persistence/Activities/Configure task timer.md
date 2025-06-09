# Configure task timer

UiPath.Persistence.Activities.Tasks.ConfigureTaskTimer

# Description

Allows you to configure a timer for each task in Action Center. You can configure one of these actions as the outcome on the timer's expiry:

* alert the assigned user
* reassign the task

# Project compatibility

Windows | Cross-platform

# Configuration

Designer panel

* Task ID - The ID of the task activity that you created.
* Start criteria - The event that acts as a start for the timer. There are two possible options: Created, and Assigned.When the Start criteria is Created, the End criteria can be: Assigned or Completed.When the Start criteria is Assigned, the End criteria can be: Completed.
* End criteria - The event that acts as the end for the timer. There are two possible options: Assigned, and Completed.When the End criteria is Assigned, the Outcome can only be Reassign.When the End criteria is Completed, and the Outcome is Alert, but no user was assigned, the alert does not trigger a notification.
* Days - The duration in days. The options are between 0 to 90 days.
* Hours - The duration in hours. The options are between 0 to 23 hours.
* Minutes - The duration in minutes. The options are: 0, 15, 30, and 45 minutes.
* Outcome - Triggered when the timer runs out before end criteria is met. The supported outcome options are: Alert, and Reassign. Alert triggers a notification to the assigned user. The channels where you receive the notification, are in-app and emails, depending on what you have enabled. When you select Reassign, you choose the user you reassign the task to. The task will not have a timer on reassignment.

Properties panel

Misc

* Continue On Error - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error. If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.
* TimeoutMS - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).
* FolderPath - The path to the Orchestrator Folder you want to use with this activity. If left empty, the current Orchestrator folder is used. This field supports only strings and String variables.

For examples on how to adjust the task timer, visit Configuring task
                    timer.
