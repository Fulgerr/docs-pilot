# Step 5: Configuring the load balancer


## Overview

A load balancer is mandatory for the multi-node HA-ready production setup.

Some load balancers, such as the Azure Load Balancer, have the capability to forward the client's IP address to the server without replacing it with their own address. This feature allows the server to see the original client’s IP, resulting in no extra steps being required for the server to identify the client's IP address. On the other hand, if a load balancer does replace the client IP address with its own, it can compensate by adding a special header, called an x-forwarded-for header to the request it sends to the server. This header includes the original client's IP address. The server can then read this header to retrieve the client's IP address.

Automation Suite supports two types of configuration for the load balancer, as shown in the following sections.

You can configure the load balancer to use session persistence or sticky sessions, but it is not a requirement.

Currently, Automation Suite supports only a Layer 4 (network layer) load balancer.The load balancer does not support TLS encryption and termination. For effective service operation, make sure to configure your load balancer to facilitate traffic pass-through.If you are using the Azure Internal Load Balancer (LB) for deployments, you can encounter issues with the calls from the backend Virtual Machine (VM) to the LB frontend IP. The issues occur due to source IP and MAC address mismatch of the network packet. This prevents the recipient from working out the correct response path, resulting in the failure of calls from the VM to the LB. For more details, see Azure Load Balancer Components limitations and Backend Traffic Troubleshooting.


## Server and node pool configuration

This is the recommended configuration for the load balancer.


### Configuring the backend pool

You must create three backend pools that meet the following requirements:

* Server Pool Consists of all the server nodes. There must not be any agent nodes in the Server Pool.
* Node Pool Consists of all the server nodes and non-specialized agent nodes. Specialized agent nodes include task-mining, gpu, and asrobots.
* Temporary Registry Pool Consists only of the server node where the Temporary Registry is installed. The Temporary Registry Pool is used only during the Automation Suite installation, node joining, and upgrade procedures. After you complete the procedures, you can close the Temporary Registry Pool.


### Configuring the health probes

| Probe | Protocol | Port | Interval | Re-entry threshold | Associate pool |
| --- --- --- --- --- ---| https-probe | TCP | 443 | 15 sec | 2 | Node Pool |
| kubeapi-probe | TCP | 6443 | 15 sec | 2 | Server Pool |

Refer to the following illustration for more details on the configuration:

![TemporaryRegistryPool_Server=GUID-D63A849C-C2EB-4EF8-B2C3-967B3831F9DB=1=en=Default](/images/TemporaryRegistryPool_Server=GUID-D63A849C-C2EB-4EF8-B2C3-967B3831F9DB=1=en=Default.png)


### Enabling ports on the load balancer

Ensure you have the following ports enabled on your firewall for the source of load balancer:


| Port | Protocol | Purpose | Traffic forwarding | Health probe |
| --- --- --- --- ---| 443 | TCP | For HTTPS (accessing Automation Suite). | Traffic on this port must be forwarded to Node Pool. | https-probe |
| 300701 | TCP | For accessing the temporary registry during installation and upgrade using HTTP. | Traffic on this port must be forwarded to the Temporary Registry Pool. | N/A |
| 6443 | TCP | For accessing Kube API using HTTPS; required for node joining. | Traffic on this port should be forwarded to Server Pool. | kubeapi-probe |
| 9345 | TCP | For accessing Kube API using HTTPS; required for node joining. | Traffic on this port should be forwarded to Server Pool. | kubeapi-probe |

1 If you do not have an external OCI-complaint registry, you must open port 30070 on the load balancer and the server node on which you plan to install the temporary docker registry.

We recommend not exposing any ports except for the HTTPS one outside the cluster. Run your nodes behind a firewall / security group.If you have a firewall set up on the network, make sure that it has these ports open to allow traffic.

The regular load balancer configuration should be similar to the one shown in the following illustration:


## Alternative configuration

This configuration does not have resilience to nodes going down during installation.If the primary server is down or deleted, cluster configuration needs to be updated.FQDN of the primary server needs to be remapped to a different machine in the cluster that is available.


### Configuring the backend pool

Create one backend Pool, as follows:

* Create a Node Pool


### Enabling ports on the load balancer

Ensure that you have the following ports enabled on your firewall for the source of load balancer:


| Port | Protocol | Purpose | Traffic forwarding |
| --- --- --- ---| 443 | TCP | For HTTPS (accessing Automation Suite). | Traffic on this port should be forwarded to the Node Pool. |


### Configuring the health probes

| Probe | Protocol | Port | Interval | Re-entry threshold | Associate pool |
| --- --- --- --- --- ---| https-probe | TCP | 443 | 15 sec | 2 | Node Pool |

Refer to the following illustration for more details on the configuration.

![8dbe9d3-loadbalancer2=GUID-8A5CA618-F5BC-492A-91E0-E7203017DCE2=1=en=Default](/images/8dbe9d3-loadbalancer2=GUID-8A5CA618-F5BC-492A-91E0-E7203017DCE2=1=en=Default.png)

