# Monitoring configuration

To provision enough resources for monitoring (see Using the monitoring stack), you should consider the number of vCPUs in the cluster and the amount of desired metric retention. Details on how to set the following monitoring resource configurations are provided next.

The following table describes the monitoring field details:


| Parameter | Description |
| --- ---| prometheus_retention | In days.This is the amount of days that metrics will be retained for the purpose of visualization in Grafana and manual querying via the Prometheus console.Default value is 7. |
| prometheus_storage_size | In GB.Amount of storage space to reserve per Prometheus replica.A good rule of thumb is to set this value to:0.65 * vCPU cores * (prometheus_retention / 7)Example:If you set prometheus_retention to 14 days, and your cluster has 80 cores spread across 5 machines, this becomes:0.65 * 80 * (14 / 7)52 * (2)104Default value is 45 and should not be set lower.If Prometheus starts to run out of storage space, an alert will be triggered with specific remediation instructions. See here. |
| prometheus_memory_limit | In MB.Amount of memory to limit each Prometheus replica to.A good rule of thumb is to set this value to:100 * vCPU cores * (prometheus_retention / 7)Example:If you've set prometheus_retention to 14 days, and your cluster has 80 cores spread across 5 machines, this becomes:100 * 80 * (14 / 7)8000 * (2)16000Default value is 3200 for the single-node evaluation mode, and 6000 for the multi-node HA-ready production mode, and should not be set lower.If Prometheus starts to run out of memory, an alert will be triggered with specific remediation instructions. See here. |

Example

"monitoring": {
  "prometheus_retention": 14,
  "prometheus_memory_limit": 16000,
  "prometheus_storage_size": 104
}
