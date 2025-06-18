# Remote Debugging

Automations may behave differently on different machines. If the machine on which an
      automation will run in production has a different configuration than the machine where it is
      designed (for example, the machine has different hardware or software, different permissions,
      or it is in an isolated network) the process should be tested and debugged with the robot on
      that machine.

Remote debugging enables you to run and debug attended and unattended processes on robots
      deployed to remote machines, including on Linux robots that can run cross-platform
      projects.

You can connect to the remote robot using one of the following connection types:

* Remote Machine - Establish a TCP/IP
        connection to the robot on the remote machine.
* Unattended Robot - Connect to an
        unattended robot in the same tenant using Orchestrator.

Using remote debugging requires that the project is open in Studio. If you are using source
      control, to make sure you are working with the latest project version, we recommend enabling
      the Enforce Check-In before Publishdesign setting.You
        can't perform remote debugging on coded automations.

### Remote Machine Connection

To run or debug a project using a remote machine connection:

1. Make sure all the prerequisites are met.
2. On the remote machine, configure the robot to accept remote debugging requests.
3. If interactive authentication is enforced in Orchestrator and you want to run or debug an unattended process, make sure that the remote robot meets one of the following conditions: Connected to Orchestrator using interactive sign-in. Connected using client credentials or machine key and a user is also signed in from the Assistant. Connected using client credentials or machine key, no user is signed in from the Assistant, and a troubleshooting session is enabled in Orchestrator for the machine. For more information, see Debugging Unattended Processes.
4. In Studio: Set up a connection to the remote robot. Make sure remote execution is enabled. Run or debug your project.

# Prerequisites

* TCP/IP connectivity exists between the Studio machine and the remote machine.
* The remote Robot is the same version as Studio.
* The compatible .NET framework is installed on your remote machine.

# Configuring the robot on the remote machine

Before the remote robot can be used for debugging, the UiPath.RemoteDebugging.Agent utility on that machine must be configured to accept remote debugging requests from Studio:

1. Navigate to the installation directory:For a Windows robot - Open a command prompt in the UiPath installation folder (by default %PROGRAMFILES%\UiPath\Studio for per-machine installations, %localappdata%\Programs\UiPath\Studio for per-user installations).For a Linux robot - From a command line terminal, navigate to /root/application. For a macOS robot - From zsh, navigate to /Applications/UiPath Assistant.app/Contents/Robot.
2. Run the following command:For a Windows robot - UiPath.RemoteDebugging.Agent.exe enable --port <port_number> --password <pasword> --verboseFor a Linux robot - ~/application # dotnet ./UiPath.RemoteDebugging.Agent.dll enable --port <port_number> --password <pasword> --verboseFor a macOS robot - dotnet UiPath.RemoteDebugging.Agent.dll enable --port <port_number> --password <pasword> --verboseThe arguments in the command are all optional:--port <port_number> - Enter the port to use for receiving remote debugging commands from Studio. If no port is provided, the port 8573 is used by default.The port must be open in the firewall and not already bound by another application.--password <password> - Enter a password that must then be provided in Studio when setting up a connection to the remote debugging agent. --verbose - Log extra information to the console.
3. The following message is displayed:Robot on machine <hostname> is waiting for remote debugging instructions on port <port_number>
4. Make a note of the hostname and port_number values, they must be provided when setting up the connection in Studio.

No attended or unattended jobs can be executed from Orchestrator or from the local Assistant while the robot is in a remote debugging state. You can send remote debugging commands even to machines where the robot installation is not licensed.

# Setting up a remote machine connection

1. In Studio, select the Debug tab.
2. In the ribbon, select the arrow under Remote Debugging, and then select Configure Remote Debugging to open the Remote Debugging Settings window.
3. From the Connection Type dropdown, select Remote Machine.
4. Provide the following information in the corresponding boxes:Host - The hostname or IP address of the remote machine. Port - The port to use. The default port is 8573. Password - The password provided when the remote debugging agent was configured on the robot machine, if applicable.
5. (Optional) To make sure a connection can be established with the current setup, click Test Connection.
6. Click Save.


### Unattended Robot Connection

To run or debug a project remotely using an unattended robot connected to
            Orchestrator:

1. Make sure all the prerequisites are
                met.
2. Set up a connection to the remote
                robot.
3. Make sure remote execution is
                enabled.
4. Run or debug your project.

# Prerequisites

* Studio and the target robot are connected to the same Orchestrator tenant.
* The remote Robot is the same version as Studio.
* Studio, the target robot, and Orchestrator are running version 2021.10 or later.
* The user signed in to Studio has permissions to start jobs, and to create and delete storage buckets and storage files in the same folder context as the target robot. In addition, the robot account must have view permissions for storage buckets and storage files.
* The unattended robot is configured and the machine has one of the following runtime licenses available: Unattended, NonProduction, Testing.Testing runtimes for remote debugging are supported in Orchestrator 2022.4 and later.
* For debugging foreground processes, the option Run foreground automations is enabled for the robot in Orchestrator.
* If a troubleshooting session is used, it must be enabled only after connecting the robot to the Orchestrator.

# Setting up an unattended robot
                connection

1. In Studio, select the Debug tab.
2. In the ribbon, select the arrow under Remote Debugging, and then select Remote Debugging Settings.
3. From the Connection Type dropdown, select Unattended Robot.
4. To use any connected machine that is available in the Orchestrator folder selected from the Studio status bar, click Save. If you want to select the machine to connect to, use the following options:User - Select an account with an unattended robot assigned to the Orchestrator folder. Machine - Select a machine or template from the Orchestrator folder. Hostname - Select a machine from the list of connected machines.Show Live Stream - Select to see the actions performed by the robot. For more information, see Live Streaming and remote control.If changes are made to the account setup in Orchestrator, refresh the Orchestrator connection using the button in the Studio status bar so that they are reflected in this window.


### Remote Execution

When a remote debugging connection is established, clicking the Remote Debugging
      button in the ribbon toggles between remote and local execution. Before you select a run or
      debug operation, make sure the desired option is enabled (remote or local).

* As long as the button is highlighted in
          gray, all run and debug operations (Debug File, Run File, Debug
            Project, Run Project, Step Into/Over/Out, Test Activity, Run
            to/from this activity) are performed on the remote robot.
* As long as the button is not highlighted
          in gray, all run and debug operations are performed on the local robot.

The remote debugging experience is similar to the local debugging experience and all the
      features available for local debugging are also available for remote debugging. When remote
      execution that was triggered from the Debug tab is in progress, the Studio status bar is
      colored in green.

Depending on the type of connection used for remote debugging, the remote robot gets the
      activity packages required to execute a project as follows:

* Remote machine connection - Studio
        sends the list of project dependencies and activity feeds (package sources) to the remote
        robot, which uses the feeds provided by Studio to download the required packages.
* Unattended robot connection - Studio
        sends only the list of project dependencies to the remote robot, which uses the Orchestrator
        feeds and the activity feeds configured on the remote robot to download the required
        packages.

For an unattended robot connection, selecting Show Live Stream lets you visualize the
      actions that the robot is performing in real time. During remote execution, a new live stream
      window opens, which you can move and resize. You can also take remote control without pausing
      the automation for in-depth debugging or if the execution is blocked (for example, by an UI
      element that needs to be clicked). The live stream window disappears as soon as the workflow
      ends. While no additional actions are needed for Serverless Automation Cloud Robots, Windows
      robots require setting up a VNC server.It
        is not recommended to sign out of your account during remote debugging.

# Known limitations

* When you use a remote machine connection, if you pause debugging for an extended period of time, a Connection Closed error might occur in Studio even though on the remote machine the connection still appears to be active. To avoid this issue, you can increase the TCP idle timeout in your cloud or on-premises load balancer.
* Remote debugging long-running workflows is only supported for unattended robot connections.
* When you use an unattended robot connection, selecting the Picture in Picture option does not start execution in a separate session.
* The Show Live Stream option works only if the robot service on the unattended robot is deployed in service mode. For more information, see Robot Service.
* The Show Live Stream option is only supported for Automation Cloud Orchestrator and Automation Suite Orchestrator.
* The [Default] Cloud Robot - Serverless option set for an unattended robot connection in a cross-platform project persists when switching to a Windows project, causing an incompatibility error when running the workflow.


### Closing a Remote Debugging Connection

To disable the remote debugging connection, when no debugging execution is in progress, open the Remote Debugging Settings window, set the Connection Type to Disabled, and then select Save.

