# High Availability Add-on configuration

Automation Suite supports High Availability Add-on (HAA) installed either in the same cluster or on external machines.

You must configure HAA to enable the actual HA setup for the multi-node setup. To do that, you can either provide the HAA license to the installer or install HAA on the external machines and give the HAA configurations to the installer.

### In-cluster Redis High Availability Add-on configuration

In a multi-node HA-ready production setup, High Availability (HA) is enabled by default. However, the Redis-based in-memory cache used by cluster services runs on a single node and represents a single point of failure. Therefore, if you have not purchased a High Availability Add-on (HAA) license, a cache node failure or restart will result in downtime for the entire cluster. To prevent such an incident, you can purchase HAA, which enables redundant, multi-node HA-ready production deployment of the cache.

All installations include the HAA software with a single-node license. This license is free of cost, no purchase required.If you wish to enable HAA across multiple nodes, then purchasing an HAA license is required. This will implement full high availability for the cluster in a multi-node HA-ready production setup.HAA is based on Redis technology.

To do that, take the following steps:

1. Purchase an HAA license. Contact UiPath® for details.
2. Update the following fields in the cluster_config.json
                    file: fabric.redis.license - enter the
                        HAA license converted to a single base64 string. You need to encode the
                        entire license key to base64, including the text -----LICENSE
                            START----- and -----LICENSE END-----. In bash, you can do that
                        using the following command:echo '-----LICENSE START-----<license_key_here>-----LICENSE END-----' | base64 -w0fabric.redis.ha - use true to enable
                            HAA and make sure to also configure the
                                fabric.redis.license parameter. This enables HAA
                            database replication and increases the number of HAA pods to 3. By
                            default, fabric.redis.ha is set to
                                false.If
                                redis.ha is enabled, redis.license
                            needs to be set to a license that supports more than two shards."fabric": {
    "redis": { 
        "ha": "true",
        "license": "Base64String" // Replace Base64String with the encoded full license string.
    }
}
3. Rerun the installer: ./bin/uipathctl manifest apply /opt/UiPathAutomationSuite/cluster_config.json --versions versions/helm-charts.json


### External High Availability Add-on configuration

When opting for an Active/Active configuration of Automation Suite, an external cluster-hosted High Availability Add-on is mandatory. In all other situations, it is merely optional.

To configure High Availability Add-on, you must update the following parameters in the cluster_config.json file:

ParameterDescriptionfabric.redis.hostnameProvide the FQDN of the High Availability Add-on (HAA) server.fabric.redis.passwordProvide the password to connect to the HAA server.fabric.redis.portProvide the port for the HAA server.fabric.redis.tlsEnable the TLS protocol. By default, TLS is enabled.If a certificate is required when TLS is enabled, make sure to provide it via the additional_ca_certs flag. For details, see Certificate configuration.

"fabric": {
  "redis": {
    "hostname": "redis_fqdn",
    "password": "credential_to_connect_redis",
    "port": 6380,
    "tls": true,
  }
}

