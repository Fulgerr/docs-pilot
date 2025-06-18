# The required UiPath extension is not installed on the remote machine

# Description

You are automating a Java application or a web application and the corresponding
                extension (the extension for Java, Chrome, Microsoft Edge, Firefox) is not installed
                on the remote machine.

# Solution

The error message indicates that you need to install/enable the associated UiPath
                Extension on the remote machine.

![cannotautomate=GUID-4B230DF7-C3AF-488F-A51D-6697D844F680=1=en=Default](/images/cannotautomate=GUID-4B230DF7-C3AF-488F-A51D-6697D844F680=1=en=Default.png)

Install the required extension on the remote machine by using one of the following
                options:

* Run the UiPathRemoteRuntime.msi installer, as described here in .
* Run the SetupExtensions.exe tool located in the installation folder of UiPath Remote Runtime (default %ProgramFiles(x86)\UiPath\RemoteRuntime), as described in .
