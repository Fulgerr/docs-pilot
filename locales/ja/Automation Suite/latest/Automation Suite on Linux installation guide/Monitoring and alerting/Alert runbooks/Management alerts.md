# Management alerts


### alertmanager.rules




### general.rules




### prometheus-operator

# PrometheusOperatorListErrors, PrometheusOperatorWatchErrors, PrometheusOperatorSyncFailed, PrometheusOperatorReconcileErrors, PrometheusOperatorNodeLookupErrors, PrometheusOperatorNotReady, PrometheusOperatorRejectedResources

Internal errors of the Prometheus operator, which controls Prometheus resources. Prometheus itself may still be healthy while these errors are present; however, this error indicates there is degraded monitoring configurability. Contact UiPath® Support.


### prometheus

# PrometheusBadConfig

Prometheus has failed to load or reload configuration. Please check any custom Prometheus configurations for input errors. Otherwise contact UiPath® Support.

# PrometheusErrorSendingAlertsToSomeAlertmanagers, PrometheusErrorSendingAlertsToAnyAlertmanager, PrometheusNotConnectedToAlertmanagers

The connection from Prometheus to AlertManager is not healthy. Metrics may still be queryable, and Grafana dashboards may still show them, but alerts will not fire. Check any custom configuration of AlertManager for input errors and and otherwise contact UiPath® Support.

# PrometheusNotificationQueueRunningFull, PrometheusTSDBReloadsFailing, PrometheusTSDBCompactionsFailing, PrometheusNotIngestingSamples, PrometheusDuplicateTimestamps, PrometheusOutOfOrderTimestamps, PrometheusRemoteStorageFailures, PrometheusRemoteWriteBehind, PrometheusRemoteWriteDesiredShards

Internal Prometheus errors indicating metrics may not be collected as expected. Please contact UiPath® Support.

# PrometheusRuleFailures

This may happen if there are malformed alerts based on non-existent metrics or incorrect PromQL syntax. Contact UiPath® Support if no custom alerts have been added.

# PrometheusMissingRuleEvaluations

Prometheus is not able to evaluate whether alerts should be firing. This may happen if there are too many alerts. Please remove expensive custom alert evaluations and/or see documentation on increasing CPU limit for Prometheus. Contact UiPath® Support if no custom alerts have been added.

# PrometheusTargetLimitHit

There are too many targets for Prometheus to collect from. If extra ServiceMonitors have been added (see Monitoring console), you can remove them.


### uipath.prometheus.resource.provisioning.alerts




### uipath.availability.alerts




### backup




### cronjob-alerts



