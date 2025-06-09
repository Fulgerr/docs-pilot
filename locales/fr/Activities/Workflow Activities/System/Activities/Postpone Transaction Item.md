# Postpone Transaction Item

UiPath.Core.Activities.PostponeTransactionItem

# Description

Adds time parameters between which an Orchestrator transaction must be processed (not before Postpone and no later than Deadline). An example of how you can use this activity is available here. This activity uses the same authentication context as the Robot it runs under.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Cross-platform, Windows configuration

* Transaction Item - The TransactionItem to be postponed.
* Postpone - The date after which the queue item may be processed. This property can be filled in with relative dates such as DateTime.Now.AddHours(2), DateTime.Now.AddDays(10) and DateTime.Now.Add(New System.TimeSpan(5, 0, 0, 0)). Additionally, you can use the US notation to add an exact time, such as 12/10/2017 07:40:00. Automatically correcting this date is available. For example, if you write 8 9 2018 9:0, it is automatically transformed to 08/09/2018 09:00:00.The system ignores past date-times in the Postpone field, therefore marking the transaction item as successful. This rule also applies to DateTime variables, which by default assume the minimum value of [01/01/0001 00:00:00].

Advanced options

Others

* Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).
* Continue on error - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is not configured and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.
* Deadline - The date before which the queue item should be processed. This property can be filled in with relative dates such as DateTime.Now.AddHours(2), DateTime.Now.AddDays(10) and DateTime.Now.Add(New System.TimeSpan(5, 0, 0, 0)). Additionally, you can use the US notation to add an exact time, such as 12/10/2017 07:40:00. Automatically correcting this date is available. For example, if you write 8 9 2018 9:0, it is automatically transformed to 08/09/2018 09:00:00.

# Windows - Legacy configuration

Properties panel

Input

* Deadline - The date before which the queue item should be processed. This property can be filled in with relative dates such as DateTime.Now.AddHours(2), DateTime.Now.AddDays(10) and DateTime.Now.Add(New System.TimeSpan(5, 0, 0, 0)). Additionally, you can use the US notation to add an exact time, such as 12/10/2017 07:40:00. Automatically correcting this date is available. For example, if you write 8 9 2018 9:0, it is automatically transformed to 08/09/2018 09:00:00.
* Postpone - The date after which the queue item may be processed. This property can be filled in with relative dates such as DateTime.Now.AddHours(2), DateTime.Now.AddDays(10) and DateTime.Now.Add(New System.TimeSpan(5, 0, 0, 0)). Additionally, you can use the US notation to add an exact time, such as 12/10/2017 07:40:00. Automatically correcting this date is available. For example, if you write 8 9 2018 9:0, it is automatically transformed to 08/09/2018 09:00:00.
* Transaction Item - The TransactionItem to be postponed.

Common

* Continue on error - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is not configured and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.
* DisplayName - The display name of the activity.
* Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).

Misc

* Folder Path - The path of the folder where the TransactionItem is located, if different from the folder where the process is running. This field only supports string values, with / as the separator to indicate subfolders. For example "Finance/Accounts Payable".The FolderPath parameter does not work for processes executed by robots in classic folders. Only robots in modern folders have the ability to pass data outside of their folder.Relative folder paths are supported in an X-UIPATH-FolderPath-Encoded header, as follows:-right: Path starting with / - starts from the root folder of the tree the ambient folder is part of.-right: Path starting with . - starts from the ambient folder.-right: Path starting with .. - starts one level up in the hierarchy of the ambient folder for each .. in the path (e.g. ../ for one level up, ../../ for two levels up in the hierarchy).Note that trailing slashes are not accepted.
* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.
