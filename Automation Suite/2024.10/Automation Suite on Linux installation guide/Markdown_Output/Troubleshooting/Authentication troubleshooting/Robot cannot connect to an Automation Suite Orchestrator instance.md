# Robot cannot connect to an Automation Suite Orchestrator instance

# Description

When trying to connect or sign in to an Orchestrator provided with Automation Suite 2024.10, you may encounter this error: "System.Net.Http.HttpRequestException: The SSL connection could not be established, see inner exception."

This issue affects Windows 10 and Mac operating systems.

# Potential issue

Automation Suite 2024.10, which hosts the Orchestrator instance you want to connect to, uses TLS 1.3 by default. Windows 10 and Mac operating systems do not support this version.

# Solution

You have two options:

* Configure Automation Suite 2024.10 to use TLS 1.2 instead, or
* Use an operating system other than Windows 10 or Mac.
