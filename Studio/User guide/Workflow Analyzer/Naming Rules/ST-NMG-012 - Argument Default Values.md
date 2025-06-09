# ST-NMG-012 - Argument Default Values

Rule ID: ST-NMG-012

Scope: Workflow

# Description

This rule checks whether arguments use default values.

# Recommendation

Make sure default values for arguments are used either for testing individual workflow files or for a default configuration in the case of reusable components.

When invoking a workflow file, Studio has the flexibility to pass a value to any of the defined arguments. This allows for using the default value of an argument for which no value is passed upon invoking the file. The default configuration should be specified in the description of the reusable workflow file.

![0ac2934-12=GUID-FC928F6A-703F-4B10-8A40-992706CA6048=1=en=Default](/images/0ac2934-12=GUID-FC928F6A-703F-4B10-8A40-992706CA6048=1=en=Default.png)
