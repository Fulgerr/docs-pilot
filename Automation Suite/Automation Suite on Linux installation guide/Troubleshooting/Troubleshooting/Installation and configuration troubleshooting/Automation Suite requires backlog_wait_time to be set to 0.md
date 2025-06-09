# Automation Suite requires backlog_wait_time to be set to 0

# Description

Audit events can cause instability (system freeze) if backlog_wait_time is not set to 0.

# Solution

If the installer fails with the Automation Suite requires backlog_wait_time to be set 0 error message, take the following steps to set backlog_wait_time to 0.

1. Set backlog_wait_time to 0 by appending --backlog_wait_time 0 in the /etc/audit/rules.d/audit.rules file.
2. Reboot the node.
3. Validate if backlog_wait_time value is set to 0 for auditctl by running sudo auditctl -s | grep "backlog_wait_time" in the node.
