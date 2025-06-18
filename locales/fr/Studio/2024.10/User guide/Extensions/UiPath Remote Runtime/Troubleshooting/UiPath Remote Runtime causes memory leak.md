# UiPath Remote Runtime causes memory leak 

# Description

The Service Host (svchost) consumes a lot of memory for
                                the Remote Desktop Services (TermServ) process when
                                running UiPath Remote Runtime without a Citrix extension installed
                                on the client machine.

# Cause

While running on the server machine, the UiPath Remote runtime component
                                attempts to establish a connection with the client by opening a
                                virtual channel and trying to send an initialization message
                                        (HELLO_MSG). These steps are performed in a
                                loop with a timeout of 0.5 seconds, until the connection is
                                established.

If the client machine doesn't have the UiPath Extension (for Citrix,
                                VMWare, or Microsoft Remote Desktop and Apps) installed, the server
                                can't connect, therefore the loop runs forever. Each time the
                                opening of the virtual channel fails, a system event is generated,
                                which leads to the memory leak inside svchost.

# Solution

Edit  so that the UiPathRemoteRuntime.exe process
                                starts only for those users that have the UiPath extension installed
                                on their machines.

This issue has been fixed in
                                        UiPathRemoteRuntime.msi versions 23.4.8 and
                                newer. Download the UiPathRemoteRuntime.msi from
                                Product Downloads in the UiPath Customer
                                Portal.
