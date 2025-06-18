# Known issues and limitations

With the help of UI Automation activities you can natively generate selectors for Citrix technologies and create your automation projects. There are, however, a few things to consider:

# The Citrix client needs to be installed per
                machine

The Extension for Citrix is installed per machine and cannot communicate with the Citrix client (Citrix Receiver or Citrix Workspace) when it is installed per user. You need to install the Citrix client per machine before installing the UiPath Extension for Citrix.

# Interactive selection with high DPI

Interactive selection with High DPI is natively performed in Citrix Apps. Please note that it is mandatory to restart your active Citrix sessions after you change DPI scaling options.

If you are using multiple displays with different DPI scaling options and you move the target window across the displays, UI element selection can appear offset. In this case, it is recommended to resize the target window and select UI elements again.

# Upgrading to the Citrix Workspace v1810

After you upgrade the Citrix Receiver to the Citrix Workspace, the UiPath Extension for Citrix is automatically uninstalled. In order to build selectors for Citrix technologies again, you need to reinstall the UiPath Extension for Citrix.

Please note that after upgrading to the Citrix Workspace v1810 the UiPath Extension for Citrix becomes corrupted. This is a known issue with this particular version of Citrix Workspace, and prevents you from opening any Citrix Apps. The following error message is displayed:

You might be having an issue with a Citrix virtual driver (UiPathPluginCitrix). Contact your system administrator for further assistance.

To fix this issue, you need to reinstall the UiPath Extension for Citrix and then restart the Citrix Workspace.

![784196c-workspace_error=GUID-7573ABED-E23A-4289-857F-FCCFBF7A388B=1=en=Default](/images/784196c-workspace_error=GUID-7573ABED-E23A-4289-857F-FCCFBF7A388B=1=en=Default.gif)

Please note that after every upgrade or installation of the Citrix Receiver or Workspace the UiPath Extension for Citrix needs to be reinstalled.

# The Citrix Receiver for Universal Windows Platform (UWP) is Not Supported

The UiPath Extension for Citrix can not be installed for the Citrix Receiver for Universal Windows Platform. This also applies to Citrix Workspace for Universal Windows Platform. In this scenario, it is advisable to install the standard Citrix Receiver or Citrix Workspace instead.

# The Citrix App Session May Enter The Idle State During Background Automation

If a Citrix App does not receive any input from the user for a while, the associated Citrix session enters the idle state and disconnects. The idle disconnect timeout value is configured on the Citrix application server, and is generally about 30 minutes.

By default, the Click and Type Into activities send hardware events to the Citrix App, just as a regular user would. This prevents the Citrix App from entering the idle state.

However, if you use only background automation (such as the Click activity with the SendWindowMessages property enabled) for more than 30 minutes, the Citrix App may enter the idle state, and the following message is displayed:

![3c6591f-idle_timeout_message=GUID-F6BF9426-AFA7-46F5-AFCF-EF31B4361274=1=en=Default](/images/3c6591f-idle_timeout_message=GUID-F6BF9426-AFA7-46F5-AFCF-EF31B4361274=1=en=Default.png)

If you run into this issue, it is recommended to increase the idle timeout value on the Citrix
                                                  application server.
