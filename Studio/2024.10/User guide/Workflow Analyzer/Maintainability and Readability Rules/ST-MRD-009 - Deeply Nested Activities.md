# ST-MRD-009 - Deeply Nested Activities

Rule ID: ST-MRD-009

Scope: Workflow

# Description

The rule checks whether nested activities are present in the workflow.

# Recommendation

It is usually more difficult to see and understand workflows that have too many deeply nested activities, so it is recommended to avoid deeply nested structures. Instead, it might be better to separate the workflow into smaller ones and use the Invoke Workflow File activity to call them. Consider dividing the workflow into smaller components to avoid deeply nested structures.

# Modifying the Rule

In the Project Settings window, select the Workflow Analyzer tab. Find and select the rule, as in the image below:

![c5d5fab-deeply=GUID-B3D9936E-29AB-4825-8733-2432E43A8100=1=en=Default](/images/c5d5fab-deeply=GUID-B3D9936E-29AB-4825-8733-2432E43A8100=1=en=Default.png)

The default Threshold value is 7. This means that if the Workflow Analyzer finds at least seven nested activities, then a message is logged in the Error List.

Modify the threshold value to 3 and the rule logs an error message only if the number of nested activities surpasses the threshold, in this case 3.

# Reset to Default Value

The default value for ST-MRD-009 is 7.

To reset the value to default right-click the rule in the Project Settings window, and then click Reset to default.

![7d536cf-mrd_009_reset=GUID-278215D5-290E-4E23-8120-4AC19404C081=1=en=Default](/images/7d536cf-mrd_009_reset=GUID-278215D5-290E-4E23-8120-4AC19404C081=1=en=Default.png)
