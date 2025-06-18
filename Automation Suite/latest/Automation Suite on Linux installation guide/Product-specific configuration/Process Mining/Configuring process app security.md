# Configuring process app security 

To restrict the data users have access to when editing transformations, you can set the process app security type for Process Mining process apps in the cluster_config.json file. You can configure app security using the app_security_mode setting. This is an overview of the possible values of the app_security_mode setting.

It is recommended to use the system_managed option.


| Value | Description |
| --- ---| system_managed (default) | A SQL user is created automatically per process app. This ensures that users editing transformations in Process Mining can only query data that belongs to the process apps for which they have edit permissions.Passwords are rotated on every use.This requires SQL authentication on the Process Mining data warehouse SQL Server.The SQL user used in the connection strings used to connect to the AutomationSuite_ProcessMining_Warehouse database must have at least the following server-level and database-level roles both during and post-installation to enable per app security:Server role: securityadmin or MS_LoginManager. See the official Microsoft documentation on Fixed server-level roles.Database-level roles: db_securityadmin and db_accessadmin. See the official Microsoft documentation on Database-level roles. |
| single_account | One account is created that is used for all process apps.This means that when editing transformations in Process Mining, users can query data from other process apps.The SQL user used in the connection strings used to connect to the AutomationSuite_ProcessMining_Warehouse must have at least the following database-level roles and permissions both during and post-installation to enable per app security:Database-level roles: db_securityadmin and db_accessadmin. See the official Microsoft documentation on Database-level roles.read/write access on schema, tables and views. |

![system_managed=GUID-3AF898B9-6FA2-4BAD-98FD-A5E94FEEC25D=1=en=Default](/images/system_managed=GUID-3AF898B9-6FA2-4BAD-98FD-A5E94FEEC25D=1=en=Default.png)



# Steps

1. Turn on SQL Authentication for the Process Mining data warehouse SQL Server. See the official Microsoft documentation on Change server authentication mode.
2. Grant ALTER ANY LOGIN to the provisioning user of Process Mining.
3. Grant access to the master database to the provisioning user of Process Mining.The SQL user used in the connection strings used to connect to the master database must have enough permissions to create login, users and roles.
