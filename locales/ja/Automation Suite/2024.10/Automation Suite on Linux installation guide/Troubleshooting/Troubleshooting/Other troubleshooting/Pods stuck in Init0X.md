# Pods stuck in Init:0/X

# Description

DescriptionPods using LH volume are stuck in Init:0/X (where X is an integer representing the number of containers), and the kubectl describe command on the pod returns MapVolume.MapPodDevice failed for volume in events.

# Solution

To fix this issue, run the following command:

for podPv in $(kubectl get events -A -o json | jq -r '.items[] | select(.reason == "FailedMapVolume" and .involvedObject.kind == "Pod" and (.message | contains("MapVolume.MapPodDevice failed for volume") and contains("Could not mount \"/dev/longhorn"))) | .involvedObject.namespace + "=" + .involvedObject.name + "=" + (.message | match("(pvc-[0-9a-z-]+)").captures[0].string )') ; do 
  echo "Found 'FailedMapVolume' error: '${podPv}'"
  NS=$(echo "${podPv}" | cut -d'=' -f1)
  POD=$(echo "${podPv}" | cut -d'=' -f2)
  PV=$(echo "${podPv}" | cut -d'=' -f3)
  [[ -z "${NS}" ]] && echo "Could not extract namespace for error: '${podPv}'" && continue
  [[ -z "${POD}" ]] && echo "Could not extract pod name for error: '${podPv}'" && continue
  [[ -z "${PV}" ]] && echo "Could not extract Persistent Volume for error: '${podPv}'" && continue

  controller_data=$(kubectl -n "${NS}" get po "${POD}" -o json | jq -r '[.metadata.ownerReferences[] | select(.controller==true)][0] | .kind + "=" + .name')
  [[ -z "$controller_data" ]] && echo "Could not determine owner for pod: ${POD} in namespace: ${NS}" && continue
  CONTROLLER_KIND=$(echo "${controller_data}" | cut -d'=' -f1)
  [[ -z "${CONTROLLER_KIND}" ]] && echo "Could not extract controller kind for pod: '${POD}' in namespace: '${NS}' && continue
  CONTROLLER_NAME=$(echo "${controller_data}" | cut -d'=' -f2)
  [[ -z "${CONTROLLER_NAME}" ]] && echo "Could not extract controller name for pod: '${POD}' in namespace: '${NS}' && continue

  if [[ $CONTROLLER_KIND == "ReplicaSet" ]]
  then
    controller_data=$(kubectl  -n "${NS}" get "${CONTROLLER_KIND}" "${CONTROLLER_NAME}" -o json | jq -r '[.metadata.ownerReferences[] | select(.controller==true)][0] | .kind + "=" + .name')
    CONTROLLER_KIND=$(echo "${controller_data}" | cut -d'=' -f1)
    [[ -z "${CONTROLLER_KIND}" ]] && echo "Could not extract controller kind(from rs) for pod: '${POD}' in namespace: '${NS}'" && continue
    CONTROLLER_NAME=$(echo "${controller_data}" | cut -d'=' -f2)
    [[ -z "${CONTROLLER_NAME}" ]] && echo "Could not extract controller name(from rs) for pod: '${POD}' in namespace: '${NS}'" && continue
  fi

  org_replicas=$(kubectl -n "${NS}" get "$CONTROLLER_KIND" "$CONTROLLER_NAME" -o json | jq -r '.status.replicas')

  echo "Scaling down ${CONTROLLER_KIND}/${CONTROLLER_NAME}"
  kubectl -n "${NS}" patch "$CONTROLLER_KIND" "${CONTROLLER_NAME}" -p "{\"spec\":{\"replicas\":0}}"
  if kubectl -n "${NS}" get pod  "${POD}" ; then
    kubectl -n "${NS}" wait --for=delete pod "${POD}" --timeout=300s
  fi
  if kubectl get volumeattachment | grep -q "${PV}"; then
    volumeattachment_id=$(kubectl get volumeattachment | grep  "${PV}" | awk '{print $1}')
    kubectl delete volumeattachment ${volumeattachment_id}
  fi
  [[ -z "$org_replicas" || "${org_replicas}" -eq 0 ]] && org_replicas=1
  echo "Scaling up ${CONTROLLER_KIND}/${CONTROLLER_NAME}"
  kubectl -n "${NS}" patch "$CONTROLLER_KIND" "${CONTROLLER_NAME}" -p "{\"spec\":{\"replicas\":${org_replicas}}}"
done
