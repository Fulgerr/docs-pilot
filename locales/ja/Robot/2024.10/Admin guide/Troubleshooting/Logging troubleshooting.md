# Logging troubleshooting


## Duplicate execution logs

# Description

On rare occasions, duplicate log entries would be written to the LiteDB local database, leading to an excessive amount of disk space taken by the log database. As a result, Orchestrator would also receive multiple duplicate log entries. Since the Robot could not write logs inside the database file, repeated attempts were made, without marking each attempt as sent.

# Potential issue

The LiteDB database file becomes corrupt, making the Robot unable to perform read and write operations on the file.

# Solution

If the LiteDB file becomes corrupt, restart the Robot Service. This creates a backup and generates a new file, to prevent the database from becoming corrupt again.


## No execution logs

# Description

Orchestrator does not display any execution logs, even though processes run as expected.

# Potential issue

A corrupted LiteDB file may prevent the Robot from processing execution logs. When a corruption is detected, the Robot halts log processing, and no new logs appear in Orchestrator.

# Solution

Check theRobot.log file for the "Logging database abandoned." message, which indicates a corrupted LiteDB file.

If a corrupt LiteDB file exists, restart the Robot Service. This creates a backup and generates a new file, to prevent the database from becoming corrupt again.

