# Setting up Okta as your identity provider

The instructions in this section are for a sample configuration. For more information about any IdP settings that are not covered, refer to Okta.

1. In a different browser tab, log in to the Okta Admin Console.
2. Go to Applications > Applications , select Create App Integration , and select SAML 2.0 as the sign-on method.
3. In the General Settings page, specify a name for the app you are integrating with, namely UiPath.
4. On the Configure SAML page, fill in the General section as follows: Single sign-on URL: Enter the Assertion Consumer Service URL value you got from the UiPath platform.Select the Use this for Recipient URL and Destination URL checkbox.Audience URI: Enter the Entity ID value you got from instanceName.Name ID Format: Select EmailAddressApplication Username: Select Email
5. For Attribute Statements , add the following: Name: http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress. The http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddressclaim is case-sensitive.Leave the Name Format as Unspecified.Set Value to user.email, or the user attribute that contains the user's unique email addressOptionally add other attribute mappings. instanceName also supports the First Name, Last Name, Job Title, and Department user attributes. This information is then propagated to instanceName, where it can be made available to other services, such as Automation Hub.
6. On the Feedback page, select the option you prefer.
7. Select Finish .
8. On the Sign On tab, in the Settings section, under View Setup Instructions , copy the Identity Provider metadata URL value and save it for later.
9. On the Application page for UiPath, select the newly created application.
10. On the Assignments tab, select Assign > Assign to People, and then select the users that you want to allow to use SAML authentication for instanceName. The newly added users are displayed on the People tab.
