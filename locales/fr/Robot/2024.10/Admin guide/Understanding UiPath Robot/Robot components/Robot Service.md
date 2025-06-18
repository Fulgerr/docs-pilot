# Robot Service

# Overview

The Robot uses a Windows service that always runs when the machine is powered on. This service maintains a consistent connection with the UiPath Orchestrator to ensure the Robot can accept and execute jobs anytime. Some of the main capabilities of the Robot Service are:

* Inter-process communication (IPC)—Once you run an automation, the Robot Service receives and breaks down the process data into actions that the Robot Executor can understand and perform. This is done through communication channels that let different software parts on the same device share data.
* Connection to Orchestrator—The Robot Service maintains steady contact with the Orchestrator, constantly updating it with its operating status and receiving new instructions. It sends a heartbeat to Orchestrator, a signal that indicates the Robot Service is online and functioning.
* Session and credential management—The Robot Service manages Windows sessions, creating isolated task environments for each robot. Concurrently, the Robot Service upholds the security of sensitive data by managing the credentials for the Robot. In tasks requiring authentication, the Robot Service retrieves the necessary credentials securely, providing them to the robot.
* Operational modes—The Robot Service can operate in two modes - Service Mode or User Mode. These modes primarily differ in the way they are installed and operated, and the kind of tasks they tend to support.

The Robot Service supports unattended and attended automations, as follows:Unattended automation—The Robot Service executes processes in the background, even on virtual environments or when the user is not logged in. It makes decisions based on predefined rules, and it is suitable for large-scale, high-volume tasks, which improves operational efficiency.Attended automation—The Robot Service works alongside a user providing help with routine tasks. These might be rule-based tasks that require human judgment, aiding accuracy and productivity.

### UiPath.Service.Host.exe

When you install the Robot in Service Mode, UiPath.Service.Host.exe is the service that handles everything related to job execution in the background.

In Service Mode, the Robot runs under the Local System, meaning it starts together with the system.

The UiPath.Service.Host.exe service manages how and when the Robot opens a Windows session for execution, and is responsible for launching and maintaining the Robot Executor in those sessions.

UiPath.Service.Host.exe is a core part of the Robot functionality as it ensures that automation processes are executed correctly in the background without requiring user interaction. It runs independently of a user being logged in.


### UiPath.Service.UserHost.exe

UiPath.Service.UserHost.exe is a service linked to the UiPath Robot when installed in User Mode.

In User Mode, the Robot runs under the logged-in user, and can function only in an active Windows session. It does not require special system permissions, and it shuts down when the user logs out.

The UiPath.Service.UserHost.exe service executes tasks scheduled by Orchestrator and starts the Robot for job execution.

