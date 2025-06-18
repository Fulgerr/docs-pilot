# About SAP Fiori Automation

Automation projects for SAP Fiori can be created out-of-the-box, so you are not required
            to install a dedicated SAP extension or set of activities.

We provide support for SAP Fiori versions 1.52 and above which are in Maintenance
            by SAP. You can check this page for more information about
            supported versions and maintenance status.

# Supported browsers

SAP
                Fiori automations can be created on the following web browsers:

* Mozilla Firefox - requires the Extension for Firefox
* Google Chrome - requires the Extension for Chrome
* Microsoft New Edge Browser - requires the (Chromium)

# Supported activities

The
                    UiPath.UIAutomation.Activities package v20.6 or above is required to
                create automation projects for SAP Fiori.

The entire range of activities from
                the UIAutomation
                    Activities package can be used, with the following
                specification:

* The SimulateType property is recommended for the Type Into activity.
* The SimulateClick property is recommended for the Click activity.
* The Table Cell Scope activity can be used for SAP Fiori table automation. This includes Auto scrolling for SAP Fiori Tables feature, which allows UiPath to scroll automatically to the right cell in any SAP Fiori tables without knowing the exact place of the required value.

# SAP Business Client

Support
                for all browser controls is provided for SAP Business Client. This allows users to
                take an advantage of the same performance and SAP Fiori capabilities as in Google
                Chrome using UiPath Studio. All SAP Fiori elements are properly recognized with all
                their SAP FIORI specific properties, all SAP Fiori version are supported.

![8f8c3a7-SAP_Business_Clients_Browser_Control=GUID-78A23E5C-E18E-4A9E-9706-7C509509E020=1=en=Default](/images/8f8c3a7-SAP_Business_Clients_Browser_Control=GUID-78A23E5C-E18E-4A9E-9706-7C509509E020=1=en=Default.png)

The SAP Activities found
                in the UiPath.UIAutomation.Activities package should only be used for SAP WinGUI
            automation.
