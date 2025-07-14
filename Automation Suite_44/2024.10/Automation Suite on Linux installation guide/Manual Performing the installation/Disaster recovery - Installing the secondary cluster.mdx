# Disaster recovery - Installing the secondary cluster

To install the secondary Automation Suite cluster in an Active/Passive or Active/Active deployment, take the following steps.

1. Generate or copy the cluster_config.json file from the primary Automation Suite cluster to one of the nodes identified as the server in the secondary Automation Suite cluster. For more details, see Generating or copying the configuration file of the primary cluster.
2. Update the cluster_config.json file with the parameters specific to the secondary Automation Suite cluster.
3. Resume the Automation Suite installation.
4. Switch off inactive products if you use an Active/Passive configuration.

## Generating or copying the configuration file of the primary cluster

Generate a new cluster_config.json file or copy it from the primary cluster.

Log into any server node and become root:ssh <username>@<machine_ip>

sudo su -

export PATH=$PATH:/var/lib/rancher/rke2/bin
export KUBECONFIG=/etc/rancher/rke2/rke2.yamlGenerate the cluster_config.json file if you do not have one:./bin/uipathctl manifest get-revision >> /path/to/new/cluster_config.jsonCopy the cluster_config.json file to a server nodes in the secondary cluster:scp /path/to/new/cluster_config.json <username>@<primary_machine_ip>:<username>@<secondary_machine_ip>


## Updating the configuration file

Update the cluster_config.json file with the parameters specific to the
        secondary Automation Suite cluster by taking the following steps:

Turn off the unsupported products.Set all the products that are not supported in multi-site to
            false.For an Active/Passive
                configuration, disable the products that do not support Active/Passive. For details
                on Active/Passive support at product level, refer to the table in Disaster recovery -
                  Active/Passive. The following example shows how to disable
              products:{
  "test_manager": {
    "enabled": false
  },
  "process_mining": {
    "enabled": false
  },
  "automation_hub": {
    "enabled": false
  },
  "insights": {
    "enabled": false
  }
}Make sure that you enable the
                platform service as shown in the following
            example:  "platform": {
    "enabled": true
  },Generate the kubeconfig of the primary cluster. This is required to access a few of the
          configurations by the secondary cluster made on the primary cluster. To get the kubeconfig
          file with the limited permission related to disaster recovery, run the following
          command:./bin/uipathctl config kubeconfig get --multisiteCopy
            the value provided in the command output. This value is required in the next
          step.Update the cluster_config.json file with
          the parameters specific to the secondary cluster. For details, see Advanced installation
          experience.Generate a new GUID for rke_token to prevent the secondary cluster
          from joining the primary cluster. To do that, run the following command:LC_CTYPE=C tr </dev/urandom -dc '!@#$%q_A-Z-a-z-0-9' | head -c 16


## Resume the installation

Once the parameters in the previous step are provided or modified in the cluster_config.json, you can resume the installation as instructed in  Installing Automation
        Suite.

You must perform the Automation Suite installation using the uipathctl
        installer. Note that you do not need to generate a new cluster_config.json.


## Switching off inactive products

If you deployed Automation Suite in Active/Passive mode, you can scale down the cluster and
      switch off inactive products using the following command.

This step is not required if you
      opt for an Active/Active setup.

./bin/uipathctl config products scale-down

