# Setup Logs

When running the Windows installer (UiPathStudio.msi), all errors are logged in the Event Viewer.

For more detailed logs, you can execute the installer from the command line with the following parameters:

msiexec.exe /i "path_of_the_installer" /lv* "path_of_the_log_file"

For example:

msiexec.exe /i "%UserProfile%\Downloads\UiPathStudio.msi" /lv* "%UserProfile%\Desktop\Log.txt"

Executing this command line generates a file called Log.txt to the specified folder, which contains the installation log data.

If you are running the user mode installer (.exe), setup logs are automatically generated and can be found in %localappdata%\SquirrelTemp\SquirrelSetup.log.
