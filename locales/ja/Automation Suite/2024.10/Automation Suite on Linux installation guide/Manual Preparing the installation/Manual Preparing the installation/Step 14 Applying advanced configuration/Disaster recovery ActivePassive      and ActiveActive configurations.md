# Disaster recovery: Active/Passive
      and Active/Active configurations

Some Automation Suite products are not supported in Disaster Recovery - Active/Passive
            and Active/Active.
          You can install these products while installing the primary cluster only. For details, see
            Disaster recovery -
            Active/Passive and Active/Active.The disaster recovery configuration requires that you install the two Automation Suite
      clusters separately. To install both the primary and secondary clusters in an Active/Passive
        or Active/Active
      deployment, you must configure the following cluster_config.json parameters:

* For Active/Passive deployments only: configure the parameters for in-cluster High
          Availability Add-on. For details, see In-cluster High Availability Add-on
            configuration.
* For Active/Active deployments only: configure the parameters for external High
          Availability Add-on. For details, see External High Availability Add-on
            configuration.
* For both Active/Active and
          Active/Passive deployments: configure the parameters listed in the following table.

ParameterDescriptioncluster_fqdnProvide the FQDN of the load
                  balancer of the cluster. It is a mandatory value.multisite.enabledIt indicates that Automation Suite
                  must be configured to work multi-site. It must be set to
                  true.multisite.primaryIt indicates that this cluster is a
                  primary cluster and must be set to true. It defaults to
                    false to denote the secondary cluster.multisite.other_kube_configIt indicates the base64-encoded
                  kubeconfig file of another cluster. While installing the primary Automation Suite
                  cluster, this value is unavailable and can be left as is. However, you must
                  provide the value when rebuilding the primary automation suite later during
                  recovery.fixed_rke_addressProvide the address where all the node joining requests must be made. This is
                  usually the same as the cluster_fqdn value (the FQDN of the load
                  balancer).
