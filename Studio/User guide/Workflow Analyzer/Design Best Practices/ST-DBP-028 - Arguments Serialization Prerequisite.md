# ST-DBP-028 - Arguments Serialization Prerequisite

Rule ID: ST-DBP-028

Scope: Workflow

# Description

The rule checks if there are any arguments that are not serializable in the scope of the following persistence activities or in the scope of their parent activities:

* Resume after Delay
* Wait for External Task and Resume
* Wait for Form Task and Resume
* Wait for Job and Resume
* Wait for Queue Item and Resume

# Recommendation

Change the argument data type to a serializable data type.

![edec05f-st-dbp-028=GUID-44B13F21-26B8-47FA-B17D-8096B0AA2D97=1=en=Default](/images/edec05f-st-dbp-028=GUID-44B13F21-26B8-47FA-B17D-8096B0AA2D97=1=en=Default.png)
