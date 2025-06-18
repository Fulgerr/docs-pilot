# Multi-node architecture and design consideration

The following architecture diagram depicts a deployment of Automation Suite on Linux with Kubernetes installed on six machines, a load balancer, and data storage. There are multiple machine types: three server nodes, two agent nodes, and one specialized agent node.

![multi node deployment=GUID-72DA8EE8-E015-427F-9EBB-C8AAF32AC9B2=1=en=Default](/images/multi node deployment=GUID-72DA8EE8-E015-427F-9EBB-C8AAF32AC9B2=1=en=Default.png)

# Server nodes

Server nodes host the Kubernetes control plane, which controls the entire Kubernetes cluster. In a typical multi-node deployment, an odd number of server nodes are needed, with the minimum number of servers being three. This restriction is due to the etcd component, which is part of the Kubernetes Control Plane. For more details, see the etcd documentation. For the same reason, the majority of server nodes must be available at any point to keep the cluster healthy.

These nodes also host the components that require data storage on the nodes, such as Prometheus, in-cluster objectstore Ceph, UiPath Insights, and in-cluster Docker registry.

# Agent nodes

Agent nodes are sometimes called worker nodes. The purpose of these nodes is to host UiPath® services and other shared suite capabilities. Since there is no data disk attached to these nodes, they cannot host the components that require disk storage.

Agent nodes do not impose any restriction on the number of the nodes to be available at any point in time. As long as the resulting cluster has enough capacity to host all the pods from the lost nodes, the cluster will work as expected without any disruption.

# Specialized agent nodes

These nodes are the special agent nodes dedicated to special tasks, such as the Task Mining node for analysis, Automation Suite Robots node for robots execution, and the GPU node for the Document Understanding model. You cannot host other UiPath® services on these nodes.

# Load balancer

The load balancer, which is installed outside Automation Suite, acts as an entry point for accessing applications hosted on the Automation Suite cluster. The load balancer is required to stand against node fault tolerance. All server nodes are required to be configured on the load balancer, but agent nodes can also be configured optionally. However, specialized agent nodes are not required.

When robots try to access Orchestrator, the call lands on the load balancer, and then it is passed to any of the available nodes. Each node also hosts the networking component called Istio, which is a service mesh that also acts like a load balancer. When the call is received by Istio running on the node, it tries to locate the Orchestrator instance on the entire cluster. Once it is found, it will redirect the call to that instance.

### How to design your deployment

# More smaller machines or fewer larger machines?

It entirely depends on you whether you go for more smaller machines or fewer larger machines, with both options having their own pros and cons. A higher number of smaller machines provides better resilience to node fault tolerance compared to a smaller number of larger machines. At the same time, it also introduces additional management overhead.

For example, if your Automation Suite cluster requires a 96 vCPU, then you can opt for either of the following options:

* Option 1: 6 machines of 16vCPU each.Impact: Losing a machine only reduces the capacity of the cluster by 16 vCPU, so it only impacts services if the resulting cluster does not have capacity to host all the pods. However, managing 6 machines implies a larger effort.
* Option 2: 3 machines of 32vCPU eachImpact: Losing a machine reduces the capacity of the cluster by 32vCPU, which has a major impact on Automation Suite. However, managing 3 machines implies a smaller effort.

To conclude, the deployment design depends on the goal. If the goal is better fault tolerance, then more smaller machines are the choice. However, if the goal is less management overhead, then the smaller number of larger machines should be the choice.

# All server nodes instead of agent nodes?

Whether you opt for all server nodes instead of agent nodes depends on your RTO or RPO.

For instance, let's say that your Automation Suite needs 80 vCPU. You can achieve this as follows:

* Option 1: 5 server machine with 16vCPU each. Here you can lose at most 2 server nodes.Recommended if the goal is resilience to data loss. Even if 2 server nodes are lost, data will be intact and can be rebuilt from the remaining replicas.
* Option 2: 3 servers nodes and the 2 agent nodes with 16vCPU each. Here you can lose 1 server node and both the agent nodes, so a total 3 machines.Recommended if the goal is resilience to node availability. Even without 3 machines, the cluster will still be available with limited capability, and once the nodes are back, the entire cluster will be recovered. However this setup is more prone to data loss because of the storage attached to the sever nodes. If 2 server nodes are entirely lost, then it may be difficult to rebuild the data again without restoring it from the backup.

