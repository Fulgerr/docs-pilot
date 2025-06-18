# Unattended automations

# What are unattended automations

Unattended automations are designed for complex, repetitive tasks, typically done in bulk, based on certain rules. Unlike attended automations, which require human guidance, unattended automations operate independently, based on triggers or specific task events. By avoiding human intervention, they are ideal for tasks requiring elevated permissions.

For example, an unattended automation can approve expense reports. It logs into the system, checks the reports, and if they match a rule (such as being under a certain amount), it approves them.

It is the administrator persona that gives the unattended automation access to the system. This ensures security as it provides a clear record of who manages these details.

# Where does Orchestrator come into play

Orchestrator serves as the core hub for unattended automation. It enables instant or scheduled execution of unattended tasks through triggers, and it can dynamically assign unattended tasks to available robots. In addition to managing resources needed for automation projects, it controls access to them through folder hierarchies and specific role assignments.

An admin sets up unattended automation in a folder by granting a user or robot account access and necessary permissions. They also assign a machine template ensuring it has enough runtimes for executing the automation.

# Where does Assistant come into play

Assistant is the UiPath tool designated for assisting users with attended automations. In unattended scenarios, Assistant is used solely for debugging purposes, when a user logs in to the unattended machine to look for and fix potential issues.

# The Service Mode Robot

The Service Mode Robot is best suited in unattended scenarios and large-scale platform deployments. The Robot Executor runs unattended automations with the same privileges as the registered user. The Robot Service runs under the Local System, opens interactive Windows sessions, and has the rights of a machine administrator. This allows it to manage sessions automatically (such as logging on and off) for unattended automations.

# Licensing

To perform unattended automations, you need to assign runtimes to the machines - physical or virtual devices where unattended tasks are executed. These machine runtimes can be of the following types: Unattended, NonProduction, and Testing.

For example: say you have a machine template with ten unattended runtimes. Each machine connected with this template reserves ten licenses from the total available. These licenses are only used when an unattended automation is executed. So, if you connect four machines using this template, it reserves 40 licenses. With 25 jobs running, 15 slots remain available.

# Authenticating

For unattended automations, there are two methods to authenticate robots: client credentials and a hybrid option allowing for both client credentials and machine key connections. These authentication options are found in Orchestrator > Tenant > Settings > Robot Security.

Client Credentials (Recommended) - Client credentials allow the Robot to access Orchestrator resources by using its own credentials, instead of impersonating a user. When the robot requests resources from Orchestrator, Orchestrator enforces that the robot itself has authorization to perform an action since there is no user involved in the authentication. It uses the OAuth 2.0 framework as the basis for the authentication protocol, meaning robots can connect to Orchestrator with a client ID - client secret pair generated via machine template objects. The client ID - client secret pair generates a token that authorizes the connection between the robot and Orchestrator and provides the robot with access to Orchestrator resources. The admin has the option to revoke access at any time by deleting the secret employed on that machine.

Hybrid - This option allows for both connections with tokens that don't expire (machine key) and connections with tokens that expire (client credentials).
