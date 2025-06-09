# How to address weak ciphers in TLS 1.2

TLS 1.2 has vulnerabilities related to weak cipher implementation. If you use TLS 1.2, you must take one of the following steps:

Option A: Upgrade to TLS 1.3Option B: Use TLS 1.2 and modify your cypher
                    suite to address kube API server TLS issuesIf you are not sure what TLS version you use, refer to How to check the TLS version.

# Option A: Upgrading to TLS 1.3

To upgrade to TLS 1.3, take the following steps:

1. Modify the configuration of the primary TLS listener in Automation Suite, which operates on port 443. To do that, update the value of the istioMinProtocolVersion parameter in the cluster_config.json file to TLSV1_3.
2. Re-run the Automation Suite installation by running the following command:./bin/uipathctl manifest apply cluster_config.json --versions versions/helm-charts.json
3. Update the kube API server to TLS 1.3. The kube API server operates on port 6443. To perform the upgrade, add the following line to your config.yaml file:sed -i '/kube-apiserver-arg:/a - "tls-min-version=VersionTLS13"' /etc/rancher/rke2/config.yaml
4. Restart the RKE2 server. Note that this step may cause temporary downtime.systemctl restart rke2-server

# Option B: Modifying your cipher suite

To continue using TLS 1.2 and fortify your system's security, take the following steps. Note that the following steps address the kube API server TLS issues.Modify your cipher suite by inserting the following line into your config.yaml. The configuration line must include the parameters of the ciphers that you want to allow.sed  -i '/kube-apiserver-arg:/a - "tls-cipher-suites=TLS_CHACHA20_POLY1305_SHA256,TLS_AES_256_GCM_SHA384,TLS_AES_128_GCM_SHA256,TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256,TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA,TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA,TLS_RSA_WITH_AES_128_CBC_SHA,TLS_RSA_WITH_AES_128_GCM_SHA256,TLS_RSA_WITH_AES_256_CBC_SHA,TLS_RSA_WITH_AES_256_GCM_SHA384"' /etc/rancher/rke2/config.yamlRestart the RKE2 server. Note that this step may cause temporary downtime.systemctl restart rke2-server
