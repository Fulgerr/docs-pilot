# Known issues specific to MV3 extensions

# Click activity with Simulate fails on specific web page elements

The Click activity with the Simulate input method no longer works on HTML elements that have a click handler with javascript: URI.

![69b7cd0-Web_Page_Element_With_JavaScript_URI=GUID-5D1DEFA3-AF7A-4843-A9EC-64C6F725BFBC=1=en=Default](/images/69b7cd0-Web_Page_Element_With_JavaScript_URI=GUID-5D1DEFA3-AF7A-4843-A9EC-64C6F725BFBC=1=en=Default.png)

In this case, the simulated click will not take effect and no errors will reported.

This was reported as a Chromium bug. This issue is quite rare as very few HTML elements have click handlers in this form.

Workarounds

Two workarounds are available for this issue:

1. Identify the failing Click activity in your workflow and change the input method from Simulate to any other input method (Chromium API, Hardware Events, Window Messages).
2. Upgrade to UiPath.UIAutomation.Activities package v22.12 or newer and use the Enable workaround for simulate click with MV3 extension option in Project Settings.

# DeveloperToolsAvailability Group Policy limitations for value 2

The DeveloperToolsAvailability policy has the following possible values:

0: Disallows usage of the Developer Tools on extensions installed by enterprise policy. Allows usage of the Developer Tools in other contexts.1 - Allows usage of the Developer Tools.2 - Disallows usage of the developer tools.If the UiPath Extension for Edge is installed using Group Policies, then DeveloperToolsAvailability is automatically set to 1 to enable full functionality of the extension.

This may be overwritten if your system administrator has set a different value for this policy.

If DeveloperToolsAvailability is set to 2, then the following limitations apply:

* The InjectJS activity does not work.
* The ChromiumAPI input method does not work.
* The UiPath Extension for Chrome is limited to LTS versions of UiPath.UiAutomation.Activities.

Other values for DeveloperToolsAvailability (0 or 1) do not affect the Edge extensions v24.10 or newer.

# The UiPath Web Automation browser window shows a warning

The UiPath Web Automation browser window shows the following warning if ChromeNativeMessaging.exe could not be started:

Cannot communicate with UiPath Platform The native part of the extension is not configured correctly.

Re-install the extension from UiPath Studio.



See .

# The Inject Js Script activity can no longer be used to access page variables and code

By default, the Inject Js Script activity can no longer be used to access page variables, such as jQuery $ , or to interact with page code (e.g., window.alert). The Inject Js Script activity won't report an error, but the script will fail to execute and the following error will be reported in the browser DevTools (F12): "Refused to execute inline script because it violates the following Content Security Policy directive."



This is a limitation introduced by the MV3 platform.

To fix this issue, select the Execution world - Page option from the Inject Js Script activity.

Your existing JavaScript code doesn't require any changes, and by using the Execution world - Page option it will work for both MV2 and MV3 extensions.

# Open Browser activity has an insufficient timeout

For MV3 extensions, the browser loads the extension later, after the web pages have loaded. This means that on slower machines, the Open Browser activity from UiPath.UiAutomation.Activities version 22.10 or older can reach the internal timeout of 20 seconds before the extension has started.

Starting with v22.12.0-preview, the internal timeout for the Open Browser activity has been increased from 20 seconds to 60 seconds.

Since you may need to set a longer timeout for the browser startup, it is now configurable from the Use Application/Browser and Open Browser activities. The following project settings have been added:

* UI Automation Classic → Browser → Open browser timeout (seconds)
* UI Automation Modern → Application/Browser → Open browser timeout (seconds)

Additionally, you can configure the timeout through the UIPATH_OPEN_BROWSER_TIMEOUT_SECONDS environment variable. For example, set UIPATH_OPEN_BROWSER_TIMEOUT_SECONDS=120 to use 120 seconds for the activity's timeout.
