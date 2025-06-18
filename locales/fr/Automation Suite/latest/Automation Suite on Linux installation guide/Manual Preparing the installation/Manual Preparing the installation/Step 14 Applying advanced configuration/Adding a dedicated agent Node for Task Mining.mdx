# Adding a dedicated agent Node for Task Mining


### Hardware requirements

Before starting the Task Mining installation, make sure to check the Hardware requirements. Task Mining has a dependency on AI Center; therefore, to use Task Mining, you must also install AI Center.

After completing the Automation Suite installation, take the following steps to set up Task Mining.


### Enabling Task Mining on the cluster

You can skip this step if you have already enabled Task Mining in the configuration during the main installation. If not, you must enable AI Center and Task Mining by editing the configuration and re-running the installation.

You must enable aicenter and task_mining in the cluster_config.json file when applying the advanced configuration, as shown in the following sample:

{
    "aicenter": {
        "enabled": Boolean
    },
    "task_mining": {
        "enabled": Boolean
    }
}


### Configuring a dedicated node for Task Mining

To add a new Task Mining node to the cluster, take the following steps:

Configure the disks. Make sure to also configure the AI Center disk on the Task Mining node.Configure the node ports.Download the installation packages and get them on the Task Mining machine.Validate and install the required RPM packages.Copy the cluster_config.json file from an existing machine to the new one.Optional. If your installation is offline, and you do not have an external registry, you must configure a temporary docker registry.Validate the prerequisites for the installation.To add a new node, run the following commands:To navigate to the installer folder, run the following commands. Make sure to replace <version> with the actual installer version.chmod -R 755 /opt/UiPathAutomationSuite
cd /opt/UiPathAutomationSuite/<version>/installerTo add a new Task Mining node, run the following commands:./bin/uipathctl rke2 install -i ./cluster_config.json -o ./output.json -k -j task-mining --accept-license-agreementEnable kubectl. To set the kubectl context on the Task Mining machine, run the following command:sudo su -
export KUBECONFIG=/var/lib/rancher/rke2/agent/kubelet.kubeconfig
export PATH=$PATH:/var/lib/rancher/rke2/bin
kubectl get nodesYou should see the node and its corresponding name. You need the name of the Task Mining node for the next step.Check if the Task Mining node is configured by running the following command. Make sure to update <node name> with the name of the Task Mining node.kubectl describe node <node name> | grep -i "taints"The command should return the following output:At this point, you have successfully completed the Task Mining installation. Sign in to the Automation Suite Portal and enable Task Mining in the tenant management UX under the Admin section.


### Configuring email

You must configure system email notifications as Task Mining relies on the Automation Suite notification system to send emails.


### Starting a Task Mining project

For instructions on creating a Task Mining project, see the Task Mining documentation.


### Configuring the Task Mining ML Model in AI Center

Before proceeding with the following steps, you must follow the instructions in Uploading ML Packages.

After uploading the ML package, take the following steps:

1. Access the AI Center homepage for your tenant, and select Create Project . This project can be named anything you want, but we recommend matching it to the name of your Task Mining project.
2. From the project, navigate to the ML Packages page, and then choose Out of the box Packages .
3. Select the UiPath Task Mining package.
4. Select TMAnalyzerModel and select Submit . Please always select the latest version of the model packages.
5. Name the package, choose the most recent package version, and select Submit to create a machine-learning deployment package.

