# Network requirements

Automation Suite does not support the IPv6 internet protocol.

## Using a firewall

We do not support firewalld. The Automation Suite installer automatically disables firewalld during installation; make sure it remains in a disabled state post-installation as well.

Automation Suite sets up default IP table rules on the host machines for necessary inter-node communication. We do not support custom IP table rules, such as those configured via firewalld, as they might conflict with IP table rules configured by Automation Suite. You can, however, apply extra firewall rules at the network level.

Changes to IP tables are not recommended or
                supported.

We recommend enabling firewall applications at the network gateway, but not between clusters.


## Allowing traffic in an online environment

This page lists the domains used by the various UiPath® products, components, and integrations in an online deployment. You must allow traffic to and from these domains, otherwise Automation Suite may malfunction.

Add to your allow list those endpoints and ports for the UiPath® products and services you use. For example, if you do not have AI Center, there is no need to add its required domains to your allow list.


### General requirements

To ensure cluster stability, your environment must meet the following requirements:

* Round Trip Time (RTT) between the nodes must be minimal (<10 ms RTT);
* High Availability requirements must be met.


### Installation

* For downloading the required installer files and configuration scripts: https://download.uipath.com - downloads the installer script
* For downloading container images and metadata: https://registry-data.uipath.comhttps://registry.uipath.comThe previous URLs are required during installation, for adding new nodes to an existing cluster, for upgrading to a newer version, and for application sync using ArogCD. These URLs may also be needed during runtime so that Kubernetes can pull the image.
* For using supportability tools, such as the support bundle generation and diagnostic tools: https://sfbrprddeploywe.azurecr.iohttps://sfbrprddeploywe.westeurope.data.azurecr.io
* For the installation of Kubernetes or RKE2: https://rpm.rancher.io
* For sending business telemetry to UiPath®: https://dc.services.visualstudio.com This is only required if you opt in to send telemetry data to UiPath®.


### Shared Platform Capabilities

# Automation Suite portal

* For the Azure Active Directory integration: https://login.microsoftonline.com/*
* (Optional) For application insights: https://dc.services.visualstudio.com/*

# Identity

* For the Azure Active Directory integration:https://login.microsoftonline.com/*https://graph.microsoft.com/*
* For the SQL connection: the connection you use, possibly through a pipeline
* For the Redis connection: the port number and password that are generated during Redis deployment
* For the Active Directory integration:Kerberos: port 88LDAP endpoints: port 389DNS for DC discovery: port 53
* For SAML authentication: SAML endpoints, as configured for Automation Suite
* For system email notifications: SMTP server and port, as configured for Automation Suite
* For certificate validation on connection, if CRLs need to be downloaded: the endpoint determined by the certificate

# Webhooks

* For the SQL connection: the connection you use, possibly through a pipeline
* HTTP(S) Webhook endpoints, as defined by users in the Orchestrator Webhook definition

# Organization management

* For the SQL connection: the connection you use, possibly through a pipeline
* For the Ceph integration: the connection is generated during infrastructure setup

# Audit

* For the SQL connection: the connection you use, possibly through a pipeline

# Licensing

* For online license activation, update, and other online license operations: https://activate.uipath.com/
* For the SQL connection: the connection you use, possibly through a pipeline
* For the Redis connection: the port number and password that are generated during Redis deployment


### Test Manager

* For the SQL connection: the connection you use, possibly through a pipeline
* HTTP(S) calls via the Webhook connector
* HTTP(S) calls to Xray for Jira (on-premises or cloud), to ServiceNow , and to AzureDevOps


### AI Center

* For the SQL connection: the connection you use, possibly through a pipeline
* The OOB models and metadata are fetched from our GitHub repository, and the models themselves are downloaded from our storage account. The following URLs cannot be blocked as the OOB scheduler continues to run, and the last three URLs as they are needed at runtime. Therefore, make sure that you have access to the following: The following are needed in order for the OOB metadata to fetch new models being added:https://github.comhttps://raw.githubusercontent.comhttps://api.github.comhttps://uipath.blob.core.windows.net is needed to clone the new models downloaded The following are needed at runtime for skill deployment and training pipeline for downloading dependencies:The Python Package Index: http://pypi.python.org/ and http://pypi.org/Any Python PIP hosted public domains, based on your model package and required Python libraries in requirements.txt
* https://du-metering.uipath.com This URL is needed only when AI Center is connected to an external Orchestrator.
* https://du.uipath.com


### Document Understanding

* For the SQL connection: the connection you use, possibly through a pipeline
* For OCR: The UiPathDocumentOCR endpoint applicable for your regionMicrosoft OCR (optional): The endpoint applicable for your regionGoogle OCR (optional): https://vision.googleapis.com/v1/images:annotate
* For data extraction: the FormExtractor endpoint applicable for your region
* https://du-metering.uipath.com This URL is needed only when AI Center is connected to an external Orchestrator.
* https://du.uipath.com


### Task Mining

* To download desktop clients: https://download.uipath.com/TaskMining/sf/task-mining-setup.exe (EXE) and https://download.uipath.com/TaskMining/sf/task-mining-setup.msi (MSI)
* For the SQL connection: the connection you use, possibly through a pipeline
* For system email notifications: SMTP server and port, as configured for Automation Suite
* For the Redis connection: the port number and password that are generated during Redis deployment
* For the Ceph integration: the connection is generated during infrastructure setup
* For the RabbitMQ connection: the connection is generated during infrastructure setup


### Insights

* For the SQL connection: the connection you use, possibly through a pipeline


### Data Service

* For the SQL connection: the connection you use, possibly through a pipeline


### Runtime URL dependencies

* https://activate.uipath.com
* smtp.sendgrid.net (or whichever SMTP server is configured) Any port-level blocks need to be accounted for. Any TLS or SSL certificates associated with the SMTP server should be verifiable without the need for a CRL fetch outside your offline environment.
* https://dc.services.visualstudio.com/v2/track


### Azure dependencies

If you use Azure infrastructure, you must allow the RHEL yum mirrors for Azure listed in this section.

These URLs are strictly applicable for Azure. If you use a different cloud services provider (CSP), the URLs are different.

* http://rhui-1.microsoft.com
* http://rhui-2.microsoft.com
* http://rhui-3.microsoft.com
* For the Azure Active Directory integration: https://login.microsoftonline.com/*https://graph.microsoft.com/*


### Documentation

For your users to be able to access the official UiPath® documentation for Automation Suite and the bundled products, you must also allow documentation-specific URLs. For the full list, see UiPath® Documentation Website URLs.

