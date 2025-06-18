# Step 1: Preparing the GCP Marketplace deployment

Before performing an Automation Suite GCP deployment, you must ensure you meet the requirements and plan accordingly.

### Prerequisites




### Quotas

The deployment provisions a configurable number of VMs with configurable types. Additionally, the templates also deploy VMs needed for node registration traffic. Those VMs have a fixed instance type.

Each project has a quota for the number of cores anyone can provision for a specific region.

If the deployment requirements put you over this quota, the deployment would fail. To prevent this, make sure you have enough room in the quota for your Automation Suite deployment.

![722f9c8-prereq3=GUID-CEAA220D-5BA5-4CF4-B173-B5C0B7279B4C=1=en=Default](/images/722f9c8-prereq3=GUID-CEAA220D-5BA5-4CF4-B173-B5C0B7279B4C=1=en=Default.png)


### VM family region availability

Make sure that the VM family region availability meets your requirements.

You can check what VM instances are available in a region at Regions and zones.


### (Optional) GPU requirements

Nodes with GPU support are recommended when using AI Center.

Ensure that the GPU you want to use and the region you are deploying satisfy these constraints and the
            instance type for the GPU nodes supports a GPU. As stated in the GCP documentation, GPUs
            are currently only supported with general-purpose N1 or accelerator-optimized A2 machine
            types.

