# Settings for Robot policies

# Runtime Analyzer

Runtime analyzer rules verify that processes adhere to organization policies when executed by robots, enabling you to enforce your best practices while processes are running. This way, you can make sure that robots do not send emails outside the organization or automate apps and web pages that shouldn't be automated.

Runtime rules are included in activity packages and apply to certain activities in those packages. The robot retrieves the configured runtime rules and each one is verified when an activity that requires it is executed.

On the Runtime Analyzer tab, you can select which runtime rules to enable, set the rule actions, and configure rule parameters. The rules are configured similarly to how you configure Workflow Analyzer rules.

Automation Ops comes with the following default runtime rules:

* RT-UIA-001 (App/Url Restrictions) - Allows you to define a list of allowed / blocked applications or URLs for the activities in the UI Automation activities package.
* RT-OUT-001 (Email Blocklist) - Allows you to define addresses to which emails cannot be sent by activities from the GSuite, Mail. and Office 365 activities packages.

By default, the rules are enabled but no parameters are defined. The action is set to Error, which means that when a rule violation is detected, an error is thrown and the execution stops.

# Enable Runtime Governance

Runtime governance is not enabled by default. A banner is displayed at the top of Automation Ops pages informing you that the feature is disabled. Select Enable in the banner to enable the runtime analyzer.

!['Runtime governance is disabled' image](/images/43b648c-runtime_enable=GUID-5AE60096-85BB-4039-8B77-C2A3AE0D05EF=1=en=Default.png)

You can also enable/disable runtime governance using the following API requests:

POST "https://cloud.uipath.com/{organizationName}/roboticsops_/api/Product/Robot/enable"-H "Authorization: Bearer {token}"

POST "https://cloud.uipath.com/{organizationName}/roboticsops_/api/Product/Robot/disable"-H "Authorization: Bearer {token}"

You can retrieve the token from the browser developer tools. In Google Chrome:

1. Open Developer Tools from an Automation Ops page and select Application.
2. Under Storage, select Local Storage and then the application (e.g. cloud.uipath.com).
3. Locate the token key and copy its value.

# RT-UIA-001 - App/Url Restrictions

The rule checks whether any restricted applications or web pages are used in the project. Restrictions are set by defining lists of either allowed or blocked applications and URLs using the available parameters. The rule checks both local and remote applications (for example, applications automated over RDP connections).

The rule is available starting with UiPath.UIAutomation.Activities v21.10.3.

To define the applications and/or URLs that are allowed, use the following parameters:

* whitelistApps - Execution is allowed only for the applications that are on this list.
* whitelistUrls - Execution is allowed only for the URLs that are on this list.

To define the applications and/or URLs that are prohibited, use the following parameters:

* blacklistApps - Execution is allowed for all the applications that are not on this list.
* blacklistUrls - Execution is allowed for all the URLs that are not on this list.

If both prohibited and allowed lists are set up for the same scope (applications or URLs), the allowed list takes precedence.

You can use the CustomMessage parameter to display a custom message to the user when a runtime governance rule is triggered. The default value of this parameter is: UI automation detected on '{0}' which is not an allowed application/url as defined by your organization.

Configuring Restrictions

Specify a list of URLs / application names separated by comma (,) or semicolon (;). If multiple items are specified, they are all verified.

You can use the * and ? wildcard characters to define patterns. For example:

* *uipath*.exe - blocks all executable files with names that start with uipath.
* *www.uipath*.com - blocks all URLs that start with uipath, regardless of the protocol used.

What the Rule Verifies

For both modern and classic activities, the rule verifies at execution time each target UI element found using the defined selector or an input UI element.

To avoid an impact on performance, UI automation-related triggers such as Click Trigger and Key Press Trigger do not perform any verification. The checks are performed by the underlying workflow activities.

# RT-OUT-001 - Email Blocklist

The rule checks all the activities from the Mail, Microsoft 365, and Google Worskpace packages that send, reply, or forward emails, send notifications, create events or send calendar invites, and verifies that the emails are not sent to recipients added to the email blocklist.

The rule is available starting with the following package versions:UiPath.GSuite.Activities v1.11.3UiPath.Mail.Activities v1.12.2 UiPath.Office365.Activities v1.11.1

Configuring restrictions

Using the EmailRegex parameter, specify a pattern for the email addresses that are not allowed using a regular expression.

For example:

* .*@uipath.com - blocks all emails sent to addresses with the uipath.com domain.
* .*@(?!uipath\.com$) - blocks all emails except those sent to addresses with the uipath.com domain.

Custom error message

Use the CustomMessage parameter to customize the error message displayed when triggering the RT-OUT-001 - Email Blocklist rule. The length limit is set to 2000 characters.

The Use default value parameter is enabled by default. Disable it to use the custom message.

What the rule verifies

The rule verifies all the properties that indicate email recipients in the following activities that can send emails:

* Mail package:Integrations (StudioX) activities - Send Email, Forward Email, Reply To Email, Send Calendar InviteThe rule does not apply when activities save messages as drafts rather than sending them.App Integration activities - Send Exchange Mail Message, Send IBM Notes Mail Message, Send Outlook Mail Message, Reply To Outlook Mail Message
* Google Workspace package - Send Mail Message, Create Event, Add Attendee, Share File, Delete Event, Modify Event
* Microsoft 365 package - Send Mail, Reply to Mail, Forward Mail, Add Attendee, Share File/Folder

# Healing Agent runtime governance

Healing Agent runtime governance helps the organization administrator control the agent runtime capabilities.

The following settings are available:

* Allow Fix Recommendations—Allows the Healing Agent to engage and generate a fix recommendation when a UI Automation error occurs. If disabled, the entire Healing Agent functionality will be disabled at runtime, which impacts the rest of the governance options.
* Allow Self-Healing—Available only if the Allow Fix Recommendation option is enabled. Specifies if the Healing Agent is allowed to autonomously self-heal using the recommendations it generates. If disabled, self-healing will not be attempted at execution time.
* Allowing Screenshot Saving—Available only if the Allow Fix Recommendation option is enabled. Specifies if the Healing Agent is allowed to capture screenshots during execution.
* Healing Agent Apps/URLs Restrictions—Controls the agent behavior when interacting with target applications and URLs. Specifies which apps or URLs are allowed or restricted from providing recommendations or healing.
* Control Popup Restrictions—Controls the agent behavior when interacting with unexpected popups. For example, it makes sure the Healing Agent does not dismiss a security popup.

These settings do not control the Orchestrator process options, and they only apply at execution time.

The Robot logs get updated whenever Runtime Governance disables Healing Agent capabilities enabled by Orchestrator.

# HA-UIA-001 - Application/URLs restrictions

The rule checks if the Healing Agent is restricted from interacting with certain applications or web pages used in the project. Restrictions are set by defining lists of either allowed or forbidden applications and URLs, using the available parameters. The rule checks both local and remote applications, such as applications automated over RDP connections.

The rule only applies if you have enabled Allow Fix Recommendation and are using UiPath.UIAutomation.Activities v25.10.

To define the applications or URLs that Healing Agent can interact with in order to issue recommendations or self-heal, use the following parameters:

* allowedApps—Execution is allowed only for the applications that are on this list.
* allowedUrls—Execution is allowed only for the URLs that are on this list.

To define the applications and/or URLs that are prohibited, use the following parameters:

* forbiddenApps—Execution is forbidden for all the applications that are on this list.
* forbiddenUrls—Execution is forbidden for all the URLs that are on this list.

If both prohibited and allowed lists are set up for the same scope (applications or URLs), the allowed list takes precedence.

Configuring restrictions

To configure restrictions, specify a list of URLs / application names separated by comma (,) or semicolon (;). If multiple items are specified, they are all verified. You can use the * and ? wildcard characters to define patterns.

For example:

* *uipath*.exe—Blocks all executable files with names that start with uipath.
* *www.uipath*.com—Blocks all URLs that start with uipath, regardless of the protocol used.

What the rule verifies

For modern activities, during execution, the rule verifies if the Healing Agent is allowed to interact with the defined applications. This is true for both recommendations and self-heal options.

# HA-UIA-002 - Close Popup Restrictions

The rule checks whether Healing Agent is restricted from closing any defined popups or windows that might unexpectedly appear and block the automation.

The rule only applies if you have enabled Allow Fix Recommendation and are using UiPath.UIAutomation.Activities v25.10.

To define the popup list, use the following parameter:

forbiddenPopups—Using natural language, this describes the popup or window that the agent is forbidden from interacting with. For example:Security AlertSuspicious Activity DetectedAlerts with buttons like Allow, Proceed Anyway, or Block.Configuring Restrictions—Using natural language, specifies a list of popup descriptions separated by comma (,) or semicolon (;). If multiple items are specified, they are all verified.What the rule verifies

For modern activities, during execution, the rule verifies if the Healing Agent is allowed to interact with the described popup types. This is true for both recommendations and self-heal options.

# Configure Runtime Rules

!['Configure runtime rules' image](/images/0f7e7d7-rt_configure=GUID-4AF951E6-5560-455E-BF78-B7144702E60A=1=en=Default.png)

For each default rule, you can configure the following options:

* Enabled - Select this option to enable the rule.
* Action - Set the action of the rule: Error,Warning,Info, or Verbose. The default action is Error.
* Parameters - To edit a parameter, select Edit next to it and then deselect the Use default value option to configure restrictions in the Value box.
