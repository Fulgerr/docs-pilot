# Open DeepLink

UiPath.MobileAutomation.Activities.OpenDeepLink

# Description

Navigates to a deeplink inside an application.

# Project compatibility

Windows - Legacy | Windows

# Configuration

Properties panel

Common

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.
* DisplayName - The display name of the activity.

Input

* App - The app, identified either by the iOS bundle id or the Android package name. This field supports only strings and String variables.
* Url - The URL you want to go to. This field supports only strings and String variables.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.
