# Write Text File

UiPath.Core.Activities.WriteTextFile

# Description

Writes the specified text into a file. If the file already exists, the pre-existing
                text is overwritten. If the file does not exist, it is created.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Cross-platform configuration

* Write to file - The file to write to. You can choose to configure the file either as an IResource or Local File. If you choose to use a local file, you need to add just the file name and extension and make sure the file exists in the root of the project folder.
* Text - The text to be written into the file. Supports only strings and String variables.

Advanced options

Common

* Continue on error - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is not configured and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.

File

* Encoding - The encoding type to be used. You can find the complete list of codes for each character encoding here. To specify the encoding type to be used, use the value from the Name field. If no encoding type is specified, the activity will search for the file's Byte Order Marks to detect the encoding. If no Byte Order Marks are detected, the system ANSI code page is selected by default. This field supports String variables.

# Windows - Legacy, Windows
            configuration

* Text - The text to be written into the file. Supports only strings and String variables.
* Write to filename - The destination file where the value from the Text field is written in. You can use the browse option to select the file from the computer or manually add the file path.

Properties panel

Common

* Continue on error - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is not configured and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.
* DisplayName - The display name of the activity.

File

* Encoding - The encoding type to be used. You can find the complete list of codes for each character encoding here. To specify the encoding type to be used, use the value from the Name field. If no encoding type is specified, the activity will search for the file's Byte Order Marks to detect the encoding. If no Byte Order Marks are detected, the system ANSI code page is selected by default. This field supports String variables.
* FileName - The path of the file to write to.
* File - The file resource to write to.

Input

* Text - The text to be written into the file. Supports only strings and String variables.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.
