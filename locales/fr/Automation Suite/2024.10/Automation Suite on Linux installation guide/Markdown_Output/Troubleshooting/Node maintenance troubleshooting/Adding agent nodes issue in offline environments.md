# Adding agent nodes issue in offline environments

# Description

In certain situations, the attempt to add an agent node to an existing cluster in an offline environment can fail. This issue occurs due to the node not being able to pull the necessary container images, despite having removed the temporary registry. The node attempts to pull images from localhost:30070, causing the prerequisite check to fail and consequently, the agent node initialization also fails.

The registries.yaml file only contains localhost:30070 and localhost:30071 entries, which results in the node being unable to pull the required container images.

# Solution

To address this issue, take the following steps:

1. You must manually edit the /etc/rancher/rke2/registries.yaml file and add the registry URL https://registry.{fqdn}.
2. Restart the rke2-agent.
