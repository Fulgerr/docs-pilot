# ST-DBP-026 - Delay Activity Usage

Rule ID: ST-DBP-026

Scope: Workflow

# Description

The rule checks whether the Delay activity is used in the workflow file set as Main in projects that support persistence.

# Recommendation

Do not use the Delay activity in the workflow file set as Main in projects that support persistence. Either move Delay activities to other workflow files in the project or use the Resume After Delay activity in the file set as Main.

![c671d5b-st-dbp-026=GUID-CC0B4634-A03F-4D0A-820C-6DD62B5EA383=1=en=Default](/images/c671d5b-st-dbp-026=GUID-CC0B4634-A03F-4D0A-820C-6DD62B5EA383=1=en=Default.png)
