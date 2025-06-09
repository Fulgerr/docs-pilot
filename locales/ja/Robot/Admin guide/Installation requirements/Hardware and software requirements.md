# Hardware and software requirements


## Hardware requirements

The following hardware specifications list the minimum and recommended resources for a single robot to execute jobs.

These requirements only consider the resources needed for the automation, and do not include the resources used by other applications involved in the automations.

# Untitled Section

ResourceMinimum RecommendedCPU (*)For Intel x64: 2 x 1.8GHz 64-bitFor ARM64: Apple M1For Intel x64: 4 x 2.4GHz 64-bitFor ARM64: Apple M1RAM (**)4 GB8 GBDisk Space (***)UiPathStudio.msi:UiPathRobot.msi:1.6 GB for new silent installations and updates.1.9 GB for UI-based installations and updates.(*) UiPath does not support the ARM architecture on Windows.

(**) Automations that use Document Understanding frameworks might need additional RAM.

(***) The disk space requirements do not include the space for the automation dependencies, such as packages and libraries.

# Hardware requirements for High-Density Robots

High-Density Robots are available on Windows platforms exclusively.

For a High-Density setup, where multiple robots concurrently execute jobs on the same Windows Server machine, you must multiply the minimum and recommended hardware requirements with the number of runtimes set for the machine template in Orchestrator.

For example, with three users concurrently executing jobs, the minimum requirements are:

* For Intel x64, you need six cores of 1.8GHz 64-bit (2 x 1.8GHz 64-bit per runtime), and a RAM of 12 GB (4 GB per runtime).

# Hardware requirements for the live streaming and recording features

For scenarios where the live streaming and recording features are required, you must apply the recommended hardware requirements:

* CPU— For Intel x64: 4 x 2.4GHz 64-bit
* RAM—8 GB


## Software requirements

The following software specifications list the minimum and recommended resources for a single robot to execute jobs.

These requirements only consider the resources needed for the automation, and do not include the resources used by other applications involved in the automations.

ResourceSupported versionsDetailsOperating SystemWindows 10Windows 10 NWindows 11Microsoft Azure Windows 10 Enterprise Multi-SessionWorks with Azure Virtual Desktops (AVD). 1Supports Windows 365 machines.Microsoft Azure Windows 11 Enterprise Multi-SessionSupports Windows 365 machines.Windows Server 2016Windows Server 2019Windows Server 2022Windows Server 2025Windows Server Core 2016Windows Server Core 2019Windows Server Core 2022Can only run background unattended jobs.By default, jobs run under the local system account. To use a specific user, set their credentials in Orchestrator. Then, on the robot machine, set the UIPATH_HEADLESS_WITH_USER environment variable to True.MacOS version 10.15 (Catalina) or greater.Required by the Assistant for Mac.Citrix environmentsXenApp v6.5 or greaterXenDesktop v7.0 or greater.NET FrameworkVersion 4.6.1 or greaterTo run Studio in any of the available languages, install the matching language pack version for your .NET framework, and remove conflicting .Net versions.

1 To ensure unattended robots work correctly in AVD environments, always close or log out of sessions when finished. Leaving AVD sessions in a disconnected state prevents the robot from creating a new session for its job, as an existing session is already present, but the robot cannot access it.

