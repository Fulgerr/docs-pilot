# Using the Automation Suite support bundle


## Overview

The Automation Suite support bundle collects application-level logs of UiPath® services and and relevant objects required to evaluate and fix the problem. The Automation Suite support bundle also contains historical logs you can use to analyze patterns when troubleshooting a problem. Historic logs are particularly helpful when the potential root cause of an issue is not evident just by looking at the state of the cluster.

The Automation Suite support bundle is also needed when asking for guidance or a fix from the UiPath® Support team as they need it for analysis purposes.

The Automation Suite support bundle does not collect or store any PII or confidential data of you, your user, or your automation. UiPath® applications not not leak or log any confidential information in their records. At the platform level, the log collector is designed to mask any such critical information.


## Automation Suite Support Bundle Tool parameters

* High-level summarized usage telemetry is also exported with this tool generating an XML file. This telemetry includes: Robot execution duration per month by robot type.Robot concurrency - the maximum number of robots that executed at the same time.Metrics on jobs run, processes run, queue items, job failure rate, and users.Environment information.
* You can upload the XML file in the Customer Portal to share your high-level self-hosted usage telemetry with the UiPath Support team.
* You can opt out of generating this summarized telemetry by listing service-metrics in the excluded list in Automation Suite 2024.10 and higher.


## Generating the support bundle

To generate the support bundle, run the following command from the installer directory:

./bin/uipathctl health bundle cluster_config.json --versions versions/helm-charts.json

This tool requires some time to gather and store all the logs in a temporary location on your local or management machine.

The following table lists the optional flags that you can use for the support bundle tool:

FlagsDescription--output-dir stringSpecify the directory to store the support bundle.--namespace stringSpecify the namespace where UiPath Automation Suite is deployed.--include stringSpecify additional components (comma separated) to include in the bundle (such as --include=historical-logs).--exclude stringSpecify components (comma separated) to exclude from the bundle (such as--exclude=rke2-bundle or --exclude=service-metrics).--from YYYY-MM-DDThe start date to collect the historical logs in YYYY-MM-DD format.--days intThe number of days from the start date for which to collect the historical logs.--limit-bytes intLimits the size of the logs of running pods by providing the integer value in bytes.

By default, if the --from flag is not specified, then the historical logs will be collected for the past 2 days starting from today, irrespective of the --days specified. If the --from is specified and --days is not specified, then the historical logs will be collected for 2 days starting from the specified start date.

The RKE2 bundle is included by default in the support bundle. To exclude it, use theflag --exclude=rke2-bundle.

The historical logs are not included by default in the support bundle. To include them, use the flag --include=historical-logs.


## Automation Suite Support Bundle Structure

The .tar.gz archive contains following files and folders:


| File/folder | Description |
| --- ---| logs | Contains the historical logs collected from ceph or external object store. |
| current-logs | Contains the live logs (such as logs for current and previous instance of pods). |
| events.json | Contains the event descriptions from all the namespaces. |
| alerts | Contains the active prometheus alerts in the cluster. |
| server0.tar.gz, server1.tar.gz, ... | Contains the RKE2 bundle for every node in the cluster. |
| namespace/resource/object.yaml | Contains the object descriptions for the server-preferred/custom namespace and cluster-scoped resources. |
| service-metrics | Contains high level usage telemetry stored in individual XML files. |

The RKE2 bundle structure is as follows:

DirectoryDescriptionsystemlogsContains the logs related to system events, security audits, and general system messages.systeminfoContains the information about the running processes, disk usage, cpu utilisation and so on.etcdContains the information related to the data storage of the etcd key-value store.journaldContains the logs managed by systemd-journald.networkingContains the network configuration details such as iptables, routing and so on.rke2Contains the kubelet logs, agent and server certificates, info on crictl and the resources running on the cluster and the pod logs.service-metricsContains high level usage telemetry stored in individual XML files.

