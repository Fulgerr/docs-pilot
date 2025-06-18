# Step 9: Configuring the node ports

Changes to IP tables are not recommended or
                supported.

Make sure to enable the following ports on your firewall for each source:


| Port | Protocol | Source | Purpose | Requirements |
| --- --- --- --- ---| 22 | TCP | Jump Server / client machine | For SSH (installation, cluster management debugging) | Do not open this port to the internet. Allow access to the client machine or jump server. |
| 443 | TCP | All nodes in a cluster and the load balancer | For HTTPS (accessing Automation Suite) | This port must have inbound and outbound connectivity from all the nodes in the cluster and the load balancer. |
| 2379 | TCP | All nodes in a cluster | etcd client port | Do not open this port to the internet. Access between nodes must be ensured over a private IP address. |
| 2380 | TCP | All nodes in a cluster | etcd peer port | Do not open this port to the internet. Access between nodes must be ensured over a private IP address. |
| 6443 | TCP | All nodes in a cluster | For accessing Kube API using HTTPS, and required for node joining | This port must have inbound and outbound connectivity from all the nodes in the cluster. |
| 8472 | UDP | All nodes in a cluster | Required for Cilium. | Do not open this port to the internet. Access between nodes must be ensured over a private IP address. |
| 9090 | TCP | All nodes in the cluster | Used by Cilium for monitoring and handling pod crashes | This port must have inbound and outbound connectivity from all the nodes in the cluster. |
| 9345 | TCP | All nodes in a cluster and the load balancer | For accessing Kube API using HTTPS, required for node joining | This port must have inbound and outbound connectivity from all nodes in the cluster and the load balancer. |
| 10250 | TCP | All nodes in a cluster | kubelet / metrics server | Do not open this port to the internet. Access between nodes must be ensured over a private IP address. |
| 30071 | TCP | All nodes in a cluster | NodePort port for internal communication between nodes in a cluster | Do not open this port to the internet. Access between nodes must be ensured over a private IP address. |

The following additional ports are required in offline installations:


| Port | Protocol | Source | Purpose | Requirements |
| --- --- --- --- ---| 80 | TCP | All nodes in the cluster | Required for sending system email notifications | Do not open this port to the internet. Access between nodes and the SMTP server must be ensured over a private IP address. |
| 587 | TCP | All nodes in the cluster | Required for sending system email notifications | Do not open this port to the internet. Access between nodes and the SMTP server must be ensured over a private IP address. |
| 300701 | TCP | The machine on which you plan to trigger the installation or upgrade. | For accessing the temporary registry during installation and upgrade using HTTP. | Traffic on this port must be forwarded to the Temporary Registry Pool. |

1 If an external registry is not available in the offline installation, open port 30070 on the machine on which you plan to trigger the installation or upgrade.

Exposing port 6443 outside the cluster boundary is mandatory if there is a direct connection to the Kerberos API.Port 9345 is used by nodes to discover existing nodes and join the cluster in the multi-node deployment. To keep the high availability discovery mechanisms running, we recommend exposing it via the load balancer with health check.Additionally, make sure you have connectivity from all nodes to the SQL server. Do not expose the SQL server on one of the Istio reserved ports, as it may lead to connection failures.If you have a firewall set up in the network, make sure that it has these ports open and allows traffic according to the aforementioned requirements.
