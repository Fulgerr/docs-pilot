# Identifying SAP Fiori Elements

SAP Fiori uses the UI5 framework to display its elements on the page. Selectors generated for these elements are easy to recognize by the ui5 attributes in selectors.

A selector for a SAP Fiori element contains the <webctrl> tag, similar to other web UI elements.

There are two types of ui5 attributes for SAP Fiori selectors:

* Static attributes - such as ui5-class , ui5-role , ui5-type , ui5-label , ui5-tooltip
* Dynamic attributes (based on the properties of the target element) - such as ui5p-value , ui5p-type

Note that ui5* attributes are specific to SAP Fiori elements.

The ID attribute of SAP Fiori elements is added by default to corresponding selectors only if it has a static value. Using a dynamic value for the ID attribute can generate unreliable selectors. In this case, it is recommended to adjust your selectors using static ui5 attributes.

You can use the entire range of activities from the
                UiPath.UiAutomation.Activities package to create your automation
            projects.

Recorders and Data Scraping are currently not supported.
