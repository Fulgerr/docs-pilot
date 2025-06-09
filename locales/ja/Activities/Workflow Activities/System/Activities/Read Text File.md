# Read Text File

UiPath.Core.Activities.ReadTextFile

# Description

Reads all characters from a specified file and stores it in a String variable.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Cross-platform configuration

* File - The file to be read. You can toggle between using a local path or a variable of IResource type. If you are using a local path, relative folder paths are recommended to account for the different file structure between Windows and Linux machines when executing a project. Example: newFolder/otherFolder.

Advanced options

Common

* Continue on error - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is not configured and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.

File

* Encoding - The encoding type to be used. You can find the complete list of codes for each character encoding here. To specify the encoding type to be used, use the value from the Name field. If no encoding type is specified, the activity will search for the file's Byte Order Marks to detect the encoding. If no Byte Order Marks are detected, the system ANSI code page is selected by default. This field supports String variables.

Output

* Output to - The extracted text from the file stored in a string variable.

# Windows - Legacy, Windows
            configuration

* FileName - The path of the file to be read. You can use the browse option to select the file from the computer or manually add the file path.

Properties panel

Common

* Continue on error - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is not configured and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.
* DisplayName - The display name of the activity.

File

* Encoding - The encoding type to be used. You can find the complete list of codes for each character encoding here. To specify the encoding type to be used, use the value from the Name field. If no encoding type is specified, the activity will search for the file's Byte Order Marks to detect the encoding. If no Byte Order Marks are detected, the system ANSI code page is selected by default. This field supports String variables.
* File - The file resource to be read.
* FileName - The path of the file to be read.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* Output to - The extracted text from the file stored in a string variable.
