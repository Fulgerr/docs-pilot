# How to clean up unused Docker images from registry pods

In certain situations, the unused Docker images are not effectively cleared from all registry pods, even after running the registry cleanup command:

./bin/uipathctl registry cleanup --manifest versions/docker-images.json

To remove the remaining Docker images, you must run the following script:

#!/bin/bash

# Set the namespace if necessary
NAMESPACE="docker-registry"  

# Get list of docker-registry StatefulSet pods
PODS=$(kubectl get pods -n $NAMESPACE -l app=docker-registry -o jsonpath='{.items[*].metadata.name}')

# Modify the docker-registry service selector to include traffic: allowed
echo "Modifying docker-registry service selector..."
kubectl patch svc docker-registry -n $NAMESPACE --type='json' -p='[{"op": "add", "path": "/spec/selector/traffic", "value": "allowed"}]'

# Loop through each registry pod one at a time
for POD in $PODS; do
    echo "Processing pod: $POD"

    # Add label traffic=allowed to the current pod
    kubectl label pod $POD -n $NAMESPACE traffic=allowed --overwrite
    echo "Label traffic=allowed added to $POD"

    # Run the registry cleanup command
    echo "Running registry cleanup on $POD..."
    ./bin/uipathctl registry cleanup --manifest versions/docker-images.json

    # Remove label traffic=allowed from the pod
    kubectl label pod $POD -n $NAMESPACE traffic-
    echo "Label traffic=allowed removed from $POD"

    echo "Completed cleanup for $POD"
done

# Revert the docker-registry service selector modification
echo "Reverting docker-registry service selector..."
kubectl patch svc docker-registry -n $NAMESPACE --type='json' -p='[{"op": "remove", "path": "/spec/selector/traffic"}]'

echo "Cleanup process completed for all registry pods."
