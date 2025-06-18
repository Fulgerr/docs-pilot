# Configuring the FQDN post-installation

To update the FQDN of Automation Suite, you must update the cluster_config.json file and run the uipathctl installer.

The FQDN update process is applicable to both single-node evaluation mode and multi-node HA-ready production mode.

Changing the FQDN requires new server certificates. If a new certificate is not available, you have two options: either continue with the new self-signed certificate configured by the installer automatically, or stop the installation and bring in a new CA-issued certificate.You can configure the certificate via the server_certificate field in the
                            cluster_config.json file.

### Updating the config file with the new FQDN
    value

You must update the
        following parameters in the input.json file. Any combination of these
        values is allowed, depending on your requirements.fqdn - update this field
            with new FQDN that you need to access the cluster.We support only lowercase FQDNs. Do not use uppercase
              characters in your FQDN.fixed_rke_address - if this value is identical to the
            fqdn field in cluster_config.json,
          you must ensure the two values match to reflect the new FQDN. In case of Active/Passive
              or Active/Active setup this value must match the
            cluster_fqdn.cluster_fqdn - update this field for the Active/Passive or
            Active/Active cluster.cluster_fqdn update is required when you change the DNS
              configurations at the load balancer level for any of the clustersThe following example shows the cluster_config.json
      configuration required to update the FQDN.

{
  "fqdn": "new-automationsuite.mycompany.com" //this is the fqdn for accessing the automation suite cluster
  "fixed_rke2_address": "new-automationsuite.mycompany.com,"//this is only required for the node joining, if customer wish to change"cluster_fqdn": "new-primary-automationsuite.mycompany.com" //this is only required for the a/p or a/a cluster
}


### Running the installer at the infrastructure level

To update the FQDN at infrastructure layer, run the installer only on the the first server machine. This will update all the other nodes in the cluster, including the remaining server nodes, agent nodes, and specialized agent nodes.

To update the FQDN, run the following command:

./bin/uipathctl rke2 update-fqdn -i /path/to/cluster_config.json -o output.json --versions versions/helm-charts.json

If you run the command with the --force flag, it will override the warning prompts and perform the FQDN changes directly.

The installer warns you of the consequences of updating the FQDN. It asks for confirmation before proceeding.

[WARN]  You are about to change the FQDN of the Automation Suite Cluster.
        Changing the fqdn is a disruptive operation, and it will result in 
        disconnecting your robots, mobile orchestrator users, ML Activities, 
        and ML Skills and invalidating any pending user invites. 
        
        If you wish to continue type 'yes' and hit enter to continue.


### Running the installer for the shared components

To update the FQDN at the shared components level, run the following command:

./bin/uipathctl manifest apply /path/to/cluster_config.json --versions versions/helm-chart.json

If you run the command with the --force flag, it will override the warning prompts and perform the FQDN changes directly.The installer warns you of the consequences of updating the FQDN. It asks for confirmation before proceeding.

[WARN]  You are about to change the FQDN of the Automation Suite Cluster.
        Changing the fqdn is a disruptive operation, and it will result in 
        disconnecting your robots, mobile orchestrator users, ML Activities, 
        and ML Skills and invalidating any pending user invites. 
        If you wish to continue type 'yes' and hit enter to continue.

The installer also warns you if there is no new valid certificate related to the FQDN. If the certificate validation fails, the installer requires you to provide the new CA-issued certificate or continue with the new self-signed certificate.

************************************************************************************
[ERROR] Validating certificate... Failed
[ERROR] Certificate doesn't have new-automationsuite.mycompany.com in the SAN
************************************************************************************

Certificate provided is invalid for the new fqdn, would you like us to configure the new self signed certificate?
If you wish to continue type `yes` and hit enter to continue.

Make sure to clear all the data from your Redis database. You can do this by running the FLUSHALL command.


### Updating FQDN in an Active/Active deployment

If you change the FQDN of the primary cluster in an Active/Active setup, you need to take the following additional steps:

Generate a new kubeconfig for the primary cluster.Add the new kubeconfig in the cluster_config.json of the secondary cluster, under other_kube_config.On the secondary cluster, run the following command:uipathctl manifest apply cluster_config.json --versions versions/helm-charts.json

