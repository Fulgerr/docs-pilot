# How to enable Istio logging

To debug Istio, you need to enable logging. To do that, perform the following steps:

1. Edit the istio configmap in istio-system namespace, by using the following command: kubectl edit cm -n istio-system istio
2. Under data.mesh, add the following fields: accessLogFile: /dev/stdout
logLevel: debug
accessLogEncoding: "JSON" The following sample is an example of an updated istio configmap: apiVersion: v1
data:
  mesh: |-
    accessLogFile: /dev/stdout
    logLevel: debug
    accessLogEncoding: "JSON"
    accessLogFormat: |
      {
      "start_time": "%START_TIME%",
      "trace_parent": "%REQ(TRACEPARENT)%",
      "method": "%REQ(:METHOD)%",
      "path": "%REQ(X-ENVOY-ORIGINAL-PATH?:PATH)%",
      "protocol": "%PROTOCOL%",
      "response_code": "%RESPONSE_CODE%",
      "response_flags": "%RESPONSE_FLAGS%",
      "bytes_received": "%BYTES_RECEIVED%",
      "bytes_sent": "%BYTES_SENT%",
      "duration": "%DURATION%",
      "upstream_service_time": "%RESP(X-ENVOY-UPSTREAM-SERVICE-TIME)%",
      "x_forwarded_for": "%REQ(X-FORWARDED-FOR)%",
      "user_agent": "%REQ(USER-AGENT)%",
      "request_id": "%REQ(X-REQUEST-ID)%",
      "authority": "%REQ(:AUTHORITY)%",
      "upstream_host": "%UPSTREAM_HOST%"
      }
    defaultConfig:
      discoveryAddress: istiod.istio-system.svc:15012
      image:
        imageType: distroless
      proxyMetadata:
        WASM_INSECURE_REGISTRIES: '*'
    defaultProviders:
      metrics:
      - prometheus
    enablePrometheusMerge: true
    extensionProviders:
    - envoyExtAuthzHttp:
        includeHeadersInCheck:
        - authorization
        - cookie
        port: 80
        service: auth-oauth2-proxy.uipath.svc.cluster.local
      name: oauth2-proxy
    rootNamespace: istio-system
    trustDomain: cluster.local
  meshNetworks: 'networks: {}'
kind: ConfigMap
metadata:
  annotations:
    meta.helm.sh/release-name: istiod
    meta.helm.sh/release-namespace: istio-system
  labels:
    app.kubernetes.io/managed-by: Helm
    install.operator.istio.io/owning-resource: unknown
    istio.io/rev: default
    operator.istio.io/component: Pilot
    release: istiod
  name: istio
  namespace: istio-system
  resourceVersion: "180392"
  uid: 30647d4d-f62a-477e-ad80-c98a93f48855
3. Restart the istio deployments, by using the following commands: kubectl rollout restart deploy/istiod -n istio-system
kubectl rollout restart ds/istio-ingressgateway -n istio-system
