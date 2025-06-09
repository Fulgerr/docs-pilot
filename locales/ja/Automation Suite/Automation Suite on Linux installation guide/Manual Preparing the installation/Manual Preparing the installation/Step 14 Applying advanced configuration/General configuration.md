# General configuration

| Mandatory parameters | Description |
| --- ---| fqdn | The load balancer (multi-node HA-ready production mode) or machine (single-node evaluation mode) domain name. |
| fixed_rke_address | Fixed address used to load balance node registration and kube API requests. This should be fqdn if load balancer is configured as recommended. Otherwise FQDN of 1st Server Node. Refer to Configuring the load balancer.Can be the IP/FQDN of the first rke2 server in your setup. |
| multinode | Set to true when choosing a multi-node HA-ready production profile. The value of this flag is set automatically by the interactive installer. It is used for internal purposes only and must not be modified manually. |
| admin_username | The username that you would like to set as admin (such as: admin ) for the host organization. |
| admin_password | The host admin password to be set. |
| rke_token | Use a newly generated GUID here. This is a pre-shared, cluster-specific secret. It is needed for all the nodes joining the cluster. |
| profile | Sets the profile of the installation. The available profiles are:default: single-node evaluation profile.lite: lite mode.ha: multi-node HA-ready production profile.For more details on profile management, see Profile Configuration. |
| infra.docker_registry.username | The username that you would like to set for the docker registry installation. |
| infra.docker_registry.password | The password that you would like to set for the docker registry installation. |
| fips_enabled_nodes | Indicate whether you want to enable FIPS 140-2 on the nodes on which you plan to install Automation Suite. Possible values are true and false. |
| istioMinProtocolVersion | The minimum version of the TLS protocol accepted by Istio for secure communications. It can be set to either TLSV1_2 or TLSV1_3. |


| Optional parameters | Description |
| --- ---| telemetry_optout | true or false - used to opt-out of sending telemetry back to UiPath. It is set to false by default.If you wish to opt out, then set to true. |
| infra.pod_log_path | Enables you to change the /var/log/pods default path of the pod logs to a custom path of your choice.Updating the log path discards the logs of the existing container from /var/log/pods. |
