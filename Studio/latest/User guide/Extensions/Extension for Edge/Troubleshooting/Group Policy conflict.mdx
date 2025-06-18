# Group Policy conflict

# Description

When installing the UiPath extension for Edge using Group Policy the ExtensionInstallForcelist is updated at the machine level.

This can cause a conflict if the ExtensionInstallForcelist is also defined at the user level.

Because the machine level has priority, the extensions set at the user/cloud level are uninstalled.

To confirm this, check at edge://policy if this warning is displayed under ExtensionInstallForcelist:

More than one source with conflicting values is present for this policy!

![b369dc9-ExtensionInstallForcelist_Conflict_Edge=GUID-DA39D4F0-421E-45D4-96D7-F9C44E0D12FF=1=en=Default](/images/b369dc9-ExtensionInstallForcelist_Conflict_Edge=GUID-DA39D4F0-421E-45D4-96D7-F9C44E0D12FF=1=en=Default.png)

# Solution

To solve this conflict, follow these steps:Install the UiPath extension for Edge using the NativeHostOnly installation method.This installation method enables communication between the extension and Studio/Robot.It does not make any changes to the Group Policies.To use this installation method add EDGE_INSTALL_TYPE=NativeHostOnly to the installation command for UiPathStudio.msi. Example: UiPathStudio.msi ADDLOCAL=DesktopFeature,Studio,Robot,RegisterService,EdgeExtension EDGE_INSTALL_TYPE=NativeHostOnly.In the ExtensionInstallForcelist policy, add the value:For the Group Policy Online installation method (that installs the extension from Microsoft Edge Add-ons Store): dknkgjgkdpkmddgdjlgdhfojlaehikmk;https://edge.microsoft.com/extensionwebstorebase/v1/crx For the Group Policy Offline installation method (that installs the self-hosted extension): ndmegdjihnhfmljjoaiimbipfhodnbgf;file:///C:/ProgramData/UiPath/UiPath.Common/EdgeExtension_SelfHosted/extension_manifest_edge.xmlIn the NativeMessagingAllowlist policy, add the value: com.uipath.chromenativemsg_v2.
