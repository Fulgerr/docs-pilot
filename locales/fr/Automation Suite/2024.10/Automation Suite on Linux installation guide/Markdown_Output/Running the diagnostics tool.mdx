# Running the diagnostics tool

# Untitled Section

The Automation Suite diagnostics tool runs a set of checks to generate a report on the cluster health, which you can analyze to identify issues and their potential root causes. The tool helps you find common issues, such as lost database connectivity or invalid or expired credentials.

The Automation Suite diagnostics tool is available in both uipathctl and uipathtools, which you can download on your management machine.

uipathtools is a CLI tool that contains a subset of uipathctl capabilities specific to health commands. The tool is backwards compatible and works with any of the supported Automation Suite versions. We recommend using uipathtools as the first step if you face any issue.

## Quick validation

# Quick validation

The check and test commands provide quick insights into the state of the cluster without running a deep analysis.

* check relies on the ArgoCD health and sync status and does not modify any state in the cluster
* test looks into the applications, deployment, or pods and temporarily mutates the state of the cluster to provide you with those insights.

# Health check

To run a health check, use one of the following commands, depending on the CLI tool you use:

* If you use uipathctl, run:./uipathctl health check
* If you use uipathtools, run:./uipathtools health check

By default, the uipathctl health check command checks the health of all the components. However, it also allows you to check strictly the components that you are interested in:

* If you want to exclude components from the execution, use the --excluded flag. For example, if you do not want to check the health of SQL, run uipathctl health check --excluded SQL. The command checks the health of all components except for SQL.
* If you want to include only certain components in the execution, use the --included flag. For example, if you only want to check the health of DNS and objectstore, run uipathctl health check --included DNS,OBJECTSTORAGE.

Analyzing the logs

1. After running a check health check, the logs show that health check for the Data Service application failed.❌ [DATASERVICE] ❌ [DATASERVICE_HEALTH] Application health check failed: health status is Progressing and sync status is Synced
2. After further investigation, it becomes clear that the Data Service application failed because the dataservice-runtime-8f5bb7d56-v5krg and dataservice-taskrunner-787df76c74-98h5l pods are in a failed state. If you analyze further, you can find that the missing dataservice-external-storage-secret is missing.❌ [POD] ✔ [LIST_NAMESPACES] Retrieved 25 namespaces to check pod health ❌ [CANNOT_MOUNT_VOLUME] Pod uipath/dataservice-runtime-8f5bb7d56-v5krg cannot mount volume: MountVolume.SetUp failed for volume "external-storage-creds" : secret "dataservice-external-storage-secret" not found ❌ [CANNOT_MOUNT_VOLUME] Pod uipath/dataservice-runtime-8f5bb7d56-xs9t5 cannot mount volume: MountVolume.SetUp failed for volume "external-storage-creds" : secret "dataservice-external-storage-secret" not found ❌ [CANNOT_MOUNT_VOLUME] Pod uipath/dataservice-taskrunner-787df76c74-98h5l cannot mount volume: MountVolume.SetUp failed for volume "external-storage-creds" : secret "dataservice-external-storage-secret" not found
3. To fix this issue, ensure that you provided the correct credentials for the objectstore in the cluster_config.json.

# Health test

To run a health test, use one of the following commands, depending on the CLI tool you use:

* If you use uipathctl, run:./uipathctl health test
* If you use uipathtools, run:./uipathtools health test

By default, the uipathctl health test command executes health tests on all the components. However, it also allows you to check strictly the components that you are interested in:

* If you want to exclude components from the execution, use the --excluded flag. For example, if you do not want to check the health of SQL, run uipathctl health test --excluded SQL. The command checks the health of all components except for SQL.
* If you want to include only certain components in the execution, use the --included flag. For example, if you only want to check the health of DNS and objectstore, run uipathctl health test --included DNS,OBJECTSTORAGE.

If you compare the output of the check and test commands for the Data Service application, you can see that the former validates the health of the application, whereas the latter checks the routing.

Known issue

You might get an error message similar to the following sample. You can ignore it as no action is required from your side.

E0621 23:32:56.426321   24470 reflector.go:138] external/io_k8s_client_go/tools/cache/reflector.go:167: Failed to watch *v1.Pod: context deadline exceeded
E0621 23:32:56.426392   24470 reflector.go:138] external/io_k8s_client_go/tools/cache/reflector.go:167: Failed to watch *v1.Pod: context deadline exceeded
E0621 23:32:56.444420   24470 reflector.go:138] external/io_k8s_client_go/tools/cache/reflector.go:167: Failed to watch *v1.Pod: context deadline exceeded
E0621 23:32:56.446150   24470 reflector.go:138] external/io_k8s_client_go/tools/cache/reflector.go:167: Failed to watch *v1.Pod: context deadline exceeded
E0621 23:32:56.513357   24470 reflector.go:138] external/io_k8s_client_go/tools/cache/reflector.go:167: Failed to watch *v1.Pod: context deadline exceeded


## Deep validation

# Deep validation

The diagnose command provides deep insights into the state of the cluster. It helps you identify issues at all levels, such as SQL, objectstore, node, secret, Istio, networking etc.

* It covers both the check and test commands.
* It runs the prerequisites checks performed before the Automation suite installation, to validate changes to the environment configuration that were made post-installation and that can be the potential cause of the issue.
* It runs on the all the nodes to gather any node-specific issues, such as resource unavailability, any network interference, etc.

To run a diagnostic check, use one of the following commands, depending on the CLI tool you use:

* If you use uipathctl, run:./uipathctl health diagnose cluster_config.json --versions version.json
* If you use uipathtools, run:./uipathtools health diagnose cluster_config.json --versions version.json

The aforementioned sample is trimmed down. Actual logs have more information. You can notice that the diagnose command runs at multiple levels, such as infrastructure, networking, storage, pods, DNS etc.

Analyzing the logs

There are two potential issues that you can notice in the previous logs:

* Istio has a bad configuration, which can cause issues accessing the Document Understanding platform:❌ [ISTIO] ✔ [ISTIO_SYNC_STATUS] Istio sync is up-to-date ❌ [ISTIO_ENVOY_CONFIG_STATUS] Istio Envoy configs are not healthy: Error [IST0101] (VirtualService uipath/du-platform-vs) Referenced host:port not found: "aistorage:5000"
* Data Service is unavailable. See Ceph in the code example.❌ [DATASERVICE] ❌ [DATASERVICE_HEALTH] Application health check failed: health status is Progressing and sync status is Synced ❌ [CANNOT_MOUNT_VOLUME] Pod uipath/dataservice-runtime-8f5bb7d56-v5krg cannot mount volume: (combined from similar events): Unable to attach or mount volumes: unmounted volumes=[external-storage-creds], unattached volumes=[workload-socket is-secrets openssl istio-podinfo temp-location cert-location istio-data external-storage-creds workload-certs istio-envoy java domain-cert-config edk2 credential-socket tmp additional-ca-cert-config pem istiod-ca-cert istio-token app-secrets ceph-storage-creds]: timed out waiting for the condition ❌ [CANNOT_MOUNT_VOLUME] Pod uipath/dataservice-runtime-8f5bb7d56-xs9t5 cannot mount volume: MountVolume.SetUp failed for volume "external-storage-creds" : secret "dataservice-external-storage-secret" not found ❌ [CANNOT_MOUNT_VOLUME] Pod uipath/dataservice-taskrunner-787df76c74-98h5l cannot mount volume: MountVolume.SetUp failed for volume "external-storage-creds" : secret "dataservice-external-storage-secret" not found

Known issues

You might get an error message similar to the following sample. You can ignore it as no action is required from your side.


## Additional utilities

# Additional uitilities

All the Automation Suite diagnostics tool commands (check, test, and diagnose) support additional filtering and output format.

Filtering

FiltersDescriptionUsages--includedComma-separated list of the services to include in the validation/uipathctl health diagnose cluster_config.json --versions.json --included ISTIO,INSIGHTSThis command runs the diagnose only against Istio and Insights.--excludedComma-separated list of the services to exclude from the validation/uipathctl health test --excluded ISTIO,INSIGHTSThis command runs the test in the entire cluster, except Istio and Insights.

Output format

The Automation Suite diagnostics tool can generate reports in multiple formats: json, yaml, text, and junit. You can pass these values to any of the command via the --output flag. These output formats are handy when you want to leverage these tools to build your own troubleshooting framework on top of them.

Example usages

UsageExample Output./uipathctl health check --included DATASERVICE --output json
./uipathtools health check --included DATASERVICE --output json{ "cluster/": { "DATASERVICE": [ { "name": "DATASERVICE_HEALTH", "description": "Application health check failed: health status is Progressing and sync status is Synced", "status": "failed" } ] } }./uipathctl health check --included DATASERVICE --output yaml
./uipathtools health check --included DATASERVICE --output yaml? locationType: cluster : DATASERVICE: - name: DATASERVICE_HEALTH description: 'Application health check failed: health status is Progressing and sync status is Synced' status: failed./uipathctl health check --included DATASERVICE --output text
./uipathtools health check --included DATASERVICE --output textChecks run on cluster/ ❌ [DATASERVICE] ❌ [DATASERVICE_HEALTH] Application health check failed: health status is Progressing and sync status is Synced./uipathctl health check --included DATASERVICE --output junit
./uipathtools health check --included DATASERVICE --output junit<testsuite name="Health" tests="1" errors="0" failures="1" time="0" timestamp="2023-06-22T01:59:08.313362+05:30" hostname=""> <testcase name="DATASERVICE_HEALTH" classname="" time="0"> <failure message="Application health check failed: health status is Progressing and sync status is Synced" type=""> </failure> </testcase> </testsuite>


## Reading Diagnostics Reports




### INFO Logs

INFO logs in green show that the required checks passed. However, you should still properly check the disk/memory usage to avoid hidden errors.


### WARN Messages

Even though these messages do not signal a high risk, you might have to rectify them, as they might be affecting some services in certain scenarios.


### ERROR Messages

You must fix the issues described by these messages as they impact some service in the cluster.


### Rke2-server or Rke2-agent Service Down

If these services are down, it means the node is down. Try restarting the service using systemctl restart <service-name> as this should fix the issue.


### Directory Size Mounted at /var/lib

The report displays the directory size mounted at /var/lib as Kubernetes uses it to store its data. If the directory is full, various issues might arise. To prevent these problems, make sure to increase its size.


### Rke2 Version

The report displays the rke2 version for reference.


### Disk Pressure or Memory Pressure

For all the nodes, we specify if they are under Disk Pressure or Memory Pressure. If that happens, workloads on these nodes might start showing issues. Check if there are any other processes running on these nodes that are consuming resources and remove them if that is the case.


### Ceph Services Status

We use Ceph as S3 Object storage for storing logs and files from different applications. You can view the status of its services. If they are down, you might have to restart them. Make sure to also check if the disk usage by Ceph is full.


### Ports 443 and 31443

We expect ports 443 and 31443 to be open with the hostname that was provided. The report indicates if they are not accessible. Make sure to open the appropriate ports if pointed here.


### Certificate Validity

The tool checks if the uploaded certificate is valid for the given hostname and if it has not expired. If the certificate does not meet these criteria, errors occur. To prevent this, make sure to check your uploaded certificate and change it if required.


### GPU

Since some services require GPU to be present on some of the nodes in the cluster, the Automation Suite Diagnostics Tool checks if there is are GPU nodes and prints number of such nodes. If you are expecting GPU nodes to be present and they do not show up here, that means something went wrong in GPU setup.


### RabbitMQ and DockerRegistry

RabbitMQ and DockerRegistry are two important components that some services use. If any of them is down, you need to investigate the issue and a restart.


### ArgoCD Services Down

ArgoCD is our application lifecycle management (ALM) tool. If any of its services are down, then other applications may become outdated or have other issues. Recovering these services is important, and might need further debugging.


### Missing or Degraded ArgoCD Applications

The Automation Suite Diagnostics Tool shows whether ArgoCD applications are missing and degraded.

* If applications are missing, go to the ArgoCD UI and sync it.
* If applications are degraded, additional debugging is needed to investigate the errors thrown by ArgoCD

