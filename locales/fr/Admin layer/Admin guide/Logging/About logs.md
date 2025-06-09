# About logs

A log is an array of data ordered by time that follows the "first in, first out" rule. That means the oldest log entry is the first one deleted at the end of the retention period. Logs help with debugging issues, increasing security and performance, or reporting trends.

Cloud Portal and cloud services are using different types of logs to help with debugging issues, increasing security and performance, or reporting trends.

## Audit logs

Audit logs are a special type of logs that help to gain insight into events that happened within your organization. It answers the who, when, and where for every event, and it allows you to keep track of important changes.

When extracting audit logs, only the last 5000 entries are downloaded.


### Organization administration

The Audit Logs page captures actions performed from the Admin pages and log in activity for the organization. This includes user log in activity, license upgrades, any changes made to your tenants, refresh of an API key, and more.

As the organization administrator, you can view the audit logs by going to Admin > Organization > Audit Logs.

!['Audit logs' image](/images/f4cb35f-AuditLogs=GUID-8B486A60-E6F0-433C-828A-D3A7577FF100=1=en=Default.png)

Each audit log entry is kept for two years.

Each audit log entry is kept for approximately 30 days in the case of Community accounts, and for two years for Enterprise.



To keep the logs beyond this limit, we recommend to periodically archive them as CSV files to your local storage. Select Download to export the audit logs.


### Automation Ops

Audit logs for the Automation Ops service are also displayed in the Admin > Organization > Audit Logs page.

For information about the events logged for Automation Ops, refer to Audit Logs in the Automation Ops documentation.


### Orchestrator

The audit from the Orchestrator service lists all the events linked to a specific tenant. You can notice folders or machines creations, packages uploads, roles assignments, or settings updates. Simply put, every step that may influence the orchestration process is captured inside the Orchestrator's Audit page.

You need to be an Administrator to access the Audit page at the tenant level.

!['Audit page at tenant level in Orchestrator' image](/images/ff9a856-or-audit-logs=GUID-BAA5AC3A-F8D2-440F-A12B-9E506E4F972A=1=en=Default.png)

The audit logs are retained for six months in the case of the Community plan, and for two years for Enterprise.

The audit logs are retained for two years.

To keep your logs beyond these limits, you can export them to your local storage.

Learn more about the audit logs at Orchestrator's tenant level.


## Robot logs

The robot logs found at Orchestrator's folder level are useful to monitor the executions of every robot from a specific folder.

You need the specific folder permission to manage the logs.

Robot logs are kept for a maximum of 31 days by Orchestrator.

If you need these logs for longer, you can periodically export logs to:

* your local storage
* third-party cloud storage.

For instructions, refer to Exporting logs.

