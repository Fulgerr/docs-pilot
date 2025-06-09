# Refresh Browser

UiPath.Core.Activities.RefreshBrowser

Reloads the web page that is currently displayed in the specified browser.

# Properties

Input

* Browser - The browser that you want to reload. Only Browser variables are supported.

Common

* DisplayName - The display name of the activity.
* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.
