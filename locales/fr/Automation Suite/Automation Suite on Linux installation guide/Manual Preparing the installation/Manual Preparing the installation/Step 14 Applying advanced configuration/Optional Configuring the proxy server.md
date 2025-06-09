# Optional: Configuring the proxy server

Make sure you meet the proxy server requirements before configuring the proxy server during installation.For details, see Step 2: Adding proxy configuration to each node.

A proxy configuration is required only if you perform an online installation.

While running the interactive installer, you must exit it and update the cluster_config.json during the advanced configuration step.

You need to add the following to the configuration file using vim or your favorite editor to the configuration file:

"proxy": {
  "enabled": true,
  "http_proxy": "http://<PROXY-SERVER-IP>:<PROXY-PORT>",
  "https_proxy": "http://<PROXY-SERVER-IP>:<PROXY-PORT>",
  "no_proxy": "alm.<fqdn>,<fixed_rke_address>:9345,<fixed_rke_address>:6443,<named server address>,<metadata server address>,<k8s address range>,<private_subnet_ip>,<sql server host>,<Comma separated list of ips that should not go through proxy server>"
}


| Mandatory parameters | Description |
| --- ---| enabled | Use true or false to enable or disable proxy settings. |
| http_proxy | Used to route HTTP outbound requests from the cluster. This should be the proxy server FQDN and port. |
| https_proxy | Used to route HTTPS outbound requests from the cluster. This should be the proxy server FQDN and port. |
| no_proxy | Comma-separated list of specific hosts and IP addresses that you do not want to route via the proxy server. This should be a private subnet range, sql server host, named server address, metadata server address: *.<fqdn>,<fixed_rke_address>:9345,<fixed_rke2_address>:6443.CIDR notation and regular expressions (regex) are supported in the no_proxy settings for majority of applications, except for those that use Python (such as AI Center). Make sure to list individual IP addresses and hostnames explicitly.fqdn - the cluster FQDN defined in cluster_config.jsonfixed_rke_address - the fixed_rke_address defined in cluster_config.jsonnamed server address - the IP address from /etc/resolv.confprivate_subnet_ip - the cluster VNetsql server host - sql server hostmetadata server address - the IP address 169.254.169.254 used to fetch machine metadata by cloud services such as Azure and AWSk8s address range - the IP address ranges used by the Kubernetes nodes, i.e. 10.0.0.0/8If you use AI Center with an external Orchestrator, you must add the specific IP address or hostname of the external Orchestrator to the no_proxy list. CIDR notation and regular expressions are not supported. |
