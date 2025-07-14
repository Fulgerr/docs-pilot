# UiPath Browser Migration Tool

The UiPath Browser Migration Tool is a standalone tool that converts the workflows using a target
            browser such as Internet Explorer, Chrome, Edge, or Firefox, making them target another
            browser, such as Chrome, Edge, or Firefox. This tool can be helpful when migrating
            workflows from the legacy Internet Explorer browser to newer browsers, or simply when
            you want to adapt your workflow to using another browser.

This tool is compatible with any XAML files generated with any Studio or UI Automation version.

There are certain selector types that cannot be automatically migrated with the use of this tool. For example, selectors starting with <wnd…, since those identify UI elements rendered differently by IE in comparison with Edge/Chrome/Firefox. These selectors have to be manually updated.

# How the UiPath Browser Migration Tool
                Works

In order to migrate the workflows from using one browser to another, there are a list of things that are done, as follows:

* The <html...> selectors are migrated by updating their app property.
* The BrowserType property of the Open Browser and Attach Browser activities is modified accordingly.
* Any Kill Process activity targeting the Source Browser is updated to target the Target Browser.
* The Object Repository items defined in the Source Browser are converted to use the Target Browser.The migration tool does not have a 100% success rate. To get closer to such a rate, it is recommended to perform validation on the migrated workflows.

# Installing the UiPath Browser Migration
                Tool

First, download the zipped tool from the Resource Center in the Automation
                    Cloud portal (the help menu > Downloads > UiPath Tools > Browser
                Migration Tool).

Next, unzip the archive in a folder of your choice.

Running the UiPath.ConversionTool.exe executable opens the UiPath Conversion Tool.

![d5ad1fa-2021-08-11_15-39-29=GUID-60099CAB-8481-47A4-9BC1-C02BAF59E0F8=1=en=Default](/images/d5ad1fa-2021-08-11_15-39-29=GUID-60099CAB-8481-47A4-9BC1-C02BAF59E0F8=1=en=Default.png)

# Configuring the UiPath Browser Migration
                Tool

The UiPath Browser Migration Tool can be configured by editing the Settings.json
                file present in the installation folder.

The following parameters can be edited:

* "Folder": "" - specifies the target folder where you want to migrate the XAML files.
* "SourceBrowser": "IE" - Specifies the source browser. The possible options are IE, Chrome, Edge, Firefox.
* "DestinationBrowser": "Chrome" - Specifies the destination browser, The possible options are Chrome, Edge, Firefox.
* "PreviewChanges": false - If set to true, the original files are not modified, only a change log is generated. If set to false, the updates are applied to the source XAML files.
* "ReplaceNullBrowserType": true - If set to true, if found, the BrowserType = null is updated to BrowserType = targetBrowser. If set to false, these cases are ignored.
* "IncludeSubfolders": true - If set to true, modifies all the XAML files from the specified folder and its subfolders. If set to false, it modifies only the files in the target parent folder.
* "CreateBackupFiles": true - If set to true, it creates backup files (.bak) before updating the original ones. The backup files can be found at {SourceFolder}/.conversion_backup. If set to false, backup files are not created.
* "EnableLogging": true - If set to true, creates a log file. If set to false, no log file is created.

# Using the UiPath Browser Migration
                Tool

From the UI

To use the tool, you must first provide the path to the workflow that you want to migrate in the Project Folder section.

Next, select the browser you have created the automation with in the Source Browser drop-down menu and the browser you want to migrate to in the Destination Browser drop-down menu.

If you have an automation created with Internet Explorer and want to migrate it to Firefox, select IE in the Source browser drop-down and Firefox in the Destination Browser drop-down.

The Preview Changes button runs the tool in preview changes mode. This scans all the .xaml files and outputs the changes that would be applied in the UiPath.ConversionTool_log.json log file which is generated in the target folder. No changes are applied to the actual workflow and no backup files are created.

The Start button performs the migration on the specified workflow, making it compatible with the browser of your choice.

From the Command Line

To use the tool with the settings configured in the Settings.json file, run the command {ConversionToolInstallationFolder}/UiPath.ConversionTool.exe settings.json

Post Migration Verification Keys

Once used, the UiPath Browser Migration Tool creates a log file named
                    UiPath.ConversionTool_log in the project folder. The file
                provides an overview of the process under the "GlobalStatistics"
                parameter and full update details per each XAML file under the
                    "FileChanges/FileName/Statistics" parameter.

Other Migration Aspects

If you plan to migrate the automations to Edge (Chromium), this can be done starting with:

* Studio version v19.10.5 and UiPath.UIAutomation.Activities v19.11.3
* Studio version v20.4.1 and UiPath.UIAutomation.Activities v20.4.1

If you plan to run after migrating under Edge Chromium with IE Mode activated, this is available starting with UiPath.UIAutomation.Activities v20.10 and above.

Please note that running automations on Chrome, Edge, or Firefox requires the proper UiPath Extension to be installed.
