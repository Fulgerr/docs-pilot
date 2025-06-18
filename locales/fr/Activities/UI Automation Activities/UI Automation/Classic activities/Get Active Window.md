# Get Active Window

UiPath.Core.Activities.GetActiveWindow

Retrieves the current active Window and enables you to perform multiple actions within it.

# Properties

Output

* ApplicationWindow - The found active window. This field supports only Window variables.

Common

* DisplayName - The display name of the activity.
* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

# Example of using the Get Active Window activity

Here you can see how the Get Active Window activity is used in an example that incorporates multiple activities.
