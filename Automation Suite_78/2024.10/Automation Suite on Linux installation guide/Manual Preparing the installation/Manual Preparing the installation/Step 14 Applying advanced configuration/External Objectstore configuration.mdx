# External Objectstore configuration


### General configuration

Automation Suite allows you to bring your own external storage provider. You can choose
            from the following storage providers:

* Azure
* AWS
* S3-compatible

You can configure the external object storage in one of the following ways:

* during installation;
* post-installation, using the cluster_config.json file.

The Server Side Encryption
                        with Key Management Service (SSE-KMS) can only be enabled on the Automation
                        Suite buckets deployed in any region created after January 30,
                        2014.SSE-KMS functionality requires pure SignV4 APIs. Regions created
                        before January 30, 2014 do not use pure SignV4 APIs due to backward
                        compatibility with SignV2. Therefore, SSE-KMS is only functional in regions
                        that use SignV4 for communication. To find out when the various regions were
                        provisioned, refer to the AWS documentation.

The following table lists out the cluster_config.json parameters you can use to configure each provider of
            external object storage:


| Parameter | Azure | AWS | S3-compatible | Description |
| --- --- --- --- ---| external_object_storage.enabled |  |  |  | Specify whether you would like to bring your own                                 object store. Possible values: true and                                     false. |
| external_object_storage.create_bucket |  |  |  | Specify whether you would like to provision the                                 bucket. Possible values: true and                                     false. |
| external_object_storage.storage_type |  |  |  | Specify the storage provider you would like to                                 configure. The value is case-sensitive. Possible values:                                     azure and s3.Many S3                                 objectstores require the CORS set to all the traffic from the                                 Automation Suite cluster. You must configure the CORS policy at the                                 objectstore level to allow the FQDN of the cluster. |
| external_object_storage.fqdn |  |  |  | Specify the FQDN of the S3 server. Required in the                                 case of AWS instance and non-instance profile. |
| external_object_storage.port |  |  |  | Specify the S3 port. Required in the case of AWS                                 instance and non-instance profile. |
| external_object_storage.region |  |  |  | Specify the AWS region where buckets are hosted.                                 Required in the case of AWS instance and non-instance                             profile. |
| external_object_storage.access_key |  |  |  | Specify the access key for the S3 account. Only required in the case of the AWS non-instance                                 profile. |
| external_object_storage.secret_key |  |  |  | Specify the secret key for the S3 account. Only                                 required in the case of the AWS non-instance profile. |
| external_object_storage.use_instance_profile |  |  |  | Specify whether you want to use an instance profile.                                 An AWS Identity and Access Management (IAM) instance profile grants                                 secure access to AWS resources for applications or services running                                 on Amazon Elastic Compute Cloud (EC2) instances. If you opt for AWS                                 S3, an instance profile allows an EC2 instance to interact with S3                                 buckets without the need for explicit AWS credentials (such as                                 access keys) to be stored on the instance. |
| external_object_storage.use_managed_identity |  |  |  | Use managed identity with your Azure storage account.                                 Possible values: true and                                 false. |
| external_object_storage.bucket_name_prefix1 |  |  |  | Indicate the prefix for the bucket names. Optional in                                 the case of the AWS non-instance profile. |
| external_object_storage.bucket_name_suffix2 |  |  |  | Indicate the suffix for the bucket names. Optional in                                 the case of the AWS non-instance profile. |
| external_object_storage.account_key |  |  |  | Specify the Azure account key. Only required when using non-managed identity. |
| external_object_storage.account_name |  |  |  | Specify the Azure account name. |
| external_object_storage.azure_fqdn_suffix |  |  |  | Specify the Azure FQDN suffix. Optional                                 parameter. |
| external_object_storage.client_id |  |  |  | Specify your Azure client ID. Only required when                                 using managed identity. |

1 If you plan on disabling pre-signed URL access, note that this
            configuration is not supported by Task Mining and the following activities that upload
            or retrieve data from the objectstore:

* Write Storage Text
* Upload Storage File
* List Storage Files
* Read Storage Text
* Download Storage File
* Delete Storage File

2, 3 When configuring the external object storage, you must follow the naming
            rules and conventions from your provider for both bucket_name_prefix
            and bucket_name_suffix. In addition to that, the suffix and prefix must
            have a combined length of no more than 25 characters, and you must not end the prefix or
            start the suffix with a hyphen (-) as we already add the character for
            you automatically.


### Product-specific configuration

You can use the parameters described in the General configuration section to update the general Automation Suite configuration. This means that all installed products would share the same configuration. If you want to configure one or more products differently, you can override the general configuration. You just need to specify the product(s) you want to set up external object storage for differently, and use the same parameters to define your configuration. Note that all the other installed products would continue to inherit the general configuration.

The following example shows how you can override the general configuration for Orchestrator:

"external_object_storage": {
  "enabled": false, // <true/false>
  "create_bucket": true, // <true/false>
  "storage_type": "s3", // <s3,azure,aws>
  "fqdn": "",  // <needed in the case of aws instance and non-instance profile>
  "port": 443, // <needed in the case of aws instance and non-instance profile>
  "region": "", 
  "access_key": "", // <needed in the case of aws non instance profile>
  "secret_key": "", // <needed in the case of aws non instance profile>
  "use_managed_identity": false, // <true/false>
  "bucket_name_prefix": "",
  "bucket_name_suffix": "",
  "account_key": "", // <needed only when using non managed identity>
  "account_name": "",
  "azure_fqdn_suffix": "core.windows.net",
  "client_id": "" // <optional field in case of managed identity>
},

"orchestrator": {
  "external_object_storage": {
    "enabled": false, // <true/false>
    "create_bucket": true, // <true/false>
    "storage_type": "s3", // <s3,azure>
    "fqdn": "",  // <needed in the case of aws instance and non-instance profile>
    "port": 443, // <needed in the case of aws instance and non-instance profile>
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
  }
}


### Rotating the blob storage credentials for Process Mining

To rotate the blob storage credentials for Process Mining in Automation Suite the stored secrets must be updated with the new credentials. See Rotating blob storage credentials.


### Configuring the external objectstore for Insights

When configuring the external objectstore for Insights, if the create_bucket parameter is set to false, you must ensure the bucket_name value you use for Insights is the same as the one for Platform. If create_bucket is set to true, no action is required from your side.

"insights": {
    "enabled": true,
    "external_object_storage": {
      "bucket_name": "<same_as_platform_bucket_name"
    }
  },

