# Step 15: Configuring the temporary Docker registry for offline installations

This step is needed only for offline installations that use an in-cluster registry. You can skip this step if you perform an offline installation that uses an external OCI-compliant registry, or an online installation.You must perform this step only on one of the server nodes. You must ensure that the node has an additional capacity of 512 GB to be used as a backend for the registry. This is usually recommended to be on /uipath mount point.

The temporary Docker registry is only required during installation or upgrade. Once the installation or upgrade is successful, the temporary registry is no longer needed and should be uninstalled.

## Prerequisites for setting the temporary registry

To set up the temporary registry, you need the following:

* as-fs.tar.gz - to download it, see Downloading the installation packages.


## Installing the temporary registry

To install the temporary Docker registry on one of the nodes, run the following command:

./bin/uipathctl registry install-temp-registry -i /opt/UiPathAutomationSuite/cluster_config.json


| Flag | Description |
| --- ---| -i|--input | Optional. Accepts the path to the cluster_config.json. It is only required when changing the default registry port and file path. |

By default, the temporary registry is installed on the machine on port 30070 and uses the /uipath/data/registry file path. You must open port 30070 on the load balancer and the node on which you install the temporary docker registry.

The load balancer backend pool must exclusively target the nodes hosting the temporary docker registry.

If you want to change the default temporary registry port and file path, you must update the cluster_config.json file as shown in the following sample:

{
  "infra": {
    "tmp_docker_registry": {
      "node_port": "<new port number>",
      "file_path": "/uipath/data/registry"
    }
  }
}


## Hydrating the temporary registry

After installing the temporary registry, take the following steps:

1. Hydrate the temporary registry with the container images and Helm charts by running the following command: ./bin/uipathctl registry hydrate-temp-registry --offline-bundle /uipath/tmp/as-fs.tar.gz -i cluster_config.json


| Flag | Description |
| --- ---| --offline-bundle | File path containing the location of the as-fs.tar.gz on your server node. |
| -i|--input | Optional. Accepts the path to the cluster_config.json file. It is only required when changing the default Docker registry port and file path. |

