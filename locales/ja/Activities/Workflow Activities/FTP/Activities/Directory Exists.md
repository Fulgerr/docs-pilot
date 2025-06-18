# Directory Exists

UiPath.FTP.Activities.DirectoryExists

# Description

Checks whether a certain directory exists on an FTP server. This activity only works
                if it is placed inside a With FTP Session scope
                activity.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Windows - Legacy configuration

Designer panel

* Folder path - The path of the FTP directory in which to check whether the indicated directory exists. This field supports only String variables.

Properties panel

Common

* DisplayName - The display name of the activity. This field supports only String variables.

Input

* Folder path - The path of the FTP directory in which to check whether the indicated directory exists. This field supports only String variables.

Misc

* Continue on error - This field only supports boolean values (True, False). The default value is False. As a result, if this field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.
* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* Exists - A boolean variable that states whether the indicated directory was found or not.

# Windows, Cross-platform configuration

Designer panel

Folder path - The path of the FTP directory in which to check whether
                        the indicated directory exists. This field supports only
                            String variables.

Properties panel

Exists - A boolean variable that states whether the indicated
                        directory was found or not.
