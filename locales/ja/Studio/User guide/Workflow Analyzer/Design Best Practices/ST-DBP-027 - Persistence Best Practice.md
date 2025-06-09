# ST-DBP-027 - Persistence Best Practice

Rule ID: ST-DBP-027

Scope: Workflow

# Description

The rule checks whether the following persistence activities are used inside the For Each activity:

* Resume after Delay
* Wait for External Task and Resume
* Wait for Form Task and Resume
* Wait for Job and Resume
* Wait for Queue Item and Resume

# Recommendation

Do not add Wait ... and Resume persistence activities inside the For Each activity.

![6fb53a5-st-dbp-027=GUID-123A3CBD-9D2B-4FB5-95F7-94E924C4766E=1=en=Default](/images/6fb53a5-st-dbp-027=GUID-123A3CBD-9D2B-4FB5-95F7-94E924C4766E=1=en=Default.png)
