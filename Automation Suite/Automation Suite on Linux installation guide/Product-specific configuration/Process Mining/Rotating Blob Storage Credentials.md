# Rotating Blob Storage Credentials


### Introduction

To rotate the blob storage credentials for Process Mining in Automation Suite an administrator will need to have access to the Kubernetes cluster secrets using either kubectl, oc, lens, or another tool. The stored secrets must be updated with the new credentials, and the pods for Airflow and Process Mining need to be restarted to make sure all pods for these service receive the new credentials.

The storage credentials need to be updated in the UiPath namespace.

The stored secret values are base 64 encoded. If using kubectl you will need to encode the values before updating them in the cluster. If using Lens (k8slens) then the Lens tooling can do the decode/encode automatically.


### Ceph Secrets

UiPath Namespace

processmining-service-rook-ceph-secret.OBJECT_STORAGE_ACCESSKEY

processmining-service-rook-ceph-secret.OBJECT_STORAGE_SECRETKEY


### Minio Secrets:

UiPath Namespace

processmining-external-storage-secret.ACCESSKEY

processmining-external-storage-secret.SECRETKEY


### S3 Secrets:

UiPath Namespace

processmining-external-storage-secret.ACCESSKEY

processmining-external-storage-secret.SECRETKEY


### Azure Secrets:

UiPath Namespace

processmining-external-storage-secret.ACCOUNTNAME

processmining-external-storage-secret.ACCOUNTKEY

Azure connection string is URL encoded; the string will need to be decoded, have the access key updated, then re-encoded.

urlencode -d "wasb%3A%2F%2Fazureuser%40%3Fextra__wasb__connection_string%3DDefaultEndpointsProtocol%3Dhttps%3BEndpointSuffix%3Dcore.windows.net%3BAccountName%3Dazureuser%3BAccountKey%3DACCOUNT_KEY%3BBlobEndpoint%3Dhttps%3A%2F%2Fexample.blob.core.windows.net%2F%3BFileEndpoint%3Dhttps%3A%2F%2Fexample.file.core.windows.net%2F%3BQueueEndpoint%3Dhttps%3A%2F%2Fexample.queue.core.windows.net%2F%3BTableEndpoint%3Dhttps%3A%2F%2Fexample.table.core.windows.net%2F%26extra__wasb__sas_token%3D%26extra__wasb__shared_access_key%3D%26extra__wasb__tenant_id%3D"
urlencode "wasb://azureuser@?extra__wasb__connection_string=DefaultEndpointsProtocol=https;EndpointSuffix=core.windows.net;AccountName=azureuser;AccountKey=ACCOUNT_KEY;BlobEndpoint=https://example.blob.core.windows.net/;FileEndpoint=https://example.file.core.windows.net/;QueueEndpoint=https://example.queue.core.windows.net/;TableEndpoint=https://example.table.core.windows.net/&extra__wasb__sas_token=&extra__wasb__shared_access_key=&extra__wasb__tenant_id="

