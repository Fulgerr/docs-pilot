# Add Queue Item

UiPath.Core.Activities.AddQueueItem

# Description

Adds a new item in an Orchestrator queue. The status of the item will be New. An example of how to use this activity is available here.

For the UiPath.Core.Activities.AddQueueItem activity to work in a process, the Robot must be connected to Orchestrator. This is needed in order to send and retrieve information about queues, items and statuses.Schema definition values added to queues in Orchestrator and marked as required are automatically imported in the Dictionary Builder of the activity.Values marked as not required can be added to queue items and not be enforced.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Windows, Cross-platform configuration

* Orchestrator folder path - The path of the folder where the specified queue is located, if different from the folder where the process is running. This field only supports string values, with / as the separator to indicate subfolders. For example "Finance/Accounts Payable".The Orchestrator folder path parameter does not work for processes executed by robots in classic folders. Only robots in modern folders have the ability to pass data outside of their folder.Relative folder paths are supported in an X-UIPATH-FolderPath-Encoded header, as follows:Path starting with / - starts from the root folder of the tree the ambient folder is part of.Path starting with . - starts from the ambient folder.Path starting with .. - starts one level up in the hierarchy of the ambient folder for each .. in the path (e.g. ../ for one level up, ../../ for two levels up in the hierarchy).Trailing slashes are not accepted.
* Queue Name - The queue where the QueueItem object is to be added. The name is case insensitive, meaning that if in Orchestrator it was defined as "MyFirstQueue", it matches "myfirstqueue". The maximum number of characters is 50. If you click on the Manage queues button next to Queue Name, you are taken to the Queues section in the Orchestrator to which Studio is connected.
* Item Information - A collection of additional information about the specific QueueItem that is to be added. The information is stored in the item and is used during a transaction processing. To retrieve the latest queue schema, select Refresh arguments at the right side of the field. To open the items list and edit their attributes, select the Item Information field box.It is recommended to use only primitive values of the following types: Number, Boolean, String and DateTime.The values of string arguments cannot contain the following characters: [ and " ".Argument names cannot contain the following characters: :, ., ,, @, ".Arguments that are not set as required in the schema are not uploaded in the collection.







Advanced options

Input

* Deadline - The date before which the queue item should be processed. This property is a criterion for the prioritization of queue items, alongside Priority and Postpone. This property can be filled in with relative dates such as DateTime.Now.AddHours(2), DateTime.Now.AddDays(10) and DateTime.Now.Add(New System.TimeSpan(5, 0, 0, 0)). Additionally, you can use the US notation to add an exact time, such as 12/10/2017 07:40:00. Automatically correcting this date is available. For example, if you write 8 9 2018 9:0, it is automatically transformed to 08/09/2018 09:00:00.
* Item Collection - Enables importing an entire dictionary of information for a queue item. This field only accepts Dictionary<string, object> variables.
* Postpone - The date after which the queue item may be processed. This property is a criterion for the prioritization of queue items, alongside Priority and Deadline. This property can be filled in with relative dates such as DateTime.Now.AddHours(2), DateTime.Now.AddDays(10) and DateTime.Now.Add(New System.TimeSpan(5, 0, 0, 0)). Additionally, you can use the US notation to add an exact time, such as 12/10/2017 07:40:00. Automatically correcting this date is available. For example, if you write 8 9 2018 9:0, it is automatically transformed to 08/09/2018 09:00:00.
* Priority - The priority level of the queue item to be added. This property is a criterion for the prioritization of queue items, alongside Deadline and Postpone.
* Reference - The reference of the added QueueItem. The reference can be used to link your transactions to other applications used within an automation project. Additionally, this feature enables you to search for certain transactions, in Orchestrator, according to the provided string.DueDate is a reserved keyword. It cannot be used inside any property when configuring this activity.

Misc

* Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).
* Continue on error - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the Continue On Error property is True, no error is caught when the project is executed.

# Windows - Legacy configuration

Properties panel

Common

* Continue On Error - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the Continue On Error property is True, no error is caught when the project is executed.
* DisplayName - The display name of the activity.
* Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).

Input

* Deadline - The date before which the queue item should be processed. This property is a criterion for the prioritization of queue items, alongside Priority and Postpone. This property can be filled in with relative dates such as DateTime.Now.AddHours(2), DateTime.Now.AddDays(10) and DateTime.Now.Add(New System.TimeSpan(5, 0, 0, 0)). Additionally, you can use the US notation to add an exact time, such as 12/10/2017 07:40:00. Automatically correcting this date is available. For example, if you write 8 9 2018 9:0, it is automatically transformed to 08/09/2018 09:00:00.
* Item Collection - Enables importing an entire dictionary of information for a queue item. This field only accepts Dictionary<string, object> variables.
* Item Information - A collection of additional information about the specific QueueItem that is to be added. The information is stored in the item and is used during a transaction processing. It is recommended to use only primitive values of the following types: Number, Boolean, String and DateTime. The value of string arguments cannot contain the following characters: [ and " ". Argument names cannot contain the following characters: :, ., ,, @, ".
* Postpone - The date after which the queue item may be processed. This property is a criterion for the prioritization of queue items, alongside Priority and Deadline. This property can be filled in with relative dates such as DateTime.Now.AddHours(2), DateTime.Now.AddDays(10) and DateTime.Now.Add(New System.TimeSpan(5, 0, 0, 0)). Additionally, you can use the US notation to add an exact time, such as 12/10/2017 07:40:00. Automatically correcting this date is available. For example, if you write 8 9 2018 9:0, it is automatically transformed to 08/09/2018 09:00:00.
* Priority - The priority level of the queue item to be added. This property is a criterion for the prioritization of queue items, alongside Deadline and Postpone.
* Queue Name - The queue where the QueueItem object is to be added. The name is case insensitive, meaning that if in Orchestrator it was defined as "MyFirstQueue", it matches "myfirstqueue". The maximum number of characters is 50.
* Reference - The reference of the added QueueItem. The reference can be used to link your transactions to other applications used within an automation project. Additionally, this feature enables you to search for certain transactions, in Orchestrator, according to the provided string.DueDate is a reserved keyword. It cannot be used inside any property when configuring this activity.

Misc

* Folder Path - The path of the folder where the specified queue is located, if different from the folder where the process is running. This field only supports string values, with / as the separator to indicate subfolders. For example "Finance/Accounts Payable".The Folder Path parameter does not work for processes executed by robots in classic folders. Only robots in modern folders have the ability to pass data outside of their folder.Relative folder paths are supported in an X-UIPATH-FolderPath-Encoded header, as follows:Path starting with / - starts from the root folder of the tree the ambient folder is part of.Path starting with . - starts from the ambient folder.Path starting with .. - starts one level up in the hierarchy of the ambient folder for each .. in the path (e.g. ../ for one level up, ../../ for two levels up in the hierarchy).Note that trailing slashes are not accepted.
* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.
