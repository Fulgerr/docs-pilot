# Disaster Recovery: Performing post-installation operations

# Generating the kubeconfig file of the cluster

The generated kubeconfig file must have only limited permissions to access another cluster's correct set of Kube objects.

To generate the base64-encoded kubeconfig file, run the following command:

./bin/uipathctl config kubeconfig get --multisite

ParameterDescription--multisiteGenerates the kubeconfig file with limited permissions.

# Updating the kubeconfig file and linking two Automation Suite clusters

To update the kubeconfig file of another cluster and link both of them, run the following command:

./bin/uipathctl config kubeconfig set --secret "fgad8GDH9dbks" --multisite

ParameterDescription--secretAccepts the base64-encoded kubeconfig file.--multisiteLinks the two clusters.
