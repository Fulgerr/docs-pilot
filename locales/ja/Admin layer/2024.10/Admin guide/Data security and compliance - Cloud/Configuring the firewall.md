# Configuring the firewall

This page lists the domains used by {Delivery option} and our other
            cloud services. You can use this information to compile an allow list for UiPath software in the configuration of your company's perimeter
            network.

In the event that your company restricts access to only allowed websites, you must allow
            accessing the necessary domains based on the UiPath products you use and the scenarios
            per product that you use. If you do not allow access to the required domains, {Delivery option} may not function as intended.

## {Delivery option no TM} Portal

The following table lists the domains used by {Delivery option no TM} Portal:


| Scenario | Domains to Allow |
| --- ---| Sign in with basic authentication | https://account.uipath.com{baseURL_vanilla}https://sandbox.stg.dedicated.uipath.comhttps://platform-cdn.uipath.com |
| Sign in with Microsoft | https://aadcdn.msftauth.nethttps://account.uipath.com{baseURL_vanilla}https://login.live.comhttps://login.microsoftonline.comhttps://platform-cdn.uipath.com |
| Sign in with Google | https://account.uipath.com{baseURL_vanilla}https://accounts.google.comhttps://google.comhttps://lh3.googleusercontent.comhttps://platform-cdn.uipath.com |
| Sign in with LinkedIn | https://account.uipath.com{baseURL_vanilla}https://lnkd.demdex.nethttps://platform-cdn.uipath.comhttps://platform.linkedin.comhttps://static-exp1.licdn.comhttps://www.linkedin.com |
| UiPath Automation Cloud Public Sector | https://govcloud.uipath.ushttps://govcloud.uipath.us/portal_/cloudrpahttps://govcloud.uipath.us/portal_/signinwithssohttps://govcloud.uipath.us/<accountname>/https://govcloud.uipath.us/<accountname>/<tenantname>/portal |
| Login flows (configured via SSO) | https://login.microsoftonline.com |
| Sign in with Azure Active Directory (Azure AD) | https://aadcdn.msftauth.net{baseURL_vanilla}https://sandbox.stg.dedicated.uipath.comhttps://login.microsoftonline.com |
| Sign in with UiPath Assistant (basic email) | *-signalr.service.signalr.netFor events related to signing in with basic authentication:https://account.uipath.com{baseURL_vanilla}https://sandbox.stg.dedicated.uipath.comhttps://platform-cdn.uipath.com |
| Sign in with UiPath Studio (basic email) | https://api.nuget.org*-signalr.service.signalr.nethttps://gallery.uipath.comhttps://pkgs.dev.azure.comFor events related to signing in with basic authentication:https://account.uipath.com{baseURL_vanilla}https://sandbox.stg.dedicated.uipath.comhttps://platform-cdn.uipath.com |
| Sign in for the first time / Reset password | uipath.eu.auth0.comaccount.uipath.com |
| Issuing the certificate for the site | sni.cloudflaressl.com |
| Static assets: Fonts, Styling and CDN hosted scripts | Fonts:https://use.typekit.nethttps://fonts.gstatic.comhttps://platform-cdn.uipath.comImages:https://s.gravatar.comhttps://secure.gravatar.comhttps://*.wp.comhttps://*.googleusercontent.comhttps://i.ytimg.comhttps://platform-cdn.uipath.comCSS:https://fonts.googleapis.com/csshttps://use.typekit.nethttps://p.typekit.nethttps://platform-cdn.uipath.comhttps://staticresources.uipath.usScripts:https://primer.typekit.nethttps://use.typekit.nethttps://platform-cdn.uipath.com |
| Dynamic Feature Enablement | https://app.launchdarkly.comhttps://clientstream.launchdarkly.comhttps://events.launchdarkly.com |
| Sign in via Auth0 (for EU) | uipath.eu.auth0.com |
| Update services | ctldl.windowsupdate.comTo configure network connections, use Microsoft documentation. |
| App Insights / Google Tag Manager | https://usgovvirginia-0.in.applicationinsights.azure.ushttps://www.googletagmanager.com/gtm.js?id=GTM-PLLP8Phttps://code.jquery.com/jquery-3.5.1.min.js |

# Outbound Robot connections

During the workflow execution, the Robot connects to different services to download required automation packages, check licenses, verify certificates, and more.

The following table lists the outbound connections that must be allowed:

HostnamePurpose{baseURL_vanilla}https://sandbox.stg.dedicated.uipath.comFor Automation Cloud Dedicated Orchestrator.download.uipath.comTo download Studio or Robot MSI installers during automatic updates.pkgs.dev.azure.comuipathpackages.myget.orgThe Robot downloads the required activity packages.*.vo.msecnd.netAzure CDN, used by Myget for distributing filesactivate.uipath.comLicensing Server. If we block this service then UiPath® is not able to check the license status and verify the data in the license folder.jptk0*.proinity.netThe Robot validates the root certification authority of the code signing certificate. Please notice that this happens only if the root certification authority is not already in the Windows Certificate Store.*.nuget.orgThe Robot downloads the required activity dependencies.a23-*-*-*.deploy.static.akamaitechnologies.comThe Robot checks whether or not the code signing certificate has been revoked.x1.i.lencr.orgTo verify whether the Let's Encrypt certificate authority has revoked the code signing certificate.*.service.signalr.netThe Robot connects to Orchestrator's SignalR channels.*.ingest.sentry.ioThe UiPath® Assistant sends the application errors to Sentry in order to track and solve the most usual problems.dev.azure.compkgs.dev.azure.com*.blob.core.windows.netTo enable UiPath Robots to store and retrieve data using Azure storage services.gallery.uipath.commarketplace.uipath.com*.pkgs.visualstudio.comgallery.uipath.com/api/v2 redirects to uipath.pkgs.visualstudio.com.These are the URLs for the Marketplace NuGet feeddc.applicationinsights.azure.comdc.applicationinsights.microsoft.comdc.services.visualstudio.com*.in.applicationinsights.azure.comThe Robot uses these endpoints to send telemetry data.asstoffalp.z6.web.core.windows.netUsed to load components for the UiPath® Assistant for Excel add-in.*.trafficmanager.netProxy service used by the Live Streaming feature to connect between the robot and browser.

# Outbound IPs to enable a firewall for the customer-managed key

We recommend allowing these IPs, which enable a firewall for the customer-managed key.

For details, refer to the Enabling the firewall for the customer-managed key documentation.

* 

# Untitled Section

If you use Azure buckets, they must not be located in the tenant's region or in the failover region.


### Outbound IPs

To ensure proper functionality for UiPath services, we recommend allowing the following
                IPs:52.247.128.10052.227.65.19752.245.221.12


## Action Center

The following table lists the domains used by Action Center:


| Scenario | Domains to Allow |
| --- ---| Authentication | {baseURL_vanilla}https://sandbox.stg.dedicated.uipath.comhttps://account.uipath.com/https://lh3.googleusercontent.com/ |
| Navigate to Action Center page | https://govcloud.uipath.us/<accountName>/<tenantName>/actions_https://govcloud.uipath.us/<accountName>/<tenantName>/processes_https://govcloud.uipath.us/<accountName>/<tenantName>/bupproxyservice_https://uipath-acc-pgov.uipath.us |
| Navigate to Action Center page | {baseURL_vanilla}https://sandbox.stg.dedicated.uipath.comhttps://uipath-acc-prod.azureedge.net/https://www.youtube.com/https://platform-cdn.uipath.com/https://fonts.gstatic.com/*.googleapis.com |
| View/Assign/Un-assign/Delete an Action | {baseURL_vanilla}https://sandbox.stg.dedicated.uipath.comhttps://api.smartling.com/https://uipath-acc-prod.azureedge.net/*.cloudfront.nethttps://platform-cdn.uipath.com/https://fonts.gstatic.com/*.googleapis.com |
| Storage bucket (File upload/download) | *.blob.core.windows.net |


## AI Center

The following table lists the domains used by AI Center:


| Module or Scenario | Domains to Allow |
| --- ---| AI Center |
| Identity Server | {baseURL_vanilla} |
| PkgManager | {baseURL_vanilla} |
| Deployer | {baseURL_vanilla} |
| Helper | {baseURL_vanilla} |
| Trainer | {baseURL_vanilla} |
| AppManager | {baseURL_vanilla} |
| Upload files | https://aifstgdatawetraining.blob.core.windows.net |
| Third-party Services |
| AppInsights | https://bam.eu01.nr-data.net |
| Static Assets | https://aifstgassets.azureedge.nethttps://i2.wp.com/cdn.auth0.comhttps://api.smartling.comhttps://s.gravatar.comhttps://js-agent.newrelic.comhttps://fonts.gstatic.comhttps://use.typekit.nethttps://fonts.googleapis.comhttps://d2c7xlmseob604.cloudfront.net |
| Navigate to AI Center |
| Permissions | {baseURL_vanilla} |
| OpenId configuration | {baseURL_vanilla}https://dc.services.visualstudio.comhttps://d2c7xlmseob604.cloudfront.nethttps://use.typekit.nethttps://fonts.googleapis.comhttps://aifstgassets.azureedge.nethttps://p.typekit.nethttps://fonts.gstatic.comhttps://api.smartling.comhttps://app.launchdarkly.comhttps://js-agent.newrelic.comhttps://i2.wp.com/cdn.auth0.comhttps://bam.eu01.nr-data.nethttps://clientstream.launchdarkly.comhttps://events.launchdarkly.com |


## AI Computer Vision

The following table lists the endpoint values and server locations used by AI Computer Vision:


|  |
| ---


## Apps

The following table lists the domains used by Apps:


| Scenario | Domains to Allow |
| --- ---| Navigate to Apps | {baseURL_vanilla}https://fonts.googleapis.comhttps://cdnjs.cloudflare.comhttps://uipath-apps-prd.azureedge.nethttps://fonts.gstatic.comhttps://dc.services.visualstudio.com |
| Navigate to Apps | https://govcloud.uipath.ushttps://fonts.googleapis.comhttps://cdnjs.cloudflare.comhttps://uipath-apps-pgov.uipath.ushttps://fonts.gstatic.comhttps://usgovvirginia-1.in.applicationinsights.azure.us |
| Create apps, or create apps via import, or add or delete process | {baseURL_vanilla}https://uipath-apps-prd.azureedge.net |
| Create apps, orcreate apps via import,or add or delete process | https://govcloud.uipath.ushttps://uipath-apps-pgov.uipath.us |
| Export, clone, share, delete, edit, or publish an app | {baseURL_vanilla} |
| Export, clone, share, delete, edit, or publish an app | https://govcloud.uipath.us/ |
| Run or preview an app | {baseURL_vanilla}https://fonts.googleapis.comhttps://cdnjs.cloudflare.comhttps://uipath-apps-prd.azureedge.nethttps://fonts.gstatic.comhttps://dc.services.visualstudio.com |
| Run or preview an app | https://govcloud.uipath.ushttps://fonts.googleapis.comhttps://cdnjs.cloudflare.comhttps://uipath-apps-pgov.uipath.ushttps://fonts.gstatic.comhttps://usgovvirginia-1.in.applicationinsights.azure.us |
| Select on Processes or Create rule | https://uipath-apps-prd.azureedge.net |
| Select on Processes or Create rule | https://uipath-apps-pgov.uipath.us |
| Bind process | https://uipath-apps-prd.azureedge.net{baseURL_vanilla}https://dc.services.visualstudio.com |
| Bind process | https://uipath-apps-pgov.uipath.ushttps://govcloud.uipath.ushttps://usgovvirginia-1.in.applicationinsights.azure.us |
| General or Permission | https://api.smartling.com |
| Create or delete a page, or create or delete History | {baseURL_vanilla}https://api.smartling.com |
| Create or delete a page, or create or delete History | https://govcloud.uipath.us/ |
| Connect to Apps | *.trafficmanager.netwss://*.uipath.systemswss://cloud.uipath.com |


## Automation Hub

The following table lists the domains used by Automation Hub:


| Scenario | Domains to Allow |
| --- ---| Navigate to the Automation Hub page | {baseURL_vanilla}http://*.userpilot.iohttps://dc.services.visualstudio.comhttps://ah-prod-ts-blue-eu.uipath.comhttps://ah-prod-ts-blue-us.uipath.comhttps://ah-prod-ts-blue-ja.uipath.comhttps://ah-prod-ts-blue-au.uipath.comhttps://ah-prod-ts-blue-ca.uipath.comhttps://ah-prod-ts-blue-sea.uipath.comhttps://ah-prod-ts-blue-uk.uipath.comhttps://ah-prod-ts-blue-in.uipath.comhttps://ah-gxp-ts-blue-us.uipath.com |
| Use OpenAPI for Automation Hub | https://automation-hub.uipath.comhttp://ah-gxp-openapi-us.uipath.com |
| Access Public Sector in Automation Hub | https://govcloud.uipath.us |


## Automation Ops

The following table lists the domains used by Automation Ops:


| Scenario | Domains to Allow |
| --- ---| Navigate to the Automation Ops page (policy list) | {baseURL_vanilla}https://fonts.googleapis.comhttps://cdnjs.cloudflare.comhttps://stdadmstgcdn.azureedge.nethttps://fonts.gstatic.comhttps://dc.services.visualstudio.comapi.smartling.comuse.typekit.netp.typekit.nets.gravatar.comi2.wp.com |
| Create product policy | {baseURL_vanilla}https://stdadmstgcdn.azureedge.netapi.smartling.comhttps://dc.services.visualstudio.com |
| Refresh policies, tenant list, groups, groups list, users,or delete tenant deployment,or upload policy,or delete policy,or remove group,or change product default version (Settings page) | {baseURL_vanilla} |
| Edit or duplicate a policy | {baseURL_vanilla}https://stdadmstgcdn.azureedge.netapi.smartling.com |
| Open the Deployment tab (tenant list) | {baseURL_vanilla}api.smartling.comFor retrieving tenants:plt-prd-we-01-tm.trafficmanager.net |
| Deploy policy to tenant (per license / product) | {baseURL_vanilla}api.smartling.comhttps://dc.services.visualstudio.com |
| Display group or user deployment,or edit group or user policy deployment,or add new user or new group *,or remove user | {baseURL_vanilla}api.smartling.com |
| Dynamic Feature Enablement | https://app.launchdarkly.comhttps://clientstream.launchdarkly.comhttps://events.launchdarkly.com |


| Scenario | Domains to Allow |
| --- ---| Navigate to the Automation Ops page | https://stdadmstgcdn.azureedge.nethttps://app.vssps.visualstudio.comhttps://stdadmstgcdn.blob.core.windows.nethttps://nexus.ensighten.com{baseURL_vanilla}https://sandbox.stg.dedicated.uipath.comhttps://platform-cdn.uipath.comhttps://usgovvirginia-0.in.applicationinsights.azure.ushttps://govcloud.uipath.ushttps://staticresources.uipath.us*-signalr.signalr.azure.ushttps://use.typekit.nethttps://p.typekit.nethttps://content.usage.uipath.comhttps://app.launchdarkly.comhttps://dc.services.visualstudio.comhttps://data.usage.uipath.com*-signalr.service.signalr.nethttps://s.gravatar.comhttps://i2.wp.comhttps://events.launchdarkly.comhttps://github.comhttps://github.githubassets.comhttps://avatars.githubusercontent.comhttps://collector.github.comhttps://api.github.com |


## Communications Mining

The following table lists the domains used by Communications Mining:


| Scenario | Domains to Allow |
| --- ---| Admin Portal / Identity Server | https://cloud.uipath.com |
| Static assets | https://fonts.googleapis.comhttps://fonts.gstatic.com |
| Azure SignalR | *.service.signalr.net |
| Telemetry | https://*.in.applicationinsights.azure.comhttps://dc.services.visualstudio.com |
| LaunchDarkly Feature Flags | https://*.launchdarkly.com |
| Pendo (clickable in-app guides) | https://*.pendo.io |
| Performance monitoring | https://o486811.ingest.sentry.io |

# Inbound IPs

Add the following IP addresses to your allow list to use Communications Mining and create connections:

RegionIPsEurope34.91.100.206US34.69.242.1020.62.244.78Japan34.84.144.176Australia35.189.46.91Canada34.152.10.176Singapore35.240.179.214

# Outbound IPs

Allow the following IP addresses for Communications Mining to sync emails from your Exchange. For details, check the Overview Exchange integration.

RegionIPsEurope35.204.220.118US34.71.173.219Japan34.84.107.92Australia34.87.223.173Canada34.152.42.160Singapore34.143.128.81


## Data Service

The following table lists the domains used by Data Service:


| Scenario | Domains to Allow |
| --- ---| All Data Service operations | {baseURL_vanilla}https://sandbox.stg.dedicated.uipath.com |
| All Data Service operations | https://govcloud.uipath.us |
| Fetching static frontend content | *.cloudapp.azure.com |
| Fetching static frontend content | https://staticds.uipath.us |
| Sending notifications to notification hub | *.service.signalr.net |
| Getting Feature Flag information | *.launchdarkly.com |
| Collection of telemetry | *.visualstudio.com |


## Document Understanding

The following table lists the domains used by Document Understanding:


| Module or Scenario | Domains to Allow |
| --- ---| Navigate to Document Understanding | https://*.uipath.com |
| Azure | https://*.azure.com |
| Network | https://*.azureedge.nethttps://*.azurefd.net |
| Feature flags | https://*.launchdarkly.com |
| Telemetry | https://*.visualstudio.com |
| Azure SignalR | https://*.service.signalr.net |
| Storage | https://*.trafficmanager.nethttps://*.blob.core.windows.net |
| Pendo | https://*.pendo.io |
| Network and Storage | https://*.uipath.us |
| Telemetry and SignalR | https://*.azure.us |
| Public endpoints | Check the Public endpointsPublic endpoints page for the full list of public endpoints                             URLs. |


## Insights

The following table lists the domains used by Insights:


| Scenario | Domains to Allow |
| --- ---| Navigate to the Insights page | {baseURL_vanilla}https://sandbox.stg.dedicated.uipath.comhttps://*.lookercdn.comhttps://uipath-insights-statics.azureedge.net/https://*.looker.uipath.com/ |


### Static IPs

Static IPs allow you to add a list of IPs for the
            Log Export functionality to the allowlist and not open your network to all external
            IPs.

To ensure proper performance for the Log Export
            functionality, make sure to add the  from the
                Automation Cloud Public Sector Portal section to the allowlist.

Static IPs allow you to add a list of IPs for Log
            Export and Real Time Data Export features to the allowlist and not open your network to
            all external IPs.


| Region | Functionality | IPs |
| --- --- ---| Europe | Log Export | 4.209.242.15552.158.117.7048.209.163.160132.220.192.40 |
| Real Time Data Export | 48.209.165.2114.209.26.11 |
| United States of America | Log Export | 4.209.242.155134.33.227.198134.33.128.26 |
| Real Time Data Export | 4.156.106.136134.33.152.158 |
| Australia | Log Export | 4.209.242.1554.254.65.248 |
| Real Time Data Export | 4.237.200.134.237.193.83 |
| Japan | Log Export | 4.209.242.155135.149.20.42 |
| Real Time Data Export | 74.176.138.15135.149.17.81 |
| Canada | Log Export | 4.209.242.1554.174.211.111 |
| Real Time Data Export | 130.107.208.253130.107.10.82 |
| Singapore | Log Export | 4.209.242.15557.158.137.134 |
| Real Time Data Export | 20.247.146.8957.158.190.211 |
| India | Log Export | 4.209.242.15598.70.224.34 |
| Real Time Data Export | 135.235.177.71135.235.249.14 |
| United Kingdom | Log Export | 4.209.242.155131.145.43.57 |
| Real Time Data Export | 74.177.240.2385.210.75.139 |
| GXP United States of America | Log Export | 134.33.240.104 |
| Real Time Data Export | 51.8.242.246134.33.200.238 |
| GXP Europe | Log Export | 134.33.240.10452.158.122.175 |
| Real Time Data Export | 52.158.126.22220.13.193.184 |

# Limitations

For Log Export, Google Storage does not support
                inbound IP restriction.

Due to a limitation on Microsoft side for Log Export, you cannot set up inbound IP
                restriction when your Azure blob storage account and the Insights infrastructure is
                under the same region in Azure. Because
                    of this, you cannot use the USGov Virginia region for the blob storage
                    account.Because of this, you cannot use the
                    following regions for blob storage account based on the Insights service
                    region:Insights US: North Europe,
                        East USInsights Europe: North
                        Europe, West Europe (For Community Licensing)Insights UK: North Europe, UK
                        SouthInsights Canada: North
                        Europe, Canada CentralInsights Singapore: North
                        Europe, Southeast AsiaInsights India: North Europe,
                        Central IndiaInsights Australia: North
                        Europe, Australia EastInsights Japan: North Europe,
                        Japan EastInsights GXP Europe: North
                        Europe, East USInsights GXP US: East USFor more information on this limitation, check the Restrictions for IP network rules page
                from the Microsoft Azure Blob Storage documentation.


## Integration Service

Add the following IP addresses to your allow list to use Integration Service and create connections, as described in the following table:

RegionIPsEnvironmentEurope34.247.224.172108.128.2.18454.78.70.5120.93.15.208*20.13.60.212*ProductionUS3.225.236.23218.209.239.1733.211.174.8320.121.170.55*20.72.203.238*ProductionJapan18.180.58.9035.72.149.9435.75.176.2820.89.117.202*104.46.238.159*ProductionAustralia13.210.116.10713.54.88.22713.55.113.7520.167.34.25*20.11.199.185*ProductionCanada20.200.104.21420.220.98.56ProductionIndia4.224.9.513.71.90.136ProductionSingapore20.44.206.197ProductionUnited Kingdom172.165.145.8151.141.6.153ProductionAll3.67.182.7218.156.115.9052.57.115.254Staging

*IP addresses marked with an asterisk (*) are designated for newly
            incorporated Azure regions. These IPs will supersede the existing regional IPs upon
            completion of the scheduled tenant migration process. For details, refer to the Integration Service release notes.


## Orchestrator

# Domains to add to the allow list

Robots send traffic to these {Delivery option} Orchestrator domains. We recommend that you allow them to ensure proper functioning of your automations, as described in the following table:

Module or FunctionalityDomains to AllowUiPath Orchestrator{baseURL_vanilla}https://sandbox.stg.dedicated.uipath.comhttps://orch-cdn.uipath.comhttps://account.uipath.com{Delivery option} Robots - VM{baseURL_vanilla}https://sandbox.stg.dedicated.uipath.comhttps://govcloud.uipath.ushttps://download.uipath.comStorage*.blob.core.windows.netIf using Amazon s3 buckets:*.s3.amazonaws.comPackage and library feeds(library, tenant processes, and others)https://pkgs.dev.azure.comAzure SignalR*.service.signalr.netStudio and Robot auto-update functionalityhttps://download.uipath.comTraffic Manager (internal)*.trafficmanager.net

# Outbound IPs to add to the allow list

We recommend allowing these IPs, which send traffic from Orchestrator towards your resources. For details, refer to Orchestrator outbound IP addresses.

Community usersRegionCIDRIPsEurope (European Union)20.123.102.24/3020.50.147.88/30168.63.58.240/30168.63.56.100/3020.71.24.32/3020.71.24.128/3020.166.153.132/3020.23.210.168/3020.123.102.2420.123.102.2520.123.102.2620.123.102.2720.50.147.8820.50.147.8920.50.147.9020.50.147.91168.63.58.240168.63.58.241168.63.58.242168.63.58.243168.63.56.100168.63.56.101168.63.56.102168.63.56.10320.71.24.3220.71.24.3320.71.24.3420.71.24.3520.71.24.12820.71.24.12920.71.24.13020.71.24.13120.166.153.13220.166.153.13320.166.153.13420.166.153.13520.23.210.16820.23.210.16920.23.210.17020.23.210.171

Enterprise usersRegionCIDRIPsAustralia20.92.156.92/3023.101.220.128/3023.101.208.196/3020.213.69.140/3020.92.42.116/3020.92.156.9220.92.156.9320.92.156.9420.92.156.9523.101.220.12823.101.220.12923.101.220.13023.101.220.13123.101.208.19623.101.208.19723.101.208.19823.101.208.19920.213.69.14020.213.69.14120.213.69.14220.213.69.14320.92.42.11620.92.42.11720.92.42.11820.92.42.119Canada20.116.141.44/3020.63.56.64/3020.63.56.68/3020.220.159.8/3020.104.134.160/3020.116.141.4420.116.141.4520.116.141.4620.116.141.4720.63.56.6420.63.56.6520.63.56.6620.63.56.6720.63.56.6820.63.56.6920.63.56.7020.63.56.7120.220.159.820.220.159.920.220.159.1020.220.159.1120.104.134.16020.104.134.16120.104.134.16220.104.134.163United States20.124.53.40/3020.121.182.72/3020.121.104.124/3040.114.108.32/3040.114.108.220/3020.232.224.12/3020.66.65.144/3020.124.53.4020.124.53.4120.124.53.4220.124.53.4320.121.182.7220.121.182.7320.121.182.7420.121.182.7520.121.104.12420.121.104.12520.121.104.12620.121.104.12740.114.108.3240.114.108.3340.114.108.3440.114.108.3540.114.108.22040.114.108.22140.114.108.22240.114.108.22320.232.224.1220.232.224.1320.232.224.1420.232.224.1520.66.65.14420.66.65.14520.66.65.14620.66.65.147Japan20.210.80.72/3052.253.104.184/3052.253.105.76/3020.78.114.120/30104.215.9.124/3020.210.80.7220.210.80.7320.210.80.7420.210.80.7552.253.104.18452.253.104.18552.253.104.18652.253.104.18752.253.105.7652.253.105.7752.253.105.7852.253.105.7920.78.114.12020.78.114.12120.78.114.12220.78.114.123104.215.9.124104.215.9.125104.215.9.126104.215.9.127Europe (European Union)20.223.90.156/3020.223.16.0/304.207.205.236/30168.63.58.108/30168.63.58.144/3020.166.153.132/3020.23.210.168/3020.223.90.15620.223.90.15720.223.90.15820.223.90.15920.223.16.020.223.16.120.223.16.220.223.16.34.207.205.2364.207.205.2374.207.205.2384.207.205.239168.63.58.108168.63.58.109168.63.58.110168.63.58.111168.63.58.144168.63.58.145168.63.58.146168.63.58.14720.166.153.13220.166.153.13320.166.153.13420.166.153.13520.23.210.16820.23.210.16920.23.210.17020.23.210.171Singapore104.43.98.180/3052.230.32.132/3052.230.32.188/3020.198.150.140/30104.43.98.180104.43.98.181104.43.98.182104.43.98.18352.230.32.13252.230.32.13352.230.32.13452.230.32.13552.230.32.18852.230.32.18952.230.32.19052.230.32.19120.198.150.14020.198.150.14120.198.150.14220.198.150.143United Kingdom20.90.174.164/3051.140.5.96/3051.140.6.156/3020.90.169.148/3051.142.146.56/3020.90.174.16420.90.174.16520.90.174.16620.90.174.16751.140.5.9651.140.5.9751.140.5.9851.140.5.9951.140.6.15651.140.6.15751.140.6.15851.140.6.15920.90.169.14820.90.169.14920.90.169.15020.90.169.15151.142.146.5651.142.146.5751.142.146.5851.142.146.59India4.224.102.80/3040.80.89.112/3040.80.89.132/3020.219.182.96/3052.140.57.140/304.224.102.804.224.102.814.224.102.824.224.102.8340.80.89.11240.80.89.11340.80.89.11440.80.89.11540.80.89.13240.80.89.13340.80.89.13440.80.89.13520.219.182.9620.219.182.9720.219.182.9820.219.182.9952.140.57.14052.140.57.14152.140.57.14252.140.57.143

Delayed update organizations

RegionCIDRIPsEurope (European Union)168.63.56.128/30168.63.56.212/3020.166.153.132/3020.23.210.168/304.207.205.236/30168.63.56.128168.63.56.129168.63.56.130168.63.56.131168.63.56.212168.63.56.213168.63.56.214168.63.56.21520.166.153.13220.166.153.13320.166.153.13420.166.153.13520.23.210.16820.23.210.16920.23.210.17020.23.210.1714.207.205.236 4.207.205.237 4.207.205.238 4.207.205.239United States40.114.109.36/3040.114.109.64/3020.232.224.12/3020.66.65.144/3020.121.104.124/3040.114.109.3640.114.109.3740.114.109.3840.114.109.3940.114.109.6440.114.109.6540.114.109.6640.114.109.6720.232.224.1220.232.224.1320.232.224.1420.232.224.1520.66.65.14420.66.65.14520.66.65.14620.66.65.14720.121.104.124 20.121.104.125 20.121.104.126 20.121.104.127


## Process Mining

The following table lists the domains used by Process Mining:Module or ScenarioDomains to AllowIdentity Server{baseURL_vanilla}Static assetshttps://fonts.googleapis.comhttps://fonts.gstatic.comhttps://content.usage.uipath.comhttps://s.gravatar.comhttps://i1.wp.comAzure SignalR*.service.signalr.net*.signalr.azure.usTelemetryhttps://*.in.applicationinsights.azure.comhttps://*.in.applicationinsights.azure.usUpload files*.blob.core.windows.net*.blob.core.usgovcloudapi.netLaunchDarkly Feature
                                Flagshttps://app.launchdarkly.comhttps://clientstream.launchdarkly.comhttps://events.launchdarkly.com


## Solutions Management

The following table lists the domains used by Solutions Management:


| Scenario | Domains to Allow |
| --- ---| Navigate to the Solutions Management page | {baseURL_vanilla}https://fonts.googleapis.comhttps://cdnjs.cloudflare.com/https://stdadmstgcdn.azureedge.net/https://fonts.gstatic.comhttps://dc.services.visualstudio.comapi.smartling.comuse.typekit.netp.typekit.nets.gravatar.comi2.wp.comhttps://platform-cdn.uipath.comhttps://sol-cdn.uipath.comhttps://solutions.uipath.com |
| Storage | *.<http://blob.core.windows.net|blob.core.windows.net> |


## Studio Web

The following table lists the domains used by Studio Web:


| Module or Functionality | Domains to Allow |
| --- ---| Azure SignalR | wss://*.service.signalr.nethttps://*.service.signalr.netwss://*.trafficmanager.net |
| UiPath products | https://*.uipath.com |
| UiPath products (in-app feedback) | https://studio-feedback.azure-api.net |
| UiPath products (static assets) | https://platform-cdn.uipath.comhttps://content.usage.uipath.comhttps://fonts.gstatic.comhttps://d2c7xlmseob604.cloudfront.nethttps://fonts.googleapis.com/https://*.typekit.nethttps://fonts.gstatic.comhttps://s.gravatar.comhttps://secure.gravatar.comhttps://*.wp.comhttps://*.googleusercontent.comhttps://i.ytimg.com |
| UiPath products (telemetry) | https://data.usage.uipath.com |
| Third-party services (clickable guides) | https://*.pendo.io |
| Third-party services (feature flags provider) | https://*.launchdarkly.com |
| Third-party services (storage) | https://*.blob.core.windows.nethttps://*.amazonaws.com |
| Third-party services (telemetry) | https://dc.services.visualstudio.com |
| Third-party services (translations helper) | https://api.smartling.com |


## Task Mining

If your company uses proxies, the URLs, described in the following table, need to be added to the Firewall Exceptions so the Task Mining desktop components connect to our web servers.

The Task Mining Desktop application uses web sockets for real-time communication with the server (telemetry and governance). For the URLs and IPs to be allowed, the transparent proxy is expected to have the HTTPS and WSS protocols enabled.


| Component | URL | Port |
| --- --- ---| Admin Portal | {baseURL_vanilla} | 443 |
| Web Portal | https://app.launchdarkly.comhttps://events.launchdarkly.com*.blob.core.windows.net | 443 |
| Pendo | https://content.usage.uipath.com | 443 |
| Azure App Insights | dc.services.visualstudio.comdc.applicationinsights.azure.comdc.applicationinsights.microsoft.comdc.services.visualstudio.com*.in.applicationinsights.azure.comlive.applicationinsights.azure.comrt.applicationinsights.microsoft.comrt.services.visualstudio.com{region}.livediagnostics.monitor.azure.com*.applicationinsights.us*.microsoft.us | 443 |
| Azure Signalr | service.signalr.net*.service.signalr.net*.signalr.azure.us | 443 |
| Avatars | i2.wp.com/cdn.auth0.com/avatars | 443 |
| Task Mining export | tm-export.govcloud.uipath.us | 443 |


## Test Manager

The following table lists the domains used by Test Manager:


| Module or functionality | Domains to allow |
| --- ---| UiPath Test Manager | {baseURL_vanilla}https://sandbox.stg.dedicated.uipath.com |
| Azure SignalR | *.service.signalr.net*.signalr.azure.us |

