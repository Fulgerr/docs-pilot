# Service Mode vs. User Mode

The UiPath Robot operates in two modes - Service Mode and User Mode.

Service Mode is designed for unattended automation and allows operations under locked screen or when a user is not logged in.

User Mode, on the other hand, is used for attended automation scenarios requiring human intervention. It runs from the system tray and its capabilities depend on the resources available to the currently logged-in user.

## Connecting User Mode or Service Mode robots to Orchestrator

The following table describes the recommended Orchestrator connection method based on the robot operational mode:

Robot installation typeRobot operational modeOrchestrator connectionAttendedUser ModeInteractive Sign-InUnattendedService ModeClient credentialsStudio (for development purposes)User ModeInteractive Sign-In


## Service Mode

In Service Mode, the Robot runs as a Windows service, therefore it automatically starts once the system boots up. It has system-wide access, completing tasks independently, even if no user is logged into the system.

When you install the Robot in Service Mode, it uses the UiPath.Service.Host.exe service to handle everything related to job execution in the background.


## User Mode

In User Mode, the Robot starts only after a user logs in and manually launches an automation. It has the same access rights as the logged-in user. It requires a user interface to perform tasks. Without an active user session, the robot cannot run processes.

When you install the Robot in User Mode, it uses the UiPath.Service.UserHost.exe service to handle everything related to job execution.


## Interactive Sign-In

Interactive Sign-In, or the Service URL option in Assistant, is the default authentication option for User Mode robots: sign-in to Assistant by providing your user credentials. If your environment is configured to use SSO with Azure Active Directory, you can enable automatic authentication for your account during the Robot installation (the Automatically sign in option).

Service Mode robots can use Interactive Sign-In for troubleshooting unattended sessions: first log on to the machine in a user session, then authenticate with the Service URL to Assistant to gain access to processes.


## Modes comparison

The following table summarizes the main differences between Service Mode and User Mode:

Robot capabilityService ModeUser ModeSystem start-upAutomatically starts at system start-up.Starts when Assistant starts.User sessionOperates independently from any specific user.Operates under the active user session.Access rightsHas system-wide access.Has the same access rights as the logged-in user.Execution requirementsExecutes tasks even when no user is logged in.Requires a user interface and an active user session to perform tasks.Execution resourcesRequires more computational resources as it can run more complex tasks.Needs fewer computational resources.Automation typeSuitable for unattended automation scenarios.Suitable for attended automation scenarios.ScalingOften used in large-scale automation deployments.Typically used for individual or small-scale deployments.Management serviceUiPath.Service.Host.exeUiPath.Service.UserHost.exeVisibilityMostly invisible during its operation.Visible in the system tray and can be managed from there.Secure XAML (*)Supports securing XAML files.Does not support securing XAML files, meanig users can access these files without admin rights.(*) Secure XAML is a feature specific to Windows-Legacy projects exclusively.


## Switching between modes

You can switch between User Mode and Service Mode during the update process.

To switch from User Mode to Service Mode, make sure the RegisterService parameter is added to the ADDLOCAL command.

To switch from Service Mode to User Mode, make sure the RegisterService parameter is removed from the ADDLOCAL command.

While an operational mode change is possible, we strongly advise against it. Such a change breaks %localappdata% settings, for example, proxy or Orchestrator connection.

