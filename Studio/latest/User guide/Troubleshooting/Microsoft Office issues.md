# Microsoft Office issues


## Issue

Various errors may occur when you build or run automations with Microsoft Office
                        applications, especially Excel.

# Excel

* One of the following errors occurs when you are configuring an activity in the StudioX profile and you select Indicate in Excel in the Plus menu:Error opening workbook. Make sure Excel is installed.Library not registered. (Exception from HRESULT: 0x8002801D (TYPE_E_LIBNOTREGISTERED)).::
* An Excel activity runs and the following error occurs:

Error opening workbook. Make sure Excel is installed. Unable to
                                        cast COM object of type
                                        'Microsoft.Office.Interop.Excel.ApplicationClass' to
                                        interface type
                                        'Microsoft.Office.Interop.Excel._Application'.



# Word

* The following error occurs when a Word activity runs:

Error opening document, make sure Word application is installed.
                                        If already installed, an Office Repair may be
                                required.



# Outlook

* The following error occurs when an Outlook activity runs, or when you are configuring an activity in the StudioX profile and you are trying to access Outlook data such as folders or accounts from the Plus menu:

Property accessor 'Account' on object
                                        'UiPath.Mail.Activities.Business.OutlookApplicationCard'
                                        threw the following exception:'Unable to cast COM object of
                                        type 'Microsoft.Office.Interop.Outlook.ApplicationClass' to
                                        interface type
                                        'Microsoft.Office.Interop.Outlook._Application'...



# PowerPoint

* The following error occurs when a Presentation activity runs:

Cannot open PowerPoint RemoteException wrapping
                                        UiPath.Presentations.PowerPointException: Please make sure
                                        PowerPoint is installed.


## Causes

Microsoft Office installation issues may result in incorrect COM Interop configurations in the Windows registry. For example, this may happen if:

* Microsoft Office is installed, then removed, and then an older version of Office is installed.
* With Office already installed, Skype for Business is installed, which comes with different Office components than the ones in the already installed version of Microsoft Office.


## Solution

The Repair Tool for Microsoft Office checks the Windows registry and attempts to repair common issues with Microsoft Office applications that cause errors when building automations. In addition, you can use it to run Microsoft's Office repair tool. The tool generates a repair plan that you can either run on your machine or export and deploy on other machines.

Administrator privileges are required for running the repair, but not for generating the repair plan.

1. Select Home (Studio Backstage View) > Tools > Apps > Repair Tool for Microsoft Office . The repair tool opens.
2. Tabs at the top of the window enable you to view each available action. The following tabs are available:: A tab for each Microsoft Office application: Excel, Outlook, Word, and PowerPoint. Office Repair, with information about the Microsoft Office repair tool for Office 2013 and newer versions.For each action, the tool automatically detects the application installation path, version, and whether it is a 32-bit or 64-bit version. Verify that the information is correct and make adjustments if needed.
3. Click Generate Repair Plan. A list of actions to perform is displayed.
4. Select which repair actions to perform. By default, all recommended repair actions are selected. To view details about an action, click next to it.
5. Select what to do with the repair plan: Run Repair Actions - Run the actions on your machine. If you select this option, the results are displayed on the lower part of the window. Create .REG file - Generate a .reg file see a full list of repair changes. Export Configuration - Create a JSON file with the repair plan that you can then deploy on other machines.

# Restoring the registry to a previous state

Every time a repair plan runs, a backup of the previous Windows registry configuration is saved. If you encounter unexpected issues after running the Repair Tool for Microsoft Office:

1. Open the tool again and select the Backup tab. A list of repairs that have run is displayed.
2. Click Restore next to the repair whose registry changes to undo.

