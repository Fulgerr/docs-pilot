# ST-USG-027 - Required Packages

Rule ID: ST-USG-027

Scope: Project

# Description

The rule allows enforcing the use of activity packages and versions in a given project. After the list of required packages is defined, the rule checks the project to determine if any were not added as dependencies. By default, if any required package has not been installed in the project, the rule logs an error in the Error List panel.

# Recommendation

Make sure all the packages required by your organization are installed in your project.

# Modifying the Rule

In the Project Settings window, select the Workflow Analyzer tab. Find the rule and select the rule, as in the image below:

![764752f-st-usg-027=GUID-9A9C283B-EFC6-4AF7-8F32-50282D5E5F77=1=en=Default](/images/764752f-st-usg-027=GUID-9A9C283B-EFC6-4AF7-8F32-50282D5E5F77=1=en=Default.png)

By default, this rule does not require any activity packages. Add a package by writing its full name together with its version separated by the equals sign (=), for example, UiPath.Excel.Activities=2.5.3.

Add the greater than (>) symbol to require any version higher than a specified version, for example, UiPath.Excel.Activities>=2.5.3 would require a UiPath.Excel.Activities package with a version of 2.5.3 or higher. The greater than (>) symbol can only be used together with the equals sign (=), inputs such as UiPath.Excel.Activities>2.5.3 are invalid.

The less than (<) and the less than or equals (<=) symbols are not supported, therefore inputs such as UiPath.Excel.Activities<2.5.3 or UiPath.Excel.Activities<=2.5.3 are considered invalid.

Use a wildcard character * to require one of multiple versions of the same package. For example, the UiPath.Excel.Activities=2.7.2-beta* value requires any 2.7.2-beta version of the UiPath.Excel.Activities=2.7.2 package and the rule generates an error if other versions of the same package are installed, including:

* UiPath.Excel.Activities=2.7.2
* Other prerelease versions of the UiPath.Excel.Activities=2.7.2 package (like alpha versions)
* Other stable and prerelease versions of the UiPath.Excel.Activities package

The wildcard character * can only be used at the end of the version. Furthermore, when using the greater than or equals (>=) symbol together with a wildcard character *, the greater than symbol (>=) is interpreted as the equals sign (=), for example, UiPath.Excel.Activities>=2.7.2-beta* is a valid input, but is interpreted as UiPath.Excel.Activities=2.7.2-beta*.

Examples:

* UiPath.Excel.Activities=2.8.4-*
* UiPath.Excel.Activities>=2.7.2
* UiPath.Excel.Activities=2.7.2

To require multiple packages, simply separate them by a comma, for example, UiPath.Excel.Activities, UiPath.UIAutomation.Activities requires any version of UiPath.Excel.Activities and UiPath.UIAutomation.Activities to be added to the project.

To check which package an activity belongs to, use the Group by Packages option in the Activities panel, as explained here. Another easy way to check is to hover over an activity in the panel and read the tooltip.

After adding packages to the rule, use the Analyze Project button to try out the rule.

# Reset to Default

By default, the rule does not require any packages. However, if you wish to quickly remove the packages that you've added, right-click the rule in the Project Settings window, and then click Reset to default. The Default action is also reset to its default value Error.

![3206dce-st-usg-027-reset=GUID-33F29925-0795-402E-AB21-DEA3EF96EEFF=1=en=Default](/images/3206dce-st-usg-027-reset=GUID-33F29925-0795-402E-AB21-DEA3EF96EEFF=1=en=Default.png)
