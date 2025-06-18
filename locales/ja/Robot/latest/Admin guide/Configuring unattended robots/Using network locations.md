# Using network locations

For easier access to shared network folders, you can map network drives on your user account. To map a network drive is to connect a network location that can be accessed via a URL, such as \\ServerName\SharedFolder, to a drive letter, such as z:.The mapping of a network drive is user-specific. So access to a mapped network drive is limited to the individual user for whom the mapping was done.However, if you store the packages published from Studio on the mapped network drive, you might run into some issues. To prevent this, map the network drive for the Local System.

Download the Sysinternals Suite. It contains the PsExec.exe tool, which is required for this operation.Open Command Prompt with administrator rights.Navigate to the location where you downloaded the Sysinternals Suite using the cd command. For example, cd C:\Downloads\SysinternalsSuite.Run PsExec -i -s cmd.exe. A confirmation dialog appears.Select the Accept button to install the PsExec.exe service. This makes it possible to map a network drive for the Local System.To map the network drive, run net use z: \\ServerName\SharedFolder /persistent:yes, where ServerName is your server and SharedFolder is the location of the drive you want to map.To remove the network drive from the map, run net use z: /delete.

## Mapping network drives in headless mode

Occasionally, robots cannot find a mapped network drive when running an unattended automation. This can happen due to the non-interactive nature of the session 0.To prevent this, map the network drive in headless mode. This can be done by remapping the drive for every job the robot starts. The remapping must be applied when the machine is restarted.In the unattended automation workflow, explicitly run the net use Z: \\unc\path command before accessing the shared drive.

