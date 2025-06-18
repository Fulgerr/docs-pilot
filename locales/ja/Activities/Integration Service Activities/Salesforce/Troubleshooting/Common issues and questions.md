# Common issues and questions

# Are there API limits for using the Salesforce connector?

If you receive a REQUEST_LIMIT_EXCEEDED error, refer to Salesforce API Request Limits and Allocations for information on rate limits. Depending on your Salesforce edition, there are different limits on the number of total API calls per 24-hour period.

# Expired Salesforce connection

Your connection to the Salesforce connector can expire. Note that Salesforce allows each user to have five access tokens authorized to one Salesforce account for all third-party applications, including UiPath. After the five access tokens are generated, older tokens are automatically revoked without notification.

Review your connected app settings to make sure you have a token that you can use with the UiPath
                application. Refer to Manage OAuth-Enabled Connected Apps Access to
                    Your Data in the Salesforce documentation.

# "API not enabled for this organization or partner" error message

If you receive an error message that says "API not enabled for this organization or partner", take the following steps:Check your organization settings. For some
                        organizations, it is not possible to enable API access. Enterprise,
                        Unlimited, Performance and Developer Salesforce editions have the API
                            enabled setting activated by default. For Group, Essentials and
                        Professional Customers editions, this option is disabled. Salesforce
                        professional customers can purchase this feature as an add-on. For more
                        information, refer to Salesforce editions with API
                            access. To see which Salesforce edition you are using, refer to
                        the Find your edition article.If your organization is using a Salesforce edition with API access, check your user permissions.
                            First, you must find the profile associated with the user receiving the
                            error. Refer to View a Profile's Assigned
                                Users. Next, check if the API Enabled setting is
                            activated for that specific user:In the Lightning Experience user interface, go to Set up > Users > Profiles. In the Classic experience, navigate to Setup > Administration Setup > Manage Users > Profiles. You can also search for the user in the All Users list, select the user profile, then select Profile settings.Once you select the profile you need to check, scroll down to the System Permissions tab. Select the API Enabled flag.

For more details, refer to the following Salesforce knowledge article: Create a Permission Set and Grant API Enabled Access.

# "OAUTH_APP_BLOCKED" error message

Issues during the authentication process can result in Salesforce blocking an application.
                Additionally, the Salesforce default settings or specific organizational security
                policies can automatically block third-party applications that administrators have
                not pre-authorized.

To unblock an application, ask your Salesforce administrator to perform the following steps:

1. Navigate to Setup > Manage Apps > Connect Apps OAuth Usage.
2. Look for the UiPath application.
3. If the UiPath application is blocked, an Unblock option is available. Select the Unblock button.
4. Review the dialog box that appears and select OK.

# My object/field is not available in the object dropdown menu

If your object or custom field isn't available in an activity's Select object dropdown menu, take the following steps:

* If you recently added an object or was granted access to an object, select the Force refresh option in the Select object context menu or press CTRL + R on your keyboard.
* Delete the activity and close the project. Then, reopen the project and add the activity again.
* Make sure you have the required permissions for the specific object or fields.



If none of these steps solves the errors you encounter, please contact the support team. For faster debugging, you can share the network or Fiddler logs.
