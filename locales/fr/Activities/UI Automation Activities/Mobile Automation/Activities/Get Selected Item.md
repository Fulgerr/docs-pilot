# Get Selected Item

UiPath.MobileAutomation.Activities.GetSelectedItem

# Description

Retrieves the selected item from a target UI element.

# Project compatibility

Windows - Legacy | Windows

# Configuration

Designer panel

Properties panel

Common

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.
* DelayAfter - Delay time (in seconds) after executing the activity. The default value is 0.3 seconds.
* DelayBefore - Delay time (in seconds) before the activity begins performing any operations. The default value is 0.2 seconds.
* DisplayName - The display name of the activity.
* Timeout - specifies the amount of time (in seconds) to wait for a specified element to be found before an error is thrown. The default value is 30 seconds.

Input

* Target -

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* Selected Item - The selected item, stored in a string. This field supports only strings and String variables.
