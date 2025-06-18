# ST-MRD-017 - Incomplete If

Rule ID: ST-MRD-017

Scope: Activity

# Description

The rule checks whether there are any If activities that are empty or contain activities only in the Else branch.

# Recommendation

Remove or disable empty If activities. When only the Else branch is populated, consider switching the condition and moving the content to the Then branch.

![41704fa-st-mrd-017=GUID-E7146657-82E3-43D5-8D56-A2AE9A2637A3=1=en=Default](/images/41704fa-st-mrd-017=GUID-E7146657-82E3-43D5-8D56-A2AE9A2637A3=1=en=Default.png)
