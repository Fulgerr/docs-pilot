# Process Mining ingestion failed when logged in using Kerberos

When uploading data, the following error message can occur:

# Possible cause

You logged in to Automation Suite using Kerberos and you are not using Kerberos for SQL authentication. In this case, when uploading data the SQL connection for the Process Mining data warehouse is handled this as a Kerberos setup for authentication.

# Possible solution

1. In ArgoCD go to the App details of your Airflow app, locate the SYNC POLICY section on the SUMMARY tab, and select DISABLE AUTO-SYNC.This will prevent the enableSqlIntegratedAuth to be set back to true after you changed it.
2. Go to the PARAMETERS tab. Edit the flag enableSqlIntegratedAuth to false and select Save.
