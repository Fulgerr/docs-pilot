# Step 1: Configuring the OCI-compliant registry for offline installations

In offline installations, you need a registry compliant with OCI (Open Container Initiative) to store the container images and deployment Helm charts. If you perform an online installation, skip this step.

We strongly recommend bringing your own registry. If you do not have one available, you can temporarily install an OCI-compliant registry on one of the server machines.

## Uploading the Automation Suite artifacts to the external OCI-compliant registry

There are two ways to upload the Automation Suite artifacts to the external OCI-compliant registry:

* Option A : By mirroring your OCI-compliant registry with the UiPath® registry
* Option B : By hydrating your OCI-compliant registry with the offline bundle

The following table compares the two options to upload the artifacts to the registry so that you can choose the one that suits your needs:


| Option A: Mirroring the registry | Option B: Hydrating the registry |
| --- ---| Copies the artifacts from the UiPath® registry to any target registry. | Uses the offline tarball to untar and upload the artifacts to the target registry. |
| Requires Docker and Helm tools. | Requires Podman and Helm tools. |
| Requires internet access to copy the artifacts from the UiPath® registry to the target registry. | Requires internet access only to download the offline tarball to the jump server. Uploading the tarball does not require internet access. |
| Requires a temporary space to cache the images during the copying method. This space is usually configured during the Docker installation. The default location is /var/lib/docker. | Requires a temporary space to extract the tarball and a temporary space for Podman to load the images.The location of the tarball extraction must be provided during the hydration step. The Podman location can be /var/tmp, which must have adequate storage available. |
| The required storage capacity for the /var/lib/docker directory is around 128 GB. | The required storage capacity for the extraction is around 200 GB, and /var/tmp must be 256 GB. |

It is recommended to perform the mirroring or hydration operation from the management machine or jump box, instead of using the server nodes.


### Option A: Mirroring the UiPath® registry to your registry

This method requires internet access on the jump machine from which you upload the Automation Suite artifacts onto your OCI-compliant registry.


### Option B: Hydrating the registry with the offline bundle

This method only requires internet access on the jump machine to download the offline bundle. Once the bundle is available, you can upload to your OCI-compliant registry without an internet connection.

This method may also require additional space on the machine to un-tar and upload to your registry. In addition, this method may take longer than the mirroring approach.


## Configuring the certificate for the external OCI-compliant registry

To properly configure your external OCI-compliant registry, you must update the trust store of all the machines on which you plan to install Automation Suite. For instructions on how to perform this step post-installation, see Managing certificates.

To do that, take the following steps:

1. Add the CA file to the /etc/pki/ca-trust/source/anchors/ location.
2. Run update-ca-trust to update the trust store of the operating system. Once the trust store is updated, the extracted certificate file is merged in /etc/pki/ca-trust/extracted/ca-bundle.trust.crt .

You must provide the CA certificate during the Automation Suite installation. You must provide the certificate in the registry_ca_cert parameter in the cluster_config.json file. For details, refer to .

