# Configuration Steps

In order to benefit from native RDP automation support, a few steps need to be performed. When they are done, you can use Studio on the client machine to build processes with the help of UIAutomation activities and wizards.

# Setting up the Client

1. In Studio, go to the Tools page from the Studio Backstage View. Available extensions are displayed there.
2. Click the Windows Remote Desktop Extension button to install the UiPath Windows Remote Desktop Extension. A confirmation dialogue box is displayed.Click the OK button. The extension is now installed.

The Windows Remote Desktop Extension can also be installed from the Command Prompt. You can find out more details on this page.

# Setting up the Remote Desktop Machine

1. Download the UiPathRemoteRuntime.msi installer. The UiPathRemoteRuntime.msi installer can be downloaded from:Product Downloads in the UiPath Customer PortalResource Center in the UiPath Automation Cloud. To access Resource Center, log in to your Automation Cloud Organization and click the Help button on the navigation bar.
2. Install UiPathRemoteRuntime.msi on the target Remote Desktop machine that you wish to automate.

Please note that the UiPath Remote Runtime component can only be installed on RDP clients that use mstsc.exe.

For more details, see About UiPath Remote Runtime.

Once installation finishes, you’re good to go on the Remote Desktop machine.
