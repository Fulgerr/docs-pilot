# Group Policy conflict

# Description

When installing the UiPath extension for Chrome using Group Policy the ExtensionInstallForcelist is updated at the machine level.

This can cause a conflict if the ExtensionInstallForcelist is also defined at the user level or using Chrome Cloud Policies.

Because the machine level has priority, the extensions set at the user/cloud level are uninstalled.

To confirm this, check at chrome://policy if this warning is displayed under ExtensionInstallForcelist:

This policy is working as intended but a conflicting value is set elsewhere and is overridden by this policy.

![d709ad0-ExtensionInstallForcelist_Conflict=GUID-F68F4874-9C28-4ED2-9918-AB8508396D5B=1=en=Default](/images/d709ad0-ExtensionInstallForcelist_Conflict=GUID-F68F4874-9C28-4ED2-9918-AB8508396D5B=1=en=Default.png)

# Solution

To solve this conflict follow these steps:Install the UiPath extension for Chrome using the NativeHostOnly installation method.This installation method enables communication between the extension and Studio/Robot.It does not make any changes to the Group Policies.To use this installation method add CHROME_INSTALL_TYPE=NativeHostOnly to the installation command for UiPathStudio.msi. Example: UiPathStudio.msi ADDLOCAL=DesktopFeature,Studio,Robot,RegisterService,ChromeExtension CHROME_INSTALL_TYPE=NativeHostOnly.In the ExtensionInstallForceList policy, add the value:For the Group Policy Online installation method (that installs the Chrome Web Store extension):kmejkhcmhgilmppjodlgaklnmdmmhhcl;https://clients2.google.com/service/update2/crxFor the Group Policy Offline installation method (that installs the self-hosted extension):ndmegdjihnhfmljjoaiimbipfhodnbgf;file:///C:/ProgramData/UiPath/UiPath.Common/ChromeExtension_SelfHosted/extension_manifest_chrome.xmlIn the NativeMessagingAllowList policy, add the value: com.uipath.chromenativemsg_v2.
