# Move Window

UiPath.Core.Activities.MoveWindow

Changes the position and dimensions of the indicated window.

# Properties

Input

* X - The new X position of the window. Positive and negative integers are supported.
* Y - The new Y position of the window. Positive and negative integers are supported.
* Width - The new width of the window. Positive and negative integers are supported.
* Height - The new height of the window. Positive and negative integers are supported.
* Window - The window that you want to move and/or resize. This field supports only Window variables.

Common

* DisplayName - The display name of the activity.
* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.
