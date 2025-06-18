# Certificate issue in offline installation

# Description

You might get an error that the certificate is signed by an unknown authority.

Error: failed to do request: Head "https://sfdev1778654-9f843b23-lb.westeurope.cloudapp.azure.com:30071/v2/helm/audit-service/blobs/sha256:09bffbc520ff000b834fe1a654acd089889b09d22d5cf1129b0edf2d76554892": x509: certificate signed by unknown authority

# Solution

Both the rootCA and the server certificates need to be in the trusted store on the machine.

To investigate, execute the following commands:

[root@server0 ~]# find /etc/pki/ca-trust/source{,/anchors} -maxdepth 1 -not -type d -exec ls -1 {} +
/etc/pki/ca-trust/source/anchors/rootCA.crt
/etc/pki/ca-trust/source/anchors/server.crt

The provided certificates need to be in the output of those commands.

Alternatively, execute the following command:

[root@server0 ~]# openssl x509 -in /etc/pki/ca-trust/source/anchors/server.crt -text -noout

Ensure that the fully qualified domain name is present in the Subject Alternative Name from the output.

[root@server0 ~]# openssl x509 -in /etc/pki/ca-trust/source/anchors/server.crt -text -noout

You can update the CA Certificate as follows:

[root@server0 ~]# update-ca-trust
