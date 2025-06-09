# Configuring system email notifications

Email notifications provide alerts for events like password recovery, license status, product updates, and resource-specific notifications such as job or robot alerts.They can be configured at two levels: host and organization. The host-level applies settings across all organizations in the platform, but they can be overriden at the organization level.Notifications can be related to user accounts (password recovery), or be related to events from services such as Orchestrator.

## System emails are not sent - SslHandshakeException

For offline installations, if system emails are not sent and you encounter the error SslHandshakeException, make sure that both port 80 and port 587 are opened for the machine.

For offline installations, if system emails are not sent and you encounter the error SslHandshakeException, make sure that both port 80 and port 587 are opened for the machine (single node | multi-node).


## Using default email settings

Default email settings are preconfigured parameters provided by UiPath for sending system email notifications. Default settings use the SendGrid SMTP server and are designed to work out of the box, requiring no additional customization.

Default email settings are preconfigured parameters provided by UiPath for sending system email notifications. Default settings use the SendGrid SMTP server and are designed to work out of the box, requiring no additional customization.When selected at the host level, the default UiPath email settings apply to the host and all of its subordinated organizations. The host can also have custom email settings.Whatever configuration - default or custom - that is set at the host level, it propagates down to all child organizations that did not customize their own email settings. Organization custom settings override the inherited settings from the host.When the default mail settings are chosen at the organization level, settings from the host level - either the standard UiPath or any custom host configurations - are adopted. Nevertheless, these settings can be overridden at the organization level with custom configurations.

Go to Admin, select your organization, and then select Mail Settings. The Mail Settings page for the organization opens.Go to Admin, and from the top left corner, select Host (for host email settings), or your organization name (for organization-specific email settings). Then select Mail Settings. The Mail Settings page opens.Select the Use default mail settings checkbox to use the default SendGrid SMTP server. The default SMTP settings are described on the page and cannot be changed.When configured at the host level, this applies the default UiPath configuration to all emails sent in all organizations under the host, except for those organizations with their own custom settings. When configured at the organization level, this applies the configuration inherited from the host level, be it the UiPath default or the custom host email settings.This applies the custom configuration to all emails sent within the context of the organization.


### Default email settings

# Untitled Section

SettingDescriptionValueSender addressThe email address that is used as the source of the emails being sent. It represents the identity of the sender and is displayed in the recipient's inbox as the address from which the email originated.admin@mydomain.comSender nameThe human-readable name associated with the sender's email address. It appears alongside the sender's email address in the recipient's inbox.mydomain.com mailer


## Using custom email settings

Customizing mail settings helps you tailor your email communication to precise specifications.

Go to Admin, select your organization, and then select Mail Settings. The Mail Settings page for the organization opens.Go to Admin, and from the top left corner, select Host (for host email settings), or your organization name (for organization-specific email settings). Then select Mail Settings. The Mail Settings page opens.Select the Use custom mail settings checkbox to set up your own server.Configure the custom email settings, by providing the neccessary information for your SMTP configuration.After entering the SMTP details, select Test mail settings to validate your settings. The Test mail settings page opens.Add an email address for sending the test email, and select Send. This sends a test email to a designated email address to ensure that your configuration is correct and functioning as expected. Make sure to check your inbox for the test email.Once the test email is successfully sent and received, select Save to save the custom SMTP settings. This applies the custom configuration to all emails sent within the context of the organization.Once the test email is successfully sent and received, select Save to save the SMTP settings. Custom email settings, when configured at the host level, apply to the host and all of its child organizations that do not have a custom configuration of their own. At the organization level, selecting custom settings allows you to implement a unique configuration that is specific to that particular organization. This configuration overrides any settings inherited from the host level, be they default or custom.


### Custom email settings

# Untitled Section

SettingDescriptionExampleHostnameThe SMTP server that handles the sending of your emails.Smtp.office.comDomainThe email server responsible for handling emails.Provider.comPortThe communication port used for sending emails. Port 25 is commonly used, but some email providers also offer ports like 587.25TimeoutMaximum duration that the system waits for a response from the SMTP server. If the server does not respond within the specified timeout period, the attempt is considered unsuccessful.180,000 msUse TLS encryptionWhen enabled, it ensures that sensitive data remains confidential during transit.N/ARequire authenticationWhen enabled, you should provide valid credentials (username and password) before the system is allowed to send emails through the SMTP server.Username: name@name.comPassword: ********Sender addressThe email address that is used as the source of the emails being sent. It represents the identity of the sender and is displayed in the recipient's inbox as the address from which the email originated.admin@mydomain.comSender nameThe human-readable name associated with the sender's email address. It appears alongside the sender's email address in the recipient's inbox.mydomain.com mailer


## Example: Configuring the SMTP Server for a Google Account

Configuring the SMTP Server for a Google account is not very different from any regular configuration. In the host management portal, configure the settings as follows:SMTP Host: smtp.gmail.com (Google SMTP server). SMTP Port: 587 (default Google SMTP port). SMTP Username: The email address to send mail messages from. For example, your_username@gmail.com. SMTP Password: The password for the email address you want to use. It has to be the password of the account that was specified in the SMTP Username field. Default From Address: The email address from which to send the email messages. It has to be the same one as the one used in the SMTP Username field, in our example, your_username@gmail.com. Default From Display Name: A custom name you want recipients to notice for the sender of the email notification. For example, Orchestrator System Notifications.If you provide a Google account for the SMTP Username, you also need to do the following:

Open a web browser and log in to Google with the credentials used in the SMTP Username and SMTP Password fields.Allow Orchestrator to access the account by selecting this link.If the account does not have 2-step verification, then you must allow less secure apps by following this link and turning the Allow less secure apps option to ON.This ensures that the password reset request is properly processed and delivered from the email address configured in the Mail tab to the one configured in the Users page of the user making the request.

