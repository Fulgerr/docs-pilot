# Docker registry migration stuck in PVC deletion stage

# Description

During a Docker registry migration, you may encounter an issue where the migration process gets stuck on the PVC deletion stage. This issue typically occurs when there are pending VolumeSnapshots on the PVC which prevent the successful deletion of the PVC. The logs for this issue will display the following messages:

deployment.apps/docker-registry scaled
pod/docker-registry-5b68496d6c-2djhs condition met
persistentvolumeclaim "docker-registry" deleted

# Solution

To resolve this issue, you need to clean up pending VolumeSnapshots. Run the command the following to perform this cleanup:

for i in `kubectl get volumesnapshot -n docker-registry -o json | jq -r '.items[] | select(.spec.source.persistentVolumeClaimName=="docker-registry" and .status.readyToUse==false) | .metadata.name'`; do
  kubectl patch volumesnapshot -n docker-registry $i  --type json --patch='[ { "op": "remove", "path": "/metadata/finalizers" } ]'
  kubectl delete volumesnapshot -n docker-registry $i
doneAfter executing the previous command, you should re-run the registry migration. This should allow the Docker registry migration process to move past the PVC deletion stage successfully.
