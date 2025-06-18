# Certificate configuration

If no certificate is provided at the time of installation, the installer creates self-issued certificates and configures them in the cluster.

The validity of the self-signed certificates is 90 days.

For details on how to obtain a certificate, see Managing the certificates.

Make sure to specify the absolute path for the certificate files. Run pwd to get the path of the directory where files are placed and append the certificate file name to the cluster_config.json.In multi-node HA-ready production installations, a certificate is required only on the first node.ParameterDescriptionserver_certificate.ca_cert_fileAbsolute path to the Certificate Authority (CA) certificate. This CA is the authority that signs the TLS certificate. A CA bundle must contain only the chain certificates used to sign the TLS certificate. The chain limit is nine certificates.If you use a self-signed certificate, you must specify the path to rootCA.crt, which you previously created. Leave blank if you want the installer to generate ir.server_certificate.tls_cert_fileAbsolute path to the TLS certificate (server.crt is the self-signed certificate). Leave blank if you want the installer to generate it.If you provide the certificate yourself,
                                    the server.crt file must contain the entire
                                    chain, as shown in the following
                                    example:-----server cert-----
-----root ca chain-----server_certificate.tls_key_fileAbsolute path to the certificate key (server.key is the self-signed certificate). Leave blank if you want the installer to generate it.identity_certificate.token_signing_cert_fileAbsolute path to the identity token signing certificate used to sign tokens (identity.pfx is the self-signed certificate). Leave blank if you want the installer to generate an identity certificate using the server certificate.identity_certificate.token_signing_cert_passPlain text password set when exporting the identity token signing certificate.additional_ca_certsAbsolute path to the file containing the additional CA certificates that you want to be trusted by all the services running as part of Automation Suite. All certificates in the file must be in valid PEM format.For example, you need to provide the file containing the SQL server CA certificate if the certificate is not issued by a public certificate authority.
