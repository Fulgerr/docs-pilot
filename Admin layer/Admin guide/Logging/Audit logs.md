# Audit logs

A log is an array of data ordered by time that follows the "first in, first out" rule. That means the oldest log entry is the first one deleted at the end of the retention period. Logs help with debugging issues, increasing security and performance, or reporting trends.

## Types of audit logs

Audit logs are a special type of logs that help to gain insight into events that happened within your organization. It answers the who, when, and where for every event, and it allows you to keep track of important changes.


### Organization administration

The Audit Logs page captures actions performed from the Admin pages and log in activity for the organization. This includes user log in activity, license upgrades, any changes made to your tenants, refresh of an API key, and more.

As the organization administrator, you can view the audit logs by going to Admin > Audit Logs in a specific organization.

Upon upgrading to 2021.10 or later, on the Audit Logs page you can view only operations performed after the upgrade. To view operations performed before the upgrade, you need to retrieve the data from the SQL database. For example, use the following query to retrieve user login attempts made prior to the upgrade,

SELECT * FROM [identity].[UserLoginAttempts]


### Automation Ops

Audit logs for the Automation Ops service are also displayed in the Admin > Audit Logs page.

For information about the events logged for Automation Ops, refer to Audit Logs.


### Orchestrator

The audit from the Orchestrator service lists all the events linked to a specific tenant. You can notice folders or machines creations, packages uploads, roles assignments, or settings updates. Simply put, every step that may influence the orchestration process is captured inside the Audit page.

The System Administrator that registers logs in the Audit page is an internal Orchestrator user. For example, you might notice log entries similar to User System Administrator deactivated the trigger. This means that Orchestrator performed the action, not an actual user.

You must be an Administrator to access the Audit page at the tenant level.

!['Audit page at tenant level' image](/images/ff9a856-or-audit-logs=GUID-E5AF35FB-833B-4084-A054-B3691FBA493B=1=en=Default.png)


## Robot logs

The robot logs found at Orchestrator's folder level are useful to monitor the executions of every robot from a specific folder.

