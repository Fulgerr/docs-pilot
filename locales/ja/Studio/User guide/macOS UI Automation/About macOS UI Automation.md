# About macOS UI Automation

# Browser automation

Browser automation is supported on macOS for Chrome and Safari browsers.

You can design these automations in Studio Web using either one of these browsers, and initiate the execution from macOS Assistant. The execution is handled by a local macOS Robot, which needs to be pre-installed and connected to Orchestrator.

When built or run on macOS, processes for web automations in Chrome or Safari browsers require the corresponding UiPath extension to be installed.

# Desktop automation

Starting with 2024.10 October LTS, we introduced macOS native UI-based automation in preview, by offering an end-to-end approach on macOS (build, run, debug), in the attended space for Java desktop applications:

* Build UI automation in Studio Desktop on Windows through cross-platform projects.
* Run automations on a local macOS Robot via the macOS Assistant.
* Debug the automation on the macOS machine from Studio Web, or using Remote Debugging and connecting to the specific macOS machine.

This functionality is available through a project setting for cross-platform projects: Studio > Project Settings > UI Automation > Generic > Enable Java automation (preview).

As for Java applications that can be automated, the UiPath extension for Java can load into any Java AWT/Swing GUI on macOS. If the target application is using:

* Java 8 - it works automatically.
* Java 9 or newer - it works if the developer has included the jdk.attach module in their JRE. Otherwise, the extension can be loaded from a custom folder, as per the steps detailed in the Installing the Extension for Java in a custom folder for Java 9 or greater section.

Browser automation for macOS supports those Java applications which are compiled for the ARM64 architecture, in newer ARM-based macOS systems.The UiPath extension for Java does not support Java applications compiled for Intel-based macOS systems.
