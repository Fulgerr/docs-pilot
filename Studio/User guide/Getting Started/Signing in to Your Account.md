# Signing in to Your Account

If you installed Studio using the UiPathStudio.msi installer with the Robot in user mode, you can connect Studio and the Assistant to Orchestrator by signing in to your UiPath account:

Click  on the upper-right side of the Studio window, and then click Sign in. To find out more information about signing in, click Learn more.To use a custom URL instead of the default https://cloud.uipath.com, enter the URL in the Service URL field. To connect to Orchestrator with client credentials or machine key, click More Options > Connect to Orchestrator. To activate a local license key, click More Options > Standalone Options.A new page opens in your web browser. Complete the sign in procedure, and, when prompted by your web browser, click Open UiPath to return to Studio.

After you sign in, an icon with your initials is displayed on the upper-right side of the Studio window. To sign out and disconnect from Orchestrator from both Studio and the Assistant, click the icon, and then select Sign Out.

## Connecting to Orchestrator With Client
        Credentials or Machine Key

If you installed Studio using the
                    UiPathStudio.msi installer with the Robot registered as a
                Windows service, you can connect to Orchestrator with your client credentials or
                machine key:

Click , and then click Connect.Select a connection type - Client ID or Machine Key.Enter the Orchestrator URL and either the Client ID and Client
                        Secret or the Machine Key generated in Orchestrator, and then
                    click Continue.To activate a local
                                license key, click More Options > Standalone
                                    Options.If you
                                installed the Robot in service mode, administrator privileges are
                                required to connect to Orchestrator with the machine key.


## Common Sign-in Errors

This section documents errors you may encounter when you try to sign in to your account.
            Select an error to view information about its cause and available solutions.

# Interactive sign-in is not
                enabled for this tenant. Enable it from the Orchestrator settings, or connect using
                the machine key.

Cause

Authentication is not enabled in the tenant you are trying to sign in to. This may
                occur if the tenant was created in an older version of Orchestrator, before the
                introduction of the interactive sign-in feature.

Solution

Do one of the following:

* In Orchestrator, go to Tenant > Settings > Security , and then select Allow both user authentication and robot key authentication.Only an administrator can perform this task.
* In the Studio Sign-in screen, select More Options > Connect to Orchestrator to connect using your machine key instead.

# Interactive connect is not
                available.

Cause

The Robot is installed in service mode. Interactive sign-in is supported only if the
                Robot is installed in user mode.

Solution

Do one of the following:

* Run the installation again and make sure to select the User mode Robot installation type. For more information, see Install Studio.
* In the Studio Sign-in screen, select More Options > Connect to Orchestrator to connect using your machine key instead.

# No robot configured for the current
                user.

Cause

You are trying to sign in but no attended robot is configured for your user in
                Orchestrator.

Solution

In Orchestrator, edit the current user, select the option to create an attended robot
                for the user, and select a developer license type for which a license is available.
                You can check license availability by going to Tenant >
                License.

Only an administrator
                can perform this task.

# Robot does not exist.

Cause

You are using a classic robot
                defined in Orchestrator using the classic method or via the Windows user and you are
                already connected to Orchestrator with a machine key. When you then sign in from
                Studio, a different username is sent to Orchestrator

Solution

Do one of the following:

* Sign out, and then, in the Studio Sign-in screen, select More Options > Connect to Orchestrator to connect using your machine key.
* In Orchestrator, set up a modern robot configuration instead of the classic one, and then sign in again.Only an administrator can perform this task.

# Cannot acquire a license.

Cause

You are trying to sign in but your user is not properly configured to acquire a
                license from Orchestrator.

Solution

In Orchestrator, edit the current user, make sure the option to create an attended
                robot for the user is selected, and select a developer license type for which a
                license is available. You can check license availability by going to Tenant
                > License.

Only an administrator
                can perform this task.

# No such host in known.

Cause

Connection to Orchestrator could not be established.

Solution

Make sure your Internet connection is working.

# Accessing the organization from an untrusted network.

Cause

You are trying to sign in but your IP address is restricted in Automation Cloud.

Solution

Add your IP address to the list of trusted IP ranges. For more information, see Restricting access by IP in the Automation
                Cloud Admin Guide.

