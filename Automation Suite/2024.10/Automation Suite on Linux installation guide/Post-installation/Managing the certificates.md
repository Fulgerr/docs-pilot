# Managing the certificates

The installation process generates self-signed certificates on your behalf. These certificates are FIPS-compliant and will expire in 90 days. You must replace them with certificates signed by a trusted Certificate Authority (CA) as soon as installation completes. If you do not update the certificates, the installation will stop working in 90 days.If you installed Automation Suite on a FIPS-enabled host and want to update the certificates, make sure they are FIPS-compliant.

The installation bundle provides a cluster management tool that enables you to update certificates post-installation. To access the tool, navigate to the location of the installer bundle:

cd /opt/UiPathAutomationSuite/

## Generating a Certificate Signing Request (CSR) and a private key

To generate the CSR and the private key, run the following command:

# copy the machine openssl configuration locally
cp /etc/pki/tls/openssl.cnf ./openssl.tmp.cnf

# Replace the [AUTOMATION_SUITE_FQDN] value. For example, "automationsuite.corp.com"
AS_FQDN=[AUTOMATION_SUITE_FQDN]
cat >> ./openssl.tmp.cnf <<EOF
[SAN]
subjectAltName=DNS:$AS_FQDN,DNS:alm.$AS_FQDN,DNS:monitoring.$AS_FQDN,DNS:registry.$AS_FQDN,DNS:objectstore.$AS_FQDN,DNS:insights.$AS_FQDN,DNS:apps.$AS_FQDN
EOF

# create the certificate request
openssl req -new -sha256 -newkey rsa:2048 -nodes -keyout server.key -subj "/C=xx/ST=xx/O=xx/OU=xx/CN=$AS_FQDN" -reqexts SAN -config openssl.tmp.cnf -out ${AS_FQDN}.csr

Your IT team uses the obtained values to generate a signed certificate. The generated private key remains local.


## Managing server certificates

To view more information about server certificates, run the following command:

./bin/uipathctl config tls-certificates --help

Output:

************************************************************************************

Manage tls certificates

Usage:
  uipathctl config tls-certificates [flags]
  uipathctl config tls-certificates [command]

Available Commands:
  get         Get the current tls certificates
  update      Update tls certificates

Flags:
  -h, --help   help for tls-certificates

Global Flags:
      --context string      name of the kubeconfig context to use
      --kubeconfig string   kubectl configuration file (default: ~/.kube/config)
      --log-format string   log format. one of [text,json] (default "text")
      --log-level string    set log level. one of [trace,debug,info,error] (default "error")
  -q, --quiet               suppress all output except for errors and warnings
      --timeout duration    timeout of the command (default 1h0m0s)

************************************************************************************

The following sections describe the operations you can perform using the uipathctl config tls-certificates command.


### Updating the server certificate

# Online installation: How to find the server certificate

Certificates are stored as a secret at the Istio level. You can find certificates under the istio-ingressgateway-certs name in the istio-system namespace.

See the certificate files in the following list:

* Server TLS certificate is stored as tls.crt
* Server TLS private key as tls.key
* CA bundle is stored as ca.crt

You can verify the secrets using the following command :

kubectl -n istio-system get secrets istio-ingressgateway-certs -o yaml

Certificates are also stored in the UiPath namespace. This is applicable to every UiPath® product that needs certificate information to trust incoming calls. For details, see Understanding the container architecture related to certificates.

# Offline installation: How to find the server certificate

In addition to the certificates required by online deployment, an offline deployment has two additional locations that use the same rootCA.crt and tls.crt: ArgoCD and Docker Registry. Certificates are then stored in both Docker and ArgoCD namespaces.

You can verify the secrets using the following command :

# For docker registry
kubectl -n docker-registry get secrets docker-registry-tls -o yaml
# For Argocd
argocd login alm.cluster_fqnd --username argocd_username --password argocd_password
argocd cert list --cert-type https

# How to update server certificates

You must decrypt the certificate key before updating the server certificate. Skipping the decryption step would result in an error.

To decrypt the certificate key, run the following command:

# replace /path/to/encrypted/cert/key to absolute file path of key
# replace /path/to/decrypt/cert/key to store decrypt key
# Once prompted, please entry the passphrase or password to decrypt the key

openssl rsa -in /path/to/encrypted/cert/key -out /path/to/decrypt/cert/key

Run uipathctl to update the certificate. You need the path to each of the three certificate files. All the certificate file should be in PEM format.

* Certificate Authority Bundle - This bundle should contain only the chain certificates used to sign the TLS server certificate. The chain limit is up to nine certificates.
* Server Certificate - Public server certificate The server.crt file must contain the entire chain, as shown in the following example:-----server cert----- -----root ca chain-----
* Private key - Private key for server certificate./bin/uipathctl config tls-certificates update --cert server.crt --cacert ca.crt --key server.key

The following files are be stored in in the /directory/path/to/store/certificate location.


### Accessing the TLS certificate

To print out the certificate files, run the following command, specifying the directory where certificates are stored.

./bin/uipathctl config tls-certificates get --show-details


### Adding the CA certificate to the host trust store

You are responsible for making sure the generated certificates are trusted.

To add the certificate to the host VM trust store, run the following commands on all the nodes in
            the cluster:

# 1. Copy the certificate file to the /usr/share/pki/ca-trust-source/anchors/ or the /etc/pki/ca-trust/source/anchors/ directory
cp /path/to/the/ca-cert /usr/share/pki/ca-trust-source/anchors/

# 2. Update the trust store configuration
update-ca-trust


## Managing additional CA certificates

To view more information about additional CA certificates, run the following command:

./bin/uipathctl config additional-ca-certificates --help

Output:

***************************************************************************************

Manage additional ca certificates

Usage:
  uipathctl config additional-ca-certificates [flags]
  uipathctl config additional-ca-certificates [command]

Available Commands:
  get         Get the current additional ca certificates
  update      Update additional ca certificates

Flags:
  -h, --help   help for additional-ca-certificates

Global Flags:
      --context string      name of the kubeconfig context to use
      --kubeconfig string   kubectl configuration file (default: ~/.kube/config)
      --log-format string   log format. one of [text,json] (default "text")
      --log-level string    set log level. one of [trace,debug,info,error] (default "error")
  -q, --quiet               suppress all output except for errors and warnings
      --timeout duration    timeout of the command (default 1h0m0s)

***************************************************************************************

The following sections describe the operations you can perform using the uipathctl config additional-ca-certificates command.


### Updating the CA certificates

Before running the command, you must update the cluster_config.json file to point to the file with additional_ca_certs. For more details about this parameter, refer to Certificate configuration.

This command helps you update or replace the existing configured CA certificates.

./bin/uipathctl manifest apply cluster_config.json --versions versions.json

To append the old certificates, you must use the get command from the Accessing the CA certificates section and append them in the CA certificate .pem file that you must provide in the additional_ca_certs field.The CA Certificate bundle file should be a valid .pem format and can have more than one certificate present in it.


### Accessing the CA certificates

To download the already configured CA certificates, run the following command:

./bin/uipathctl config additional-ca-certificates get


### Adding the CA certificate to the host trust store

You are responsible for making sure the generated certificates are trusted.

To add the certificate to the host VM trust store, run the following commands on all the nodes in
            the cluster:

# 1. Copy the certificate file to the /usr/share/pki/ca-trust-source/anchors/ or the /etc/pki/ca-trust/source/anchors/ directory
cp /path/to/the/ca-cert /usr/share/pki/ca-trust-source/anchors/

# 2. Update the trust store configuration
update-ca-trust


## Managing identity token-signing certificates

Automation Suite offers two methods to manage the rotation of identity token-signing certificates: automatic and manual.

To view more information about identity token-signing certificates, run the following command:

./bin/uipathctl config token-signing-certificates --help

Output:

************************************************************************************

Manage token signing certificates

Usage:
  uipathctl config token-signing-certificates [flags]
  uipathctl config token-signing-certificates [command]

Available Commands:
  get         Get the current token signing certificate
  rotate      Rotate token signing certificates
  update      Update future token signing certificate

Flags:
  -h, --help   help for token-signing-certificates

Global Flags:
      --context string      name of the kubeconfig context to use
      --kubeconfig string   kubectl configuration file (default: ~/.kube/config)
      --log-format string   log format. one of [text,json] (default "text")
      --log-level string    set log level. one of [trace,debug,info,error] (default "error")
  -q, --quiet               suppress all output except for errors and warnings
      --timeout duration    timeout of the command (default 1h0m0s)

************************************************************************************



The following section provide details on the operations you can perform using the uipathctl config token-signing-certificates command.


### Automatic certificate rotation

Automatic certificate rotation means Automation Suite manages the lifecycle of signing keys. This includes rotating keys every 90 days, announcing new keys 14 days prior to rotation, retaining old keys for 14 days post-rotation, and then deleting them when the 14-day period ends.

If you're upgrading from an older version to 2024.10, automatic certificate rotation is disabled by default. To enable automatic key management, use the following command:

uipathctl config token-signing-certificates automatic-key-management enable

Enabling automatic certificate rotation may result in a downtime of up to one hour.

Automatic certificate rotation is enabled by default for clean Automation Suite installations. To disable automatic key management, use the following command:

uipathctl config token-signing-certificates automatic-key-management disable

If the automatic management feature is disabled, signing certificates need to be updated and rotated manually. For details on manual key management, see the documentation on manually updating and rotating the certificate.


### Manually updating the certificate

To upload the new certificate to sign the token, run the following command:

The following command does not replace the existing token signing certificate.Make sure the certificate you provide is in .pem format.The server.crt file must contain the entire chain, as shown in the
                following example:-----server cert-----
-----root ca chain-----

./bin/uipathctl config token-signing-certificates update --cert server.crt --key server.key


### Manually rotating the certificate

To rotate or replace the old certificate with the new one, run the following command:

./bin/uipathctl config token-signing-certificates rotate

There should be the lead time of about 24 - 48 hours between certificate update and rotate.We need this lead time to keep supporting the authentication for cached token signed by old certificate.If you rotate the certificate too soon before the expiry of cache token can result in downtime. And you may have to restart all your robots.


### Emergency certificate rotation

The following procedure is for emergencies only. You should rotate certificates ahead of their expiration datesTo perform an emergency certificate update, take the following steps:

Obtain a new certificate or create a self-signed one and copy it to the cluster server node used to execute the next rotation steps. To create a new self-signed certificate, run the following command:openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout identityserver.key -out identityserver.crt
openssl pkcs12 -export -out identityserver.pfx -inkey identityserver.key -in identityserver.crtIf IdentityServer1.pfx is expired, rotate and update the certificate. For instructions, see Rotating the certificate.If IdentityServer2.pfx is expired, update the certificate.If both certificates are expired, update, rotate and update again. Restart all deployments.Clear all browser caches. If you run in Incognito or Private mode, you can skip this step. For Firefox, press CTRL+SHIFT+DEL, select Cache, and select OK.For Chrome, press CTRL+SHIFT+DEL, select Cached images and files, and select Clear data.


### Accessing the certificate

Run the following command to download the current token signing certificate:

./bin/uipathctl config token-signing-certificates get --show-details


## Managing RKE2 certificates

By default, RKE2 certificates expire in 12 months. In the 90 days prior to their expiration date, certificates are rotated when you restart RKE2.

For more details, refer to RKE2 - Advanced Options - Certificate rotation.


### Checking the RKE2 certificate expiration date

To check the expiration date of the RKE2 certificate, run the following command on any of the nodes:if [[ -d "/var/lib/rancher/rke2/server/tls" ]]; then
  dir="/var/lib/rancher/rke2/server/tls"
elif [[ -d "/var/lib/rancher/rke2/agent/tls" ]]; then
  dir="/var/lib/rancher/rke2/agent/tls"
else
dir="/var/lib/rancher/rke2/agent/"
fi
# Loop through each .crt file in the directory
for file in "$dir"/*.crt; do
# Extract the expiry date from the certificate
expiry=$(openssl x509 -enddate -noout -in "$file" | cut -d= -f 2-)
# Get the file name without the path
filename=$(basename "$file")
# Print the filename and expiry date in a pretty format
printf "%-30s %s\n" "$filename:" "$expiry"
doneThe output you get should be similar to the one shown in the following image:


### Rotating the RKE2 certificate

By default, RKE2 certificates expire in 12 months. In the 90 days prior to their expiration date, certificates are rotated when you restart RKE2. However, if the validity of the certificates exceeds the 90-day period, you must manually rotate the certificates by following the steps mentioned in RKE2 - Advanced Options - Certificate rotation.

If you want to customize the expiration period of RKE2 certificates to meet particular requirements, you can do so before restarting the RKE2 services for both server and agent nodes.

To rotate the RKE2 certificates, you must first execute a series of action on the server nodes, then proceed with some steps on the agent nodes.

# Untitled Section

Take the following steps on the server nodes:Stop the RKE2 server:systemctl stop rke2-server.serviceClear any remaining RKE2 processes:rke2-killall.shDelete the dynamic-cert.json file located at /var/lib/rancher/rke2/server/tls/.To customize the expiration period of the RKE2 certificates, use the following command. Be aware that this example sets the validity period to 1000 days, but you can change this value based on your requirements.SERVICE_NAME="rke2-server.service"
conf_file_path="/etc/systemd/system/${SERVICE_NAME}.d/cert.conf"
mkdir -p /etc/systemd/system/"${SERVICE_NAME}".d/

cat > "$conf_file_path" <<EOF
[Service]
Environment="CATTLE_NEW_SIGNED_CERT_EXPIRATION_DAYS=1000"
EOF

systemctl daemon-reloadRestart the RKE2 server:systemctl start rke2-server.serviceIf the cluster has more than one server node, steps 1-4 might not wholly execute as etcd may be unable to complete the leader election. Should this happen, repeat steps from 1-4 on other server nodes.Delete the rke2-serving secret from the kube-system namespace:kubectl delete secret -n kube-system rke2-servingIn a multi-node deployment, you may not be able to run the kubectl commands until you have completed the first four operations on the necessary number of server nodes. This is to fulfill the etcd quorum requirement. You can remove the rke2-serving secret immediately after the RKE2 server starts up.Once etcd attains quorum, the RKE2 server can start the rest of the control plane pods. You should then see the successful execution of the kubectl get nodes command. When your server nodes are ready, you can proceed to the agent nodes to regenerate the certificates.

# Untitled Section

Take the following steps on the agent nodes:

1. Stop the RKE2 server:systemctl stop rke2-agent.service
2. Clear any remaining RKE2 processes:rke2-killall.sh
3. To customize the expiration period of the RKE2 certificates, use the following command. Be aware that this example sets the validity period to 1000 days, but you can change this value based on your requirements.SERVICE_NAME="rke2-agent.service" conf_file_path="/etc/systemd/system/${SERVICE_NAME}.d/cert.conf" mkdir -p /etc/systemd/system/"${SERVICE_NAME}".d/ cat > "$conf_file_path" <<EOF [Service] Environment="CATTLE_NEW_SIGNED_CERT_EXPIRATION_DAYS=1000" EOF systemctl daemon-reload
4. Restart the RKE2 server:systemctl start rke2-agent.service


## Managing the external OCI-compliant registry certificate

To update the certificate for the external OCI-compliant registry post-installation, take the following steps:

Update the registry_ca_cert flag in the cluster_config.json file. For details, see External OCI-compliant registry configuration.Update the root CA used by the external OCI-compliant registry by running the following command on all the nodes:./bin/uipathctl rke2 generate-registries cluster_config.json --current-config-path /etc/rancher/rke2/registries.yaml > /etc/rancher/rke2/registries.yaml.tmp
mv -f /etc/rancher/rke2/registries.yaml.tmp /etc/rancher/rke2/registries.yaml
systemctl restart rke2-server || systemctl restart rke2-agentUpdate the ArgoCD trusted CA certificate for the external OCI-compliant registry:./bin/uipathctl config argocd ca-certificates update --cacert [PATH]

