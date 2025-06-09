# Move File

UiPath.Core.Activities.MoveFile

# Description

Moves a file from a specified location to another.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Cross-platform configuration

* Input resource - The file resource to be moved. You can toggle between using a local path or a variable of IResource type. If you are using a local path, relative folder paths are recommended to account for the different file structure between Windows and Linux machines when executing a project. Example: newFolder/otherFolder.
* To - The destination path where the file is to be moved.
* Overwrite - When selected, overwrites the files in the destination folder with the file that is to be copied.

# Windows - Legacy, Windows configuration

Properties panel

Common

* DisplayName - The display name of the activity.
* Continue On Error - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the Continue On Error property is True, no error is caught when the project is executed.

From

* Input resource - The file resource to be moved.
* Path - The path of the file to be moved, as string.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Options

* Overwrite - When selected, overwrites the files in the destination folder with the file that is to be copied.

To

* Destination - The destination path where the file is to be moved.
* Destination resource - The destination resource where the file is to be moved.
