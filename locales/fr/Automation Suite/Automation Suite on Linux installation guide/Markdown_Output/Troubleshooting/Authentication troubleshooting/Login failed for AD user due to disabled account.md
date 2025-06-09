# Login failed for AD user due to disabled account

# Description

You may encounter the following error message: "Login failed for user <ADDOMAIN><aduser>. Reason: The Account Is Disabled." This log could be found when using Kerberos for SQL access, and SQL connection is failing inside services.

# Solution

This issue could be caused by the AD user losing access to the SQL server. See instructions on how to reconfigure the AD user.
