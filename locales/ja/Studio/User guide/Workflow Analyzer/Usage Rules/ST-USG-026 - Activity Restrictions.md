# ST-USG-026 - Activity Restrictions

Rule ID: ST-USG-026

Scope: Workflow

# Description

The rule checks whether any restricted activities are used in the project. Restricted activities are defined by one of the following lists:

* Prohibited Activities - Activities that are not allowed in the project. All activities that are not on this list can be used in the project.
* Allowed Activities - Activities that are allowed in the project. Only the activities that are on this list can be used in the project.

# Recommendation

Only use activities that are allowed by your organization.

![341c85c-st-usg-026=GUID-3F6C7EC7-513C-4BC6-B92C-F99F096C74A9=1=en=Default](/images/341c85c-st-usg-026=GUID-3F6C7EC7-513C-4BC6-B92C-F99F096C74A9=1=en=Default.png)

# Modifying the Rule

In the Project Settings window, select the Workflow Analyzer tab. Find and select the rule, and then define the restricted activities using either the prohibited activities list or the allowed activities list. When modifying the rule:

* Add the namespaces of the activities (for example UiPath.Core.Activities.Delete) separated by comma (,).
* You can use the asterisk (\*\) wildcard character at the beginning or at the end of each entry. For example, adding UiPath.Core.Activities* to the list of prohibited activities means that no activity with a namespace that starts with UiPath.Core.Activities is allowed.
* Do not use the lists concurrently. If both lists are populated, the list of prohibited activities takes precedence.

# Reset to Default

By default, the rule does not restrict the use of any activity. To reset the rule to default, right-click it in the Project Settings window, and then click Reset to default.

![77f5455-st-usg-026-reset=GUID-5C1FED45-9AC4-4080-B05B-8483B8AAA06E=1=en=Default](/images/77f5455-st-usg-026-reset=GUID-5C1FED45-9AC4-4080-B05B-8483B8AAA06E=1=en=Default.png)

The Default action is also reset to its default value Warning.
