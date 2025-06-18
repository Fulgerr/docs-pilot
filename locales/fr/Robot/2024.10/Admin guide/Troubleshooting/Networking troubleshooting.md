# Networking troubleshooting


## Unattended robot cannot find mapped drive

# Description

Occassionally, robots cannot find a mapped network drive when running an unattended automation.

# Potential issue

This can happen due to the non-interactive nature of the Windows logon session.

# Solution

Map the network drive in the headless mode for every job the robot starts by running the following command:

net use Z: \\unc\path

When you restart the machine, you must map the network drive in the headless mode again.


## Assembly cannot be loaded from network or Azure file share

# Description

Trying to run a package from a network path or an Azure File Share fails with the "System.Xaml.XamlObjectWriterException: Cannot create unknown type [....]" error.



The robot logs the following error message: "System.NotSupportedException: An attempt was made to load an assembly from a network location which would have caused the assembly to be sandboxed in previous versions of the .NET Framework."

# Potential issue

The Robot machine might not trust the web address for the Azure File Share, where the package is located. Alternatively, the account the robot uses might lack permissions for that specific location.

# Solution

Make sure that the account under which the robot runs has the necessary permissions. Then, add the Azure File Share web address as a trusted network on the robot machine.


## Unresponsive robot over RDP

# Description

The Robot machine becomes unresponsive and shows high CPU usage at some point after starting the automation. It occurs on Windows 10 v1903 machines.

# Potential issue

This is a Microsoft known issue on Windows 10 v1903 which affects the runtime of the DWM.exe file, leading to high CPU usage upon completion of a Remote Desktop session.

# Solution

Apply the KB4522355 update on the faulty Windows machine.

