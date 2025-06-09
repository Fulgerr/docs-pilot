# Attended automations

# What are attended automations

Attended automations are designed to run under human supervision, making them ideally suited for smaller, more fragmented tasks, such as submitting expense reports. For example, once the user logs into the system, the automation takes over to fill in necessary information, attach requested items, and submit the report.

To ensure security, attended automations should only be permitted to undertake tasks or actions that fall within a specific user access rights. This preventive measure is important because there is no security isolation between an active automation and the user controlling it. Users must provide all required credentials during the execution of an attended process. If the automation executes actions outside of the user access, it unknowingly provides the user with unauthorized access. For example, if an expense report automation also includes approval access, the user could potentially manipulate the automation to approve any report, an action not ordinarily permitted with their own credentials.

# Where does Orchestrator come into play

In attended automation, Orchestrator ensures the centralized management and correct delivery of package versions to robots for execution.

To allow an attended automation access to resources in an Orchestrator folder, the administrator has to add the corresponding account (either a user or a robot account) to that specific folder. The account also needs permissions for operations required by the automation within the designated folder. For example, some automations might run exclusively under a specific account.

# Where does Assistant come into play

The Assistant works as a user sidekick in automating processes, allowing the attending user to manage and run automations with a few clicks. From a technical standpoint, the Assistant is the client of the User Mode Robot Service, which is the brain behind all operations performed during automation execution.

# The User Mode Robot

The User Mode Robot is best suited in attended scenarios, as it runs under the local user that starts it and has the exact rights as that particular user. By default, the Robot Service starts when a user signs in, assuming it is configured to start upon login. Otherwise, opening the Assistant starts the Robot Service automatically.

# Licensing

To perform attended operations, the user under which the robot runs must be assigned a license that provides that user rights to use attended licenses. This involves Attended, Citizen Developer, and Automation Developer user licenses.



# Permissions to run attended automations

To run attended automations, you need to have the following permissions and roles:





* 

# Authenticating

To authenticate robots in order to execute attended automations, Orchestrator verifies the identity of the UiPath Robot that needs to access Orchestrator resources. Validating that identity determines a trust relationship for further interactions.

For attended automations, there are two methods to authenticate robots: Interactive Sign-in (the Service URL option in Assistant) and a hybrid option allowing for both user sign-in and machine key connections. These authentication options are found in Orchestrator > Tenant > Settings > Robot Security.

Interactive Sign-in SSO (Recommended) - This option only allows for robot connections with tokens that expire. Users can authenticate their robots only by signing-in with their credentials in Assistant. User sign in is required to run attended automations, make Orchestrator HTTP requests, or view automations in Assistant. When using interactive sing-in, there is no need to create machine objects in Orchestrator.

Hybrid - This option allows for both connections with tokens that do not expire (machine key) and connections with tokens that expire (interactive sign-in or client credentials). Users have the option to sign-in with their credentials to authenticate their robots, which in turn allows them to connect Studio and Assistant to Orchestrator, however it is not mandatory.
