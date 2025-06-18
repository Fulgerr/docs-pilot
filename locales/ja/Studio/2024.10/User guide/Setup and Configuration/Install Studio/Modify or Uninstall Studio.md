# Modify or Uninstall Studio

Follow the instructions on this page if you want to modify an installation or remove Studio from your machine.

# Modify Studio

1. Locate Studio in the Apps and features / Programs and Features Windows settings. For example, in Windows 10, select Start Menu > Settings > Apps and features > UiPath Studio, and then select Modify.Alternatively, double-click the installer to launch the installation wizard again.
2. Configure the following options:UiPath Studio - Select whether to install Studio. If not selected, only Robot and Assistant are installed. Select which extensions and add-ons to install: Excel Add-in, extension for Chrome, extension for Edge Chromium, extension for Firefox, JavaScript Robot Add-on, extension for Microsoft Remote Desktop.
3. Click Change.

For information on modifying Studio from the command line, see Command Line Parameters.

# Uninstall Studio

Locate UiPath Studio in the Apps and features / Programs and Features Windows settings. For example, in Windows 10, select Start Menu > Settings > Apps and features > UiPath Studio, and then select Uninstall.

Uninstalling does not remove the following:

* The settings in the folders %PROGRAMDATA%\UiPath, %LOCALAPPDATA%\UiPath, and %APPDATA%\UiPath
* The packages folder %USERPROFILE%\.nuget\packages
* The NuGet cache folder %LOCALAPPDATA%\NuGet\v3-cache
* The Assistant processes folder in the Windows Start menu %APPDATA%\Microsoft\Windows\Start Menu\Programs\UiPath Assistant Automations

To uninstall from the command line, use the Microsoft Standard Installer (Msiexec.exe). For example, open a command prompt in the folder containing the Studio installer and run the following command:

msiexec /uninstall UiPathStudio.msi.

Uninstalling from the command line also removes the %PROGRAMDATA%\UiPath folder (for per-machine installations) or the %LOCALAPPDATA%\UiPath folder (for per-user installations). To prevent either of the folders from being removed, run the uninstall command with the KEEP_USER_DATA=1 option. For example:

msiexec /uninstall UiPathStudio.msi KEEP_USER_DATA=1
