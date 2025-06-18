# Command prompt examples for unattended automations

Consider the following examples for your use cases.

Make sure to run the command in the folder where the installer is located.

# Using UiPathRobot.msi

* (Silent mode) Installing the Robot in Service ModeUiPathRobot.msi ADDLOCAL=DesktopFeature,Robot,RegisterService,StartupLauncher,JavaBridge /Q
* Installing the live streaming feature for Robot versions 2024.10+UiPathRobot.msi ADDLOCAL=DesktopFeature,Robot,RegisterService,LiveStreaming
* (Silent mode) Installing the Robot in Service Mode and the Chrome Extension using an online policyUiPathRobot.msi ADDLOCAL=DesktopFeature,Robot,RegisterService,ChromeExtension CHROME_INSTALL_TYPE=POLICYONLINE /Q
* (Silent mode) Installing the Robot in Service Mode and connect it to OrchestratorUiPathRobot.msi ADDLOCAL=DesktopFeature,Robot,RegisterService CONNECTIONSTRING=https://demo.uipath.com/api/robotsservice/GetConnectionData?tenantId=1 /Q
* (Silent mode) Installing the Robot in Service Mode, and add two custom activity feedsUiPathRobot.msi ADDLOCAL=DesktopFeature,Robot,RegisterService CUSTOM_NUGET_FEEDS="Feed Name1,https://my.custom.nuget.feed; FeedName2,D:\RPA\Activities\Packages\" /Q
* (Silent mode) Installing and licensing the Robot in Service Mode, and the local activity feedUiPathRobot.msi ADDLOCAL=DesktopFeature,Robot,RegisterService,CODE=1234567890 /Q
* Installing the Robot in Service Mode, and disabling the official online feedsUiPathRobot.msi ADDLOCAL=DesktopFeature,Robot,RegisterService NUGET_OPTIONS=DisableOnlineFeeds
* (Silent mode) Uninstalling the Chrome ExtensionUiPathRobot.msi REMOVE=ChromeExtension /Q
* Setting up the auto-update connectionUiPathRobot.msi ADDLOCAL=DesktopFeature,Robot,RegisterService ORCHESTRATOR_URL="https://demo.uipath.com/myorg/mytenant/orchestrator_"

# Using UiPathStudio.msi

* Installing Studio, the Robot in Service Mode, and the activities packagesUiPathStudio.msi ADDLOCAL=DesktopFeature,Studio,Robot,RegisterService,Packages
* Installing the Robot in Service Mode, and disable the official online feedsUiPathStudio.msi ADDLOCAL=DesktopFeature,Robot,RegisterService NUGET_OPTIONS=DisableOnlineFeeds
* Installing the live streaming feature for Robot versions 2024.10+UiPathStudio.msi ADDLOCAL=DesktopFeature,Robot,RegisterService,Packages,LiveStreaming
* (Silent mode) Installing the Desktop suiteUiPathStudio.msi ADDLOCAL=DesktopFeature,Studio,Robot,RegisterService,Packages,StartupLauncher,JavaBridge /Q
* (Silent mode) Installing the Desktop suite and the Chrome Extension using an online policyUiPathStudio.msi ADDLOCAL=DesktopFeature,Studio,Robot,RegisterService,Packages,ChromeExtension CHROME_INSTALL_TYPE=POLICYONLINE /Q
* (Silent mode) Installing Studio, the Robot in Service Mode, and the activities packages, in a custom "D:\UiPath" folderUiPathStudio.msi ADDLOCAL=DesktopFeature,Studio,Robot,RegisterService,Packages APPLICATIONFOLDER=D:\UiPath /Q
* (Silent mode) Installing Studio, the Robot in Service Mode, and add two custom activity feedsUiPathStudio.msi ADDLOCAL=DesktopFeature,Studio,Robot,RegisterService CUSTOM_NUGET_FEEDS="Feed Name1,https://my.custom.nuget.feed; FeedName2,D:\RPA\Activities\Packages\" /Q
* (Silent mode) Installing the Robot in Service Mode and connect it to OrchestratorUiPathStudio.msi ADDLOCAL=DesktopFeature,Robot,RegisterService CONNECTIONSTRING=https://demo.uipath.com/api/robotsservice/GetConnectionData?tenantId=1 /Q
* (Silent mode) Installing and licensing Studio, the Robot in Service Mode, and the local activity feedUiPathStudio.msi ADDLOCAL=DesktopFeature,Studio,Robot,RegisterService,Packages CODE=1234567890 /Q
* (Silent mode) Uninstalling the Chrome ExtensionUiPathStudio.msi REMOVE=ChromeExtension /Q
* Setting up the auto-update connectionUiPathStudio.msi ADDLOCAL=DesktopFeature,Robot,RegisterService ORCHESTRATOR_URL="https://demo.uipath.com/myorg/mytenant/orchestrator_"
