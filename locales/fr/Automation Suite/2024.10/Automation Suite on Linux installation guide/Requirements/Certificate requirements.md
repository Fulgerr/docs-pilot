# Certificate requirements

For details on how to manage certificates post-installation, see Managing certificates.

Automation Suite requires two certificates at the time of installation.

* Server certificate – required for TLS communication between the client and the cluster;
* Identity token-signing certificate – required to sign the authentication token.

The installation process generates self-signed certificates on your behalf, but we recommend updating these with certificates signed by a trusted certificate authority as soon as installation completes.

The installation process generates self-signed certificates on your behalf. These certificates will expire in 90 days, and you must replace them with certificates signed by a trusted Certificate Authority (CA) as soon as installation completes. If you do not update the certificates, the installation will stop working after 90 days.If you installed Automation Suite on a FIPS-enabled host and want to want to bring your own certificates, make sure they are FIPS-compliant. For a list of eligible ciphers supported by RHEL, see RHEL documentation.Aside from the mentioned certificates, you may need to provide additional trusted CA certificates if you want the cluster to trust external software. Example: SQL Server CA Certificate, SMTP Server CA Certificate, external S3 compatible objectstore CA certificate, etc.At the time of installation, you must provide CA certificates for any external software that requires a secure TLS communication. However, if you have not enabled the TLS communication, you can configure it post-installation. For instructions, see Managing certificates.

## Server certificate requirements

# Untitled Section

The server certificate must meet the following requirements:

* File format should be .pem, i.e., Base64 encoded DER certificate;
* Private key length should be at least 2048;
* Extended Key Usage: TLS Web Server Authentication; required for accessing Automation Suite on iOS devices;
* Certificate key must be decrypted. If the key is encrypted, run the following command to decrypt it:# replace /path/to/encrypted/cert/key to absolute file path of key # replace /path/to/decrypt/cert/key to store decrypt key # Once prompted, please entry the passphrase or password to decrypt the key openssl rsa -in /path/to/encrypted/cert/key -out /path/to/decrypt/cert/key
* Should have Subject Alternative Name for all the DNS entries required for installing Automation Suite. If the FQDN for the cluster is automationsuite.mycompany.com, the certificate SAN should have the following DNS:automationsuite.mycompany.com*.automationsuite.mycompany.comAlternatively, if the * wildcard is too generic, make sure you have SAN entries for the following DNS:automationsuite.mycompany.comalm.automationsuite.mycompany.commonitoring.automationsuite.mycompany.comregistry.automationsuite.mycompany.comobjectstore.automationsuite.mycompany.cominsights.automationsuite.mycompany.comapps.automationsuite.mycompany.com


### Active/Passive certificate requirements

If the DNS for the primary and secondary Automation Suite cluster are automationsuite-primary.mycompany.com and automationsuite-secondary.mycompany.com, respectively, then you must add the following DNS as SAN entries in your certificate:automationsuite-primary.mycompany.comalm.automationsuite-primary.mycompany.commonitoring.automationsuite-primary.mycompany.comregistry.automationsuite-primary.mycompany.comautomationsuite-secondary.mycompany.comalm.automationsuite-secondary.mycompany.commonitoring.automationsuite-secondary.mycompany.comregistry.automationsuite-secondary.mycompany.com


## Server certificate files

# Untitled Section

Automation Suite requires three files at the time of installation, as follows:

* Server / TLS certificate file — the server’s public certificate file. This file must contain only the leaf server certificate.
* Server / TLS key file — private key file for the server certificate.
* Certificate Authority Bundle — this is the Public Certificate of CA which is used to sign or issue the server certificate. This file must contain both root and all intermediate certificates if present.

To verify the CA and Server certificate, run the following command on the Linux machine:

# Please replace /path/to/ca-certificate-bundle and /path/to/server-certificate with actual file path.

openssl verify -CAfile /path/to/ca-certificate-bundle /path/to/server-certificate


## Identity token-signing certificate

Automation Suite has the following requirements in terms of token-signing certificates at the time of installation:

* File format should be pkcs12 to sign the authentication token;
* Password for signing the certificate is required.

If an identity token signing certificate is not provided, Automation Suite uses the server certificates to generate the one at the time of installation.

