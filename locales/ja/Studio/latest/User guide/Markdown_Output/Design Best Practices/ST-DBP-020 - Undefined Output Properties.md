# ST-DBP-020 - Undefined Output Properties

Rule ID: ST-DBP-020

Scope: Activity

This rule is disabled by default.

# Description

The rule checks whether output properties for certain activities are declared and used. Certain activities can be excluded. The default excluded activities in this rule are:

* For Each with the namespace UiPath.Core.Activities.ForEach.
* Message Box with the namespace UiPath.Core.Activities.MessageBox
* Run Spreadsheet Macro with the namespace UiPath.Excel.Activities.Business.ExecuteMacroX.
* Check App State with the namespace UiPath.UIAutomationNext.Activities.NCheckState.
* Insert Sheet with the namespace UiPath.Excel.Activities.Business.InsertSheetX.

# Recommendation

Make sure output properties for certain activities are set to a declared variable.

![289f8de-st-dbp-020=GUID-F63942FA-B640-49DB-9956-44127CD03495=1=en=Default](/images/289f8de-st-dbp-020=GUID-F63942FA-B640-49DB-9956-44127CD03495=1=en=Default.png)

# Modifying the Rule

In the Project Settings window, select the Workflow Analyzer tab. Find and select the rule.

Add more activities in the Excluded field by adding their namespaces separated by a comma. For example, the following parameter UiPath.Core.Activities.ForEach, UiPath.Core.Activities.MessageBox, UiPath.Excel.Activities.Business.ExecuteMacroX, UiPath.UIAutomationNext.Activities.NCheckState, UiPath.Excel.Activities.Business.InsertSheetX, UiPath.Core.Activities.GetVisibleText adds Get Visible Text to the list of activities excluded from the check.

# Reset to Default

To reset the value to default right-click the rule in the Project Settings window, and then click Reset to default.

![1eee1f5-st-dbp-020-reset=GUID-A8D078FA-1C25-45D7-8F9F-CD651113D58F=1=en=Default](/images/1eee1f5-st-dbp-020-reset=GUID-A8D078FA-1C25-45D7-8F9F-CD651113D58F=1=en=Default.png)
