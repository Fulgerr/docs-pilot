# Removing a node from the cluster

After installing Automation Suite, you can remove any node from the cluster for machine maintenance purposes or to release unused resources. You can remove server, agent, Task Mining, and GPU nodes from the cluster.

Removing a node from the cluster is possible only on multi-node HA-ready production setups.Removing nodes from the cluster does not cause any downtime. However, it can still affect the internal caching component if HAA is not configured.The removal of the Task Mining or GPU node will not wait for already scheduled jobs, such as training pipeline or analysis. If these jobs are deleted in the process of node removal, you need to start afresh. Make sure that no processes are running on the nodes you plan to remove.

Performing the following steps would only result in the nodes being removed from the cluster. The machine will not be wiped completely, and some residues could render it unusable for further installation.

Make sure you format the machine and prepare it for installation or for adding it to an existing cluster by following the instructions in Configuring the disks.

### Requirements

To successfully remove a node from the cluster, you must meet the following requirements:

* The capacity of the resultant cluster must match the total required capacity to run the workloads scheduled before the node removal. For example, if total workloads require 32 vCPU and 64 GB memory, then after the node removal, the remaining nodes in the cluster should have at least the same amount of resources. Otherwise, you will not be allowed to remove the nodes.
* The resultant cluster must have a minimum of 3 server nodes; an odd number of server nodes is also required.
* If the setup is multizonal, the resultant cluster must have server nodes in each of the 3 zones.
* The cluster must be in a healthy state, i.e., all the nodes or pods are healthy. Pods are unhealthy when they are in any of the following states: Pending , Error , Init , Crashloopbackoff , Terminating .
* You cannot remove Task Mining and GPU nodes unless additional corresponding Task Mining and GPU nodes are available.


### Removing a node from the cluster

To remove a node from the cluster, take the following steps:

Log into any of the server nodes that you do not plan to remove, and navigate to the installer folder:cd /opt/UiPathAutomationSuiteOptionally, if you are using the online setup, execute the following command:cd online_installer_{VERSION}

# Example: if you are using version 2021.10.3 then replace {VERSION} with 2021.10.3Remove one or more nodes from the cluster by running the following command:./bin/uipathctl rke2 node remove --name [comma separated list of node names without space in quotes]

# Example: 
# ./bin/uipathctl rke2 node remove --name "server1,agent3"

The script warns you to shut down or terminate the node; it does not delete the node from the cluster until you shut down the node. The script waits for 5 minutes for the node to be shut down before timing out. The script provides instructions on which node to shut down and in what order. You can also rerun the script if you have not shut down the node in the requested time.To automate the entire node removal process, take the following steps:Add the --skip-node-deletion flag at the end of the script in step 3.Once the script is succeeded, shut down the first target node and then rerun the script, this time without --skip-node-deletion. If you have not shut down the node in the order provided to the script, then it will fail. You can always rerun the script, once the expected node is shut down.Repeat the previous step until all the nodes are removed successfully.To get the name of the nodes to remove, see How to get the node name.The removal of server nodes can take up to a few hours, and depends on the total volume of data stored in the cluster. Removing agent nodes, including Task Mining and GPU nodes, can take up to 20 mins.

