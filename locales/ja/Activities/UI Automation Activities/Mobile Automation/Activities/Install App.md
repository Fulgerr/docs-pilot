# Install App

UiPath.MobileAutomation.Activities.InstallApp

# Description

Installs a specified app on a mobile device connected via the Mobile Device Connection scope activity.

# Project compatibility

Windows - Legacy | Windows

# Configuration

Properties panel

Common

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.
* DisplayName - The display name of the activity.

Input

* AppPath - The path to the app you want to install on the specified device. This field supports only strings and String variables.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level0.

Output

* Result - A boolean variable that specifies if the installation process was succesful.
