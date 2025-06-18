# Updating the registry credentials

To update the registry credentials, take the following
            steps:

Update the registry credentials section in the cluster_config.json configuration file:"registries": { 
    "docker": { 
      "url": "yourContainerRegistryUrl", 
      "username": "username", 
      "password": "newpassword" ,
      "pull_secret_value": "new_pull_secret_value"
    }, 
    "helm": { 
      "url": "yourContainerRegistryUrl", 
      "username": "username", 
      "password": "newpassword" 
    } 
  }Re-run the Automation Suite infrastructure installation as follows:Re-install the infrastructure on the first server machine. For
                                details, see .Re-install the infrastructure on the other server machines. For
                                details, see .Re-install the infrastructure on the agent nodes. For details, see
                                    .Depending on the node type, restart the rke2-server or
                        rke2-agent services on all nodes, by running the following
                    commands:On server nodes, to restart the rke2-server service,
                                run the following
                                command:systemctl restart rke2-serverOn agent nodes, to restart the rke2-agent service,
                                run the following
                                command:systemctl restart rke2-agentDelete the existing uipathpullsecret secret in all namespaces,
                    by running the following commands:kubectl get secrets --all-namespaces | grep uipathpullsecret | awk '{print $1 " " $2}' | while read namespace secret; do 
kubectl delete secret "$secret" -n "$namespace" ;
done ;Re-run the fabric and services installation. For details, see .
