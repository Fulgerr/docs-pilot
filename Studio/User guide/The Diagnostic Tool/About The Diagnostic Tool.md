# About The Diagnostic Tool

The UiPath Diagnostic Tool is a standalone utility, enabling you to better collect and preview diagnostics info, which is then packaged and can be sent to our technical support team to help you solve potential problems.

It comes bundled with a variety of collectors to help you gather just the information you need. Moreover, you can save selected collectors as a profile to be used later on. Information can be collected from Studio, Robot, RobotJS, Activities, and Orchestrator.

You can download the Diagnostic Tool from the Resource Center in your Automation Cloud instance.

It also comes installed with Studio, and you can find it in the C:\Program Files\UiPath\Studio folder (for per-machine installations) or in the %localappdata%\Programs\UiPath\Studio folder (for per-user installations).

To access it, simply click the Start button, and search for the Diagnostics Tool application.

# The Start Section

The Diagnostic Tool is based on profiles, which gather information using collectors. A profile is a set of collectors specialized in gathering specific information, depending on the issues you have. The tool comes with a couple of predefined profiles, each with a specific set of collectors, but it is also possible to create your own profiles, each suited for a particular issue. Even if you start of with a predefined profile, you can later on add or remove collectors, depending on what information needs to be gathered.

![ebb29d8-start=GUID-A0B7EA8D-9A4B-4E6F-BEDA-90727D77392A=1=en=Default](/images/ebb29d8-start=GUID-A0B7EA8D-9A4B-4E6F-BEDA-90727D77392A=1=en=Default.png)

ProfileDescriptionStudio/Robot/Activities IssueGathers information about Studio, Robot, or Activities. This profile comes with several collectors enabled by default.Orchestrator IssueGathers information about your connection to Orchestrator. This profile comes with several collectors enabled by default.Empty ProfileThis profile does not come with any selected collectors. Here is where you can create custom profiles with the desired collectors to use later on.Custom LocationGathers info based on a .json file you provide. You can select the collectors to be used.

Additionally, you can choose to import a previously generated .zip package of collected data to review.

# The Configure Section

This section is where all the collectors are found. The first two profiles already have several collectors added, but you can also add others or remove existing ones. Available collectors are as follows:

CollectorGathered InformationRegistry InfoRegistry keys used, as well as the corresponding value name and value data.Screen InfoDisplay or displays used, as well as type, resolution, DPI, and offset coordinates.Event LogsGenerates an .evtx log file for the selected application.This collector can be used with the following filters:• Period (number of days)• Event Level• SourcesFilter (list of application sources separated by comma)Environment VariablesSystem or local environment variables used, based on a configurable clause.Computer InfoName, domain, operating system, session, administrator, and proxy settings of the machine.Log FilesExecution, Studio, ETL, and combined logs. They can be viewed and exported from each section.Process InfoSystem processes used.Third Party InstallationsEnlists all the third party applications used.UiPath InstallsEnlists all installed UiPath products on that machine, as well as the version, type, and path.LicenseDisplays the license type and status.Settings FileEnlists the available UiPath.settings, UiStudio.settings, UiStudio.v2.settings, and NuGet.config files with the possibility to access them.Orchestrator Web ConfigDisplays the Web.config file, based on the specified Registry Key location and its value.Orchestrator Application Host FileDisplays the applicationhost.config file based on a specified folder.FilesGets the files from a specified DirectoryPath with a configurable Pattern.Custom RegistryRetrieves Registry keys used, as well as the corresponding value name, and value data from a custom path.

![690d7d1-config=GUID-DDE15352-1FB3-4611-AA53-0D8AAC090DCD=1=en=Default](/images/690d7d1-config=GUID-DDE15352-1FB3-4611-AA53-0D8AAC090DCD=1=en=Default.png)

If you're not happy with the provided collectors of a profile, you can simply remove them by clicking the x button in the corresponding collector's container.

If you feel like you need more collectors, click the Add a New Collector button and choose the one you need from the list.

Considering you want to use some collectors multiple times, you can add them to the list and click the Export Profile to File button. This generates a .json file you can later on import from the Start section.

Some collectors allow you to view information in a more detailed manner.

For example, the Log Files collector lets you explore collected files of a log type (ExecutionLogs, StudioLogs, EtlLogs, or CombinedLogs) in a separate window, with the possibility to view a log file's path, open it, or even choose which of the log files to be exported.

![0c9f00f-log_files=GUID-2547AAAD-B453-49EB-90D6-32D138FFAD83=1=en=Default](/images/0c9f00f-log_files=GUID-2547AAAD-B453-49EB-90D6-32D138FFAD83=1=en=Default.png)

Similarly, the Registry Info collector only displays the first few results in the Preview section, but allows you to view all results in a separate window, by clicking the Displaying x out of y button, there x is the displayed number of results, and y being the total.

![cba0835-reg_info=GUID-0EC630BC-AD40-44B5-83FA-0E79B06B16CE=1=en=Default](/images/cba0835-reg_info=GUID-0EC630BC-AD40-44B5-83FA-0E79B06B16CE=1=en=Default.png)

# The Preview Section

This is where all the collected information is displayed. They are grouped in collapsible boxes to make info easy to read. If you're not happy with particular collectors, you can simply disable them so they don't get exported in the final package.

![4e30825-preview=GUID-A15830C8-0B9C-4101-B171-296966EAAD6F=1=en=Default](/images/4e30825-preview=GUID-A15830C8-0B9C-4101-B171-296966EAAD6F=1=en=Default.png)

Collectors you don't consider necessary for export can be disabled here. Simply uncheck the desired collectors before clicking Next.

# The Export Section

The last section shows a preview of the collectors used in the process. All that's left to do now is to click on Export to save all collected data in a .zip package, with the possibility to open the location where the file is saved. You can also navigate between the sections if you want to make changes to collectors.

![f05a8d5-export=GUID-B30BE6DD-E449-4199-B0C2-299663BD2D16=1=en=Default](/images/f05a8d5-export=GUID-B30BE6DD-E449-4199-B0C2-299663BD2D16=1=en=Default.png)

# Command Line Arguments

The Diagnostic Tool can also be used from the Command Prompt or Windows PowerShell. The arguments and their results are the same, regardless of the usage mode.

It can be accessed as follows:

* Command Prompt - open an elevated Command Prompt instance and use the cd command to the location of the Diagnostic Tool. Then, use one of the arguments enlisted below.
* Windows PowerShell - navigate to the location of the Diagnostic Tool, right-click it, and choose to open in PowerShell. Then, use on of the arguments enlisted below.

Example:

UiPath.DiagnosticTool.exe run <[defaultProfile] | [pathToProfile> [Optional Parameter]

ArgumentDescriptionrun studioRuns the Studio default profile.run orchestratorRuns the Orchestrator default profile.run <pathToFile>Runs a custom previously created, custom diagnostic profile from a generated .json file.-o, --outputSpecifies the output of the generated .zip package containing all the collected data.

# Generating a Diagnostic Tool report

To generate a Diagnostic Tool report:Click Start and search for the UiPath Diagnostics Tool application.Select the appropriate options in the Start section and click Next.Configure the data in the Configure section and click Collect.A confirmation window to delete the current progress appears when clicking Previous.Review the data in the Preview section and click Next.Click Export in the Export section.Save the generated .zip file on your machine.Send the generated .zip file to the technical support team.
