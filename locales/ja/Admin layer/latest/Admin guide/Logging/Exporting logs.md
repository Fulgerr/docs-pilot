# Exporting logs

This feature is only available if you are on the Enterprise licensing plan.

## Configuring robot logs export

To export Robot logs generated in your Orchestrator services to Azure, AWS S3, and Google Cloud Storage, follow the specific procedures described further. Logs are saved in a .csv file in the uipathrobotlogs container. The export is done on a per-tenant basis which facilitates the following:To export Robot logs generated in your Orchestrator services to Azure, follow the specific procedures described further. Logs are saved in a .csv file in the uipathrobotlogs container. The export is done on a per-tenant basis which facilitates the following:Storing logs that must be retained for compliance and audit purposes. Analyzing and visualizing log output in your own reporting or BI tools.When configuring the log export page, we do not support backfilling of 30 days worth of logs.

Log in to your Automation Cloud account.Log in to your Automation Cloud Public Sector account.Log in to your {Delivery option} account.Navigate to Admin and select the tenant in the panel on the left.Select Services.On the card for Orchestrator, select the More icon and select Log Export Configuration.The Configuration panel opens at the right of the window.Enable the Send robot logs to custom storage toggle. Continue using procedure described in the Azure section.From the Storage Type drop-down, select the storage provider you want to export logs to. The following options are available:AzureAWS S3Google Cloud StorageThe log export feature does not support AWS KMS.After performing the provider-specific steps, the .csv is generated.Download .csv exampleLogs will be delivered on an hourly basis. This time interval is not configurable.


### Azure

You can configure static IPs to the allowlist and not open your network
                to all external IPs. Go to SettingsNetworkingPublic access FirewallAddress range in Azure Blob Storage to add the static IPs. Check the Configuring the
                    firewall page for the full list of IPs. The following storage options are supported:Standard locally-reduntant storage (LRS)Standard geo-redundant storage (GRS)Standard read-access geo-redundant storage (RA-GRS)Standard zone-redundant storage (ZRS)Premium LRSFor more information on types of storage, check the Storage account overview page from the
            official Azure documentation.

From the Storage Type drop-down, select Azure Storage Account.In the Azure Blob Connection String field, enter the blob connection string as retrieved from Azure Portal.On the Container Name field, enter the name of the container used to store the .csv in Azure. By default, that is uipathrobotlogs. If a custom container name is provided and it does not yet exist, the container will be created for you.Select Save. A notification is displayed letting you know that you successfully configured robot logs export.In your Blob Storage Account in Azure Portal:Select Network under Settings in the left-hand panel.Select Allow access from > All networks. Select Save to save the changes.Within an hour, a .csv log file is generated in the blob storage. The .csv is generated in the uipathrobotlogs container, under the following folder hierarchy [tenant_key]/[year]/[month]/[day]/[hour]/output. It is recommended to map one tenant to a container, as the tenant key is the only way to distinguish between tenants if multiple are routed to one container.


### AWS S3

You can configure static IPs to the allowlist and
                not open your network to all external IPs. Use access policies in AWS S3 to add deny
                all requests unless it is from the aws:SourceIp list as described
                in the Bucket policies for Amazon S3 page from
                the AWS S3 user guide. Check the Configuring the
                    firewall page from the Automation Cloud admin guide for the full list of
                IPs.

From the Storage Type drop-down, select AWS S3.In the Bucket Name field, enter the name of the bucket as configured in AWS.The same bucket name cannot be shared by multiple organizations.In the Region Name field, enter the name of the regions where logs are to be exported. E.g., us-west-1.Make sure to grant the IAM user provided via the prompt s3:PutObject and s3:DeleteObject access to your bucket.


### Google Cloud Storage

From the Storage Type drop-down, select Google Cloud Storage.In the Bucket Name field, enter the name of the bucket as configured in Google Cloud Platform.The same bucket name cannot be shared by multiple organizations.Grant the appropriate access to the UiPath service account, as specified in the following prompt:In Google Cloud Platform, navigate to Storage > Browser.Find the bucket for which you want to edit permissions.Select the vertical ellipsis and select Edit Bucket Permissions.Select Add members and enter the service account you use to access the bucket.From the Select a role drop-down, select Storage Object Admin. For more information, refer to Identity and Access Management in the GCP documentation.


## Deleting log export settings

Expand the tenant you want to delete log export settings for. For the Orchestrator service in that tenant, select Log Export Configuration. The Configuration right-hand panel is displayed.Disable the Send robot logs to custom storage toggle.On the Delete Configuration window, select Delete to confirm. The configuration is successfully deleted.

