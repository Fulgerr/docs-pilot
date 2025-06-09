# Services Studio Connects To

While using Studio, it connects to different services to download required automation packages, check licenses, verify certificates, and more. Denying any of these services can result in operation discrepancies, or even failure.

By default, the following outbound connections are used:


| Hostname | Protocol | Port | Application | Comments |
| --- --- --- --- ---| activate.uipath.com | TCP | 443 | HTTPS | Used for contacting UiPath Licensing Server and activating Studio. |
| pkgs.dev.azure.com | TCP | 443 | HTTPS | Official feed to download activity packages. |
| cloud.uipath.com | TCP | 443 | HTTPS | Studio uses this endpoint to connect to the cloud version of Orchestrator. This URL is custom if the on-prem version of Orchestrator is used. |
| gallery.uipath.com | TCP | 443 | HTTPS | Default marketplace feed. |
| nuget.org* | TCP | 443 | HTTPS | Default feed to download activity dependencies. |
| dc.applicationinsights.azure.comdc.applicationinsights.microsoft.comdc.services.visualstudio.com | TCP | 443 | HTTPS | Studio uses these endpoints to send Telemetry data.* (Telemetry can be disabled following the steps from Opting Out of Telemetry*) |
| du.uipath.com | TCP | 443 | HTTPS | Studio uses this endpoint for activity suggestions in the Command               Palette. |
| account.uipath.com | TCP | 443 | HTTPS | Used for logging in with your UiPath account. |

* NuGet does not support TLS 1.3. Enabling the protocol causes a handshake failure error when connecting to the services.

Below you can find the URL list in a raw JSON format which can be added to your allow list network configuration.

[
  "activate.uipath.com",
  "pkgs.dev.azure.com",
  "cloud.uipath.com",
  "gallery.uipath.com",
  "*.nuget.org",
  "dc.applicationinsights.azure.com",
  "dc.applicationinsights.microsoft.com",
  "dc.services.visualstudio.com"
  "du.uipath.com"
  "account.uipath.com"
]

Depending on your business policy, some URLs might need to be whitelisted for the following actions:

* Activating your License - activate.uipath.com (port 443). This URL only needs to be whitelisted for local licensing.
* Updating Studio - *.uipath.com/beta/ (port 80), Beta update channel for the Community Edition
* Downloading Packages - pkgs.dev.azure.com, *.vo.msecnd.net, www.nuget.org (port 443)
* Connecting to Orchestrator Community Edition - https://cloud.uipath.com (port 443)
* Downloading the Studio MSI and Robot MSI installers during automatic updates - https://download.uipath.com (port 80)
* Logging in with your UiPath account - https://account.uipath.com (port 443)
