# Append Line

UiPath.Core.Activities.AppendLine

# Description

Appends the specified string to a file, creating the file if it does not already
                exist.

To learn how to use this activity, see Tutorial: Working with Files and
                Folders.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Cross-platform configuration

* Write to file - The path of the file to append the line to. If the path is not full, the file is created in the project folder. You can toggle between using a local path or a variable of IResource type. If you are using a local path, relative folder paths are recommended to account for the different file structure between Windows and Linux machines when executing a project. Example: newFolder/otherFolder.
* Text - The text to be appended to the file.

Advanced options

Common

* Continue on error - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is not configured and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.

File

* Encoding - The encoding type to be used. You can find the complete list of codes for each character encoding here. To specify the encoding type to be used, use the value from the Name field. If no encoding type is specified, the activity will search for the file's Byte Order Marks to detect the encoding. If no Byte Order Marks are detected and Use default encoding is not selected, UTF-8 is selected by default. This field supports String variables.
* Use default encoding - If selected, the default operating system encoding is used when a new file is created or when the encoding cannot be detected. If not selected, the UTF-8 encoding is used. This option is not selected by default.

# Windows - Legacy, Windows
            configuration

Properties panel

Common

* Continue on error - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is not configured and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.
* DisplayName - The display name of the activity.

File

* Encoding - The encoding type to be used. You can find the complete list of codes for each character encoding here. To specify the encoding type to be used, use the value from the Name field. If no encoding type is specified, the activity will search for the file's Byte Order Marks to detect the encoding. If no Byte Order Marks are detected and Use default encoding is not selected, UTF-8 is selected by default. This field supports String variables.
* FileName - The path of the file. If the path is not full, the file is created in the project folder.
* Use default encoding - If selected, the default operating system encoding is used when a new file is created or when the encoding cannot be detected. If not selected, the UTF-8 encoding is used. This option is not selected by default.

Input

* Text - The text to be appended to the file.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.
