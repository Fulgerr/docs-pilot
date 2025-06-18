# Update Studio

The process of updating an older Studio release to this release differs depending on the Studio edition currently installed on your machine - Enterprise or Community.

The installation artifacts can be:

* Downloaded from the Resource Center in UiPath
                                                  Automation Cloud (by clicking the help button and selecting the Downloads menu option);
* Downloaded from the UiPath Customer Portal;
* Provided to you when you purchase Studio;
* Provided by your customer success manager.

# Versioning Scheme

UiPath uses calendar versioning, labeling its products with the year of the release (major) followed by the month (minor) and the patch (micro) version.

## Updating the Enterprise Edition




### Manual Update

# About 32-bit and 64-bit
                Versions

In releases prior to 2021.4, Studio and Robot were available as 32-bit applications.
                Starting with version 2021.4, a 64-bit installer is available by default. A 32-bit
                installer is no longer available starting with version 2023.4.
                    UiPathPlatformInstaller.exe is no longer available starting
                with version 2021.4.

You can update existing UiPathStudio.msi and
                    UiPathPlatformInstaller.exe 32-bit and 64-bit installations on
                64-bit operating systems using UiPathStudio.msi.

Existing
                pre-2021.4 32-bit installations on 64-bit operating systems that are using the
                default installation path (C:\Program Files (x86)\UiPath\Studio)
                are migrated to C:\Program Files\UiPath\Studio after updating with
                the 64-bit installer. If the older version is installed in a custom location, the
                update does not change the installation path.

# Performing the Update

If the Excel add-in was
                installed in the Studio version you are updating, close all Excel processes before
                performing the update.

1. Double-click the installer to launch the installation wizard.
2. Read and accept the License Agreement. Please note that by accepting the terms of the license agreement, you implicitly accept the terms of use of UiPath activity packages and their dependencies.
3. Select Upgrade to upgrade to this version keeping your previous setup and proceed to step 5, with no additional configuration required. Alternatively, select Advanced Settings to make changes to your existing setup and proceed to step 4.
4. If you opted to configure the upgrade, you can configure the following installation options:UiPath Studio - Select whether to install Studio. If not selected, only Robot and Assistant are installed. Select which extensions and add-ons to install: Excel Add-in, extension for Chrome, extension for Edge Chromium, extension for Firefox, JavaScript Robot Add-on, extension for Microsoft Remote Desktop.
5. Click Upgrade, wait for the installation to complete, and then click Launch UiPath Studio.

For information on performing the update from the command line, see Command Line Parameters.


### Automatic Update

Starting with v2021.10, administrators can set up policies for automatically
                    updating Studio, StudioX, Robot, and Assistant from Orchestrator.
            When a policy triggers the automatic update process, an Update Available
            notification is displayed by the UiPath Update Agent prompting you to start the
            update.

* Select Update now to perform
                the update. Please note that Studio and Assistant are closed during the update.
* Select Later to mute the
                    notification. The update process can be resumed at any time in the 24 hours
                    after the initial notification by clicking the UiPath icon in the system tray
                    and then clicking Check for updates. If not resumed by the user, the
                    update is installed automatically after 24 hours. During the update
                            process, the Robot does not start any jobs until the update is
                            completed.If there are any
                            processes running on the machine, the user is prompted to choose to
                            either stop the process or wait for it to finish and continue with the
                            update.If a Studio session is
                            open, the user is prompted to save the progress. If the user doesn’t
                            react, Studio closes and the process is saved as-is at that time and can
                            be recovered after the update is completed, while the Robot waits for
                            any process to complete and starts the update process afterwards.


## Updating the Community Edition

If you installed Studio and Robot using the Community Edition installer and activated it with a Community license, Studio and Robot are automatically updated as soon as a new version is available on the selected channel, Stable or Preview.

If you installed Studio and Robot using the Community Edition installer and activated it with an Enterprise license, Studio and Robot are automatically updated to the latest Stable release, regardless of the update channel you selected.

Only Community Preview installations running version 2021.8 and later can be automatically updated to the latest Community Preview release.The DigiCert Trusted Root G4 certificate used by the Studio installer is required for the automatic update. If it is not installed on your computer and your configuration prevents the certificate from being downloaded during the update process, the update is not performed. In this scenario, either make sure to install the latest Windows updates, or manually download the certificate and install it in the Trusted Root Certification Authorities store for the Local Machine.

When a new version is available, an Update Available notification is displayed by the UiPath Update Agent prompting you to start the update.

* Select Update now to perform the update. Please note that Studio and Assistant are closed during the update.
* Select Later to mute the notification. The update process can be resumed at any time in the 24 hours after the initial notification by clicking the UiPath icon in the system tray and then clicking Check for updates . If not resumed by the user, the update is installed automatically after 24 hours.

If you manually update your Community Edition Studio, your user settings are not lost, but the existing UiPath extension for Chrome may be removed from your browser. The content of the current UiPath folder from %localappdata%\UiPath installation folder is removed and the setup fails if you previously performed selections with UI Explorer in a Java application. Please note that these issues do not occur when Studio automatically updates to the latest version.

# Selecting the Update Channel

You can choose an update channel by going to Home (Studio Backstage View) > Help and selecting either Stable or Preview. Please note that once you change your selection, you have to restart the application for the change to take effect.

![32a0c3d-community=GUID-1ECE31A4-A4F2-4887-B3C3-158C7237B44A=1=en=Default](/images/32a0c3d-community=GUID-1ECE31A4-A4F2-4887-B3C3-158C7237B44A=1=en=Default.png)

