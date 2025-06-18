# Configuring SSO: Google

By configuring and enabling Google as an external identity provider in instanceName, you add an option for Google authentication to the Login
            page.

### Step 1. Create a Google OAuth Client ID

Prior to enabling Google SSO, you must create authorization credentials for Orchestrator from the Google Console.

Integrate Google Sign-In and create an OAuth client ID as follows:For the Authorized redirect URI, add the  {baseURL_identity}
                        URL, plus the suffix /google-signin. For example,
                                {baseURL_identity}/google-signin.Save the Client ID and Client Secret. You'll use them later when you enable Google SSO from the Management portal.


### Step 2. Configure Google SSO

Now you must configure Google as an external identity provider in instanceName.

Log in to the hostPortalName as a system administrator.Select Security. The Security Settings window opens.Select Configure under Google SSO.If you want to only allow logging in to instanceName via Google SSO, select the Force automatic login using this provider checkbox. In the Display Name field, type the label you want to appear under the Google authentication button on the Login page. In the Client ID field, paste the value obtained from the Google Console. In the Client Secret field, paste the value obtained from the Google Console. Select Save to save the changes to the external identity provider settings.The page closes and you return to the Security Settings page.Select the toggle to the left of SAML SSO to enable the integration.Restart the IIS site. This is required after making any changes to external providers.


### Step 3. Allow Google SSO for the Organization

Now that instanceName is integrated with Google Sign-In, user accounts that have a valid Google email address can use the Google SSO option on the Login page to sign in to instanceName.Each organization administrator must do this for their organization/tenant if they want to allow login with Google SSO.

Log in to instanceName as an administrator. Add local user accounts, each with a valid Google email address.

