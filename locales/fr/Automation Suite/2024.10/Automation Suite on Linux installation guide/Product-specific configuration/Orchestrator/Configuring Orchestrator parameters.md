# Configuring Orchestrator parameters


### Manifest configuration

Follow these steps to edit the Orchestrator manifest configuration:

Edit the cluster_config.json fileFor details, see Applying advanced configuration.Add or edit the desired settings in the orchestrator section. For details on the Ochestrator-specific configuration, see Orchestrator configuration.Run this command:./bin/uipathctl manifest apply cluster_config.json --versions versions/helm-chart.json --kubeconfig kubeconfig.yaml --only orchestrator


### Custom Orchestrator configuration

You can use this command to edit the Orchestrator custom configuration for both appSettings and NLog:./bin/uipathctl config orchestrator

# Custom Orchestrator scenarios

You can modify various Orchestrator parameters using uipathctl. This enables the following configuration scenarios:Overriding cluster-level storage configurationSaving robot logs to ElasticsearchConfiguring encryption key per tenantConfiguring NLogConfiguring credential stores

