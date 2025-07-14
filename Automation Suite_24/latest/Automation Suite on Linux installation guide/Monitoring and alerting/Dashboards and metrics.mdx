# Dashboards and metrics

We provide pre-built component-specific dashboards, which you can access in Grafana. For details on the components you can monitor, see Automation Suite architecture.

Some alerts are pre-configured on important metrics. You can find these configurations in the Alerts section in the Prometheus UI. It is your responsibility to configure alert receivers.

## Accessing Grafana dashboard

To access Grafana dashboards, you must retrieve your credentials and use them to log in:

* Username: kubectl -n monitoring get secrets/grafana-creds -o "jsonpath={.data.admin-user}" | base64 -d; echo
* Password: kubectl -n monitoring get secrets/grafana-creds -o "jsonpath={.data.admin-password}" | base64 -d; echo


## Automation Suite component dashboards




### Monitoring the network

You can monitor the Automation Suite network via the following Grafana dashboards: Istio Mesh and Istio. For details on how to access Grafana, see .

The Istio-related dashboard are disabled by default. To enable the dashboards, take the following steps:

1. Log into the ArgoCD UI and go to Monitoring App. For details on how to access the ArgoCD UI, see .
2. Select Details and then, choose Parameters.
3. Set the global.monitoringConfigure.enableEnhancedMonitoring.istio.enabled parameter to true.

If you reinstall or perform an upgrade, the configuration set to enable the Istio dashboards will be removed. Consequently, you must re-enable the configuration to access the Istio dashboars.


### Monitoring storage




### Monitoring hardware utilization

To check the hardware utilization per node, you can use the Nodes dashboard. Data on the CPU, Memory, Disk, and Network is available.

You can monitor the hardware utilization for specific workloads using the Kubernetes / Compute Resources / Namespace (Workloads) dashboard. Select the uipath namespace to get the needed data.


### Monitoring Kubernetes resource status

To see the status of pods, deployments, statefulsets, etc., you can use the Cluster Explorer UI. This is the same landing page as accessed after logging into the rancher-server endpoint. The homepage shows a summary, with drill downs into specific details for each resource type on the left. Note the namespace selector at the top of the page. This dashboard may also be replaced with the Lens tool.


## Creating shareable visual snapshot of a Grafana chart

Select the menu button next to the chart title, and then select Share.Select the Snapshot tab, and set the Snapshot name,Expire, and Timeout.Select Publish to snapshot.raintank.io.

For more details, see the Grafana documentation on sharing dashboards.This snapshot is viewable on the public Internet by anyone with the link.


## Creating custom persistent Grafana dashboards

For details on how to create custom persisten Grafana dashboards, see Grafana documentation.


## Admin access to Grafana

Admin access to Grafana is not typically needed in Automation Suite clusters as dashboards are available for read access by default to anonymous users, and creating custom persistent dashboards must be created using the Kubernetes-native instructions linked previously in this document.

Nonetheless, admin access to Grafana is possible with the following instructions.

The default username and password for Grafana admin access can be retrieved as follows:

kubectl -n monitoring get secrets/grafana-creds -o "jsonpath={.data.admin-user}" | base64 -d; echo
kubectl -n monitoring get secrets/grafana-creds -o "jsonpath={.data.admin-password}" | base64 -d; echo

Note that in High Availability Automation Suite clusters, there are multiple Grafana pods in order to enable uninterrupted read access in case of node failure, as well as a higher volume of read queries. This is incompatible with admin access because the pods do not share session state and logging in requires it. In order to work around this, the number of Grafana replicas must be temporarily scaled to 1 while admin access is desired. Instructions on how to scale the number of Grafana replicas are provided next:

# scale down
kubectl scale -n monitoring deployment/monitoring-grafana --replicas=1
# scale up
kubectl scale -n monitoring deployment/monitoring-grafana --replicas=2


## Available metrics

You can search for available metrics in the Prometheus UI.Documentation on the available metrics is here:https://github.com/prometheus/node\_exporter#enabled-by-default - Connect to previewhttps://github.com/kubernetes/kube-state-metrics/tree/master/docs#exposed-metrics - Connect to previewQuerying Metrics from Prometheus (Istio)

