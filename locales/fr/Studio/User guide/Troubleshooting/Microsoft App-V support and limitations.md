# Microsoft App-V support and limitations

Microsoft Application Virtualization (App-V) is a solution that delivers applications inside a virtual container, without the need to perform a traditional installation.

App-V applications are virtualized applications that run in a local, self-contained virtual environment.

They can be automated using the UiPath products, but, as they run isolated from each other and from other native applications, in some scenarios, installing the UiPath Extensions for the underlying technology requires a few extra steps, as described below.

App-V applications that don't require installing extensions can be automated without any issue, as if they weren't virtualized

## Automating App-V applications with UiPath Studio installed natively

# Browser automation

In classic deployments, Chrome, Edge and Firefox extensions can be installed successfully for App-V browsers.

If the appropriate browser extension is not installed correctly, the registers configured during extension install might be virtualized in the App-V browser. To correctly modify the registers used by the App-V, the SetupExtensions tool needs to be run inside the virtualized environment, as described here.

For example, to install the Chrome extension, one can perform the following steps:

1. Start a Command Prompt in the virtual environment using the command: cmd.exe /appvpid:<pid>, where <pid> is the process id of the App-V browser
2. Run the SetupExtensions tool to install the Chrome extension:SetupExtensions.exe /chrome

# Java automation

Java applications virtualized through App-V that don’t contain the Java Runtime Environment inside the App-V bubble can be automated as if they weren't virtualized.

App-V Java applications that contain the JRE inside the App-V bubble and need the UiPath Extension for Java installed have to be re-sequenced to include the extension inside the App-V. Details on how to install the Java Extension can be found here.


## Automating App-V applications With UiPath Studio packaged as an App-V

# Browser automation

By default, App-V applications write their registry key values to their virtual registry, except for Pass-through registers (like the Policies registry keys) configured by the App-V administrator.

This implies that every browser extension configuration performed from the virtualized Studio will not be visible to the virtualized browser.

To overcome this issue, the required browser extension can be installed using a native, non-virtualized SetupExtensions tool.

If the appropriate browser extension is not installed correctly, the registers configured during extension install might be virtualized in the App-V browser. To correctly modify the registers used by the App-V, the non-virtualized SetupExtensions tool needs to be run inside the virtualized environment, as describedhere.

For example, to install the Chrome extension one can perform the following steps:

1. Start a Command prompt in the virtual environment using the command: cmd.exe /appvpid:<pid>, where <pid> is the process id of the App-V browser
2. Run the SetupExtensions tool to install the Chrome extension:SetupExtensions.exe /chrome

# Java automation

Java applications virtualized through App-V that don’t contain the Java Runtime Environment inside the App-V bubble can be automated as if they weren't virtualized.

App-V Java applications that contain the JRE inside the App-V bubble and need the Extension for Java installed, will have to be re-sequenced to include the extension inside the App-V. Details on how to install the Java Extension can be found here.


## Automating native applications with Studio
    packaged as an App-V

# Browser automation

By default, App-V applications write their registry key values to their virtual registry, except for Pass-through registers (like the Policies registry keys) configured by the App-V administrator.

This implies that every browser extension configuration performed from the virtualized Studio is
        not visible to the native browser.

To overcome this issue, the required browser extension can be installed using a native, non-virtualized SetupExtensions tool.

# Java automation

Java applications can be automated without issues from a virtualized App-V Studio.

