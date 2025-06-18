# Update Service

The Update Service in UiPath Robot is part of a system responsible for managing UiPath updates for the Robot software and components.

The service detects when a new version of the software has been released and manages the update process while ensuring minimal disruption to the ongoing tasks. As an administrator, you can select the specific version to be installed on a your machine.

Operates through two executables:

UiPath.UpdateService.Agent.exe - This is the client-side component of the Update Service. It runs under the user context that launched the UiPath Robot and communicates with Update Service Worker.Only present in the User Mode and attended robot installation.UiPath.UpdateService.Worker.exe - This is the actual update component that performs the software updates. It runs as a system service, managing update downloads and installations.The type of Robot installation determines how the system installs the update executables:Robot installation typeUiPath.UpdateService.Worker.exeUiPath.UpdateService.Agent.exeUnattendedInstalled as a Windows service.Not installed.AttendedTo allow the Update Service to connect to the update server, add the Orchestrator URL during the installation. Without it, you need admin permissions to connect the Robot to Orchestrator.Installed as a Windows service.Installed as LogOn Task in Task Scheduler.QuickInstalled as LogOn Task in Task Scheduler.Installed as LogOn Task in Task Scheduler.Automatic updates are standard for UiPath Robot Community Edition users. To prevent task disruptions, these updates are applied only when the Robot is idle.Enterprise users need to manually control updates to align with their internal IT policies.Automatic updates do not apply to Linux Robots.

# The communication between Robot Service and Update Service

Service Mode robotsUser Mode robotsBoth Robot and Update services run in the local system session.The Robot and Update services run in the user and local system sessions, respectively.

# The update policy

You can configure update policies for users, user groups, or machines, based on the robot installation type.

Attended installationsUnattended installationsPer user (for example, John Smith)Per user groups (for example, Automation Developers)Per machine (for example, LAPTOP-AG1LD).Robot accounts use update policies set at machine level.The available options for an update policy are:

* Latest version - Installs the latest available version found on the update server.
* Latest patch - Installs the latest patch available for each of the supported versions.
* Specific version - Installs a specific patch from the ones available on the update server.

# The policy hierarchy

User-group policies take precedence over user policies set to None. To stop updates for a user, remove them from the policy-enforced group or match their policy to their installed version.

User-level policies set to Specific version value take precedence over the user-group policy.

User-level policies take precedence when a user-level policy, a group-level policy, and a machine-level policy all apply to the same robot.

# The update confirmation

The update process for UiPath Robot, whether attended or unattended, requires a confirmation step to ensure smooth transition and prevent disruptions.

During an update, you are prompted to stop or save running processes. In case of no response, Studio auto-saves work and closes, while the Robot waits for processes to end before updating. You can resume your work post-update.

User Mode installationsService Mode installationsThe update prompt offers two options:Update Now - Stops all currently running jobs and closes all active Studio instances. The update then proceeds immediately.Later - Postpones the update. The notification is muted, and you can initiate the update process at your convenience. You can launch the update process by clicking Check for updates in the UiPath UI icon located in your system tray.If you do not respond to the prompt within 24 hours, the system automatically installs the update, which may lead to job failures.The update service verifies that Robot, Studio, or Assistant are not executing any jobs or processes. Once this is confirmed, the update acknowledgment is sent back to the update server, triggering the update process. If you do not respond to the prompt within 10 minutes, the system automatically installs the update, which may lead to job failures.

# The update process

The update process unfolds through the following steps:

1. Downloading: The update service checks for update requests from the update server every three hours and starts downloading if received.
2. Downloaded: Marks successful file download and initializes post-processing.
3. Processing: Involves post-processing of the downloaded file, checks for errors, and commences the installation process if clear.
4. Ready to Install: Alerts the user or checks that Robot, Studio, and Assistant are ready for for update.
5. Install Approved: Once the update service receives approval, actual installation begins.
6. Installing: The newer version is installed, preserving the same settings.
7. Success/Error: Reports the update status to the update server.

After the update process is complete, you must manually restart Robot and Studio.

With a pre-installed Chrome extension, the process auto-updates it. Without it, post-update manual installation is necessary.

In User Mode, an update command to one Robot impacts all users on that machine.

# The auto-update process for proxy configurations

You can configure the auto-update process for robots operating behind a proxy, depending on the on the Robot installation type:

For unattended installations, the Update Agent is absent. Configurations for proxy are manually handled by modifying the UiPath.config file. Both the Robot Service and the Update Service run using a Windows Service, independent of a user.

For attended installations, configurations for proxy are also manually handled by modifying the UiPath.config file. However, the user starts both the Robot Service and the Update Agent. The Update Service runs using a Windows Service.

For quick installations, configurations for the proxy are inherited from the existing user settings. The user initiates all services: Robot Service, Update Agent, and Update Service.

# The retry mechanism

When the Update Service cannot download the update files, three download retries are available. Users are notified before each retry:

* First retry applies one hour after the initial update attempt.
* Second retry applies two hours after the first one.
* Third retry applies four hours after the second one.

Retry logs are stored in Orchestrator or in the local logs file: %localappdata%/Uipath/UpdateService/logs.

If the update is not completed within 72 hours of its start, an error is logged, and the update is retried upon the next request.

To manually retry the update, click the update icon .

# Update logs

You can access the logs for both failed and successful updates:

* From the Orchestrator interface : Tenant > Machines > select a machine > More actions > Installed Versions & Logs
* On the machine, in the logs file: %localappdata%/Uipath/UpdateService/logs

# Update statuses

You can check the status of your Robot version for your machines.

On the Orchestrator > Tenant > Machine page, the Version status column displays the update policy status for the corresponding machine. The following values are available:

Version statusDescriptionNo policyNo update policy is defined for the machine.Update in progressAn update process is in progress on the machine.CompliantThe robot version on the machine matches the update policy.Non-compliantThe robot version on the machine differs from the one set in the policy.Update failedThe update process failed. For details, check the update logs.N/AThis status appears when the feature to exclude idle machines is active and the robot has not connected for some time, or the machine type does not support the auto-update process.

# Machine template updates

When a machine is inactive, the machine template, using the same machine key with the update server, becomes Non-compliant.

To exclude inactive machines, select the Client Binaries box in Orchestrator > Tenant > Settings and adjust the inactivity interval.

# Cloned machine in virtual environments updates

For robots deployed on virtual environments involving cloned machine, all attributes, such as machine name, GUID, or drive ID, are the same.

This causes Orchestrator to receive different update statuses from multiple machines sharing identical attributes, leading to duplicate log entries.

In this case, Orchestrator displays the update status of the most recent connected machine.
