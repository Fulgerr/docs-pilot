# Setting up package folders and network paths

Restart required!Any update made to the config file requires a restart:For Service Mode robots: restart the Robot service.For User Mode robots: restart the user service, either by restarting the device or logging out of your user account and logging back in.

## Setting up a fallback package folder using system environment variables

To set up a fallback package folder using system enviroment variables:Add the NUGET_FALLBACK_PACKAGES variable to your system environment variables.For the variable, add the list of the absolute paths for the folder, separated by semicolons.If the environment variable does not exist, the robot tries to read the NuGet packages fallback folders from the Nuget.config file.Processes deployed in fallback folders are not supported, only dependencies.


## Setting up a fallback package folder using the NuGet.config file

# 

To set up a fallback package folder using the

NuGet.config

file:

Open the NuGet.config file.Add the following snippet for fallback package folders:<configuration>
  <fallbackPackageFolders>
    <add key="Shared" value="\\server\sharedPackages" />
    <add key="MachineWide" value="e:\machineWide" />
    <add key="Relative" value="..\..\global" />
  </fallbackPackageFolders>
</configuration>Save the NuGet.config file and restart the Robot service or the device.


## Changing the download path for packages

The default download path for packages is %userProfile%\.nuget\packages.To change the package download location, you can either edit the UiPath.config file, or use the PACKAGES_FOLDER="new/download/path"parameter via the command line when installing Studio or Robot.To edit the UiPath.config file, follow these steps:

Open the configuration file. You can find it in the C:\Program Files\UiPath\Studio folder.In the <packageSettings> section, add a new entry called packagesInstallationFolder. Then, set its value as the path of the new download folder.Save the changes and restart the Robot service or the device.When changing the download folder, make sure that all users that need to run automations can access it.

For example:<packageSettings>
  <add key="packagesInstallationFolder" value="C:\Nuget" />
</packageSettings>


## Setting up local and network paths

You can set a local or network path to enable several robots to use the same path. The setup depends on the robot operational mode: Service Mode or User Mode.On Windows Server machines that allow concurrent executions on High-Density Robots, you need to set up unique paths for each user. This is due to the way mappings are resolved per user. Since the computer account owns the installed files, it does not have access to user-specific network mappings.Using the same shared folder for all users in High-Density environments is supported with the following limitations:Robot modePath typeConsiderations for multiple robots using the same pathService modeLocal pathNo restrictionsNetwork pathNot supported when Secure XAML is used.Service mode robot installed on separate machines must have its own folder on the network.Mapped network paths, such as Z:\Packages, are not supported. Use non-mapped path, such as \\server\Packages.User ModeLocal pathYou must add the NUGET_SCRATCH environment variable on the robot machine, and provide it with a value other than the NuGet installation one. This sets a different path for storing temporary NuGet files, to prevent potential conflicts when multiple robots attempt to use NuGet simultaneously.The new temporary folder should be exclusive for the NUGET_SCRATCH variable.The user accounts under which robots run must have read and write access to both NuGet folders on the machine.Network pathThe path must include the machine name and username.<packageSettings>
  <add key="packagesInstallationFolder" value="\\NetworkServer\SharedFolder\UiPath\Packages\%username%\%computername%\" />
</packageSettings>

