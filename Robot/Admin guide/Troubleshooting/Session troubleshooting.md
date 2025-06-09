# Session troubleshooting


## Windows session is locked

# Description

The robot receives the error "Cannot bring the target application in foreground because the Windows session is locked".

# Potential issues

Unnecessary running of idle Remote Desktop Services sessions, automatic sign-ins and lock of the last interactive user after system restarts, or the activation of news and interests on the taskbar.

# Solution

Ensure the settings for the following group policies are disabled or not configured:

* News and interests
* Session Time Limits (find it under Remote Desktop Services > Remote Desktop Session Host )
* Windows Logon Options

To do that:

1. Open the Local Group Policy Editor.
2. Navigate to Computer Configuration > Administrative Templates > Windows Components.
3. Look for the corresponding policy setting and verify the state is Not configured or Disabled:For News and interest, look for the Enable news and interests on the taskbar setting.For Session Time Limits, look for the Set time limit for active but idle Remote Desktop Services sessions setting.For Windows Logon Options, look for the Sign-in and lock last interactive user automatically after a restart setting.

If the problem persists, export and send the following text files to UiPath Support:

1. Open the Local Group Policy Editor.
2. Navigate to Computer Configuration > Administrative Templates > Windows Components.
3. Select the following policies:Connections (find it under Remote Desktop Services > Remote Desktop Session Host )Session Time Limits (find it under Remote Desktop Services > Remote Desktop Session Host )
4. For each policy, select Action from the ribbon and then Export the settings with the .txt format.


## Previous logon policy prevents Robot session creation

# Description

In unattended scenarios, Robots are unable to log in due to a security pop-up that reports sign-in information. As a result, jobs fail with the following error message: "Could not start executor. A specified logon session does not exist. It may already have been terminated. (0x80070520)".

# Potential issues

The policy Display information about previous logons during user logon prevents robot sessions from being created. When this policy is enabled, robots cannot initiate a login session, leading to the error message mentioned above.

# Solution

Disable the Display information about previous logons during user logon policy:

Open the Group Policy Editor on the affected machines by running gpedit.msc from the start menu or Command Prompt.Go to Computer Configuration > Administrative Templates > System > Logon.Locate the policy titled Display information about previous logons during user logon.Set this policy to Disabled.Once the policy is disabled, ensure the changes are applied. You may need to run gpupdate /force from the Command Prompt or restart the affected machine.Test whether the robot is able to log in successfully without encountering the error.

