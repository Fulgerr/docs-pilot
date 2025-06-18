# Rook Ceph or Looker pod stuck in Init
        state

# Error details

The error code for this issue is 30001.

# Description

Occasionally,
                on node restart, an issue causes the Looker or Rook Ceph pod to get stuck in Init
                state as the volume required for attaching the PVC to a pod is missing.

Verify
                if the problem is indeed related to Longhorn by running the following
                command:

kubectl get events -A -o json | jq -r '.items[] | select(.message != null) | select(.message | contains("cannot get resource \"volumeattachments\" in API group \"storage.k8s.io\""))'

If
                it is related to Longhorn, this command should return a list of pod names affected
                by the issue. If the command does not return anything, the cause of the problem is
                different.

# Solution

Run the following
                script to fix the problematic pods if the previous command returns a non-empty
                output:

#!/bin/bash


function wait_till_rollout() {
    local namespace=$1
    local object_type=$2
    local deploy=$3

    local try=0
    local maxtry=2
    local status="notready"

    while [[ ${status} == "notready" ]]  && (( try != maxtry )) ; do
        kubectl -n "$namespace" rollout status "$deploy" -w --timeout=600s; 
        # shellcheck disable=SC2181
        if [[ "$?" -ne 0 ]]; 
        then
            status="notready"
            try=$((try+1))
        else
            status="ready"
        fi
    done
    if [[ $status == "notready" ]]; then 
        echo "$deploy of type $object_type failed in namespace $namespace. Plz re-run the script once again to verify that it's not a transient issue !!!"
        exit 1
    fi
}

function fix_pv_deployments() {
    for pod_name in $(kubectl get events -A -o json | jq -r '.items[]  | select(.message | contains("cannot get resource \"volumeattachments\" in API group \"storage.k8s.io\"")) | select(.involvedObject.kind == "Pod") | .involvedObject.name + "/" + .involvedObject.namespace' | sort | uniq)
    do
        POD_NAME=$(echo "${pod_name}" | cut -d '/' -f1)
        NS=$(echo "${pod_name}" | cut -d '/' -f2)
        controller_data=$(kubectl -n "${NS}" get po "${POD_NAME}" -o json | jq -r '[.metadata.ownerReferences[] | select(.controller==true)][0] | .kind + "=" + .name')
        [[ $controller_data == "" ]] && error "Error: Could not determine owner for pod: ${POD_NAME}" && exit 1
        CONTROLLER_KIND=$(echo "${controller_data}" | cut -d'=' -f1)
        CONTROLLER_NAME=$(echo "${controller_data}" | cut -d'=' -f2)
        if [[ $CONTROLLER_KIND == "ReplicaSet" ]]
        then
            controller_data=$(kubectl  -n "${NS}" get "${CONTROLLER_KIND}" "${CONTROLLER_NAME}" -o json | jq -r '[.metadata.ownerReferences[] | select(.controller==true)][0] | .kind + "=" + .name')
            CONTROLLER_KIND=$(echo "${controller_data}" | cut -d'=' -f1)
            CONTROLLER_NAME=$(echo "${controller_data}" | cut -d'=' -f2)

            replicas=$(kubectl -n "${NS}" get "$CONTROLLER_KIND" "$CONTROLLER_NAME" -o json | jq -r '.status.replicas')
            unavailable_replicas=$(kubectl -n "${NS}" get "$CONTROLLER_KIND" "$CONTROLLER_NAME" -o json | jq -r '.status.unavailableReplicas')

            if [ -n "$unavailable_replicas" ]; then 
                available_replicas=$((replicas - unavailable_replicas))
                if [ $available_replicas -eq 0 ]; then
                    kubectl -n "$NS" scale "$CONTROLLER_KIND" "$CONTROLLER_NAME" --replicas=0
                    sleep 15
                    kubectl -n "$NS" scale "$CONTROLLER_KIND" "$CONTROLLER_NAME" --replicas="$replicas"
                    deployment_name="$CONTROLLER_KIND/$CONTROLLER_NAME"
                    wait_till_rollout "$NS" "deploy" "$deployment_name"
                fi 
            fi
        fi
    done
}

fix_pv_deployments
