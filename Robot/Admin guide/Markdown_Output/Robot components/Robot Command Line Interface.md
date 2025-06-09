# Robot Command Line Interface

The UiPath Robot Command Line Interface is a tool that allows you to interact with the Robot from a command line terminal. It uses the UiRobot.exe file to start, stop, or monitor attended and unattended automations directly from the command line. You can also get details on installed packages, create logs, or update configurations.

# How it works

To use the CLI, make sure of the following aspects:

* The Robot service is running
* You are in the directory in which the Robot is installed.

Then type in instructions or commands that refer to the UiRobot.exe program along with the necessary parameters, depending on what you want your automation to achieve.

For example, to start a process from the command line, you would use the following command:

UiRobot.exe -file "C:\UiPath\Projects\YourProject\Main.xaml".

### Common UiRobot.exe commands

# Execute

Use this command to start the execution of a project file of the following types:

* JSON
* XAML
* NUPKG

With Robot version 2023.4 and onwards, UiPath refreshes the process list at the same time a process executes. If a process update is available at the job start, the job uses the older version of the process. Subsequent runs apply the updated process.

The execute command uses the following arguments:

UiRobot.exe execute [--process <Package_ID> | --file <File_Path>] [--folder <Orchestrator_Folder_ID>] [--input <Input_Parameters>]

* -p--process <Package_ID> (mandatory) - Starts the execution of a local or Orchestrator process.Examples:UiRobot.exe execute --process UiPathDemoProcessUiRobot.exe execute -p UiPathDemoProcess
* -f--file <File_Path> (mandatory) - Starts the execution of a local project file. The target file can be JSON, XAML, or NUPKG.Examples:UiRobot.exe execute --file "C:\UiPath\Automation\Project.json"UiRobot.exe execute --file "C:\UiPath\Automation\Project.json"UiRobot.exe execute --file "C:\UiPath\Automation\Project.json"
* --folder <Orchestrator_Folder_ID> (optional) - Allows you to specify the Orchestrator folder from which to install and execute the target process. It can only be used together with the --process argument.Example:UiRobot.exe -Execute --process UiPathDemoProcess --folder OrchFolder1
* --input <Input_Parameters> (optional) - Allows you to specify input arguments for execution. It can be used with the --process or --file arguments.Examples:UiRobot.exe execute --process UiPathDemoProcess --input "{'inArg' : 'value' , 'Integer' : 3}"UiRobot.exe execute --process UiPathDemoProcess --folder OrchFolder1 --input "{'inArg' : 'value' , 'Integer' : 3}"UiRobot.exe execute --file "C:\UiPath\Automation\Main.xaml" --input "{'inArg' : 'value' , 'Integer' : 3}"
* --entry <entrypoint> (optional) - Allows you to select the entry point of a process when starting it via the command line.Example:UiRobot execute --file "C:\UiPath\Project\project.1.0.3.nupkg" --input "{'inArg':'value','integer':3}" --entry "OtherEntryPoint.xaml"



The following commands are not supported for Windows or cross-platform projects:UiRobot.exe execute --file "C:\UiPath\Automation\Main.xaml"UiRobot.exe execute --file "C:\UiPath\Automation\Project.json"You cannot use the --process (-p) and --file (-f) arguments simultaneously in the execute command.

# Install process

Use this command to install a process. If the robot is connected to Orchestrator, it searches for the process in the Orchestrator feed. Without an Orchestrator connection, the robot uses the local feed.

The install process command uses the following arguments:

UiRobot.exe installprocess [--process-name <process_name>] [--folder <orchestrator_folder>]

* --process-name <process_name> (mandatory) - The name of the process you want to install.Example:UiRobot installprocess --process-name MyProcess
* --folder <orchestrator_folder> (optional) - The name of the Orchestrator folder containing the process you want to install. This argument applies only when the connection to Orchestrator is active. If only one folder contains the process for installation, skip this parameter.Example:UiRobot installprocess -p MyProcess --folder MyOrchestratorFolder

# Connect

Use this command to connect your Robot to an Orchestrator instance. If your robot is already connected to Orchestrator and you run this command, it returns the "Orchestrator already connected" message.

The connect command uses the following arguments:

UiRobot.exe connect [--url <Orchestrator_Server_URL> --key <Machine_Key>] | [--connectionString <Connection_String>]

* connect - Establishes the connection to Orchestrator. Must be used together the --url, --key, or --clientID --clientSecret arguments. If you do not specify these arguments, the command uses the Orchestrator Settings configuration.Examples:// no arguments UiRobot.exe connect//using the machine key UiRobot.exe connect --url https://demo.uipath.com/ --key 1122AAB3C-DD44-ABCD-1234-7788GG99HH00 //using the client ID and secret UiRobot.exe connect --url https://demo.uipath.com/ --clientID 696CCA0C-1234-ABCD-1234-F65BBC2F15DE --clientSecret QJX!jv12345A4q4N

# Disconnect

Use this command to disconnect the Robot from the current Orchestrator instance.

The disconnect command uses the following arguments:

UiRobot.exe disconnect --force | --wait

* disconnect - Disconnects the Robot from Orchestrator only when there are no running jobs on the robot machine.Example:UiRobot.exe disconnect
* --force - Kills all running jobs on the machine and then disconnects the Robot from Orchestrator.Example:UiRobot.exe disconnect --force
* --wait - Waits for running jobs to complete before disconnecting the Robot from Orchestrator.Example:UiRobot.exe disconnect --wait

# Trace

Use this command to enable or disable low-level tracing for the Robot.

The trace command uses the following arguments:

UiRobot.exe trace --enableLowLevel | --disableLowLevel

* --enableLowLevel - Enables verbose tracing for the Robot Executor and Service in the Event Viewer. It generates an ETL file that you can open with the Event Viewer for assistance in troubleshooting crashes and errors.Example:UiRobot.exe trace --enableLowLevel
* --disableLowLevel - Disables verbose tracing for the Robot Executor and Service. It generates an ETL file that you can open with the Event Viewer for assistance in troubleshooting crashes and errors.Example:UiRobot.exe trace --disableLowLevel

# PiP

Use this command to enable or disable the Robot session or picture-in-picture capability on the machine. This setting modifies existing installations and applies to all users on the local machine. Requires administrator privileges.

The PiP command uses the following arguments:

UiRobot.exe pip --enable | --disable--enable - Enables the Robot session (PiP functionality ) of the machine.Example:UiRobot.exe pip --enable--disable - Disables the Robot session (PiP functionality ) of the machine.Example:UiRobot.exe pip --disable

# Other arguments

The following arguments are purely informative and have no impact on your automation projects:

--version - Displays information about the Robot version.--help - Displays the list of supported commands, as well as corresponding information and examples.flushlogs [--timeout <timeout_in_seconds>] - Sends all pending logs to Orchestrator.

