# How to clean up old logs stored in the sf-logs bucket

A bug might cause log accumulation in the sf-logs object store bucket. To clean up old logs in the sf-logs bucket, follow the instructions on running the dedicated script. Make sure to follow the steps relevant to your environment type.

To clean up old logs stored in the sf-logs bucket, take the following steps:

1. Get the version of the sf-k8-utils-rhel image available in your environment: in an offline environment, run the following command: podman search localhost:30071/uipath/sf-k8-utils-rhel --tls-verify=false --list-tagsin an online environment, run the following command: podman search registry.uipath.com/uipath/sf-k8-utils-rhel --list-tags
2. Update line 121 in the following yaml definition accordingly to include the proper image tag: apiVersion: v1
kind: ConfigMap
metadata:
  name: cleanup-script
  namespace: uipath-infra
data:
  cleanup_old_logs.sh:  |
    #!/bin/bash

    function parse_args() {
      CUTOFFDAY=7
      SKIPDRYRUN=0
      while getopts 'c:sh' flag "$@"; do
        case "${flag}" in
        c)
          CUTOFFDAY=${OPTARG}
          ;;
        s)
          SKIPDRYRUN=1
          ;;
        h)
          display_usage
          exit 0
          ;;
        *)
          echo "Unexpected option ${flag}"
          display_usage
          exit 1
          ;;
        esac
      done

      shift $((OPTIND - 1))
    }

    function display_usage() {
      echo "usage: $(basename "$0") -c <number> [-s]"
      echo "  -s                                                         skip dry run, Really deletes the log dirs"
      echo "  -c                                                         logs older than how many days to be deleted. Default is 7 days"
      echo "  -h                                                         help"
      echo "NOTE: Default is dry run, to really delete logs set -s"
    }

    function setS3CMDContext() {
        OBJECT_GATEWAY_INTERNAL_HOST=$(kubectl -n rook-ceph get services/rook-ceph-rgw-rook-ceph -o jsonpath="{.spec.clusterIP}")
        OBJECT_GATEWAY_INTERNAL_PORT=$(kubectl -n rook-ceph get services/rook-ceph-rgw-rook-ceph -o jsonpath="{.spec.ports[0].port}")
        AWS_ACCESS_KEY=$1
        AWS_SECRET_KEY=$2

        # Reference https://rook.io/docs/rook/v1.5/ceph-object.html#consume-the-object-storage
        export AWS_HOST=$OBJECT_GATEWAY_INTERNAL_HOST
        export AWS_ENDPOINT=$OBJECT_GATEWAY_INTERNAL_HOST:$OBJECT_GATEWAY_INTERNAL_PORT
        export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY
        export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_KEY
    }

    # Set s3cmd context by passing correct AccessKey and SecretKey
    function setS3CMDContextForLogs() {
        BUCKET_NAME='sf-logs'
        AWS_ACCESS_KEY=$(kubectl -n cattle-logging-system get secret s3-store-secret -o json | jq '.data.OBJECT_STORAGE_ACCESSKEY' | sed -e 's/^"//' -e 's/"$//' | base64 -d)
        AWS_SECRET_KEY=$(kubectl -n cattle-logging-system get secret s3-store-secret -o json | jq '.data.OBJECT_STORAGE_SECRETKEY' | sed -e 's/^"//' -e 's/"$//' | base64 -d)

        setS3CMDContext "$AWS_ACCESS_KEY" "$AWS_SECRET_KEY"
    }

    function delete_old_logs() {
        local cutoffdate=$1
        days=$(s3cmd ls  s3://sf-logs/ --host="${AWS_HOST}" --host-bucket= s3://sf-logs --no-check-certificate --no-ssl)
        days=${days//DIR}
        if [[ $SKIPDRYRUN -eq 0 ]];
        then
            echo "DRY RUN. Following log dirs are selected for deletion"
        fi
        for day in $days
        do
            day=${day#*sf-logs/}
            day=${day::-1}
            if [[ ${day} < ${cutoffdate} ]];
            then
                if [[ $SKIPDRYRUN -eq 0 ]];
                then
                    echo "s3://$BUCKET_NAME/$day"
                else
                    echo "###############################################################"
                    echo "Deleting Logs for day: {$day}"
                    echo "###############################################################"
                    s3cmd del "s3://$BUCKET_NAME/$day/" --host="${AWS_HOST}" --host-bucket= --no-ssl --recursive || true
                fi
            fi
        done
    }

    function main() {
        # Set S3 context by setting correct env variables
        setS3CMDContextForLogs
        echo "Bucket name is $BUCKET_NAME"

        CUTOFFDATE=$(date --date="${CUTOFFDAY} day ago" +%Y_%m_%d)
        echo "logs older than ${CUTOFFDATE} will be deleted"

        delete_old_logs "${CUTOFFDATE}"
        if [[ $SKIPDRYRUN -eq 0 ]];
        then
            echo "NOTE: For really deleting the old log directories run with -s option"
        fi
    }

    parse_args "$@"
    main
    exit 0
---
apiVersion: v1
kind: Pod
metadata:
  name: cleanup-old-logs
  namespace: uipath-infra
spec:
   serviceAccountName: fluentd-logs-cleanup-sa
   containers:
   - name: cleanup
     image: localhost:30071/uipath/sf-k8-utils-rhel:0.8
     command: ["/bin/bash"]
     args: ["/scripts-dir/cleanup_old_logs.sh", "-s"]
     volumeMounts:
     - name: scripts-vol
       mountPath: /scripts-dir
     securityContext:
       privileged: false
       allowPrivilegeEscalation: false
       readOnlyRootFilesystem: true
       runAsUser: 9999
       runAsGroup: 9999
       runAsNonRoot: true
       capabilities:
         drop: ["NET_RAW"]
   volumes:
   - name: scripts-vol
     configMap:
       name: cleanup-script
3. Copy the content of the aforementioned yaml definition to a file called cleanup.yaml. Trigger a pod to clean up the old logs: kubectl apply -f cleanup.yaml
4. Get details on the progress: kubectl -n uipath-infra logs cleanup-old-logs -f
5. Delete the job: kubectl delete -f cleanup.yaml
