# Run Parallel Process

UiPath.Core.Activities.BeginProcess

Executes a UiPath process that is available for the local machine. Can be used to run local packages, as well as processes in Orchestrator, if a connection is available.

The Run Parallel Process activity runs in Asynchronous mode, meaning that the parent process is only responsible for starting the child ones. After that happens, both processes run independently from each other.

Logs generated for the execution of the parent and child processes are written individually in the local log files and Orchestrator. They both contain complete information about each execution.

When using the Run Parallel Process activity, a separate job is created for each process, as opposed to the Invoke Process  activity which creates only one job.

If a child process is invoked but not found, an error is logged containing the name of the child process, the path where Robot searched for it and additional details such as WindowsIdentity and machineName. When this happens, an exception is thrown and additional details are being logged.

If an error occurs in the child process after it has been invoked, the parent is not aware of it and continues its normal execution.

The Run Parallel Process activity only works with Attended Processes.

# Properties

Common

* DisplayName - The display name of the activity.

Input

* Arguments - A list of IN arguments that you can pass to the process you want to run from Orchestrator. If an argument has an unknown type, it is converted to JSON.
* Process Name - The name of the process in Orchestrator you want to run, stored in a String variable. This field supports only strings and String variables. Process Name should contain the name of the Package, as that is being used by the Robot.

Misc

* Entry Point - Specifies which workflow from the invoked process should be the one to be ran first. This field supports only strings and String variables.
* Folder Path - The path of the Orchestrator folder where the specified process is located, if different from the folder where the process is running. This field only supports string values, with / as the separator to indicate subfolders. For example "Finance/Accounts Payable".The Folder Path parameter does not work for processes executed by robots in classic folders. Only robots in modern folders have the ability to pass data outside of their folder.Unserializable data types cannot be passed between workflows (e.g. UIBrowser, UIElement, etc).
* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.
* Target Session - Specifies the session in which the child process is started.Current - The child process opens in the same session as the parent one. Process Default - The child process uses the Process Settings. Main - The child process starts in the main session regardless to where the parent process runs. Picture in Picture - The child process starts in the Picture in Picture session regardless to where the parent process runs.
* Use Package - Specifies if the process should be identified by its package name (selected) or by its process name (not selected).
