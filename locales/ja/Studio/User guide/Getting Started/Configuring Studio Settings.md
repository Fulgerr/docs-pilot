# Configuring Studio Settings

Configure Studio settings from Home (Studio Backstage View) > Settings. The settings are saved in C:\Users\your_user_name\AppData\Roaming\UiPath.

# General

Select General in the Settings tab to configure general Studio settings.

![ConfiguringStudioSettings_General=GUID-7C3FE05B-A8BF-434F-9204-936877D16F11=1=en=Default](/images/ConfiguringStudioSettings_General=GUID-7C3FE05B-A8BF-434F-9204-936877D16F11=1=en=Default.png)

* Language - Change the interface language for Studio and Assistant, by picking one of the available languages: English, Japanese, French, Russian, Chinese (Simplified), German, Spanish, Spanish (Latin America), Portuguese (Portugal), Portuguese (Brazil), Korean, or Turkish.
* Theme - The Studio interface theme can be changed by choosing either Light or Dark from the drop-down menu, and restarting Studio for the changes to apply.If you select the High Contrast option from the Windows operating system, Studio switches to High Contrast mode after you restart it.For the Dark theme to work, automation projects must have at least UiPath.UIAutomation.Activities v18.4.2 and UiPath.System.Activities v18.4.1, as dependencies.
* Telemetry - Select whether to allow Studio to collect and send anonymous usage data and UI Descriptors created using the Object Repository. For more information about anonymous data collection, see Opting Out of Telemetry in the Installation and Upgrade Guide.
* Reset Settings - Revert the following settings in Studio to their default state:All General and Design settings. The list of Recent files; The list of Favorites activities; Studio layout adjustments; The Break on Exceptions option in the Execute tab > Options; Show Activities options and pinned activities in the Activities panel; User-added folders in the Snippets panel, the last directory where you opened a project from, and the Update Channel, which is switched to Stable.Please note that resetting settings has no effect on feeds.

# Design

Select Design in the Settings tab to configure a set of global design settings that apply to all projects opened in this version of Studio.

![ConfiguringStudioSettings_Design2=GUID-AC6F21F7-597D-4FBB-9880-029F52A389FE=1=en=Default](/images/ConfiguringStudioSettings_Design2=GUID-AC6F21F7-597D-4FBB-9880-029F52A389FE=1=en=Default.png)

* Save and PublishAuto backup interval - Set a regular interval at which projects are automatically backed up. This is useful for restoring the last saved copy of the workflow. The default value is set at 30,000 milliseconds. The minimum value is 10,000 milliseconds, while the maximum one is 9,999,999 ms. Publish project timeout - Set the timeout value for publishing projects. The default value is 30 seconds. The maximum timeout is 999,999 seconds while the minimum one is 1 second. Open Project Behavior - Select what files to open by default when reopening a project. Pick from Keep Last Opened Tabs, Open Main Entry Point or No Tabs. Enforce Analyzer before Publish - Select this option to prohibit publishing projects with Workflow Analyzer errors. Enforce Analyzer before Run - Select this option to prohibit running and debugging files or projects with Workflow Analyzer errors. Enforce Analyzer before Push/Check-in - Select this option to prohibit sending projects with Workflow Analyzer errors to remote repositories. Analyze RPA XAML Files Only - Select this option to exclude XAML files with test cases from analysis when running the Workflow Analyzer for a project. If not selected, both RPA and test case XAML files are analyzed. This setting applies when the analyzer is triggered manually, as well as when it is enforced and triggered automatically before running/debugging a project and publishing test cases or a project. Export Analyzer results - Select this option to export the results of each workflow analysis to a JSON file in the project folder. Enable AI activity suggestions - Select this option to enable or disable AI activity suggestions in the Add activity search bar. If this option is enabled, when you open the activity search bar, Studio sends information about the current context to a UiPath AI service that suggests activities you may want to add based on the location in the workflow from which the search bar was opened.The service does not collect or record any information, it only analyzes the current context and returns a list of suggested activities.Show activities available for install - Select this option to show all official activities packages that can be installed in your project. You can find all activities from packages that are available for installation in the Activities panel or by using the Add Activity search bar.Auto-generate Activity Outputs - Select this option to automatically generate variables for activity outputs.Enforce Check-In before Publish - Select this option to restrict publishing projects added to source control repositories when they have local changes.
* ExecutionOutput console size - Set the maximum number of lines that can be displayed in the Output panel in a single session. The default value is 2,000 lines. The maximum value that can be added is 9,999 lines, while the minimum one is 1 line. Run/Debug Default Behavior - Configure the default action for the Run/Debug ribbon button. Pick from Debug File, Run File, Debug Project, or Run Project. Minimize on run - Use the toggle to set Studio to maximize or minimize when running projects.
* Design StyleUse C# Language - Select the default language to use for expressions in new projects. If selected, C# is by default the language used for expressions in new projects. If not selected, new projects use VB. You can select a different language than the default whenever you create a new project.This option is available only in the Studio profile. Projects created in the StudioX profile use the VB language for expressions.Create docked annotations - Select the default way in which annotations are added to activities: docked inside the activity (if the option is selected) or floating next to the activity (if the option is not selected). Default to managed connections - Select this option to use the Integration service in Automation Cloud as the default way to manage connections in all activities that support it. This option is enabled by default if the Integration service is available in the Orchestrator tenant that Studio is connected to. When enabled, the activities in the GSuite, Mail. and Office 365 packages that support this feature default to using Integration service connections for authentication. Object Repository enforced - Select to allow only elements from the Object Repository in UI Automation activities.Show Data Manager panel only - Select to only use the Data Manager to manage variables, arguments, and namespaces. This hides the Variables, Arguments, and Imports panels located at the bottom of the Designer panel. Show activity properties inline - Select to display advanced activity properties in the activity cards in the Designer panel for cross-platform projects and some activities in projects with the Windows compatibility.Enable Activity configuration suggestions - Select this option to receive suggestions on how to configure activity properties from Autopilot™.Slim View for Collapsed Activities - Reduce the space collapsed activities take up by enabling a view that only displays the title bar. This option is selected by default.

# Locations

Select Locations in the Settings tab to configure default locations for projects, publishing, and custom Workflow Analyzer rules.

![ConfiguringStudioSettings_Locations2=GUID-BBC794B9-B3D4-4324-A968-FBF5A5DCA962=1=en=Default](/images/ConfiguringStudioSettings_Locations2=GUID-BBC794B9-B3D4-4324-A968-FBF5A5DCA962=1=en=Default.png)

* Project path - The default location where projects are created.
* Publish process URL - The default location where processes are published when the custom feed option is selected.
* Publish library URL - The default location where libraries are published when the custom feed option is selected.
* Publish project templates URL - The default location where project templates are published when the custom feed option is selected.
* Custom Workflow Analyzer rules location - The folder from which to add custom Workflow Analyzer rules to Studio. If no location is provided, the default location for custom rules is used.

For each option, you can browse to and select the the desired location, or enter the full path in the provided text box.

# Manage Sources

Select Manage Sources in the Settings tab to manage feeds for activities packages from Studio Backstage view without having to open a project. This section is similar to the one in the Manage Packages window, which lets you adjust feeds per project.

![ConfiguringStudioSettings_ManageSources2=GUID-AA9E748E-AC5D-46C4-A0BF-6FBEEF9689C5=1=en=Default](/images/ConfiguringStudioSettings_ManageSources2=GUID-AA9E748E-AC5D-46C4-A0BF-6FBEEF9689C5=1=en=Default.png)

The Local activity feed is enabled by default. The Orchestrator feed is also enabled if the Robot is connected to Orchestrator.

# License and Profile

Select License and Profile in the Settings tab to add a local license key or switch to another user profile.

![ConfiguringStudioSettings_LicenseandProfile2=GUID-48B2CC1C-DDA1-4F22-A0AA-F7D45FD8117A=1=en=Default](/images/ConfiguringStudioSettings_LicenseandProfile2=GUID-48B2CC1C-DDA1-4F22-A0AA-F7D45FD8117A=1=en=Default.png)

* To add a new license key when Studio is licensed locally, click Change Local License, enter the new license key, and click Continue.
* To switch to another profile, click Change Profile, and then select Studio or StudioX.If you activated a Citizen Developer license, you can only use the StudioX profile.

#
