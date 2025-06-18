# Go Home

UiPath.Core.Activities.GoHome

Navigates to the current home or start page.

Due to a software limitation, this activity navigates to the Home page that was set by the user in the browser settings only in the case of Internet Explorer. For other browsers, the activity navigates to https://www.google.com.

# Properties

Input

* Browser - The browser in which you want to go to the start page or home. This field supports only Browser variables.

Common

* DisplayName - The display name of the activity.
* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.
