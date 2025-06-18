# Optional: Enabling resilience to zonal failures in a multi-node HA-ready production cluster

To enable resilience to zonal failures in a multi-node cluster, take the following steps:

Make sure nodes are spread evenly across three availability zones. For a bare-metal server or VM provided by any vendor except for AWS, Azure, or GCP, zone metadata has to be provided via the configuration file at /etc/default/k8s-node-labels on every machine in following format.NODE_REGION_LABEL=<REGION_NAME>
NODE_ZONE_LABEL=<ZONE_NAME>
cat > /etc/default/k8s-node-labels <<EOF
EXTRA_K8S_NODE_LABELS="topology.kubernetes.io/region=$NODE_REGION_LABEL,topology.kubernetes.io/zone=${NODE_ZONE_LABEL}"
EOFUpdate the cluster_config.json file during the advanced configuration step.

To update the cluster_config.json using the interactive installation wizard, exit at advanced configuration step and add the following to the configuration file using vim or your favorite editor:"zone_resilience": trueMandatory parametersDescriptionzone_resilienceUse true or false to enable or disable resilience to zonal failure.If you enable resilience to zonal failure, passing the --zone and --region arguments is:recommended if you provision your machines on AWS, Azure, or GCP, and metadata services are enabled as the installer populates the zone and region details.mandatory if you provision your machines on AWS, Azure, or GCP, and metadata services are disabled, or if you opt for a different cloud provider.
