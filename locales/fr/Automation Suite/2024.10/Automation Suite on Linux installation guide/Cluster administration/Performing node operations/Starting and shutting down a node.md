# Starting and shutting down a node

This page explains the manual and automatic startup and shutdown behavior of Automation Suite.

You must always proceed by shutting down one node, performing the required operation, waiting until the node is healthy, and then taking down the other node to perform the same operation.

The following table describes different scenarios you may experience when shutting down cluster services or nodes. The table provides detailed actions you must take for each situation, alongside guidance on understanding the expected behavior in response to these actions.

ScenarioActionExpected behaviorShutting down cluster services on one node without turning off the node, for maintenance or any other reason.Manually run the shutdown steps.Restart the services by using the manual startup or by rebooting the machine.In an HA scenario, most services will remain up. The node should start up without any issue and any down services should restart.Shutting down all cluster services without turning off nodes, for maintenance or any other reason.On all nodes, starting with the agent nodes, manually run the shutdown steps.Restart the services either by using the manual startup or by rebooting the machines, beginning with the server nodes.Services will become unavailable. Nodes should startup without issue.Shutting down all nodes.If your hypervisor management portal (such as VMware, AWS) allows for services to graceful shutdown without force terminating the machine, carry out a normal shutdown. By default, systemd subsystem allows a grace period for services to shutdown before they are forcefully terminated. However, if your system overwrites configured shutdown times, it may interfere with a graceful shutdown.For example, on AWS, the platform can force terminate a VM after two minutes. As such, the services must be shut down manually as a node drain can take up to 5 minutes (this is a requirement of a graceful shutdown).If the shutdown is graceful, the nodes should start up without issue.Shutting down an individual node.If your hypervisor management portal (such as VMware, AWS) allows for services to graceful shutdown without force terminating the machine, carry out a normal shutdown. By default, systemd subsystem allows a grace period for services to shutdown before they are forcefully terminated. However, if your system overwrites configured shutdown times, it may interfere with a graceful shutdown.For example, on AWS, the platform can force terminate a VM after two minutes. As such, the services must be shut down manually as a node drain can take up to 5 minutes (this is a requirement of a graceful shutdown).If the shutdown process is not forceful, the node should reboot without any issues.Forcefully terminating a server node.Not applicable.In most cases the node will start up, but there may be problems with some services that use persistent data. Although these issues are typically recoverable, setting up backups is strongly recommended.The insights pod will not restart until the original node is back online, in order to prevent potential data loss. If the node is not recoverable, contact the support team.

# Startup behavior

The rke2-service starts and is followed by node-drainer and node-uncordon. node-drainer does not do any action at startup, just returns confirmation that the service is up.

The node-uncordon only runs once and starts /opt/node-drain.sh nodestart, which uncordons the node. As part of the drain procedure that occurs at shutdown, this cordons the node, making it unschedulable. This state persists when the rke2 service starts. As such, the node must be uncordoned after rke2-service restarts.

Manual startup

The service starts automatically with Automation Suite. However, if rke2-service was manually stopped, you must start the service again by running the following commands:Start the Kubernetes process running on the server node: systemctl start rke2-serverStart the Kubernetes process running on the server node: systemctl start rke2-agentOnce the rke2 service is started, uncordon the node to ensure Kubernetes can now schedule workloads on this node:systemctl restart node-uncordonOnce the node is started, you must drain the node:systemctl start node-drain.serviceSkipping step 4 could cause the Kubelet service to shut down in an unhealthy way if the system is restarted.

# Shutdown behavior

During shutdown, systemd stops the services in the order they were started. Since the node-drain service has the After=rke2-server.service or After=rke2-agent.service directive, it executes its shutdown sequence before the rke2-service shutdown. This means that, in a properly configured system, simply gracefully shutting down the node is a safe operation.

Manual restart

If you plan to stop the rke2 service and reboot the machine, take the following steps:

1. To ensure that the cluster is healthy while performing node maintenance activity, you must drain the workloads running on that node to other nodes. To drain the node, run the following command:systemctl stop node-drain.service
2. Stop the Kubernetes process running on the server node: systemctl stop rke2-server
3. Stop the Kubernetes process running on the agent node: systemctl stop rke2-agent
4. Terminate the rke2 services and containerd and all child processes:rke2-killall.shTo download rke2-killall.sh script, refer to Installation packages download links.

# Files created during installation

1. The following unit files are created during installation:rke2-server.service (server only). Starts the rke2-server, which starts the server node.rke2-agent.service (agent only). Starts the rke2-agent, which starts the agent node.node-drain.service. Used at shutdown time. Executed before shutting down rke2-agent or rke2-server and performs a drain. Has a timeout of 300 seconds.node-uncordon.service. Used at startup to uncordon a node.var-lib-kubelet.mount. Autogenerated by fstab generator.var-lib-rancher-rke2-server-db.mount. Autogenerated by fstab generator.var-lib-rancher.mount. Autogenerated by fstab generator.

There are no strong dependencies between the unit files. However, node-drain and node-uncordon have the After=rke2-server.service or After=rke2-agent.service directive. This means that those services will start after the rke2-service.
