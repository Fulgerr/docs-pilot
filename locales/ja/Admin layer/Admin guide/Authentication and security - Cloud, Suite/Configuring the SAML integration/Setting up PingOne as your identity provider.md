# Setting up PingOne as your identity provider

The instructions in this section are for a sample configuration. For more information about any IdP settings that are not covered, refer to PingOne.

1. In a different browser tab, log in to the Ping One Admin Console.
2. Go to Connections > Applications , and select the plus icon .
3. Select Web App , and for SAML select Configure .
4. On the Create App Profile page, specify a name for your instanceName app.
5. On the Configure SAML Connection page, select Manually Enter and provide the following details: ACS URLs: Enter the Assertion Consumer Service URL value you got from instanceName.Entity ID: Enter the Entity ID value you got from instanceName.SLO binding:HTTP RedirectAssertion Validity Duration: Enter the number of seconds for the validity period.
6. Select Save and Continue .
7. On the Map Attributes page, add the email address: Select + Add Attribute.For Application Attribute, enter http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress. The http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddressclaim is case-sensitive.Set Outgoing Value to Email Address, or the user attribute that contains the user's unique email address.Select the Required checkbox.Optionally add other attribute mappings. instanceName also supports the First Name, Last Name, Job Title, and Department user attributes. The attributes are case sensitive. This information is then propagated to instanceName, where it can be made available to other services, such as Automation Hub.
8. Select Save and Close .
9. Turn on the toggle for the instanceName app to enable the application for user access.
10. On the Configuration tab, copy and save the IdP Metadata URL value for later use.
