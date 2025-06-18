# Open URL

UiPath.MobileAutomation.Activities.OpenUrl

# Project compatibility

Windows - Legacy | Windows

# Description

Opens a specified URL in the currently active web browser.

# Configuration

Properties panel

Common

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.
* DisplayName - The display name of the activity.

Input

* Url - The URL you want to open in the currently active browser. This field supports only strings and String variables.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.
