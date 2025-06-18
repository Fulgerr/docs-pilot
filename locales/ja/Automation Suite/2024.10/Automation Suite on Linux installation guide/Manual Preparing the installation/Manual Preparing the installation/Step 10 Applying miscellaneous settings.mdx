# Step 10: Applying miscellaneous settings


## Optional: Enabling FIPS 140-2

You can enable FIPS on your Red Hat Linux-based virtual machines. To do that, take the following steps:

1. Enable FIPS by running the following command on all your machines before starting the installation: fips-mode-setup --enable
2. Reboot your machines and check if you successfully enabled FIPS by running the following command: fips-mode-setup --check

After you enable FIPS an all nodes, you have to set the fips_enabled_nodes parameter to true in cluster_config.json. For details, see General Configuration.

Insights is currently not supported on FIPS 140-2-enabled machines. Make sure to disable Insights when installing Automation Suite on a FIPS 140-2-enabled machines.

For details on the additional steps you must take to start using Automation Suite on FIPS 140-2 machines, see Security best practices.


## Optional: Configuring the proxy server

To configure a proxy, you need to perform additional configuration steps while setting up your environment with the prerequisites and during the advanced configuration phase of installation time.

The following steps are required when setting up your environment.

We currently do not support HTTPS proxy with self-signed certificates. Make sure you use a public trusted certificate if you are configuring the proxy.


### Step 1: Enabling ports on the virtual network

Make sure that you have the following rules enabled on your network security group for the given Virtual Network.


| Source | Destination | Route via proxy | Port | Description |
| --- --- --- --- ---| Virtual Network | SQL | No | SQL server port | Required for SQL Server. |
| Virtual Network | Load Balancer | No | 93456443 | Required to add new nodes to the cluster. |
| Virtual Network | Cluster(subnet) | No | All ports | Required for communication over a private IP range. |
| Virtual Network | alm.<fqdn> | No | 443 | Required for login and using ArgoCD client during deployment. |
| Virtual Network | Proxy Server | Yes | All ports | Required to route traffic to the proxy server. |
| Virtual Network | NameServer | No | All ports | Most of the cloud services such as Azure and AWS use this to fetch the VM metadata and consider this a private IP. |
| Virtual Network | MetaDataServer | No | All ports | Most of the cloud services such as Azure and AWS use the IP address 169.254.169.254 to fetch machine metadata. |


### Step 2: Adding proxy configuration to each node

When configuring the nodes, you need to add the proxy configuration to each node that is part of the cluster. This step is required to route outbound traffic from the node via the proxy server.

1. Add the following configuration in /etc/environment: http_proxy=http://<PROXY-SERVER-IP>:<PROXY-PORT>
https_proxy=http://<PROXY-SERVER-IP>:<PROXY-PORT>
no_proxy=alm.<fqdn>,<fixed_rke2_address>,<named server address>,<metadata server address>,<private_subnet_ip>,localhost,<Comma separated list of ips that should not got though proxy server>
2. Add the following configuration in /etc/wgetrc: http_proxy=http://<PROXY-SERVER-IP>:<PROXY-PORT>
https_proxy=http://<PROXY-SERVER-IP>:<PROXY-PORT>
no_proxy=alm.<fqdn>,<fixed_rke2_address>,<named server address>,<metadata server address>,<private_subnet_ip>,localhost,<Comma separated list of ips that should not got though proxy server> Mandatory parametersDescriptionhttp_proxyUsed to route HTTP outbound requests from the node. This should be the proxy server FQDN and port.https_proxyUsed to route HTTPS outbound requests from the node. This should be the proxy server FQDN and port.no_proxyComma-separated list of hosts, IP addresses that you do not want to route via the proxy server. This should be a private subnet, SQL server host, named server address, metadata server address: alm.<fqdn>,<fixed_rke2_address>,<named server address>,<metadata server address>.metadata server address – Most of the cloud services such as Azure and AWS use the IP address 169.254.169.254 to fetch machine metadata.named server address – Most of the cloud services such as Azure and AWS use this to resolve DNS query.If you use AI Center with an external Orchestrator, you must add the external Orchestrator domain to the no_proxy list.
3. Verify if the proxy settings are properly configured by running the following command: curl -v $HTTP_PROXY
curl -v <fixed_rke_address>:9345 Once you meet the proxy server requirements, make sure to continue with the proxy configuration during installation. Follow the steps in Optional: Configuring the proxy server to ensure the proxy server is set up properly.

