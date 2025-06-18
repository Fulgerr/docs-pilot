# UiPath Remote Runtime blocks Citrix session from being closed

# Description

At installation time, UiPathRemoteRuntime.msi registers UiPath
                executables for Citrix auto clean-up by adding them under the following registry
                key:
                    HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Citrix\wfshell\TWI.

Value Name: LogoffCheckSysModules

Type: REG_SZ

String:
                    UiPathRemoteRuntime.exe,FuncServer_x86.exe,FuncServer_x64.exe,UiPathRemote.exe

This is an example of how the LogoffCheckSysModules registry key
                should be configured:
                Windows Registry Editor Version 5.00
[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Citrix\wfshell\TWI]
"NotifyEvent"="WfshellTwiNotify"
"DllName"="Seamls20.dll"
"LogoffCheckSysModules"="CitrixFiles.exe,UiPathRemoteRuntime.exe,FuncServer_x86.exe,FuncServer_x64.exe,UiPathRemote.exe"

The effect of removing the registry changes is that Citrix sessions are not cleaned
                up when all opened applications have been closed, because the UiPath executables are
                still running.

# Solution

If you make any additional changes to the LogoffCheckSysModules
                registry key after installing UiPath Remote Runtime, make sure you add the UiPath
                executables
                    (UiPathRemoteRuntime.exe,FuncServer_x86.exe,FuncServer_x64.exe,UiPathRemote.exe)
                to the list, to ensure Citrix remote sessions are closed correctly. For details, see
                the Citrix support documentation.
