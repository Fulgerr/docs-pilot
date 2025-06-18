# Configuring SSO: SAML 2.0

You can enable SSO using any identity provider that supports the SAML 2.0 authentication protocol.

### Overview

Enabling SAML SSO is a multi-step process and you must complete the following configuration:

Configure your identity provider to recognize the UiPath platform as a service provider. Configure the UiPath platform as a service provider to
                    recognize and trust your identity provider. Provision users to your organization to allow them to log in with SSO using the SAML 2.0 protocol from your identity provider.


### Step 1. Configure your identity provider

UiPath supports multiple identity providers.

In this section, we exemplify how to find the specific configuration and obtain the certificates for each of the following identity providers:

* ADFS
* Google
* Okta
* PingOne


### Step 2. Configure instanceName

To enable instanceName as a service provider that recognizes your identity provider:

Log in to the hostPortalName as a system administrator.Make sure that Host is selected at the top of the left pane and then select Security.Select Configure under SAML SSO and follow the instructions for the identity provider that you use:To configure SAML for ADFS:Select the Enabled checkbox.Select the Force automatic login using this provider checkbox if you want to only allow login with Active Directory accounts.In the Display Name field, type the text you want to show under this login option on the Login page.In the Service Provider Entity ID field, type {baseURL_identity}.In the Identity Provider Entity ID field, paste the value obtained while configuring ADFS authentication.In the Single Sign-On Service URL field, paste the value obtained while configuring ADFS authentication.Select the Allow unsolicited authentication response checkbox.In the Return URL field, type {baseURL_identity}/externalidentity/saml2redirectcallback.Set the external user mapping strategy parameter to By user e-mail.For the SAML binding type, select HTTP redirect.In the Signing Certificate field, paste the certificate text.To configure SAML for Google:Select the Enabled checkbox.Select the Force automatic login using this provider checkbox if you want to only allow login with Active Directory accounts.In the Display Name field, type the text you want to show under this login option on the Login page.In the Service Provider Entity ID field, type {baseURL_identity}.In the Identity Provider Entity ID field, paste the Entity ID value obtained while configuring Google authentication.In the Single Sign-On Service URL field, paste the SSO URL value obtained while configuring Google authentication.Select the Allow unsolicited authentication response checkbox.In the Return URL field, type {baseURL_identity}/externalidentity/saml2redirectcallback.For External user mapping strategy, select By user e-mail.For SAML binding type, select HTTP redirect.In the Signing Certificate field, paste the Certificate value obtained while configuring Google.To configure SAML for Okta:Select the Enabled checkbox.Select the Force automatic login using this provider checkbox if you want to only allow login with Active Directory accounts.In the Display Name field, type the text you want to show under this login option on the Login page.In the Service Provider Entity ID field, type {baseURL_identity}.In the Identity Provider Entity ID field, paste the Identity Provider Issuer value obtained while configuring Okta.In the Single Sign-On Service URL field, paste the Identity Provider Sign-On URL value obtained while configuring Okta.Select the Allow unsolicited authentication response checkbox.In the Return URL field, type {baseURL_identity}/externalidentity/saml2redirectcallback.For SAML binding type, select HTTP redirect.In the Signing Certificate field, paste the X.509 Certificate value obtained while configuring Okta.To configure SAML for PingOne:Select the Enabled checkbox.Select the Force automatic login using this provider checkbox if you want to only allow login with Active Directory accounts.In the Display Name field, type the text you want to show under this login option on the Login page.In the Service Provider Entity ID field, paste your Automation Suite URL in the format {baseURL_identity}.In the Identity Provider Entity ID field, paste the Issuer ID value obtained while configuring PingOne.Set the Single Sign-On Service URL parameter to the Single SignOn URL value obtained while configuring PingOne.Select the Allow unsolicited authentication response checkbox.In the Return URL field, type {baseURL_identity}/externalidentity/saml2redirectcallback.For the External user mapping strategy, select By user e-mail.For the SAML binding type, select HTTP redirect.In the Signing Certificate field, paste the value obtained while configuring PingOne.Select Save to save the changes and return to the previous page.Select the toggle to the left of SAML SSO to enable the integration.Restart the 'identity-service-api-*' pod. This is required after making any changes to external providers.Connect to the primary server using SSH.Run the following command:kubectl -n uipath rollout restart deployment identity-service-api


### Step 3. Optional settings

The following configuration is optional and is only required if you want to use one or both
			advanced security features.

