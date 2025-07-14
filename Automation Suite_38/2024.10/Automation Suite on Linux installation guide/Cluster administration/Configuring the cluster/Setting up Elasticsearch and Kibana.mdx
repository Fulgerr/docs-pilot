# Setting up Elasticsearch and Kibana

The EFK (Elasticsearch, Fluentd, Kibana) stack is a centralized logging solution that allows you to search, analyze and visualize log data. Fluentd collects and sends the logs to Elasticsearch, Kibana retrieves the logs and lets you visualize and analyze the data.

Automation Suite supports Elasticsearch version 7.x. Version 8.x is also supported, but only for advanced configurations.

### Creating a secret with the Elasticsearch password

If your Elasticsearch instance requires credentials, create a secret with its password in the cluster.

kubectl -n cattle-logging-system create secret generic elastic-user --from-literal=password=<password>


### ClusterOutput to Elasticsearch

Run the following command to ClusterOutput to Elasticsearch.
      Replace the following attributes with the ones of your Elasticsearch configuration:

* <elasticsearch host> - the network host of your Elasticsearch instance;
* <elasticsearch port> - the Elasticsearch port for client communication;
* <secret key> - the
        secret with the Elasticsearch password;
* timekey value in elasticsearch.buffer - the output frequency i.e. how often you want to
        push logs;
* elasticsearch.scheme -
          the URL scheme. Valid values are: http or
        https. kubectl -n cattle-logging-system apply -f - <<"EOF"
apiVersion: logging.banzaicloud.io/v1beta1
kind: ClusterOutput
metadata:
  name: es-output
spec:
  elasticsearch:
    host: <elasticsearch host>
    port: <elasticsearch port>
    scheme: <http or https>
    ssl_verify: false
    ssl_version: TLSv1_2
    user: elastic
    password:
      valueFrom:
        secretKeyRef:
          name: elastic-user
          key: <secret key>
    buffer:
      timekey: 10m
      timekey_wait: 30s
      timekey_use_utc: true
EOF


### ClusterFlow in FluentD

Run the following command to ClusterFlow in FluendD:

kubectl -n cattle-logging-system apply -f - <<"EOF"
apiVersion: logging.banzaicloud.io/v1beta1
kind: ClusterFlow
metadata:
  name: es-flow
spec:
  filters:
    - tag_normaliser:
        format: ${namespace_name}/${pod_name}.${container_name}
  globalOutputRefs:
    - es-output
  match:
    - select:
        container_names:
          - istio-proxy
        namespaces:
          - istio-system
    - exclude:
        container_names:
          - istio-proxy
          - istio-init
          - aicenter-hit-count-update
    - exclude:
        namespaces:
          - fleet-system
          - cattle-gatekeeper-system
          - default
    - exclude:
        labels:
          app: csi-snapshotter
    - exclude:
        labels:
          app: csi-resizer
    - select: {}
EOF

Logs from the cluster are collected and logged to the ClusterOutput.


### Configuring Kibana

Select Discover under Analytics on the sidebar.Select Create Index Pattern and then Create an index pattern with name Fluentd.Select I don’t want to use the time filter on the Configure settings window.Select Discover under Kibana on the sidebar.You can see logs in the dashboard. Logs query for the UiPath namespace and a specific service:

