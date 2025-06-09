# Start Job

UiPath.Core.Activities.StartJob

# Description

Enables you to start a job in Orchestrator. Please note that in order to execute this activity in Studio, the Robot has to be connected to Orchestrator and the Robot role needs to also have the Create and Edit rights on jobs, as well as View on processes and environments. The activity runs under the Robot which executes it.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Windows, Cross-platform configuration

* Orchestrator folder path - The path of the folder where the specified process is located, if different from the folder where the process is running. This field only supports string values, with / as the separator to indicate subfolders. For example, "Finance/Accounts Payable".The FolderPath parameter does not work for processes executed by robots in classic folders. Only robots in modern folders have the ability to pass data outside of their folder.Relative folder paths are supported in an X-UIPATH-FolderPath-Encoded header, as follows:Path starting with .. - starts one level up in the hierarchy of the ambient folder for each .. in the path (e.g. ../ for one level up, ../../ for two levels up in the hierarchy).Path starting with . - starts from the ambient folder.Path starting with / - starts from the root folder of the tree the ambient folder is part of.Note that trailing slashes are not accepted.
* Process name - The display name of the process you want to use for the job as it appears in Orchestrator (it could be found in Additional Settings field of the process settings). For example, if the name of the package is "InvoiceScan" and you named the process "Invoice Scanner", the string in this field should be "Invoice Scanner". This field supports only strings and String variables.
* Arguments - Specifies a collection of arguments to be passed as InputArguments to the activity.







Advanced options

* Continue On Error - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.
* Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for a specified element to be found before an error is thrown. The default value is 300000 milliseconds (300 seconds).
* Job Priority - Specifies the priority of the job. The available options are: Low, Normal, and High. By default, this option is empty.
* Resume On Same Context - Specifies whether to resume the initial machine and robot choice upon resumption of created jobs, if jobs are suspended. By default, this is False.
* Process Id - The ID of the process that started the job.
* Job Id - The ID of the job that was started.

# Windows - Legacy configuration

Properties panel

Classic Folder

* Modern Folder - Select True when using a modern folder.
* NumberOfRobots - The number of Robots to execute the process specified in the ProcessName field. If you type a number higher than the total number of Robots in the associated environment or 0, the job is executed on all the available Robots. This property supports only integers and Integer variables. The NumberOfRobots option is only available in the Windows - Legacy Configuration when using Classic Folders.

Common

* Continue On Error - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.
* DisplayName - The display name of the activity.
* Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for a specified element to be found before an error is thrown. The default value is 300000 milliseconds (300 seconds).

Input

* Arguments - Specifies a collection of arguments to be passed as InputArguments to the activity.
* ArgumentsVariable - Specifies a variable as input for arguments.
* JobPriority - Specifies the priority of the job. The available options are: Low, Normal, and High. By default, this option is empty.
* ProcessName - The display name of the process you want to use for the job as it appears in Orchestrator (it could be found in Additional Settings field of the process settings). For example, if the name of the package is "InvoiceScan" and you named the process "Invoice Scanner", the string in this field should be "Invoice Scanner". This field supports only strings and String variables.
* Resume On Same Context - Specifies whether to resume the initial machine and robot choice upon resumption of created jobs, if jobs are suspended. By default, this is False.

Misc

* Folder Path - The path of the folder where the specified process is located, if different from the folder where the process is running. This field only supports string values, with / as the separator to indicate subfolders. For example, "Finance/Accounts Payable".The Folder Path parameter does not work for processes executed by robots in classic folders. Only robots in modern folders have the ability to pass data outside of their folder.Relative folder paths are supported in an X-UIPATH-FolderPath-Encoded header, as follows:Path starting with / - starts from the root folder of the tree the ambient folder is part of.Path starting with . - starts from the ambient folder.Path starting with .. - starts one level up in the hierarchy of the ambient folder for each .. in the path (e.g. ../ for one level up, ../../ for two levels up in the hierarchy).Trailing slashes are not accepted.
* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* Key - The key of the job that was created.
