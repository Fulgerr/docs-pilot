# Group Policies

If your organization uses Group Policies for browser extension management then follow the instructions from this page to ensure that the Extension for Chrome is installed correctly.

The list of active policies on your machine can be viewed in Chrome by navigating to chrome://policy.

You can find out more information about Chrome policy management on this page.

### Group Policies that affect the UiPath
        Extension for Chrome

# ExtensionInstallForcelist

The ExtensionInstallForcelist policy controls
                which extensions are force-installed in the browser.

This policy must contain the ID of the extension for Chrome.

* For machines that are joined to a Windows Active Directory, follow the installation steps for the Group Policy Offline installation method.For the offline installation method, the ExtensionInstallForcelist policy must contain the value:ndmegdjihnhfmljjoaiimbipfhodnbgf;file:///C:/ProgramData/UiPath/UiPath.Common/ChromeExtension_SelfHosted/extension_manifest_chrome.xml
* For machines that are not joined to a Windows Active Directory follow the installation steps for the Group Policy Online installation method.For the online installation method, the ExtensionInstallForcelist policy must contain the value:pgbnimfaaifjpebleldfhgcjdnaeafdi;https://clients2.google.com/service/update2/crx

# NativeMessagingBlocklist

The NativeMessagingBlocklist policy prevents
                the UiPath NativeHost (ChromeNativeMessaging.exe) from working.

If the NativeMessagingBlockList policy is defined with the value of
                    *, it means all native messaging hosts are denied, unless they
                are explicitly allowed through the NativeMessagingAllowList
                policy.

# NativeMessagingAllowlist

The NativeMessagingAllowlist policy specifies
                which native messaging hosts are not subject to the deny list.

A deny list with the value of * means all native messaging hosts are
                denied. You can allow the UiPath NativeHost by adding the value
                    com.uipath.chromenativemsg_v2 to the
                    NativeMessagingAllowlist policy.

# ExtensionInstallBlocklist

The ExtensionInstallBlocklist policy prevents
                extensions from being installed on the machine.

To fix this, you can
                either:

* Install the UiPath Extension using Group Policy.
* Or allow the UiPath Extension to be installed from the Chrome Web Store by adding the value pgbnimfaaifjpebleldfhgcjdnaeafdi to the ExtensionInstallAllowlist policy.

# NativeMessagingUserLevelHosts

If the NativeMessagingUserLevelHosts policy is
                set to false, it prevents the UiPath Extension from working
                correctly in the case it was installed without administrator privileges.

To fix this, you can either:

* Install the UiPath Extension using Group Policy.
* Or set the NativeMessagingUserLevelHosts policy to true.

# BlockExternalExtensions

If
                the BlockExternalExtensions policy is set to
                    true, the UiPath Extension can only be installed from Group
                Policy. To fix this you can either:

* Install the UiPath Extension using Group Policy.
* Or set the BlockExternalExtensions policy to false.

# ExtensionAllowedTypes

If
                the ExtensionAllowedTypes policy is set, it
                prevents the UiPath Extension from being installed. To fix this, you must add the
                value extension to the ExtensionAllowedTypes
            policy.

# ExtensionSettings

If the
                    ExtensionSettings policy is set to block
                all extensions it will prevent the UiPath Extension from being installed.

To
                fix this, you can either:

* Install the UiPath Extension using Group Policy.
* Or allow the UiPath Extension to be installed from the Chrome Web Store by adding the value pgbnimfaaifjpebleldfhgcjdnaeafdi to the ExtensionInstallAllowlist policy.

