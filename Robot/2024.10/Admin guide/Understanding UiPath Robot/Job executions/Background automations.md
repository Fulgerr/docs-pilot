# Background automations

A background automation can run without interacting with UI elements, and it relies on the background actions to share information. Automations that use UI Automation activities cannot run under a locked screen, therefore they are not suited to run in the background.

Multiple background automations can run concurrently in the same Windows session. Each running automation uses its own set of dependencies. So, if two automations need the same resource but in different versions, each automation uses the specific version it requires.

# How it works

1. When a Windows system starts up, it creates a Windows session called Session 0. This session runs various system processes that help the machine to operate and it is not associated to any user. It does not have a user interface and cannot interact with sessions initiated by user logins.
2. The login of a user on that machine creates a new session called User Session. This session is used for running user-specific services.
3. Attended automations, when they run in the background, operate within the user session of the user who initiated them. This way, the Robot can retrieve information and access files that are user-specific.
4. Unattended automations are initiated by the Robot Service and run within Session 0. While running in this session, unattended automations are associated with a specific user, and inherit the permissions of that user. Make sure that those permissions include access to the resources the automation requires, since Session 0 cannot access user sessions.

# Running attended automations in the background

Attended automations are designed to run under human supervision. They are triggered by user events, such as mouse clicks or keyboard inputs, and run on the same machine where the user logs in.

A background execution allows the Robot to run automations in the background, without an active user interface, but for a specific user.

If you have an Attended license, you can concurrently execute only one foreground automation (with UI interaction), and multiple background automations (without UI interaction).

# Running unattended automations in the background

Unattended automations are designed to run natively in the background, without a UI interaction or human supervision. This type of automations usually execute within a Windows session, under the Local Service.

Microsoft applications, such as Excel, Word, or PowerPoint, operate in user sessions. For this reason, unattended automations running in the background might have issues with these apps.

Running several unattended automations at once consumes a separate Unattended license for each one.

# Transitioning background to foreground

You can transition a background automation to a foreground one, by using the Use Foreground activity.

# Using Orchestrator credentials

To use login credentials that are defined in Orchestrator, you need to configure the UIPATH_HEADLESS_WITH_USER system environment variable on the robot machine and set the value to True.
