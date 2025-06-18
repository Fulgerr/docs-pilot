# Configuration Steps

Following the steps on this page enable you to build native selectors for applications and desktops virtualized through VMware Horizon and build your automation projects using UIAutomation activities and recording wizards.

# Installation Prerequisites

* Studio v2019.12 or greater on the client machine to install the Extension for VMware Horizon.
* VMware Horizon Client 3.4 or greater on the client machine.
* VMware Horizon Agent 7.0.0 or greater on the server for VMware Horizon Desktops.
* VMware Horizon Agent 7.1.0 or greater on the server for VMware Horizon Apps.We do not support the following VMware Horizon Client types:VMware Horizon Client for Windows 10 UWPVMware Horizon HTML Access Web Client

# Setting up the Client

1. In Studio, go to the Tools page from the Studio Backstage View. Available extensions are displayed there.
2. Click the VMware Horizon button to install the runtime plugin for automating VMware Horizon applications. A confirmation dialog box is displayed.
3. Click OK. The extension is now installed.

If Studio is not installed on the client machine, only the UiPath Robot, you can install the UiPath Extension for VMware from the Command Prompt, as described in .

# Setting up the Server

1. Download the UiPathRemoteRuntime.msi installer. The UiPathRemoteRuntime.msi installer can be downloaded from:Product Downloads in the UiPath Customer PortalResource Center in the UiPath Automation Cloud. To access Resource Center, log in to your Automation Cloud Organization and click the Help button on the navigation bar.
2. Install UiPathRemoteRuntime.msi on the VMware virtual machines where the applications to be automated are running.

More details about the UiPath Remote Runtime can be found here.

Once installation finishes, you’re good to go on the server side.

After you install the UiPath Remote Runtime and the UiPath extension for VMware Horizon, you need to restart your active VMware Horizon connections for the changes to take effect.

# Updating Project Dependencies

Native selectors for VMware technologies are only enabled if you add the UiPath.UIAutomation.Activities package v19.12 or greater as a dependency for your project.

1. In Studio, open the Package Manager.
2. From the Project Dependencies pane, select the UiPath.UIAutomation.Activities package.
3. Ensure that the selected package version is v19.12 or greater. If it is not, select it from the drop-down and click the Update button.
4. Click the Save button to update your dependencies.

Congratulations, you can now generate native selectors for VMware technologies!
