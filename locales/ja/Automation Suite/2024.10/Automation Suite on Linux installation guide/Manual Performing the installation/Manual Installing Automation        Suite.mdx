# Manual: Installing Automation
        Suite

The following table lists the steps you must perform for Automation Suite
            installation:


| Steps | Single-node                                     installation | Multi-node                                     installation | Lite                                     mode |
| --- --- --- ---| Prerequisite |  |  |  |
| Step 1:                                 Accepting the license agreement |  |  |  |
| Step 2:                                 Installing the Infrastructure on the first server                             machine |  |  |  |
| Step 3:                             Installing the infrastructure on the other server machines |  |  |  |
| Step 4:                             Installing the infrastructure on all the agent machines |  |  |  |
| Step 5:                             Hydrating the in-cluster registry for offline installations |  |  |  |
| Step 6:                             Completing the installation |  |  |  |

## Prerequisite

Configure the KUBECONFIG environment variable to point to the RKE2
            Kubernetes configuration file and update the PATH environment variable
            to include the RKE2 tools directory using the following export commands:

export KUBECONFIG=/etc/rancher/rke2/rke2.yaml 
export PATH=$PATH:/var/lib/rancher/rke2/bin


## Step 1: Accepting the license agreement

Before running the installation, make sure to read the license agreement.

To accept the license agreement, choose one of the following methods:

Option 1 (Environment variable) - Set the LICENSE_AGREEMENT environment variable to accept by running the following command:export LICENSE_AGREEMENT=acceptOption 2 (Inline parameter) - Append --accept-license-agreement to every execution of uipathctl.


## Step 2: Installing the infrastructure on the first server machine

To install the infrastructure on the first server machine, navigate to the installer folder and run the following command:

cd /opt/UiPathAutomationSuite/<version>/installer

./bin/uipathctl rke2 install -i /opt/UiPathAutomationSuite/cluster_config.json -o ./output.json -k --accept-license-agreement

The -k parameter installs the infrastructure on the first server machine.Once the infrastructure is installed, the server machine becomes a node in the Automation Suite cluster.


## Step 3: Installing the infrastructure on the other server machines

To expand the Automation Suite cluster, install the infrastructure on the additional server machines.

To do that, run the following command on all the additional server machines:

cd /opt/UiPathAutomationSuite/<version>/installer
 
./bin/uipathctl rke2 install -i /opt/UiPathAutomationSuite/cluster_config.json -o ./output.json -k -j server --accept-license-agreement

The -j server parameter adds the machines as server nodes to the existing Automation Suite cluster. The fixed_rke_address flag in the cluster_config.json file connects the exiting Automation Suite cluster.


## Step 4: Installing the infrastructure on all the agent machines

If you have additional agent machines, you must install the infrastructure on those machines and add them as agent nodes to the Automation Suite cluster.

To to that, run the following command on all the agents machines:

cd /opt/UiPathAutomationSuite/<version>/installer

./bin/uipathctl rke2 install -i /opt/UiPathAutomationSuite/cluster_config.json -o ./output.json -k -j agent --accept-license-agreement

The -j server parameter adds the machines as server nodes to the existing Automation Suite cluster. The fixed_rke_address flag in the cluster_config.json file connects the exiting Automation Suite cluster.


## Step 5: Hydrating the in-cluster registry
        for offline installations

This step is required only if you use in-cluster registry for offline installations.

To seed the in-cluster registry from the temporary registry, run the following
            command:

cd /opt/UiPathAutomationSuite/<version>/installer
./bin/uipathctl rke2 registry hydrate-registry /opt/UiPathAutomationSuite/cluster_config.json

If you are setting up Automation Suite with Document Understanding modern projects
            enabled, use the --serial option with the hydrate-registry command to
            prevent out of memory issues:

./bin/uipathctl rke2 registry hydrate-registry /opt/UiPathAutomationSuite/cluster_config.json --serial


## Step 6: Completing the installation

At this point, all the nodes should be interconnected to establish the infrastructure for installing Automation Suite.

To complete the installation, take the following steps:

1. Verify if all nodes are available on the first server node, by running the following command: kubectl get nodesThe output of the aforementioned command should look
                    similar to the one shown in the following image. Note that the total number of
                    nodes must match the sum of server and agent nodes.
2. Create the prerequisites required for the shared components installation, by running the following command: ./bin/uipathctl prereq create cluster_config.json --versions versions/helm-charts.json These are primarily object storage buckets and SQL databases. The SQL databases required for the installation are created on the SQL server if the sql.create_db key is set in the config file. The object storage buckets are created in the cloud provider if the object_storage.create_bucket key is set in the config file.
3. Validate the prerequisites required by the shared components installation, by running the following command: ./bin/uipathctl prereq run cluster_config.json --versions versions/helm-charts.json
4. After verifying the infrastructure, install the shared components and the services by running the following command: ./bin/uipathctl manifest apply /opt/UiPathAutomationSuite/cluster_config.json --versions ./versions/helm-charts.json

