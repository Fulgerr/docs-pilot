# ST-NMG-008 - Variable Length Exceeded

Rule ID: ST-NMG-006

Scope: Activity

# Description

This rule checks whether the name of each variable defined in the workflow exceeds a certain number of characters.

# Recommendation

The names of variables should not be longer than a set number characters. It is recommended to abbreviate longer words, as they make it difficult to monitor variables during debugging, especially if the first part of the name is the same.

# Modifying the Rule

In the Project Settings window, select the Workflow Analyzer tab:

![96bb8e1-var_length=GUID-9B6D1971-A2BD-4211-BD74-16C1F902E318=1=en=Default](/images/96bb8e1-var_length=GUID-9B6D1971-A2BD-4211-BD74-16C1F902E318=1=en=Default.png)

After selecting the Variable Length Exceeded rule, add a custom number of characters in the Length field.

If we add the number 10, then the rule checks if the names of variables defined in the file or project exceed 10 characters.

# Reset to Default Value

The default value for ST-NMG-008 is 30.

To reset the value to default right-click the rule in the Project Settings window, and then click Reset to default.

![ac43621-nmg_008_default=GUID-DDF38B24-D92A-48C2-91E6-B1E5E097AC24=1=en=Default](/images/ac43621-nmg_008_default=GUID-DDF38B24-D92A-48C2-91E6-B1E5E097AC24=1=en=Default.png)
