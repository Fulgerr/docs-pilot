# UI-REL-001 - Large Idx in Selectors

Rule ID:UI-REL-001

Scope: Activity

Default action: Error

This rule applies to activities that are part of both the Classic and the Modern UI
            Automation experiences.

# Description

Shows selectors one by one that contain the idx attribute with a threshold higher than the one set by the user. This attribute is used to distinguish elements with the same selector based on their order in the interface hierarchy. This order can change if the elements you are automating change, so this attribute should be avoided to avoid the selection of wrong elements. Consider using other attributes in the selector to make it less dependent on the idx attribute. For more information about selectors, refer to the Studio Guide UI Automation selectors page. Also, reducing indexes can be achieved by adding information about ancestor elements, using relative elements or the  activity.
