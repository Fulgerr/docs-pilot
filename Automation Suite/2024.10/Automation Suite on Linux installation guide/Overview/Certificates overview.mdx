# Certificates overview

This page describes all the certificates required by an Automation Suite installation as well as the principle of the certificate rotation process.

For details on the certificates you must provide when replacing the self-signed certificates, see Certificate requirements.

## Understanding how trust certificates work

Inter-service communication between products inside Automation Suite is done via the FQDN of the cluster. Products cannot use internal URLs to communicate with each other. For example, Orchestrator can connect to Identity Server for user authentication via https://automationsuite.mycompany.com/identity.

While two different Automation Suite products must use the FQDN of the cluster, they can also contain multiple microservices. These microservices can use internal URLs to communicate with each other.


## Understanding how communication works

The following diagram and flow explain how the client connects to a service and how the authentication is done via the Identity Service.

1. The client makes a connection with the service using URL, i.e., Orchestrator, Apps, Insights, etc. using the following URL: https://automationsuite.mycompany.com/myorg/mytenant/service_ .
2. Istio intercepts the call, and based on the path of the service_ , forwards the call to the specific service.
3. The service calls Identity Service to authenticate the incoming request from the robot via https://automationsuite.mycompany.com/myorg/mytenant/identity_ .
4. Istio intercepts the call, and based on the path identity_ , forwards the request to Identity Service.
5. Identity Service returns the response with the result to Istio.
6. Istio returns the response to the service. Since the call is made using the HTTPS protocol, Istio returns the response with the TLS certificate so that the connection is secure. If the service trusts the server certificate returned by Istio, it approves the response. Otherwise, the service rejects the response.
7. The service prepares the response and sends it back to Istio.
8. Istio forwards the request back to the client. If the client machine trusts the certificate, then the entire request is successful. Otherwise the request fails.


### Understanding how robots and Orchestrator communicate

This section describes a scenario where a robot tries to connect to Orchestrator in Automation Suite. The following diagram and flow explain how the robot connects to Orchestrator, and how authentication is done via Identity Server.

1. Robot makes a connection with Orchestrator using the following URL: https://automationsuite.mycompany.com/myorg/mytenant/orchestrator_
2. Istio intercepts the call, and based on the orchestrator_ path, it forwards it to the Orchestrator service.
3. The Orchestrator service calls Identity Server to authenticate the incoming request from the robot via https://automationsuite.mycompany.com/myorg/mytenant/identity_ .
4. Istio intercepts the call, and based on the identity_ path, it forwards the request to Identity Server.
5. Identity Server returns the response with the results to Istio.
6. Istio returns the response to Orchestrator. Since the call is made using the HTTPS protocol, Istio returns the response with the TLS certificate, so that connection is secure. If Orchestrator trusts the server certificate returned by Istio, it also approves the response. Otherwise, Orchestrator rejects the response.
7. Orchestrator prepares the response and sends it back to Istio.
8. Istio forwards the request back to robot. If the robot machine trusts the certificate, then the entire request is successful. Otherwise, the request fails.


## Understanding the container architecture related to certificates




### Container level

![6024db0-certificates_container=GUID-91A8F7CC-7554-46A6-8A54-89553F1BCD59=1=en=Default](/images/6024db0-certificates_container=GUID-91A8F7CC-7554-46A6-8A54-89553F1BCD59=1=en=Default.png)

In this example, the container has its own operating system (RHEL OS), and Service can represent an Orchestrator running on top of RHEL OS.

Every OS has its own certificate store. In the case of RHEL OS, the Certificate Trust Store is located in /etc/pki/ca-trust/ca/.

This path is where RHEL OS stores all certificates. Every container will have its own Certificate Trust Store. As part of the Automation Suite configuration, we inject the entire chain certificate that contains the root certificate, all the intermediate certificates, as well as the leaf certificate, and we store them in this path. Since services trust the root and intermediate certificates, they automatically trust any other certificates created by the root and intermediate certificates.


### Pod level

There are hundreds of containers running within Automation Suite. Manually adding certificates for each of these containers for all the services would be a demanding task. However, Automation Suite includes a shared volume and an Init container cert-trustor to help with this task. Init is a specialized container that runs before app containers in a Pod, and its lifecycle ends as soon as it completes its job.

In the following example, the Orchestrator service is running in one pod. As a reminder, a pod can contain more than one container. In this pod, we inject one more Init container called Cert-trustor. This container will contain the root certificate, the intermediate certificates, and the leaf certificate.

The shared volume is attached to both Cert-trustor container and Orchestrator service container. It has the same path as the RHEL OS Certificate Trust Store: /etc/pki/ca-trust/ca/source/anchors.

Before Orchestrator can run, the Cert-trustor performs a job that will add the certificates in the shared volume in the /etc/pki/ca-trust/ca/source/anchors location and terminates.

Certificates will be available for Orchestrator service through the shared volume.

![dfa1b59-certificates_pod=GUID-444CC583-FC04-42B1-8B47-7F3A2681454F=1=en=Default](/images/dfa1b59-certificates_pod=GUID-444CC583-FC04-42B1-8B47-7F3A2681454F=1=en=Default.png)


## Inventory of all certificates in Automation Suite




### Certificates generated during installation

As part of the Automation Suite installation, the following certificates are generated:

* Self-signed certificate generated at the time of installation, which is valid for 3 months. You must replace the self-signed certificate with a domain certificate post-installation. See Managing certificates
* Identity Server certificate for signing JWT tokens used in authentication. If the certificate for signing the JWT token is not provided, Automation Suite uses the currently configured TLS certificate (self-signed or customer-provided), which expires in 90 days. If you want to have your own certificate for signing identity tokens, see Managing certificates .
* RKE2 certificates are generated, and by default expire in 12 months. If the certificates are already expired or they expire in less than 90 days, they are rotated when RKE2 is restarted.


### Additional certificates

* If enabled, SAML2 Authentication protocol can use a service certificate.
* If you configure Active Directory using a username and password, LDAPS (LDAP Over SSL) is optional. If you opt for LDAPS, you must provide a certificate. This certificate will be added into Automation Suite’s Trusted Root Certification Authorities. For details, see Microsoft documentation .


## Understanding how the certificate update/rotation works




### Online installation

# Untitled Section

The certificates are stored in two places:

* istio-ingressgateway-certs in istio-system
* uipath namespace

To update the certificate within istio-system and uipath namespaces, you must run the uipathctl config tls-certificates update command.

Pods can only access secrets that are in their namespace. For instance, the pods running in the uipath namespace cannot access the secrets stored inistio-system namespace. Hence, certificates are copied in both namespaces.

For the uipath namespace, we mount the certificates to the pods that need certificates and restart the pods so they can use the new certificates.

For single-node evaluation installations, the update will scale down the pods. All the pods will be shut down and restarted. This operation will cause downtime.For multi-node HA-ready production installations, the update happens using the rolling deployment method. If microservices have two pod for high availability purpose, the update will delete one of the pod, and a new version of the pod will come up. Once the new one is started successfully, the old one will removed. There will be a brief downtime period while the old pod is not yet terminated.


### Offline installation

In addition to the certificates specific to an online installation, an offline deployment has two additional locations where rootCA.crt and tls.crt are used. Certificates are used in ArgoCD and Docker Registry, and they are then stored in both Docker and ArgoCD namespaces.

You can verify the secrets using the following command :

# For docker registry
kubectl -n docker-registry get secrets docker-registry-tls -o yaml
# For Argocd
argocd cert list --cert-type https

