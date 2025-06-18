# About SAP GUI for Java Automation

# About SAP GUI for Java

Enabling SAP GUI API scripting allows you to create reliable automations for SAP GUI for Java. Studio and Robots require SAP GUI scripting to be enabled on the local machine as well as on the server side. Before you can create your first automation projects for SAP, you need to go over the configuration steps.

UI elements in SAP are known as controls, and you might need a particular approach or activity to detect and use them. Find out more about supported SAP elements.

# SAP GUI for Java Supported Versions

The following version of SAP GUI for Java is supported for Windows (for the x64 architecture) and Mac OS (for the ARM64 architecture):

* SAP GUI for Java 7.80 Rev7

All available themes (such as Quartz, Belize, Blue Crystal, or Corbu) can be used for SAP automation.

# SAP GUI for Java Additional Information

You can use Wildcards and Regular expressions inside selectors generated for SAP GUI for Java elements.

SAP GUI for Java selectors support, for the identification purpose, not only technical ID, but also Text, Tooltip and Type of SAP control attributes. Complex SAP controls such as SAP Tables, SAP Grids and SAP Trees do not have these attributes available, as identification is done differently.

If SAP GUI for Java API scripting is not activated or not allowed in your organization, you can interact with the SAP GUI for Java interface using Computer Vision activities, or by using UI Automation Activities with the Java selection framework.

# Elevation level

Elevation level determines whether an application is running with user permissions or with administrator permissions. Administrator permissions allow you to perform more powerful tasks.

The elevation level for UiPath Studio and SAP must match. If there is an elevation level mismatch between these applications, the automation does not execute.
