# Migrating to an external OCI-compliant registry

This step is required if you want to use an external registry for the Automation Suite artifacts. This is the recommended approach and improves the overall experience of using Automation Suite because of the ease of use, global availability, security and access control, and integration.


| # | Step |
| --- ---| 1. | Update the cluster_config.json file with the external OCI-compliant registry details. For details, see Performing advanced configuration. |
| 2. | Copy the installer and cluster_config.json to the other machines. See more... |
| 3. | Configure all the nodes to use the external registry. See more... |
| 4. | Configure ArgoCD to use the external registry. See more... |
| 5. | This step depends on your migration scenario:If you migrate from an in-cluster to an external registry during an in-place upgrade, follow the steps inExecuting the upgrade.If you migrate from an in-cluster to an external registry in an existing installation, see Manual: Installing Automation Suite. |
| 6. | Uninstall the internal registry. See more... |

## Copying the installer and cluster_config.json to the other machines

If you configure the external registry during the upgrade, make sure that the installer file and cluster_config.json file are available on the first server and on all the other machines before proceeding.

FilesLocation on all the machinesas-installer/opt/UiPathAutomationSuite/latest/installercluster_config.json/opt/UiPathAutomationSuite/cluster_config.json


## Configuring all the nodes to use the external registry

To configure the nodes to use the external registry, take the following steps one by one on all the nodes in the cluster:

Set the PATH variable to use the uipathctl tool, and navigate to the installer folder:export PATH=$PATH:/opt/UiPathAutomationSuite/latest/installer/bincd /opt/UiPathAutomationSuite/latest/installerVerify the connectivity to the new registry on all nodes:./bin/uipathctl prereq run --location local --included "Registry_Connectivity" /opt/UiPathAutomationSuite/cluster_config.json --versions versions/helm-charts.jsonUpdate the containerd configuration and restart rke2 on all nodes:./bin/uipathctl rke2 generate-registries /opt/UiPathAutomationSuite/cluster_config.json --current-config-path /etc/rancher/rke2/registries.yaml > /etc/rancher/rke2/registries.yaml.tmp

mv -f /etc/rancher/rke2/registries.yaml.tmp /etc/rancher/rke2/registries.yaml

systemctl restart rke2-server || systemctl restart rke2-agentVerify that containerd can pull images after the configuration update on all the server nodes:./bin/uipathctl prereq run --location local --included "Registry_Pull" /opt/UiPathAutomationSuite/cluster_config.json --versions versions/helm-charts.json


## Configuring ArgoCD to use the external registry

To configure ArgoCD to use the external registry, take the following steps:

Update the ArgoCD registry configuration on any of the server nodes by running the following commands on any server node:export PATH=$PATH:/opt/UiPathAutomationSuite/latest/installer/bincd /opt/UiPathAutomationSuite/latest/installerBack up and update the registry configuration. This is needed to maintain connectivity with the old registry during the migration.kubectl get secret helm-credentials -n argocd -o json | \
 jq '.metadata = {name: "old-helm-credentials", namespace: .metadata.namespace, labels: .metadata.labels}' | \
 kubectl apply -f -

./bin/uipathctl config argocd registry update --host <OCI_registry_host> --username <optional_username> --password <optional_password>Update the trusted CA certificates, if needed:./bin/uipathctl config argocd ca-certificates update --cacert rootCA.crtVerify that ArgoCD can create an empty application after the configuration update on any node:./bin/uipathctl health test --versions versions/helm-charts.json --included argocd

