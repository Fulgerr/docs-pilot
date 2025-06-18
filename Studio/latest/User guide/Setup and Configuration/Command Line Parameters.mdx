# Command Line Parameters

You can install and update Studio and the Robot, or change an existing installation by
            running the UiPathStudio.msi or UiPathStudioCloud.msi
            installer from the command line.

See the following sections for descriptions of the available parameters and a few usage
            examples.

Administrator rights are required
                    to execute these commands.Changing an existing installation
                    by running the installer from the command line in silent mode is not supported.
                    However, you can run the installer in silent mode to update from an older
                    version.Using the
                        /passive option of msiexec.exe to run an unattended
                    installation is not supported.

# Command Line Arguments
                Descriptions

The following table lists all available command line
                parameters.

All parameters can be used for clean installations, but only the
                following are supported when updating from an older version or changing an existing
                installation:

* Enable features using ADDLOCAL.
* Disable features using REMOVE. Please note that the Robot cannot be disabled.
* Enable or disable Assistant options using ASSISTANT_OPTIONS.
* SERVICE_URL - available when switching the Robot from service mode to user mode by not including the RegisterService argument.
* NUGET_OPTIONS, ENFORCE_SIGNED_EXECUTION, DISABLE_SECURE_XAML, and TELEMETRY_ENABLED - available when updating from an older version, not available when changing an existing installation.
* See the address of the proxy server, either IP or domain name using PROXY_ADDRESS.

When entering paths, consider the following:

* If you need to use environment variables such as %USERNAME% or %USERPROFILE%, the % special character needs to be escaped as follows:When the setup is invoked from Command Prompt, use ^ - UiPathStudio.msi PACKAGES_FOLDER=C:\Some\Path\^%USERNAME^%.In batch scripts, use ^ - UiPathStudio.msi PACKAGES_FOLDER=C:\Some\Path\^%USERNAME^%.In PowerShell console or scripts - no escaping is needed.When using Active Directory domain accounts, it is recommended to specify the domain name in the folder structure too, such as C:\packages\^%UserDomain^%.^%Username^%.
* If you need to use paths with spaces, they must be wrapped as follows:In Command Prompt, surround with double quotes (" "). For example, UiPathStudio.msi APPLICATIONFOLDER="C:\folder name".In PowerShell, surround with single and double quotes ('" "'). For example, ./UiPathStudio.msi APPLICATIONFOLDER='"C:\folder name"'.

CommandDescription/qHelps you install the specified UiPath features
                                    silently, without displaying the user interface./l*vx
                                <LogFile>Generates an installer log file at the specified
                                    path. Starting with v2018.4.2, this file can also include
                                    licensing information if you license Studio or Robot at install
                                    time.You can send the file further to our support team
                                    if, for any reason, you encounter difficulties during the
                                    installation process.ADDLOCALEnables you to select what features to install.
                                    If ADDLOCAL is used, only the features
                                    specified in it are installed. If ADDLOCAL is
                                    not used, the following features are installed: Studio, the
                                    Robot in service mode, the activities packages, and the
                                    JavaScript add-on.It supports the following
                                        options:DesktopFeature - indicates
                                    that you want to install Robot and Studio
                                        features.Studio - Installs
                                    Studio.ExcelAddin - Installs the StudioX
                                    Excel Add-in. It cannot be used without
                                    Studio.Robot - Installs
                                    the Robot in user mode or service mode, as well as the
                                    Assistant.To install
                                        the Robot in service mode, also add the
                                            RegisterService option. This is the
                                        recommended choice for unattended Robots.To install
                                        the Robot in user mode, do not add the
                                            RegisterService option. This is the
                                        recommended choice for attended and development Robots.If you convert the Robot from service mode to user
                                    mode, the Robot might not be able to access the
                                        .xaml files from the original NuGet
                                    Packages folder. For details on how to resolve this, see the
                                        NuGet
                                            packages not accessible after migration
                                    troubleshooting article.StartupLauncher - Runs the
                                    Robot at Windows startup. It cannot be used without the
                                        Robot
                                        argument.JavaBridge - Installs the
                                    UiPath Java Bridge for a better integration and automation in
                                    regards to Java applications. Please note that installing the
                                    Java Bridge may cause the installation to last longer than
                                    usual. It cannot be used without the Robot
                                    argument.ChromeExtension - Installs the
                                    UiPath Google Chrome Extension. It cannot be used without the
                                        Robot
                                        argument.FirefoxExtension - e.g. :
                                        UiPathStudio.msi
                                        ADDLOCAL=Studio,Robot,ChromeExtension,FirefoxExtension
                                        /QEdgeExtension - Installs
                                    the UiPath Microsoft Edge Chromium-based Extension. It cannot be
                                    used without the Robot
                                        argument.CitrixClient - Installs the
                                    UiPath Citrix Client Extension. It cannot be used without the
                                        Robot
                                        argument.JavaScriptAddOn - Installs
                                    the Robot JavaScript add-on to support the Robot JavaScript
                                    SDK.SapPlugin - Installs the SAP
                                    Solution Manager plugin. Requires the SAP Connector for
                                    Microsoft to be installed on your machine. On clean installs,
                                    you must also provide an address for the instance using the
                                        SAP_SOL_MAN_HOST parameter. It cannot be
                                    used without
                                        Studio.VMwareExtension
                                    - Installs the UiPath Extension for VMware Horizon. It cannot be
                                    used without the Robot
                                        argument.WindowsRdpExtension -
                                    Installs the UiPath Extension for Microsoft Remote Desktop. It
                                    cannot be used without the Robot argument.AmazonWorkSpacesClient - Installs the UiPath
                                    Extension for Amazon WorkSpaces. It cannot be used without the
                                        Robot
                                        argument.LiveStreaming - Installs
                                    the live streaming software (RealVNC) on the machine. See The live streaming
                                        feature in the Robot guide.MSIINSTALLPERUSERThis parameter enables you to install Studio and
                                    Robot either per user or per machine.If the parameter is
                                    not included, the installation is per machine. If you add
                                        MSIINSTALLPERUSER=1, the installation is
                                    per user.The parameters is usable only when performing a
                                    clean installation.The following options are not
                                    available in per-user installations: RegisterService,
                                    CitrixExtension, VMwareExtension, SapPlugin, PACKAGES_FOLDER,
                                    CODE.SAP_SOL_MAN_HOSTHostname or IP address for your SAP Solution
                                    Manager instance. Required for clean installs if the
                                        SapPlugin argument was provided for the
                                        ADDLOCAL option.For example
                                        UiPathStudio.msi
                                        ADDLOCAL=DesktopFeature,Studio,Robot,SapPlugin
                                        SAP_SOL_MAN_HOST=ip_addressAPPLICATIONFOLDEREnables you to install Studio and Robot in a
                                    custom location.NUGET_OPTIONSThis parameter is recommended if you are working
                                    in an offline environment. If set to
                                        DisableOnlineFeeds, this parameter helps
                                    you disable the online UiPath official and Community feeds for
                                    the Robot - only the Orchestrator and local feeds are taken into
                                    consideration.Please note that the URL feeds are not
                                    deleted from the configuration files, just ignored.It can
                                    be used for both installations and upgrades.When
                                    upgrading, you can set the parameter to
                                        EnableOnlineFeeds to enable online
                                    feeds.The NUGET_OPTIONS parameter does
                                    not disable the online UiPath official and Community feeds for
                                    Studio.PACKAGES_FOLDEREnables you to change the download location of
                                    your workflows and their dependencies for Studio and/or Robot.
                                    This folder can be user specific or accessible by all users from
                                    a machine. This parameter can be used for both service mode or
                                    user mode robots. If you do not provide this parameter the
                                    default folder is
                                    %userProfile%\.nuget\packages.When
                                    changing the packages folder, make sure that all the users that
                                    need to execute processes have read access to this
                                    folder.When
                                    using the PACKAGES_FOLDER parameter, there are
                                    some limitations. Find out more in the custom
                                            package folders and network paths
                                    documentation.For
                                        installations on Windows Server machines (that enable
                                        concurrent execution - HD Robots), you must provide paths
                                        that are specific to each user. Read more about using the same path for multiple
                                            robots.For information on how to change the download folder for
                                    packages after installation, see Managing Activities
                                            Packages.CUSTOM_NUGET_FEEDSEnables you to add custom NuGet activities feeds
                                    for Studio and/or Robot. This command only adds or updates the
                                    existing list of feeds.It must be populated with
                                    key-value pairs of type string. Valid locations include online
                                    feeds, folder paths, and shared network drives. Make sure that
                                    the provided feeds are reachable by all users from a given
                                    machine. Separate feeds with semicolons (;).Example:
                                        CUSTOM_NUGET_FEEDS="FeedName1,https://my.custom.nuget.feed;
                                        FeedName2,D:\Custom\Activities\Packages\".ENFORCE_SIGNED_EXECUTIONOptional. Enables you to enforce your Robots to
                                    execute only signed packages. It can be used at clean installs
                                    or updates of your instances. If this parameter is not specified
                                    at deploy-time, package signing is not enabled.It
                                    supports the following options:1 - The Robot is able to download,
                                        install, or execute only packages author or
                                        repository signed by UiPath. If you want to add your own
                                        certificate as a trusted source, you have to do so by
                                        modifying the nuget.config file. To learn
                                        how to do this, please see this page.0 - No package signing rule is
                                        enforced on your Robot deployment.For information on how to enforce signed execution after
                                    installation, see Signing Packages
                                    .CODELicenses your Studio instance.CLIENT_ID and
                                        CLIENT_SECRETAutomatically connects the Robot to Orchestrator
                                        using client
                                            credentials while also installing
                                    it.Example: UiPathStudio.msi
                                        ORCHESTRATOR_URL=https://demo.uipath.com/company/tenant/orchestrator_
                                        CLIENT_ID=1234-abcd-1ab2-cd32-1111
                                        CLIENT_SECRET=2143ndafj32kCHROME_INSTALL_TYPEAllows you to choose the installation method for
                                    the Chrome extension. This parameter requires the installer to
                                    run with admin rights. If it's omitted, the most appropriate
                                    installation method is selected automatically.It supports
                                    the following options:POLICYOFFLINE - The Chrome Extension
                                        is automatically installed per system via the Group
                                            Policy Offline method, the equivalent of calling
                                        the /Chrome-Policy-Offline command using
                                        the SetupExtensions
                                            tool.POLICYONLINE - The Chrome Extension is
                                        automatically installed per system via the Group
                                            Policy Online method, the equivalent of calling
                                        the /ChromePolicyGlobal command using the
                                            SetupExtensions
                                            tool.MANUALPERMACHINE - The Chrome
                                        Extension is installed for all users, the equivalent of
                                        calling the /ChromeGlobal command using the
                                            SetupExtensions
                                            tool.NATIVEHOSTONLY - Only the Native
                                        Messaging Host component
                                            (ChromeNativeMessaging.exe) is
                                        installed, the equivalent of calling the
                                            /ChromeNativeHostGlobal command using
                                        the SetupExtensions
                                            tool.The old installation methods names
                                        (STORE, GLOBAL) are kept
                                    for backwards compatibility.EDGE_INSTALL_TYPEAllows you to choose the installation method for
                                    the Edge extension. This parameter requires the installer to run
                                    with admin rights. If it's omitted, the most appropriate
                                    installation method is selected automatically.It supports
                                    the following options:POLICYOFFLINE - The Edge Extension is
                                        automatically installed per system via the Group
                                            Policy Offline method, the equivalent of calling
                                        the /Edge-Policy-Offline command using the
                                            SetupExtensions
                                            tool.POLICYONLINE - The Edge Extension is
                                        automatically installed per system via the Group
                                            Policy Online method, the equivalent of calling
                                        the /Edge-Chromium-PolicyGlobal command
                                        using the SetupExtensions
                                            tool.MANUALPERMACHINE - The Edge Extension
                                        is installed for all users, the equivalent of calling the
                                            /Edge-Chromium-Global command using the
                                            SetupExtensions
                                            tool.NATIVEHOSTONLY - Only the Native
                                        Messaging Host component
                                            (ChromeNativeMessaging.exe) is
                                        installed, the equivalent of calling the
                                            /Edge-Chromium-NativeHostGlobal command
                                        using the SetupExtensions
                                            tool.The old installation methods names
                                        (STORE, GLOBAL) are kept
                                    for backwards compatibility.DISABLE_SECURE_XAMLAllows you to disable security of
                                        XAML files for Robots installed as a
                                    Windows service. Unsecured XAML files allow
                                    users to read and modify the process files and logic.It
                                    supports the following options:0 - The default option. When used, it
                                        enables security for XAML files for Windows
                                        service Robots.1 - Disables security for
                                            XAML files for Windows service
                                        Robots.This parameter can only be used during a clean
                                    install or an update.SERVICE_URLAllows you to define the URL of the Orchestrator
                                    instance users will connect to using Interactive
                                            Sign-In.The provided URL is saved in
                                    the uipath.config file, and it's only saved for
                                    user-mode Robots. For service-mode installations, the argument
                                    is ignored.When running the installer to update from an
                                    older version or change your existing installation, this
                                    parameter is supported if you are switching the Robot from
                                    service mode to user mode (the RegisterService
                                    option is not included).ORCHESTRATOR_URLIn a clean installation, you can specify the main
                                    Orchestrator URL, used for retrieving auto-update information
                                    (e.g.
                                        https://orchestrator.local/organizationName/tenantName).TELEMETRY_ENABLEDAllows you to disable the usage data collection
                                    and can be done at install time for Studio and Robot.This
                                    parameter can only be used during a clean install or an
                                    update.Telemetry is enabled by default for Studio and
                                    Robot. To disable it, use the following value for the parameter
                                    whenever you perform a clean installation or an update:TELEMETRY_ENABLED=0This disables telemetry for both Studio and
                                    Robot.If you want to enable telemetry, do not include
                                    the parameter, or include it with the following value:TELEMETRY_ENABLED=1For more information about usage data collection and how to
                                    change telemetry settings, see the Opting Out of
                                        Telemetry document.ENABLE_PIPAllows you to enable the Picture in Picture
                                    functionality of the machine during the UiPath command-line
                                    installation.To enable it, use the following
                                    parameter:ENABLE_PIP=1Example:UiPathStudio.msi ADDLOCAL=DesktopFeature,Studio,Robot,RegisterService
                                        ENABLE_PIP=1INSTALLER_LANGUAGEEnables you to select the display language of the
                                    installer. If not specified, the language settings in Windows
                                    determine the installer language. To specify the language, enter
                                    the parameter
                                        INSTALLER_LANGUAGE=<language_code>.
                                    The following options are available:Chinese
                                        (Simplified): INSTALLER_LANGUAGE=2052English:
                                            INSTALLER_LANGUAGE=9French:
                                            INSTALLER_LANGUAGE=12German:
                                            INSTALLER_LANGUAGE=7Japanese:
                                            INSTALLER_LANGUAGE=17Korean:
                                            INSTALLER_LANGUAGE=1Portuguese
                                        (Portugal): INSTALLER_LANGUAGE=22Portuguese
                                        (Brazil): INSTALLER_LANGUAGE=1046Russian:
                                            INSTALLER_LANGUAGE=25Spanish
                                        (Spain): INSTALLER_LANGUAGE=10Spanish
                                        (Mexico): INSTALLER_LANGUAGE=2058Turkish:
                                            INSTALLER_LANGUAGE=31ASSISTANT_OPTIONSAllows you to specify whether to enable or disable
                                the Marketplace widget for Assistant.To enable the
                                        widget, use
                                            ASSISTANT_OPTIONS=EnableMarketplace or
                                        do not include the parameter.To disable
                                        the widget, use
                                            ASSISTANT_OPTIONS=DisableMarketplace.ORCHESTRATOR_AUTO_SIGNINIf you install the attended robot in user mode and
                                your environment is configured to use SSO with Azure Active Directory, this
                                enables automatic sign-in to your account. This parameter must be
                                used together with ORCHESTRATOR_URL.To enable
                                    this option, use
                                    ORCHESTRATOR_AUTO_SIGNIN=1.ENFORCE_DEFAULT_SERVICE_URLFor user-mode installations, this parameter enforces
                                the default service URL. To enable this option, use
                                        ENFORCE_DEFAULT_SERVICE_URL=1.ORCHESTRATOR_URL
                                    must also be enabled.PROXY_SCRIPT_ADDRESSThe address of the script that determines how and
                                when to use the proxy. Should contain the URI of the script file,
                                for example, http://localhost/proxy.pac.If you
                                            use this parameter, do not use other proxy-specific
                                            parameters.When all
                                            parameters are present in the UiPath.config file, only
                                            the ScriptAddress key is used.PROXY_ADDRESSTo be used together
                                        with:PROXY_BYPASS_LOCAL_ADDRESSPROXY_BYPASS_LISTOr with:PROXY_USER_NAMEPROXY_PASSWORDPROXY_DOMAINThe address of the proxy server, either IP or domain
                                name. For example, http://my.proxy.net:8008.PROXY_BYPASS_LOCAL_ADDRESSTo be used
                                    together with:PROXY_ADDRESSPROXY_BYPASS_LISTAllows direct connection for local addresses,
                                    bypassing the proxy server.Set it to 1 to bypass the
                                    local address, or to 0 otherwise.PROXY_BYPASS_LISTTo be
                                    used together with:PROXY_ADDRESSPROXY_BYPASS_LOCAL_ADDRESSThe list of addresses that connect directly to the
                                internet, bypassing the proxy server. Should contain RegExr strings
                                that contain the URLs of servers to bypass. For example,
                                "server.domain.local$;www.google.com;192.168.\d{1,3}.\d{1,3}".PROXY_USER_NAMERequires
                                    PROXY_PASSWORD.The username credential for proxy server
                                authentication.PROXY_PASSWORDThe password associated with the username for proxy
                                server authentication.PROXY_DOMAINThe domain where the proxy server resides, required
                                for authentication.

# Performing a Synchronous
                Installation

If you want to make additional configurations after the
                installation is completed, you can run the installer synchronously. This enables you
                to add other commands to be performed after the installer finishes, For example, you
                can install and also set up a robot connection or configure feeds.

The
                following scripts perform the installation and enable you to add other commands to
                be performed if the installation is
            successful.

:: Runnning the MSI synchronously
start /wait /b UiPathStudio.msi /Q
:: Assert the exit code and continue accordingly
set "_isSuccess="
if %ERRORLEVEL% EQU 0 Set "_isSuccess=1"
if %ERRORLEVEL% EQU 1641 Set "_isSuccess=1"
if %ERRORLEVEL% EQU 3010 Set "_isSuccess=1"
:: test for success and run follow-up commands
if (%_isSuccess% EQU 1) (
    echo "success"
) ELSE (
    echo "fail"
)

# Examples

These examples
                have been written considering that you are already in the directory in which the
                    UiPathStudio.msi installer is located. You can do this with the
                following command, for example: cd D:\UiPathInstaller.

* Install Studio, a Robot as a Windows service and the activities packages - UiPathStudio.msi ADDLOCAL=DesktopFeature,Studio,Robot,RegisterService
* Install Studio and a Robot in user mode only for the current user - UiPathStudio.msi MSIINSTALLPERUSER=1 ADDLOCAL=DesktopFeature,Studio,Robot
* Install the live streaming feature for Robot versions 2024.10+ - UiPathStudio.msi ADDLOCAL=DesktopFeature,Studio,Robot,RegisterService,LiveStreaming
* Silently install the entire Desktop suite - UiPathStudio.msi ADDLOCAL=DesktopFeature,Studio,Robot,RegisterService,StartupLauncher,JavaBridge /Q
* Silently install the entire Desktop suite and the Chrome Extension via policy - UiPathStudio.msi ADDLOCAL=DesktopFeature,Studio,Robot,RegisterService,ChromeExtension CHROME_INSTALL_TYPE=POLICYONLINE /Q
* Silently install Studio, the Robot as a Windows service and the activities packages, all in the D:\UiPath folder - UiPathStudio.msi ADDLOCAL=DesktopFeature,Studio,Robot,RegisterService APPLICATIONFOLDER=D:\UiPath /Q
* Silently install the Robot as a Windows service and connect it to Orchestrator -UiPathStudio.msi ADDLOCAL=DesktopFeature,Robot,RegisterService CONNECTIONSTRING=https://demo.uipath.com/api/robotsservice/GetConnectionData?tenantId=1 /Q
* Silently install Studio, the Robot as a Windows service, and add two custom activity feeds - UiPathStudio.msi ADDLOCAL=DesktopFeature,Studio,Robot,RegisterService CUSTOM_NUGET_FEEDS="Feed Name1,https://my.custom.nuget.feed; FeedName2,D:\RPA\Activities\Packages\" /Q
* Silently install and license Studio, a Robot registered as a Windows service and the local activity feed - UiPathStudio.msi ADDLOCAL=DesktopFeature,Studio,Robot,RegisterService CODE=1234567890 /Q
* Install Robot as a Windows service, and disable the official online feeds - UiPathStudio.msi ADDLOCAL=DesktopFeature,Robot,RegisterService NUGET_OPTIONS=DisableOnlineFeeds
* Uninstall the Chrome Extension - UiPathStudio.msi REMOVE=ChromeExtension /Q
* Set up the auto-update connection during attended robot installation -UiPathStudio.msi ADDLOCAL=DesktopFeature,Robot, SERVICE_URL="https://demo.uipath.com/myorg/mytenant"
* Set up the auto-update connection during unattended robot installation -UiPathStudio.msi ADDLOCAL=DesktopFeature,Robot,RegisterService ORCHESTRATOR_URL="https://demo.uipath.com/myorg/mytenant/orchestrator_"
