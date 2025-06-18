# Troubleshooting

Automating RemoteApps running on different remote servers at the same time is not supported.

If you are using RemoteApps running on different remote servers (different Remote Desktop Session Hosts), behind the same Remote Desktop Connection Broker, interactive selection generates native selectors only for the applications published from one remote server.

This happens because in the described scenario, RemoteApps from different servers share the same mstsc.exe process on the client machine, and the extension cannot create virtual channels with each of the remote servers.

To configure the RemoteApps to launch a new mstsc.exe process for each remote server, add the following line in your RDP file:

disableconnectionsharing:i:1

You may need to remove the signature line after this configuration, as the RDP file will be seen as corrupted.

With this configuration, a new mstsc.exe process related to the specific remote server is recreated each time you launch a new application from a remote server. To avoid any issues, it is recommended to start all remote applications before interacting with them.
