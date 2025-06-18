# Troubleshooting

This page explains how to fix issues you might encounter when running automation in Citrix environments.

### Virtual channels blocked by default

# Description

Starting with Citrix Virtual Apps and Desktops 7 2109, all the custom virtual channels are blocked by default.

If you upgrade to this new Citrix version, the existing automation in Citrix via UiPath Remote Runtime stops working.

# Solution

The UiPath virtual channel must be added to the allow list policy. This can be done by following the instructions here.

The value below must be added to the allow list policy.

UIPCTX,<UiPathRemoteRuntime-Install_Path>\UiPathRemoteRuntime.exe

For example:

UIPCTX,C:\Program Files (x86)\UiPath\RemoteRuntime\UiPathRemoteRuntime.exe


### Interactive selection in Citrix apps freezes and nothing is selected

# Observed behavior

After you install the UiPath Extension for Citrix and try to select UI elements from a Citrix App, interactive selection freezes for one minute, and then nothing is selected.

# Cause

This happens if the UiPath Remote Runtime is not running in the Citrix App session.

# Solution

* Check if the UiPathRemoteRuntime.msi is installed on the Citrix application server from which the Citrix App is opened.
* On the Citrix application server, check if the UiPathRemoteRuntime.exe process is running. If the UiPathRemoteRuntime.msi is installed, then the process is started automatically on the Citrix App session login.If you can not install the UiPathRemoteRuntime.msi on the Citrix application servers, it is recommended to uninstall the UiPath Extension for Citrix from the client machine, as described here.


### Could not copy over file "C:\Program Files (x86)\Citrix\ICA Client\UIPathPluginCitrix.dll". It is being used by another process.

# Observed behavior

When you try to install the UiPath Extension for Citrix, the following error is displayed:

![9853b45-citrix_ext_error1=GUID-BB220F2B-3CAF-404B-863C-3792AD8F3840=1=en=Default](/images/9853b45-citrix_ext_error1=GUID-BB220F2B-3CAF-404B-863C-3792AD8F3840=1=en=Default.png)

# Cause

This occurs when the UiPath Extension for Citrix is already installed and an open Citrix App is using it.

# Solution

Close all your active Citrix App sessions, as described here and then try to install the UiPath Extension for Citrix again.


### Could not read Citrix registry key: 'SOFTWARECitrixInstallICA Client' Value: 'InstallFolder'

# Observed behavior

When you try to install the UiPath Extension for Citrix, the following error is displayed:

![1fbfbd0-citrix_ext_error2=GUID-D2AB9F7C-58ED-4213-91E0-04A00C8E2514=1=en=Default](/images/1fbfbd0-citrix_ext_error2=GUID-D2AB9F7C-58ED-4213-91E0-04A00C8E2514=1=en=Default.png)

# Cause

This error message is displayed when the Citrix Receiver is not installed. It is also displayed if the Citrix Receiver for Universal Windows Platform is installed.

# Solution

Download and install the Citrix Receiver or Citrix Workspace.


### Unhandled exception in Wfica32.exe 0xC0000094: Integer division by zero

# Observed behavior

Target Citrix App fails to launch and the Citrix ICA client crashes.

# Cause

Activities which use the GetWindowText function (such as Element Exists) are executed before the Citrix App can load.

# Solution

Allow time for the Citrix App to load by adding a delay before the activity.


### Interactive selection and element identification does not work with high DPI

# Observed behavior

Starting with Citrix Workspace App (CWA) for Windows 2206, if no High DPI policy settings are applied, interactive selection and element identification might not work for Citrix Apps when the display DPI scaling is higher than 100%.

# Cause

This is caused by the following change in Citrix: DPI support changes with Citrix Workspace App
                for Windows 2206.

# Solution

Delete the Enable_DPI registry value from Computer\HKEY_CURRENT_USER\SOFTWARE\Citrix\ICA Client\DPI:

![e931ac7-enable_dpi=GUID-EF2DFBE3-6944-45F3-AEAD-3F53396488AA=1=en=Default](/images/e931ac7-enable_dpi=GUID-EF2DFBE3-6944-45F3-AEAD-3F53396488AA=1=en=Default.png)

