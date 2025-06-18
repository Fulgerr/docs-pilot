# Troubleshooting

You need to use at least Firefox version 52.0 to perform browser automations.

This topic presents the most frequent reasons why the Extension for Firefox might not work properly, and how to solve these issues.

# Extension on Firefox versions older than v128 or v115 ESR

Extensions fail to install in Firefox versions older than v128 or v115 ESR. You can apply certain workarounds, but this depends on how old your Firefox version is and whether or not it is an ESR (Extended Support Release) version.

Solution for Firefox ESR

1. Go to about:config.
2. Toggle xpinstall.signatures.required flag to false.

Firefox v102.10 ESR or newer

You can use Group Policy to modify the xpinstall.signatures.required preference for all users and profiles automatically. For more details, refer to Policy Templates for Firefox.

Firefox older than v102.10 ESR

Older versions of Firefox do not support xpinstall.signatures.required through Group Policy. As an alternative, you can use AutoConfig files:

1. Save the following inside a text file:// First line must be a comment. pref("xpinstall.signatures.required", false);
2. Name the text file allow-unsigned-extensions.cfg.
3. Save the following inside a text file:// First line must be a comment. pref("general.config.filename", "allow-unsigned-extensions.cfg"); pref("general.config.obscure_value", 0);
4. Name the text file allow-unsigned-extensions.js.
5. Find the Firefox install directory, typically C:\Program Files\Mozilla Firefox.
6. Copy allow-unsigned-extensions.cfg to C:\Program Files\Mozilla Firefox.
7. Copy allow-unsigned-extensions.js to C:\Program Files\Mozilla Firefox\pref.

Firefox - normal releases

For non-ESR releases of Firefox, you must use AutoConfig files.

Save the following inside a text file:// First line must be a comment.

// In Firefox 55+, settings to configure add-on signing (and legacy add-ons) are stored in AddonSettings.jsm
// The module exports an object with read-only properties, but that is not an issue since we can just replace
// the exported object.
// https://searchfox.org/mozilla-central/rev/2e08acdf8862e68b13166970e17809a3b5d6a555/toolkit/mozapps/extensions/internal/AddonSettings.jsm

Components.utils.import("resource://gre/modules/XPCOMUtils.jsm");

function patchAddonSettings(modulePath) {
    var Module = Components.utils.import(modulePath, {});
    // Note: we read the data from preferences instead of hard-coding a "true", so
    // that by default legacy add-ons are disabled. This enables the user to only
    // enable legacy add-ons for specific Firefox profiles when really needed.
    var AddonSettings;

    if ("lazy" in Module) {
      AddonSettings = Object.create(Module.lazy.AddonSettings);
    } else {
      AddonSettings = Object.create(Module.AddonSettings);
    }
    XPCOMUtils.defineLazyPreferenceGetter(AddonSettings, "REQUIRE_SIGNING", "xpinstall.signatures.required", false);
    XPCOMUtils.defineLazyPreferenceGetter(AddonSettings, "ALLOW_LEGACY_EXTENSIONS", "extensions.legacy.enabled", true);
    XPCOMUtils.defineLazyPreferenceGetter(AddonSettings, "LANGPACKS_REQUIRE_SIGNING", "extensions.langpacks.signatures.required", false);

    if ("lazy" in Module) {
      Module.lazy.AddonSettings = AddonSettings;
    } else {
      Module.AddonSettings = AddonSettings;
    }
}

// This is necessary to allow legacy add-ons via preferences.
try {
  patchAddonSettings("resource://gre/modules/addons/XPIProvider.jsm");
} catch (e) {
  // AddonSettings is not in this file starting with Firefox 61,
  // but it comes back in Firefox 74
}

try {
  patchAddonSettings("resource://gre/modules/addons/XPIDatabase.jsm");
} catch (e) {
  // AddonSettings is not in this file until Firefox 61
}

// This override is needed to enable unsigned add-ons via preferences.
patchAddonSettings("resource://gre/modules/addons/XPIInstall.jsm");

// This override is needed to allow unsigned add-ons to show up without warning in about:addons.
// (this is UI-only, the add-on is not actually disabled despite what the UI claims).
patchAddonSettings("resource://gre/modules/addons/AddonSettings.jsm");

Components.classes['@mozilla.org/consoleservice;1']
.getService(Components.interfaces.nsIConsoleService)
.logStringMessage("enablelegacy.cfg: the extensions.legacy.enabled preference is working again.");

pref("xpinstall.signatures.required", false);
Name the text file enable-legacy.cfg.Save the following inside a text file:// First line must be a comment. pref("general.config.filename", "enablelegacy.cfg"); 
pref("general.config.obscure_value", 0); pref("general.config.sandbox_enabled", false);Name the text file enablelegacy-prefs.js.Find the Firefox install directory, typically C:\Program Files\Mozilla Firefox.Copy allow-unsigned-extensions.cfg to C:\Program Files\Mozilla Firefox.Copy allow-unsigned-extensions.js to C:\Program Files\Mozilla Firefox\pref.

Recent versions of Firefox, like 102,10 ESR, re-enable the extension automatically once the flag is set. In older versions such as 68.0.2 ESR, it may be necessary to reinstall the extension.The Group Policy Offline installation method does not work with Firefox 68.0.2 ESR and possibly older versions. A temporary workaround involves adding the following to a PowerShell script and running it with administrator privileges:# Define the registry path
$regPath = "HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Extensions\Install"

function Convert-WindowsPathToFileUrl($path) {
    $unixPath = $path -replace '\\', '/'
    $escapedPath = $unixPath -replace ' ', '%20'
    return "file:///" + $escapedPath
}

function Fix-FirefoxProfile($prefsPath, $fileUrl) {
    if (-not (Test-Path $prefsPath)) {
        Write-Host "prefs.js not found: $prefsPath"
        return
    }

    Write-Host "Processing prefs.js: $prefsPath"

    $content = Get-Content -Path $prefsPath -Raw

    $pattern = 'user_pref\("browser\.policies\.runOncePerModification\.extensionsInstall",\s*"(.+?)"\);'

    if (-not ($content -match $pattern)) {
        Write-Host " -> No matching preference found in prefs.js."
        return
    }

    $jsonArrayString = $matches[1]

    # Unescape \" to "
    $jsonArrayStringUnescaped = $jsonArrayString -replace '\\\"', '"'

    try {
        $list = ConvertFrom-Json -InputObject $jsonArrayStringUnescaped
    } catch {
        Write-Host " -> Error parsing JSON inside prefs.js preference (after unescaping)."
        return
    }

    if (-not ($list -contains $fileUrl)) {
        Write-Host " -> File URL not present in extensionsInstall list."
        return
    }

    $newList = $list | Where-Object { $_ -ne $fileUrl }

    $newJsonArrayString = ($newList | ConvertTo-Json -Compress)

    # prefs.js expects it wrapped as a string, escaping " as \"
    $escapedNewJsonArrayString = $newJsonArrayString -replace '"', '\"'

    $newPrefLine = "user_pref(""browser.policies.runOncePerModification.extensionsInstall"", `"$escapedNewJsonArrayString`");"

    # Replace the old line
    $oldPrefLine = $matches[0]
    $content = $content -replace [regex]::Escape($oldPrefLine), $newPrefLine

    Set-Content -Path $prefsPath -Value $content -Encoding UTF8
    Write-Host " -> prefs.js updated."
}

function Fix-AllFirefoxProfiles($fileUrl) {
    $profilesPath = "$env:APPDATA\Mozilla\Firefox\Profiles"

    if (-not (Test-Path $profilesPath)) {
        Write-Host "Firefox profiles directory not found: $profilesPath"
        return
    }

    $profiles = Get-ChildItem -Path $profilesPath -Directory
    foreach ($profile in $profiles) {
        $prefsPath = Join-Path $profile.FullName "prefs.js"
        Fix-FirefoxProfile -prefsPath $prefsPath -fileUrl $fileUrl
    }
}

if (-not (Test-Path $regPath)) {
    Write-Host "Registry path not found: $regPath"
    return
}

$values = Get-ItemProperty -Path $regPath

foreach ($property in $values.PSObject.Properties) {
    $name = $property.Name
    $value = $property.Value

    if ($value -notmatch "^[a-zA-Z]:\\.*\\uipath-ff\.xpi$") {
        continue
    }

    Write-Host "Found Windows path for uipath-ff.xpi in entry '$name': $value"

    $fileUrl = Convert-WindowsPathToFileUrl $value
    Write-Host " -> Converted to file URL: $fileUrl"

    Set-ItemProperty -Path $regPath -Name $name -Value $fileUrl
    Write-Host " -> Updated registry key '$name'."

    Fix-AllFirefoxProfiles -fileUrl $fileUrl
}

# Extension on Firefox versions older than 65.0

Description

Mozilla introduced an extension signing verification algorithm in Firefox, which disables add-ons for Firefox version 65.0 and lower. As such, if you install the UiPath Extension for Firefox on the browser version 65.0 or lower, the following error message is displayed:

This add-on could not be installed because it appears to be corrupt.

Solution 1

Update Firefox to version v66.0.4 or higher.

Solution 2

Starting with Studio 2020.8, the Firefox extension is newly signed and it should be properly installed on older versions of the Firefox browser.

# Checking the extension

Check if the UiPath Extension for Firefox is installed and enabled:

1. In Mozilla Firefox, go to about:addons > Extensions.
2. If the extension is not present, install it as explained here.
3. Make sure the UiPath Extension is updated to the latest version.

To prevent possible issues:

1. In Mozilla Firefox, go to about:addons > Extensions.
2. Open Task Manager or Process Explorer.
3. Check if the ChromeNativeMessaging.exe process is running. A separate ChromeNativeMessaging instance is running for the Chrome extension, so you need to close Google Chrome when performing this check.

If ChromeNativeMessaging is not running:

1. In Mozilla Firefox, go to about:addons > Extensions.
2. Remove the UiPath extension manually by clicking the Remove button.
3. Reinstall it as explained here.

In case the above information did not solve your issue, you can try getting additional information by viewing traces and analyzing the errors thrown by the UiPath extension. The following are types of traces you can collect and analyze:

For the general extension traces in Mozilla Firefox:

Go to Open menu > Web Developer > Browser Console (Ctrl+Shift+J). The Browser Console is displayed. All the errors generated by the extension are displayed here.

For traces generated by the web page you want to automate:

Go to Open menu> Web Developer > Web Console (Ctrl+Shift+K). The Web Console is displayed. All the errors for the current web page are displayed here.

For full traces, (not only errors) do the following:

1. Open the Registry Editor.
2. Navigate to the HKEY_CURRENT_USER\SOFTWARE\UiPath key.
3. Double-click the WebExtensionTrace REG_DWORD value. The Edit DWORD Value window is displayed.
4. In the Value Data field, change the value to 1, and click OK. The value is saved. If the WebExtensionTrace REG_DWORD value does not exist, you have to create it, by right-clicking the right panel, selecting New > DWORD (32-bit) Value, and providing the values mentioned above.

Check if there is some data missing in the Registry Editor:

1. Open the Registry Editor.
2. Navigate to the HKEY_CURRENT_USER\SOFTWARE\Mozilla\NativeMessagingHosts\com.uipath.chromenativemsg key.
3. Open the (Default) REG_SZ value. The Edit String window is displayed and should contain a path similar to C:\Users\YOUR_USER_NAME\AppData\Local\UiPath\uipath-ff.json.
4. Open the .json file at the path found above with a text editor, such as Notepad++.
5. Check that the path property correctly points to where ChromeNativeMessaging.exe is located, similar to C:\Program Files (x86)\UiPath Studio\UiPath\BrowserExtension\ChromeNativeMessaging.exe.

# Multiple browser profiles

Starting with UiPath version 2023.10, the UiPath Extension for Firefox supports automating multiple browser instances running with multiple user profiles at the same time.

Automating multiple browser profiles requires UiPath.UIAutomation.Activities v23.10 or newer and browser extension installed with UiPathStudio.msi v23.10 or newer.

Opening the browser with a specific profile is now possible when using the Use Application/Browser activity. To specify a profile at browser start-up, you must append an argument to the browser command line. To do so, use the Arguments property in the Unified Application Target input section.

For Firefox, the required argument is: -profile "full_profile_path". To retrieve the full profile path, navigate to about:profiles and retrieve the Root Directory for that profile.

![firefox_profile_path=GUID-565F220A-055A-4CA2-AF5A-7D1829E6D558=1=en=Default](/images/firefox_profile_path=GUID-565F220A-055A-4CA2-AF5A-7D1829E6D558=1=en=Default.png)
