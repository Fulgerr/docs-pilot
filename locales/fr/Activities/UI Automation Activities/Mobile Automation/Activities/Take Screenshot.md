# Take Screenshot

UiPath.MobileAutomation.Activities.TakeScreenshot

# Description

Takes a screenshot of the screen of the mobile device you are using with custom dimensions specified in the Height and Width properties.

# Project compatibility

Windows - Legacy | Windows

# Configuration

Properties panel

Common

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.
* DisplayName - The display name of the activity.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* Height - The height of the screenshot, stored in an Int32 variable. This field supports only Int32 variables.
* Screenshot - The screenshot of the mobile device, stored in an Image object. This field supports only Image variables.
* Width - The width of the screenshot, stored in an Int32 variable. This field supports only Int32 variables.
