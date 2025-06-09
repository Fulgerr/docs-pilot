# Updating the SQL connection strings

There are multiple scenarios where you may want to update the connection string used by Automation Suite products to connect to the SQL database, such as the following:

* When periodically rotating the password used to connect to the database, for security and compliance
* When changing the FQDN for the SQL server
* When migrating the database to another SQL server for maintenance purposes
* When adding, modifying, or removing one or more connection attributes, such as MultiSubnetFailover
* When switching from basic authentication to integrated authentication using Kerberos and AD Products in Automation Suite do not create tables or schema at the time of updating the SQL database connection string. Make sure your new connection string refers to the same database that you currently use.To avoid downtime during the update process, make sure that your current connection string is valid at the time of the update process. You can revoke your old connection string after the update.

### Updating the connection strings for installed products

To update the connection string for installed products in Automation Suite, connect to any of the server nodes and perform the following operations.If you use the Account lockout threshold policy setting, enable maintenance mode.Generate the cluster_config.json file.Provide the new connection strings for the installed products in the cluster_config.json.Run the installer.If you use the Account lockout threshold policy setting, disable maintenance mode.

