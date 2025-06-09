# Installing on Mac

Mac operating systems allow installing the Robot in User Mode and the Assistant. You cannot configure your own setup. The installation on MacOS is similar to the quick installation on Windows OS. The earliest compatible MacOS version is 10.15 (Catalina).

To install Assistant on Mac, you need to download the installation file (DMG) and run it, as you would do for any installation file on MacOS.

You can download the DMG file from two sources:

* Customer portal > Downloads > UiPath Assistant <LTS version>
* Automation Cloud> Help icon > Downloads > Assistant for macOS

The available Apple processors that support installing Assistant are:

* Intel x64 - runs both macOS and Windows, which expands the range of software that can be used
* Apple Silicon ARM64 - based on ARM architecture

Although you cannot install Studio directly on Mac, you can execute attended, cross-platform automations through Assistant.

# MacOS automations - particularities and limitations

* You cannot use local feeds. This means that only automations from the Orchestrator, specifically cross-platform ones, are available.
* The previous rule applies to the Marketplace Widget, namely it only displays and allows the execution of cross-platform automations that are hosted on Orchestrator.
* For browser-based automations on MacOS, install and manually enable the Google Chrome Extension after first Assistant launch. Restart the browser post-installation.
* When designing an automation for MacOS in Studio, you can test it using remote debugging, which involves connecting to the specific MacOS machine.
* You can access the Assistant logs in the /Users/john.doe/Library/Application Support/UiPath/combined.logs file.
* The following Assistant features are unavailable:Robot session (Picture in Picture)Sending automations to desktopTask Capture launcherRobotJS and Safari browser compatibilityDiagnostic Tool
