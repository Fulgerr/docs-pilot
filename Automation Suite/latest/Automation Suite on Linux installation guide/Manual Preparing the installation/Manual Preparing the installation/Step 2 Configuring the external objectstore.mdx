# Step 2: Configuring the external objectstore

# Supported objectstores

Automation Suite supports the following external objectstores:

* Azure Storage (Azure Blob Storage)
* AWS S3
* S3 compatible objectstore.

Only some S3-compatible objectstores are compatible with Automation Suite. Many storage providers do not fully support the S3 storage APIs required by the products installed on Automation Suite.For Automation Suite to function properly when using pre-signed URLs, you must make sure that your external objectstore is accessible from the Automation Suite cluster, browsers, and all your machines, including workstations and robot machines.When configuring the external object storage, you must follow the naming rules and conventions from your provider for both bucket_name_prefix and bucket_name_suffix. In addition to that, the suffix and prefix must have a combined length of no more than 25 characters, and you must not end the prefix or start the suffix with a hyphen (-) as we already add the character for you automatically.The Server Side Encryption with Key Management Service (SSE-KMS) can only be enabled on the Automation Suite buckets deployed in any region created after January 30, 2014.SSE-KMS functionality requires pure SignV4 APIs. Regions created before January 30, 2014 do not use pure SignV4 APIs due to backward compatibility with SignV2. Therefore, SSE-KMS is only functional in regions that use SignV4 for communication. To find out when the various regions were provisioned, refer to the AWS documentation.

# S3-compatible objectstore requirements

Your S3-compatible objectstore must have the following APIs for the products you plan to install on Automation Suite:

PlatformOrchestratorAI CenterAppsDocument UnderstandingTest ManagerData ServiceProcess MiningTask MiningInsightsGET_OBJECTHEAD_OBJECTN/AN/AN/APUT_OBJECTDELETE_OBJECTCREATE_MULTIPART_UPLOADN/AN/AN/AN/AUPLOAD_PARTN/AN/AN/AN/AUPLOAD_PART_COPYN/AN/AN/AN/AN/AN/ACOMPLETE_MULTIPART_UPLOADN/AN/AN/AN/APRESIGNED_URLN/AN/AN/AN/AN/AN/AN/AN/AN/AGET_BUCKET_LIST_OBJECTSLIST_MULTIPART_UPLOADSN/AN/AN/AN/AN/ADELETE_MULTIPLE_OBJECTSN/AN/AN/AN/AN/AN/APUT_OBJECT_COPYN/AN/AN/AN/AN/AN/AN/ALIST_PARTSN/AN/AN/AN/AN/AN/AN/AN/APUT_BUCKETN/AN/AN/AN/AN/AN/AN/AN/ALIST_BUCKETSN/AN/AN/AN/AN/AN/AN/AN/AHEAD_BUCKETN/AN/AN/AN/AN/AN/AN/AN/AN/A

# S3-compatible objectstore configuration

Make sure the following CORS policy is configured at your objectstore server or the bucket level.

This is the CORS policy in JSON format:

[
    {
        "AllowedHeaders": [
            "*"
        ],
        "AllowedMethods": [
            "POST",
            "GET",
            "HEAD",
            "DELETE",
            "PUT"
        ],
        "AllowedOrigins": [
            "https://{{fqdn}}"
        ],
        "ExposeHeaders": [
            "etag",
            "x-amz-server-side-encryption",
            "x-amz-request-id",
            "x-amz-id-2"
        ],
        "MaxAgeSeconds": 3000
    }
]

This is the CORS policy in XML format:

<CORSConfiguration>
 <CORSRule>
   <AllowedOrigin>*</AllowedOrigin>
   <AllowedMethod>HEAD</AllowedMethod>
   <AllowedMethod>GET</AllowedMethod>
   <AllowedMethod>PUT</AllowedMethod>
   <AllowedMethod>POST</AllowedMethod>
   <AllowedMethod>DELETE</AllowedMethod>
   <AllowedHeader>*</AllowedHeader>
  <MaxAgeSeconds>3000</MaxAgeSeconds>
  <ExposeHeader>x-amz-server-side-encryption</ExposeHeader>
  <ExposeHeader>x-amz-request-id</ExposeHeader>
  <ExposeHeader>x-amz-id-2</ExposeHeader>
  <ExposeHeader>etag</ExposeHeader>
 </CORSRule>
</CORSConfiguration>
