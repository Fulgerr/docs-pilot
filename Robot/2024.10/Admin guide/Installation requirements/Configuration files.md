# Configuration files

Once you edit configuration files, you need to restart the relevant Robot components for changes to take effect. The following table summarizes how to restart several components, based on the Robot installation mode.

Remember to save any ongoing work before you restart to avoid losing any unsaved progress.

ComponentService Mode installationUser Mode installationRobot ServiceOpen Task Manager > Services.Look for the UiPathRobotSvc service.Right-click the service and select Restart.Quit, then relaunch the AssistantorOpen Task Manager > Details.Select the UiPath.Service.UserHost.exe process.Select End task.Update ServiceOpen Task Manager > Services.Look for the UiPath.UpdateService.Agent service.Right-click the service and select Restart.UiPath RobotJS ServiceHostOpen Task Manager > Services.Look for the UiPath.RobotJS.ServiceHost service.Right-click the service and select Restart.UiPath AssistantIn Assistant, select Preferences, then Quit.Relaunch the Assistant.WidgetsRestart the Assistant.orRight-click the Assistant icon in the taskbar.Select Reload Widgets.

## UiPath.config

The UiPath.config file contains essential configuration parameters for the Robot. As an admin, you can customize the behavior of your robots by editing the list of parameters in the config file.

Each environment might need specific notices, so UiPath allows you to apply different configurations based on the current environment of the robot, whether it's Development, Staging, or Production. Always be careful when editing this file, as inaccurate configuration may cause application issues.

# Accessing the file

When you install your Robot, the system creates the UiPath.config file.

To access it, navigate to C:\Program Files\UiPath\Studio\UiPath.config.

# Customizable settings

The UiPath.config file consist of the following parameters:

Config sectionData type + parameter nameDescriptionDefaultExampleconnectionSettingsstring DefaultServiceUrlSets the default address the Robot uses to connect to Orchestrator.NAstring DefaultServiceUrl = "https://cloud.uipath.com"bool AutoSignInEnables the auto sign-in feature for Assistant.falsebool AutoSignIn = true.bool EnforceDefaultServiceUrlEnforces the address provided as DefaultServiceUrl to all users.falsebool EnforceDefaultServiceUrl = true.communicationSettingsbyte MaxMessageSizeInMegabytesSets the maximum size of a message the system can send or receive, in MB.This is used to prevent overload or process crashes due to handling messages too large.10 MBbyte MaxMessageSizeInMegabytes = 10;TimeSpan InstallPackageTimeoutSets the time limit for package installations.If a package installation takes longer than the defined time, the system aborts the installation.Expressed as TimeSpan.20 minutesTimeSpan InstallPackageTimeout = TimeSpan.FromMinutes(20);TimeSpan RequestTimeoutDefines how long the system waits for a communication response.If the system does not receive a response in the set period, it stops and moves forward.This prevents system hang-ups.Expressed as TimeSpan.40 secondsTimeSpan RequestTimeout = TimeSpan.FromSeconds(40);packageSettingsstring PackagesInstallationFolderSets the default directory where packages are installed.C:\UiPath\Packagesbool SkipHttpConfigurationSourcesEnables the system to ignore package sources configured over HTTP, such as NuGet feeds.This means the system does not retrieve packages from these sources, which is useful when the sources are not reliable or secure.falsebool DisableSecureXamlAllows the Robot to run potentially unsafe workflows.falsebool DirectDownloadAllows direct download of packages, without prompting the user.falsebool PackageSaveWithoutNupkgAllows saving the packages without the .nupkg file.This is helpful to reduce the download size.falseanalyticsSettingsbool Telemetry.EnabledAllows UiPath to collect and send usage data for analysis.falsewebProxySettingsstring ScriptAddressSets the address of the script that determines how and when to use the proxy.string ProxyAddressSets the address of the proxy server, either IP or domain name.string BypassListContains the list of addresses that connect directly to the internet, bypassing the proxy server.bool BypassLocalAddressesAllows direct connection for local addresses, bypassing the proxy server.falsestring UserNameSets the username credential for proxy server authentication.string PasswordSets the password associated with the username for proxy server authentication.string DomainSets the domain where the proxy server resides, required for authentication.robotCacheSettingsTimeSpan SessionCacheDurationDefines how long the data from a specific session should be retained in the cache before being discarded.This is useful for reusing data such as variable values or details of operations,instead of recreating or refetching it.Expressed as TimeSpan.30 secondsTimeSpan SessionCacheDuration = TimeSpan.FromSeconds(30);TimeSpan GetResourceUrlCacheDurationDefines how long the URLs for resources, such as APIs or webpages, are stored in cache.This is useful for optimizing performance in scenarios where your robots need to access certain resources regularly.Expressed as TimeSpan.1 hourTimeSpan GetResourceUrlCacheDuration = TimeSpan.FromHours(1);robotJsSettingsint ListenerPortSets the port number on which the Robot.js listens for incoming connections.This allows the robot service to interact with web applications running on local or remote servers.2323int ListenerPort = 2323;int TokenExpiryInDaysSets the validity period, in days, of authentication tokens generated by the robot service.The robot service uses these tokens to authenticate itself when interacting with other software components or services.30 daysint TokenExpiryInDays = 30;string AllowUrlListSets the list of URLS that the robot service can access.This helps ensure your robot service only interacts with approved services.string AllowUrlList = "https://cloud.uipath.com";

Always create a backup of the original UiPath.config file before making any changes. This can help restore the original settings if something goes wrong.To apply the updates made to the UiPath.config file, restart the UiPath service or the system.Local settings in the UiPath.config file take precedence over settings configured in Orchestrator.Sensitive data in UiPath.config file can be encrypted for additional security.


## UiPath Robot system variables

Further custom behavior can be configured through system environment variables.

After modifying any
                of the system variables, restart the Robot Service.

The following list summarizes the most common use cases:System
                                variableUsageExampleUIPATH_SESSION_TIMEOUTChanges the default
                                60-second timeout for creating an interactive session. Adjust
                                    this value to adapt the Robot behavior based on the performance
                                    and load times of the system it interacts with.UIPATH_SESSION_TIMEOUT=75UIPATH_PIP_SESSION_TIMEOUTChanges the default
                                    180-second timeout for starting a process in a Robot
                                    session.UIPATH_PIP_SESSION_TIMEOUT=60UIPATH_USER_SERVICE_PATHSets the installation
                                path of the user service.UIPATH_USER_SERVICE_PATH=C://installation/folder/UiPath.Service.UserHost.exeUIPATH_LANGUAGESets the language the
                                    Robot operates in.The order to determine the language
                                    is:UIPATH_LANGUAGE valueThe
                                            machine environment variableThe
                                            current thread UI cultureDefault
                                            UiPath language (English)UIPATH_LANGUAGE=FrenchUIPATH_HEADLESS_WITH_USERUses the credentials
                                    of a specific user, which was previously configured in
                                    Orchestrator.UIPATH_HEADLESS_WITH_USER=TrueUIPATH_PRE_LOADED_EXECUTORBy default, a
                                    preloaded executor is launched when the Robot starts.To
                                    change this behavior and launch the preloaded executor only when
                                    the first process runs, set this variable to
                                        None.UIPATH_PRE_LOADED_EXECUTOR=NoneUIPATH_DISABLE_PRE_LOADED_EXECUTORDisables the
                                    preloaded executor feature.UIPATH_DISABLED_PRE_LOADED_EXECUTOR=TrueUIPATH_ROBOTJS_ALLOWLISTAutomatically accepts
                                    the robot consent dialog, when establishing the connection
                                    between the Robot JS SDK and the Robot Executor.The
                                    variable accepts custom application URLs, separated by
                                    semicolons. Include the port number in the URL if it differs
                                    from the standard ports (80 or 443).UIPATH_ROBOTJS_ALLOWLIST=cloud.uipath.com;mydomain.com;UIPATH_DNS_MACHINENAMEAllows using the DNS
                                    host name for Localhost when creating RDP sessions. To execute
                                    unattended jobs in environments with Kerberos authentication for
                                    RDP, set this value to True.UIPATH_DNS_MACHINENAME=TrueUIPATH_PROXY_USE_DEFAULT_CREDENTIALSEnables the Robot to
                                    handle proxy configurations that use Windows Credentials for
                                    authentication.UIPATH_PROXY_USE_DEFAULT_CREDENTIALS=TrueNUGET_FALLBACK_PACKAGESConfigures the paths
                                    to fallback packages folders. Use semicolons to separate
                                    multiple paths.In the absence of this variable, the Robot
                                    searches for fallback packages folders in the
                                        Nuget.config file.NUGET_SCRATCHAllows multiple User
                                    Mode robots on the same machine to share a local path for
                                    storing packages.The value must be a path different to
                                    the Nuget installation folder, and it acts as a temporary folder
                                    for NuGet.Only the
                                            NUGET_SCRATCH variable should use the
                                        the configured temporary folder.NUGET_SCRATCH=C:\NuGetTempFolderUIPATH_PRESERVE_CREDENTIALS_CASEPreserves the
                                    original casing of logging credentials
                                (domain\username).UIPATH_PRESERVE_CREDENTIALS_CASE = TrueUIPATH_SESSION_BEHAVIORConfigures the way
                                    the session restore behaves after a job completes.The
                                    following options are available:TryReuseAndRestoreSession—Default
                                            option. Attempts to reuse the session and restore it to
                                            its previous state after a job completes. If there is no
                                            initial session to reuse, it logs off on
                                        restore.ForceNewSession—Creates a
                                            completely new session, regardless of the previous
                                            session state. Always logs off on restore.LeaveSessionActive—Prevents
                                            restoration of the initial session state.LeaveSessionDisconnected—Always
                                            disconnects the session on restore.UIPATH_SESSION_BEHAVIOR = LeaveSessionDisconnected

