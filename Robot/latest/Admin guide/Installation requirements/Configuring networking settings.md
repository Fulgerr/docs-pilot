# Configuring networking settings

Executing a workflow implies robot operations such as downloading the automation package, checking licenses, or verifying certificates. To do that, the robot needs to connect to several services. For a successful execution, make sure to grant your robot access to the listed services:

# Outbound connections

HostnameProtocolPortApplicationUsagecloud.uipath.comTCP443httpsTo access Automation Cloud Orchestrator.download.uipath.comTCP443httpsTo download Studio or Robot MSI installers during automatic updates.pkgs.dev.azure.comuipathpackages.myget.orgTCP443httpsTo download the required activity packages.*.vo.msecnd.netTCP443httpsTo access Azure CDN, which is used by Myget to distribute files.activate.uipath.comTCP443httpsTo access the licensing server, for checking the license status and verifing data in the license folder.jptk0*.proinity.netTCP443httpsTo validate the root certification authority for the code signing certificate, unless it is already stored in the Windows Certificate Store.*.nuget.orgTCP443httpsTo download the required activity dependencies.a23-*-*-*.deploy.static.akamaitechnologies.comTCP80httpTo verify if the code signing certificate has been revoked.x1.i.lencr.orgTCP80httpTo verify whether the Let's Encrypt certificate authority has revoked the code signing certificate.*.service.signalr.netTCP443https, wssTo connect to the SignalR channels provided by Orchestrator.*.ingest.sentry.ioTCP443httpsRequired by Assistant, to send application errors to Sentry. This helps tracking and solving the most common problems.dev.azure.compkgs.dev.azure.com*.blob.core.windows.netTCP443httpsTo enable UiPath Robots to store and retrieve data using Azure storage services.gallery.uipath.commarketplace.uipath.com*.pkgs.visualstudio.comgallery.uipath.com/api/v2 redirects to uipath.pkgs.visualstudio.comTCP443httpsTo access the Marketplace NuGet feed.dc.applicationinsights.azure.comdc.applicationinsights.microsoft.comdc.services.visualstudio.com*.in.applicationinsights.azure.comTCP443httpsTo send telemetry data.asstoffalp.z6.web.core.windows.netTCP443httpsRequired by Assistant, to load components for the Excel add-in.*.trafficmanager.netTCP443wssRequired by the Live streaming feature, to connect the robot and the browser.

# Outbound connections in JSON format

Copy the data in the JSON format and paste it in your network configuration file:

[
    "cloud.uipath.com",
    "download.uipath.com",
    "pkgs.dev.azure.com",
    "uipathpackages.myget.org",
    "*.vo.msecnd.net",
    "activate.uipath.com",
    "jptk0*.proinity.net",
    "*.nuget.org",
    "a23-*-*-*.deploy.static.akamaitechnologies.com",
    "x1.i.lencr.org",
    "*.service.signalr.net",
    "*.ingest.sentry.io",
    "dev.azure.com",
    "pkgs.dev.azure.com",
    "*.blob.core.windows.net",
    "gallery.uipath.com",
    "marketplace.uipath.com",
    "*.pkgs.visualstudio.com",
    "dc.applicationinsights.azure.com",
    "dc.applicationinsights.microsoft.com",
    "dc.services.visualstudio.com",
    "*.in.applicationinsights.azure.com",
    "asstoff1bp.z6.web.core.windows.net",
    "*.trafficmanager.net"
  ]
