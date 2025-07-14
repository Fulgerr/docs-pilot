# Step 7: Migrating standalone
        Orchestrator

To migrate standalone Orchestrator to Automation Suite, you must gather settings and various files from the standalone installation and apply them to the Automation Suite installation.

# Migrating the maximum request size

To specify a custom maximum request size, see Configuring the maximum request size.

# Migrating appSettings

To migrate custom changes made to the appSettings or secureAppSettings section of the UiPath.Orchestrator.dll.config file, you must add your custom configuration to the orchestrator-customconfig config map.

You cannot or must not migrate all custom settings. For details on which appSettings you must migrate and which not, see Orchestrator appSettings.

To apply custom appSettings to Orchestrator, see Configuring appSettings.

# Migrating the storage

By default, Orchestrator in Automation Suite uses the cluster-level storage configuration. The recommended configuration is external storage, where all tenants are stored in one bucket of a storage provider. The supported storage providers are Azure, S3, and MinIO.

To migrate FileSystem storage to cluster storage in Automation Suite, see Uploading files to storage.

To connect existing storage of type Azure, AWS S3, or S3-compatible (MinIO) to Orchestrator in Automation Suite, see Configuring Azure/Amazon S3 storage buckets. In this configuration, Orchestrator does not use the same storage as the other services in the cluster. Make sure to disconnect your previous Orchestrator from the storage account prior to configuring it with the Automation Suite, as this would prevent any potential data loss.

# Migrating NLog

You must review the NLog section of the configuration file and build the NLog custom configuration.

To enable robot logs storage in Elasticsearch, see Saving robot logs to elasticsearch

To add plugins and perform advanced NLog configuration, see Configuring NLog.

# Migrating credential stores

To migrate custom plugins for credential stores to Automation Suite, update the configuration in the config map, and copy the plugins assemblies to the corresponding object store bucket.

The following credential stores plugins are deployed to Orchestrator in Automation Suite:

* UiPath.Orchestrator.AzureKeyVault.SecureStore.dll
* UiPath.Orchestrator.SecureStore.CyberArkCCP.dll

Automation Suite does not support CyberArk AIM, so you cannot migrate it. We recommend migrating to the CyberArkCCP credential store instead.

For details on the credential store configuration in Orchestrator, see Configuring credential stores.

# Migrating the encryption key

By default, at installation time, Orchestrator generates an encryption key to be used for sensitive information in the database. You must migrate this key if you want to reuse a database on a new Orchestrator deployment.

To migrate and update the encryption key, take the following steps:

1. Decrypt the secureAppSettings section of the UiPath.Orchestrator.dll.config file, if needed. For details, see Encrypting UiPath.Orchestrator.dll.config Sections.
2. Retrieve the encryption key from UiPath.Orchestrator.dll.config. For details, see EncryptionKey.
3. Replace the encryption key in the orchestrator-generated-secrets Kubernetes secret by overwriting the value of APPSETTINGS__EncryptionKey. To do this, run the following command:ENCRYPT_KEY=$(echo <key>|base64 -w 0) kubectl -n uipath patch secret orchestrator-generated-secrets --type='json' \ -p="[{'op': 'replace', 'path': '/data/APPSETTINGS__EncryptionKey', 'value':'$ENCRYPT_KEY'}]"Make sure to replace <key> with the value of the key retrieved from UiPath.Orchestrator.dll.config.

# Migrating the encryption key per tenant

The encryption key certificate is installed in the Windows certificate store. You must provide the certificate to the Automation Suite environment so that it becomes available to the Orchestrator pods.

The CertificatesStoreLocation and Azure.KeyVault.CertificateThumbprint settings are no longer required in Automation Suite, but you can use CertificatePassword if needed.

Retrieve the from the appSettings the connection settings for the Azure Key Vault:

* Azure.KeyVault.VaultAddress
* Azure.KeyVault.ClientId
* Azure.KeyVault.DirectoryId

To configure the encryption key per tenant, see Configuring encryption key per tenant.
