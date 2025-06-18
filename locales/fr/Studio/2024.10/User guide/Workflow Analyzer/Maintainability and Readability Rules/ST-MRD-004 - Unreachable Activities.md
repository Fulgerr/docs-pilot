# ST-MRD-004 - Unreachable Activities

Rule ID: ST-MRD-004

Scope: Workflow

# Description

This rule checks whether activities in the file or project have connecting nodes in the flowchart or are not connected to the Start node.

# Recommendation

Workflows should only have the necessary activities for execution, and activities that are commented out or that are not connected to any node in a flowchart should be removed. If there is a need to keep commented activities, add annotations to describe the reason. Consider removing unreachable activities.

![9b43480-unreach=GUID-D0D341A5-839C-4059-8EC4-B51201128E32=1=en=Default](/images/9b43480-unreach=GUID-D0D341A5-839C-4059-8EC4-B51201128E32=1=en=Default.png)
