# Configure a multi-hop connection

To reach a destination remote computer via multiple connections, you must install Remote
            Runtime on each intermediary remote computer, not only on the final target computer.

# Scenario: RDP connections

Consider the following scenario:Machine A (with Studio and/or
                        Robot) connects via RDP (Microsoft Remote Desktop Protocol) to Machine B,
                        andMachine B connects via RDP to
                        Machine C, where the target application is running, and the automation must
                        be performed.

In this example, the following configuration is required:Machine A – install
                        Studio/Robot and the Extension for Microsoft Remote Desktop and Apps
                        (UiPath RDP extension).Machine B – install the
                            Extension for Microsoft Remote Desktop and Apps and
                            UiPathRemoteRuntime.msi.Machine C – install
                            UiPathRemoteRuntime.msi.



If other types of connections are used between
                two machines, you must configure a connection at each hop, with the appropriate
                    extension:Extension for Citrix
                        for the case of Citrix connectionExtension for Microsoft
                            Remote Desktop and Apps (UiPath RDP extension) for the case of RDP
                        connectionExtension for VMWare
                            Horizon for the case of VMWare connectionExtension for Amazon WorkSpaces for the case of connections to Amazon
                        WorkSpaces

# Scenario: RDP connection and Citrix connection

Let's consider another
                scenario in which:Machine A (with Studio and/or
                        Robot) connects via RDP to Machine B, andMachine B connects via Citrix
                        to Machine C, where the target application is running, and the automation
                        must be performed.



On Machine B (or other intermediary machines),
                you can install the extension with one of these methods:Run the
                            UiPathRemoteRuntime.msi installer and select from the
                            Product Features list the required extension. Refer to Installing the UiPath Remote Runtime -
                            From the Installer.From Command Prompt run
                            SetupExtensions.exe (located in the folder
                            C:\Program Files (x86)\UiPath\RemoteRuntime) with the
                        parameter corresponding to the required extension:Commands for the UiPath Extension
                                    for CitrixCommands for the UiPath Extension
                                    for Windows Remote DesktopCommands for the UiPath Extension
                                    for VMware HorizonCommands for the UiPath Extension
                                    for Amazon WorkSpaces

# Automating Java or web
                applications

Regardless of your multi-hop connection scenario, if you are
                automating a Java application or a web application, you must also install the
                corresponding extension (the extension for Java, Chrome, Microsoft Edge, Firefox) on
                the remote machine. This can be done by running:the
                            UiPathRemoteRuntime.msi installer, as described in
                            Installing the UiPath Remote
                            Runtime, orthe
                            SetupExtensions.exe tool located in the installation
                        folder of UiPath Remote Runtime (default
                            %ProgramFiles(x86)\UiPath\RemoteRuntime), as described
                        in About the SetupExtensions tool.
