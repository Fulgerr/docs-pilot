# ST-USG-025 - Saved Value Misuse

Rule ID: ST-USG-025

Scope: Workflow

This rule was introduced in UiPath.System.Activities v20.4 and only applies to projects created in the StudioX profile.This rule does not apply to projects that use UiPath.System.Activities v22.4 and newer.

# Description

The rule checks for variables that are used as input in activities placed before the activity where the variables are saved.

# Recommendation

Use variables only in activities placed after the activity where the variables are saved.

![f474d9c-st-usg-025=GUID-9D7A28D5-DBAA-44F2-8A34-262177B0F372=1=en=Default](/images/f474d9c-st-usg-025=GUID-9D7A28D5-DBAA-44F2-8A34-262177B0F372=1=en=Default.png)
