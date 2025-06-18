# No healthy upstream issue

# Description

When accessing the Automation Suite portal, you my encounter an issue where a blank page appears, displaying the "no healthy upstream" message. The message is accompanied by a 503 error.

This issue is caused by the service not running due to multiple potential causes, such as:

* maintenance mode is enabled,
* an issue in the cluster, making the service unhealthy,
* possible mis-configuration at the network layer.

# Solution

To address the issue, check if the maintenance mode is enabled. If it is, disable it and try to reload the portal.

For more details on the potential causes, it is recommended to run the diagnostic tool.
