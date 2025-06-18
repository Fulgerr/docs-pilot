# Audit Logs Queries


### Prerequisites

Before downloading audit logs for Apps in the Automation Suite setup, the following requirements must be met:

* You must have access to the machine or virtual machine (VM) where UiPath® services are hosted.

Optionally, you need to know the following:

* Organization name for which the audit logs are needed ( <orgName> ).
* User email for whom the audit logs need to be exported or deleted ( <userEmail> ).
* Number of days between now and the day you want to get or delete audit logs for ( <numDays> ).


### Getting Audit Logs Queries

SELECT document FROM [UipathApps].[audit-logs] 
WHERE JSON_VALUE(document, '$.__tenantId') = '<orgName>' and 
JSON_VALUE(document, '$.userInfo.userEmail') = '<userEmail>' and 
CONVERT(datetime, JSON_VALUE(document, '$.createdAtDate')) <= (getdate() - <numDays>)


### Deleting Audit Logs

DELETE FROM [UipathApps].[audit-logs] 
WHERE JSON_VALUE(document, '$.__tenantId') = '<orgName>' and 
JSON_VALUE(document, '$.userInfo.userEmail') = '<userEmail>' and 
CONVERT(datetime, JSON_VALUE(document, '$.createdAtDate')) <= (getdate() - <numDays>)

