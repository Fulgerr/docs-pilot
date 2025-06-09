# Excel Add-in

The Excel Add-in enables Studio to integrate with Microsoft Excel, allowing you to seamlessly switch between Studio and Excel to indicate the data you want to use directly from Excel files added to your automations. Indicating in Excel is available by default in StudioX, while in Studio it requires UiPath.Excel.Activities v2.11.0 or later with the Modern Design Experience for Excel enabled.

## Install the Excel Add-in

1. Save and close all open Excel workbooks.
2. In Studio, select Home > Tools > UiPath Extensions > Excel Add-in .
3. Click OK to confirm you have saved and closed all Excel workbooks.
4. The add-in is installed and a confirmation message is displayed. Click OK to close the message.

To verify that the add-in has been successfully installed:

1. Open or create a project in the StudioX profile.
2. Add an activity, for example Write Line, select Plus on the right side of a field, and then select Project Notebook (Notes) > Indicate in Excel.
3. If the workbook is opened in Excel and there is a UiPath tab in the ribbon with Confirm and Cancel options, the add-in is installed and working as expected.


## Troubleshooting




### An error occurs when installing the Excel Add-in

Do the following, and then try to install the add-in again:

* Make sure a supported version of Microsoft Excel is installed and is licensed with a valid product key. Studio is compatible with Microsoft Office 2013 and later. The add-in is not compatible with Microsoft Excel installed from the Microsoft Store. To find out the installation type, open Excel, select File > Account, and then, under About Excel, check that the line with the version number does not end with "Microsoft Store" or "Windows Store".
* Open the Windows Task Manager and check if any instance of Microsoft Excel is running. If that is the case, right-click it and select End Task.
* Make sure macros are not disabled in Excel. Open Microsoft Excel and select File > Options > Trust Center > Trust Center Settings > Macro Settings. We recommend selecting the options Disable VBA macros except digitally signed macros and Enable Excel 4.0 macros when VBA macros are enabled.
* If the error states that Excel is not installed even though it is installed, Excel might be corrupted. Repair or reinstall Microsoft Office.


### The Excel Add-in was installed, but indicating
        in Excel does not work

There are a number of issues that can prevent the Excel add-in from working. Use the steps provided for each issue to try to correct it.

# All add-ins are disabled

1. Open Microsoft Excel and select File > Options > Trust Center > Trust Center Settings > Add-ins.
2. If Disable all Application Add-ins is selected, deselect this option.

# The Excel add-in is disabled or inactive

1. Open Microsoft Excel and select File > Options > Add-ins.
2. If UiPath.Integration.ExcelAddin appears in the list of Inactive Application Add-ins follow these steps to activate it:From the Manage drop-down at the bottom of the window, select COM Add-ins, and then click Go. In the COM Add-ins window:If UiPath.Integration.ExcelAddin is not selected, select it. If UiPath.Integration.ExcelAddin is selected, see if the Load Behavior message displays any information about why it is not loaded. If the message states that a user setting is preventing the add-in from loading, try to change that setting.
3. If UiPath.Integration.ExcelAddin appears in the list of Disabled Application Add-ins, follow these steps to enable it:From the Manage drop-down at the bottom of the window, select Disabled Items, and then click Go. Select UiPath.Integration.ExcelAddin and click Enable.

# UiPath is not in the list of trusted publishers

1. Open Microsoft Excel.
2. Select File > Options > Trust Center > Trust Center Settings.
3. If the UiPath certificate does not appear in the list of Trusted Publishers, add it. Only an administrator can do this. If you do not have permissions, contact an administrator in your organization.

# If problems persist, manually install the Excel add-in

If you tried all the solutions and still have problems installing the add-in or indicating in Excel, navigate to the UiPath installation folder (by default C:\Program Files\UiPath\Studio for per-machine installations or %localappdata%\Programs\UiPath\Studio for per-user installations) and double-click the file UiPath.Integration.ExcelAddIn.vsto located in the net461 subfolder. If the add-in is successfully installed, a confirmation message is displayed.

![173f19e-addin_manual=GUID-6DE3DC42-56CA-4873-8880-54881043E5A0=1=en=Default](/images/173f19e-addin_manual=GUID-6DE3DC42-56CA-4873-8880-54881043E5A0=1=en=Default.png)


### When trying to install the Add-in, nothing happens

If nothing happens when you select Home > Tools > Excel Add-in, your antivirus software may be preventing the installation. Try to manually install the add-in.

