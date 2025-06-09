# Overriding cluster-level storage configuration

Orchestrator supports the following storage configurations:

* Cluster-level storage configuration
* Orchestrator-level storage configuration

We recommend using the cluster-level configuration paired with external storage. This allows Orchestrator to automatically detect and use the settings, eliminating the need for additional configuration.

### Configuring Azure/Amazon S3 storage buckets

To configure the Orchestrator-level storage provider, update the Orchestrator
            parameters by taking the following steps. For more details, see Configuring the Orchestrator
                parameters.

In the configuration file, under orchestrator, add the
                        legacy_storage_provider section that contains the storage
                    type and connection string, as shown in the following example:"orchestrator": {
  "enabled": true,
  "legacy_object_storage": {
    "type": "Azure",
    "connection_string": "DefaultEndpointsProtocol=https;AccountName=usr;AccountKey=...;EndpointSuffix=core.windows.net"
  }
}Set the desired provider using the type parameter. The
                    possible values are: Azure, AWS, and
                        Minio. A few considerations:The storage.type parameter values are
                            case-sensitive.FileSystem storage configuration is not supported.Add the connection string for the storage provider using the
                        connection_string parameter. For details on the connection
                    strings format, see the Storage.Location section of UiPath.Orchestrator.dll.config.

Orchestrator web browser access to Amazon and Azure storage buckets could be
                    restricted due to the same-origin policy on the provider side. To successfully
                    access the content of such a bucket, you must configure the respective provider
                    to allow cross-origin requests from Orchestrator. For instructions, see CORP/CSP configuration.


### Uploading files to storage

Files can be uploaded to the storage using the uipathctl command line tool. To do that, use the following command:

./bin/uipathctl config orchestrator upload [parameters]ParameterDescription--storage-directory <string>Location of the storage directory on the local disk.--nlog-extensions-directory <string>Location of the NLog extensions on the local disk.--securestore-plugins-directory <string>Location of the secure store plugins on the local disk.--is-external-storageIndicates whether the storage is external or not.--namespace <string>The namespace where Automation Suite is deployed. The default value is uipath.-h, --help Provides help for the upload command.

If you use an external storage configuration at the cluster level, you must indicate this by including the --is-external-storage parameter while using the command.

