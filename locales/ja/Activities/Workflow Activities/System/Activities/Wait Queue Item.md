# Wait Queue Item

UiPath.Core.Activities.WaitQueueItem

# Description

Retrieves an Orchestrator queue item from a specified queue and stores it in a QueueItem variable. This activity is different from the Get Transaction Item activity as, at runtime, in case the specified queue is empty, it sends a message to Orchestrator stating it is ready to receive a queue item and then waits for a new queue item to be added to the specified queue. Once retrieved, the status of the queue item is set to In Progress.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Windows, Cross-platform configuration

* Orchestrator folder path - The path of the folder where the specified queue is located, if different from the folder where the process is running. This field only supports string values, with / as the separator to indicate subfolders. For example "Finance/Accounts Payable".The Orchestrator FolderPath parameter does not work for processes executed by robots in classic folders. Only robots in modern folders have the ability to pass data outside of their folder.Relative folder paths are supported in an X-UIPATH-FolderPath-Encoded header, as follows:Path starting with / - starts from the root folder of the tree the ambient folder is part of.Path starting with / - starts from the root folder of the tree the ambient folder is part of.Path starting with . - starts from the ambient folder.Path starting with .. - starts one level up in the hierarchy of the ambient folder for each .. in the path (e.g. ../ for one level up, ../../ for two levels up in the hierarchy).Trailing slashes are not accepted.
* Queue name - The name of the queue where you want to search for the queue item. This field supports only strings and String variables.For the Wait Queue Item activity to use the real-time communication method of the Robot, the System activity pack version and the Orchestrator version will have to be either both older than v20.10, or both newer than v20.10. Otherwise, theWait Queue Item activity does not use the real-time communication method of the Robot and has a maximum delay equal to the duration of a Heartbeat interval. The default duration of a Heartbeat interval is 30 seconds, and can be configured in Orchestrator.





Advanced options

Options

* PollTime (milliseconds) - Specifies the amount of time (in milliseconds) between two attempts to retrieve a new item. The default value is 30000 milliseconds (30 seconds).
* Filter Strategy - The strategy to use when filtering according to reference. The following options are available:StartWith - looks for items whose references start with the value indicated in the Reference field. Equals - looks for items whose references are the same as the value indicated in the Reference field.
* Reference - Filters items according to their reference. The expression cannot exceed 128 characters, nor contain the single quote character '.
* Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 300000 milliseconds (300 seconds).
* Continue On Error - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is not configured and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.

Output

* Result - The retrieved queue item, stored in a QueueItem variable.

# Windows - Legacy configuration

Properties panel

Common

* Continue On Error - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.
* DisplayName - The display name of the activity.
* Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 300000 milliseconds (300 seconds).For the Wait Queue Item activity to use the real-time communication method of the Robot, the System activity pack version and the Orchestrator version will have to be either both older than v20.10, or both newer than v20.10. Otherwise, theWait Queue Item activity does not use the real-time communication method of the Robot and has a maximum delay equal to the duration of a Heartbeat interval. The default duration of a Heartbeat interval is 30 seconds, and can be configured in Orchestrator.

Input

* PollTime (milliseconds) - Specifies the amount of time (in milliseconds) between two attempts to retrieve a new item. The default value is 30000 milliseconds (30 seconds).
* Queue Name - The name of the queue where you want to search for the queue item. This field supports only strings and String variables.

Misc

* Folder Path - The path of the folder where the specified queue is located, if different from the folder where the process is running. This field only supports string values, with / as the separator to indicate subfolders. For example "Finance/Accounts Payable".The Folder Path parameter does not work for processes executed by robots in classic folders. Only robots in modern folders have the ability to pass data outside of their folder.Relative folder paths are supported in an X-UIPATH-FolderPath-Encoded header, as follows:Path starting with / - starts from the root folder of the tree the ambient folder is part of.Path starting with / - starts from the root folder of the tree the ambient folder is part of.Path starting with . - starts from the ambient folder.Path starting with .. - starts one level up in the hierarchy of the ambient folder for each .. in the path (e.g. ../ for one level up, ../../ for two levels up in the hierarchy).Trailing slashes are not accepted.
* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* Result - The retrieved queue item, stored in a QueueItem variable.

Reference

* FilterStrategy - The strategy to use when filtering according to reference. The following options are available:StartWith - looks for items whose references start with the value indicated in the Reference field. Equals - looks for items whose references are the same as the value indicated in the Reference field.
* Reference - Filters items according to their reference. The expression cannot exceed 128 characters, nor contain the single quote character '.
