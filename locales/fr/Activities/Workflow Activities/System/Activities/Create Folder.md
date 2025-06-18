# Create Folder

UiPath.Core.Activities.CreateDirectory

# Description

Creates a folder in the specified location. If a folder with the same name already exists at the specified path, the activity does nothing. If a parent folder that does not exist is specified in the path, the entire path is created.

When using this activity in Studio Web projects, local paths are supported only when the project is published and run on a machine that has access to said local paths.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Cross-platform configuration

* Folder name - The full path of the directory to be created.If the automation is run on both Windows and Linux machines, when setting the Folder Name path, it is recommended to use relative paths to match both Windows and Linux environments.For example, use myFolder instead of C:\myFolder.

Advanced options

Common

* Continue On Error - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is not configured and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.

Output

* Folder - Reference to the created folder for use in other activities.

# Windows - Legacy, Windows configuration

Properties panel

Common

* DisplayName - The display name of the activity.
* Continue On Error - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is not configured and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the Continue On Error property is True, no error is caught when the project is executed.

In folder

* Path - The full path of the directory to be created.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* Folder - Reference to the created folder for use in other activities.
