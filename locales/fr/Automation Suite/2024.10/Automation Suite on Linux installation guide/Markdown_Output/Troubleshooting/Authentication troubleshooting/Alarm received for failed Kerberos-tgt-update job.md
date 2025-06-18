# Alarm received for failed Kerberos-tgt-update job

# Description

This happens if the uipath cluster failed to retrieve the latest Kerberos ticket.

# Solution

To find the issue, check the log for a failed job whose name starts with kerberos-tgt-update. After you've identified the problem in the log, check the related troubleshooting information in this section and in the Troubleshooting section for configuring Active Directory.
