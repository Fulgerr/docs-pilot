# Windows sessions

The Robot executes automations in a Windows session, starting a console or an RDP session based on the LoginToConsole setting in Orchestrator. While all robots can connect to both session types, High-Density Robots use only RDP sessions.

# How it works

A Windows session is always created on the physical or virtual machine where the Robot is installed. Orchestrator does not directly create Windows sessions. Instead, when a job starts in Orchestrator, the following sequence takes place:

1. Orchestrator sends a message with the details of the process to the Robot Service on the machine.
2. The Robot Service requests the creation or access to an existing Windows session on the machine.
3. The Robot Service starts the Robot Executor in the previously-created session.
4. The Robot Executor then starts the execution of the automation in that session.

The Robot Service connects the command to execute an automation to the actual execution.

Without any pending jobs, the Robot Service enters an idle state and does not require a fully active Windows session for automation execution. The underlying service session remains active for constant communication with Orchestrator via WebSockets (SignalR). This ensures immediate execution when a command is received.

# Console session

This is the default execution environment.

In a console session, the Robot executes jobs while a user is logged in on the hosting machine. This type of session is generally recommended for:

* Automations using the host computer display resolution. Although you can specify a custom resolution, it is limited to the resolutions supported by the host computer.
* Sequential automation runs, as a new execution starts once the previous one finishes, and the executing robot disconnects from the active session.

There can only be one active console session at a time.

# RDP session

In a Remote Desktop Protocol (RDP) session, the Robot creates or connects to a virtual remote desktop environment on the machine it runs. This type of session is generally recommended for:

* Automations that require a custom screen resolution, by setting the resolution width, height and depth in the Robot Settings tab in Orchestrator.
* Windows workstations, to run one automation at a time, as a new execution starts once the previous one finishes and the executing robot disconnects from the active session.
* Windows Server machines, to run multiple automations concurrently:for the same user across their different RDP session, with the limitation that processes should not rely on Hardware events such as UIAutomation activities.for multiple users, each in their RDP session
* High-Density Robots executions.

If a job is started from Orchestrator and a RDP session is already active, the process runs in that session.

# The LoginToConsole option in Orchestrator

When you define or edit a robot account in Orchestrator, you can select the type of session used by your robots to run automations. To do that, use the Login To Console option.

On the Tenant > Manage Access > Robot accounts > Robot Settings page in Orchestrator, the Login to Console option is disabled by default. However, the robot executes tasks in a console session by default.

To activate the console session, turn on the Login To Console option and select Yes. If a job starts from Orchestrator during an active RDP session, the RDP session is automatically terminated.



To activate the RDP session, turn on the Login To Console option and select No. If a job starts from Orchestrator and a RDP session is already active, the robot executes the job within the active RDP session.



# Process execution over RDP

The following image summarizes the process execution over RDP:



1. The Robot Service receives the command to start an execution from Orchestrator, via the HTTPS protocol, called WebSockets (SignalR).
2. The Robot Service then creates a Windows session on the machine using RDP. This RDP session is created for the user assigned to the robot.
3. Once the RDP session is created, the Robot Service spawns a Robot Executor within that session. The Robot Service and the Robot Executor communicate to each other through Named Pipes. This method allows the Executor to know exactly which tasks need to be run.
4. The tasks are executed within the generated Windows session.

The Robot Service uses RDP exclusively to start a Windows Session on the machine where the Robot is installed. It does not use RDP to connect Orchestrator to the machine on which the process is executed, nor for communicating with other components outside the machine.To run unattended automations in environments where RDP sessions require Kerberos authentication, you need to use the DNS host name for the localhost value. To do that, add the following environment variable on your machine:UIPATH_DNS_MACHINENAME=TrueRunning automations in environments that enforce TCP do not influence your RDP sessions.

# Troubleshooting windows sessions

The Robot Service captures a series of session screenshots while setting up your windows session and deletes them once the session is successfully created. If the session setup fails, it saves the screenshots in the %ProgramData%\UiPath\SessionScreenshots directory for future troubleshooting.
