# GSSAPI operation failed due to invalid status code

# Description

This log could be found when using Kerberos for SQL access, and SQL connection is failing inside services. Similarly, you may see kinit: Client's credentials have been revoked while getting initial credential in one of the following job names: services-preinstall-validations-job, kerberos-jobs-trigger, kerberos-tgt-update.

# Solution

This could be caused by the AD user account used to generate the keytab being disabled. Re-enabling the AD user account should fix the issue.
