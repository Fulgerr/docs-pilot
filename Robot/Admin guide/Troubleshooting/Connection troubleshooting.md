# Connection troubleshooting

# Description

When trying to connect or sign in to an Orchestrator provided with Automation Suite 2024.10, you may encounter this error: "System.Net.Http.HttpRequestException: The SSL connection could not be established, see inner exception."

This issue affects Windows 10 and Mac operating systems.

# Potential issue

Automation Suite 2024.10, which hosts the Orchestrator instance you want to connect to, uses TLS 1.3 by default. Windows 10 and Mac operating systems do not support this version.

# Solution

You have two options:

* Configure Automation Suite 2024.10 to use TLS 1.2 instead, or
* Use an operating system other than Windows 10 or Mac.

## Interactive sign-in is not enabled for this tenant

# Description

The tenant you are trying to access does not have authentication enabled.

# Potential issue

The tenant might have been created in an older version of Orchestrator, prior to the implementation of the interactive sign-in feature.

# Solution

The proposed solution must be performed by an Orchestrator administrator:

* In Orchestrator, go to Tenant > Settings > Security , and then select Allow both user authentication and robot key authentication.

To connect using your machine key instead, go to the sign-in screen in Studio, then select More Options > Connect to Orchestrator.


## Interactive connect is not available

# Description

You cannot connect through the Interactive Sign-In.

# Potential issue

The Robot is installed in Service Mode.

# Solution

When the Robot is installed in Service Mode, connect using the Machine Key first, then proceed with Interactive Sign-In (Service URL).


## Robot does not exist

# Description

You receive the error message "Robot does not exist".

# Potential issue

You might be using a classic robot, which was defined in Orchestrator using the classic method or via the Windows user, and you are already connected to Orchestrator with a machine key. When you then sign in from Studio, a different username is sent to Orchestrator.

# Solution

The proposed solution must be performed by an Orchestrator administrator:

* In Orchestrator, set up a modern robot, then sign in again.

To connect using your machine key instead, go to the sign-in screen in Studio, then select More Options > Connect to Orchestrator.


## Cannot acquire a license

# Description

You receive the error message "Cannot acquire a license".

# Potential issue

Your user account is not properly configured to acquire a license from Orchestrator.

# Solution

The proposed solution must be performed by an Orchestrator administrator:

* In Orchestrator, edit the problematic user account to execute attended automations, then assign it an Attended license.

To verify the license availability, go to Tenant > License.


## No such host in known

# Description

You receive the error message "No such host in known".

# Potential issue

Connection to Orchestrator could not be established.

# Solution

Make sure your Internet connection is working.


## You are not authorized to perform this action

# Description

You receive the error message "You are not authorized to perform this action".

# Potential issue

The user connected with the machine key associated with one tenant, but then tries to sign in to a different tenant.

# Solution

For User Mode installations, sign in using the service URL.

For Service Mode installation, sign out from the Assistant, then sign in again.


## Could not start executor in an RDP setup

# Description

You receive the error message "Could not start executor. RDP connection failed: Message: The connection transport layer failed. Last error: 131085".

# Potential issue

The user account used to run the unattended automation runs was not added to the Remote Desktop Users group.

# Solution

Add the user account to the Remote Desktop Users group. For details, see User permissions to run automations.


## Robot cannot connect to an Automation Suite Orchestrator instance

# Description

When trying to connect or sign in to an Orchestrator provided with Automation Suite 2024.10, you may encounter this error: "System.Net.Http.HttpRequestException: The SSL connection could not be established, see inner exception."

This issue affects Windows 10 and Mac operating systems.

# Potential issue

Automation Suite 2024.10, which hosts the Orchestrator instance you want to connect to, uses TLS 1.3 by default. Windows 10 and Mac operating systems do not support this version.

# Solution

You have two options:

* Configure Automation Suite 2024.10 to use TLS 1.2 instead, or
* Use an operating system other than Windows 10 or Mac.

