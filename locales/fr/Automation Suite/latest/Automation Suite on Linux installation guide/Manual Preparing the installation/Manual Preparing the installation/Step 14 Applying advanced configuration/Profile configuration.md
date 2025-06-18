# Profile configuration

You can choose from the following profile modes when installing Automation Suite:Single node evaluation profile (default mode)Configurable high availability profile (lite mode)Standard high availability profile (HA mode)Only in lite mode you can switch specific products to high availability (HA). This flexibility allows you to start with non-critical workload, and have the freedom to easily switch to HA mode when onboarding critical ones.To enable high availability (HA) for a product, you must modify the cluster_config.json file. Specifically, you must change the profile parameter to ha for the products you want to make highly available:  ....
  "automation_ops": {
    "enabled": true,
    "profile": "ha" // flag for turning on high availability
  },
  "action_center": {
    "enabled": true,
    "profile": "lite"
  },
  ...To switch from lite mode to HA mode, take the following steps:

Make sure you have enough infrastructure capabilities to switch to standard HA at platform level. By default, lite mode sets each product to have one replica with horizontal pod scaling enabled.Edit the cluster_config.json configuration file, and make change the profile parameter for the targeted products.Decide if you want to opt for in-cluster high availability or external high availability. For HAA configuration details, refer to High Availability Add-on configuration.Run the following command:./bin/uipathctl manifest apply /opt/UiPathAutomationSuite/cluster_config.json --versions ./versions/helm-charts.json
