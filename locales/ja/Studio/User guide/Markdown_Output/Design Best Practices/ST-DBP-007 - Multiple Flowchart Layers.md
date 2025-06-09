# ST-DBP-007 - Multiple Flowchart Layers

Rule ID: ST-DBP-007

Scope: Workflow

# Description

The rule checks whether flowcharts are used as a top layer for maintainability and readability reasons.

# Recommendation

It is recommended to reduce the number of flowchart layers to a minimum to ensure maintainability and readability.

# Modifying the Rule

In the Project Settings window, select the Workflow Analyzer tab. Find and select the rule, as in the image below:

![e41e2c0-layers=GUID-6C233446-AD46-4196-8BF4-EED1BEC1DDBD=1=en=Default](/images/e41e2c0-layers=GUID-6C233446-AD46-4196-8BF4-EED1BEC1DDBD=1=en=Default.png)

The default Layer count value is 2. This means that if the Workflow Analyzer finds at least three flowcharts, then a message is logged in the Error List.

Modify the value to 3 and the rule logs an error message only if the number flowcharts surpasses the threshold, in this case 3.

# Reset to Default Value

The default value for ST-DBP-007 is 2.

To reset the value to default right-click the rule in the Project Settings window, and then click Reset to default.

![b9015ee-dbp_007_reset=GUID-5EDD29D0-6C35-465A-9160-9445A809CAAC=1=en=Default](/images/b9015ee-dbp_007_reset=GUID-5EDD29D0-6C35-465A-9160-9445A809CAAC=1=en=Default.png)
