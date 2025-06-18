# Update objectstore credentials

# Generating the cluster_config.json file

Generate the latest cluster_config.json file using the following command:

./bin/uipathctl manifest get-revision >> ./cluster_config.json

For details on how to configure the cluster_config.json parameters, see Advanced installation experience.

# Providing the new credentials

Update the following section in the cluster_config.json file with the new access_key, secret_key or acount_key and account_name:

"external_object_storage": {
  "enabled": false, // <true/false>
  "create_bucket": true, // <true/false>
  "storage_type": "s3", // <s3,azure,aws>
  "fqdn": "",  // <needed in case of aws non instance profile>
  "port": 443, // <needed in case of aws non instance profile>
  "region": "", 
  "access_key": "", // <needed in case of aws non instance profile>
  "secret_key": "", // <needed in case of aws non instance profile>
  "use_managed_identity": false, // <true/false>
  "bucket_name_prefix": "",
  "bucket_name_suffix": "",
  "account_key": "", // <needed only when using non managed identity>
  "account_name": "",
  "azure_fqdn_suffix": "core.windows.net",
  "client_id": "" // <optional field in case of managed identity>
},

# Running the installer

To run the installer, use the following command:

cd /opt/UiPathAutomationSuite/{version}/installer

./bin/uipathctl manifest apply ./cluster_config.json --versions versions/helm-charts.json
