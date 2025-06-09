# Setting up encryption key per tenant

It is possible to use Microsoft Azure Key Vault to encrypt each tenant in your Orchestrator instance with its own unique key. Orchestrator uses the Key Vault to store and manage the keys in a safe manner, ensuring better segregation of your data between tenants.

Orchestrator installed in Automation Suite can take advantage of this feature, but you must connect the Orchestrator app to the internet and Azure Key Vault.

## Overview

Orchestrator authentication is needed to use Azure Key Vault via App Registrations. App Registrations can grant a series of privileges to applications. In our case, Orchestrator is the application, and Azure Key Vault is the targeted privilege.

You first need to configure App Registrations access to Azure Key Vault. Orchestrator authentication with App Registrations is possible using the SSL private key of a certificate with the SSL public key uploaded to App Registrations. After configuring the App Registrations and Key Vault, you need to make some changes to orchestrator-customconfig configmap used in the Automation Suite cluster, and modify the relevant ArgoCD parameters for the Orchestrator app form the ArgoCD UI. Once these criteria are met, Orchestrator can use Azure Key Vault to encrypt each tenant.


## Prerequisites

* Your own Microsoft Azure Key Vault
* A clean Orchestrator installation in Automation Suite
* A valid SSL certificate: Private Key Certificate — It needs to be uploaded in App Services > SSL Settings > Private Key CertificatesPublic Key Certificate — It needs to be uploaded in App registrations > Settings > Keys > Public Keys
* (Optional) A self-signed certificate

To convert the .pfx certificate file to base64, run the following command:

* PowerShell: [convert]::ToBase64String((Get-Content -path "path_to_certificate" -Encoding byte))
* Shell: base64 [_path_to_certificate_]

Encryption keys must not be edited on the Azure Key Vault side by users, such as enabling/disabling secrets or editing the activation date and expiration date. If a secret is disabled, data stored by Orchestrator for that tenant is no longer decrypted.


## App registrations steps

In Azure Portal's App Registrations pane, follow these steps:

Create a new app registration.
Copy the Application (Client) ID for later use.Go to Manage > Certificates & Secrets and upload the public SSL certificate key mentioned in the prerequisite.


## Azure Key Vault steps

In the Azure Key Vault, do the following:

Access the Key Vaults Overview page and copy the DNS name for later use.Go to the Key Vaults page and select Settings > Access policies.Select Add access policy.From the Configure from template (optional) drop-down menu, select Key, Secret, & Certificate Management.Select None selected in the Authorized application section to enable the Select principal field.Enter the app registration name, confirm that the Application ID is correct, and select this principal. Select Add.


## Orchestrator custom configuration steps

Make the following configuration changes to Orchestrator:

Configure Azure Key Vault for Orchestrator Instance from ArgoCD UI Parameters: Copy the base64 form of the certificate and provide it as a value for the encryptionKeyPerTenant.certificateBase64 parameter.Copy the certificate password, if any, and provide it as a value for the encryptionKeyPerTenant.certificatePassword parameter.Copy the Input Application (Client) ID from the App Registrations page and provide it as a value for the encryptionKeyPerTenant.clientId parameter.Copy the Directory (tenant) ID of your organization from the App Registrations page and provide it as a value for the encryptionKeyPerTenant.directoryId parameter.Copy the DNS Name from the Key Vaults Overview page and provide it as a value for the encryptionKeyPerTenant.vaultAddress parameter.Update the orchestrator-customconfig configmap's AppSettings section as follows to enable the encryption key per tenant feature:Set EncryptionKeyPerTenant.Enabled to true.Set EncryptionKeyPerTenant.KeyProvider to AzureKeyVault.This can be done via the  or by updating the configmap using Lens.Restart the Orchestrator Automation Suite deployment from the cluster for the changes to take effect.

If you are migrating from standalone Orchestrator to Automation Suite, SMTP settings in Identity Server are not encrypted with the per-tenant key. Once the migration is complete, make sure to re-enter the SMTP password in the Automation Suite portal.

