# Set Device Orientation

UiPath.MobileAutomation.Activities.SetDeviceOrientation

# Description

Changes and then retrieves the orientation of the connected device.

# Project compatibility

Windows - Legacy | Windows

# Configuration

Properties panel

Common

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.
* DisplayName - The display name of the activity.

Input

* DesiredOrientation - Specifies the orientation you wish to switch the device to. The following options are available:Portrait Landscape Toggle

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* Orientation - Retrieves the orientation of the device after the change is performed, storing it in a ScreenOrientation variable. This field supports only ScreenOrientation variables.
