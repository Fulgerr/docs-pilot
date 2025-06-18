# Packages and libraries

A package is a bundle comprising all automation elements such as activities, workflows, files, and data sources. When you create a project in Studio, you publish it as a package to a specific location or feed. From here, the Robot can download and use it to run the automation.

Use absolute paths to indicate the location of packages.

# Default feeds

The following locations and feeds are configured by default in Studio:

Orchestrator Tenant and Orchestrator Host - These activities feeds are added by default if your Robot is connected to Orchestrator and they cannot be disabled. The Orchestrator Tenant option is available only if the tenant libraries feed is enabled in Orchestrator. The feeds have the following source: https://[Orchestrator_host]/nuget/activities.Local - The feed for the packages installed locally with Studio. The feed has the source: %ProgramFiles%\UiPath\Studio\Packages for per-machine installations or %localappdata%\Programs\UiPath\Studio\Packages for per-user installations.The publish date displayed in the Manage Packages window for packages from the local feed is the date when the Studio installer was built, not the date when the packages were published.Official - The official online UiPath feed, where you can find the activity packages that are officially supported by us. This feed has the following source: https://pkgs.dev.azure.com/uipath/Public.Feeds/_packaging/UiPath-Official/nuget/v3/index.json.Marketplace - This public feed contains all the activities published on the UiPath Marketplace. Please note that whether or not packages are built and officially supported by UiPath is specifically stated in the Manage Packages window, Package Information tab. This feed has the following source:https://gallery.uipath.com/api/v3/index.json.

# Custom feeds

In Enterprise installations, a custom activity feed can only be used in workflows started from Studio on that user. Starting a job on the same machine from Orchestrator or the Assistant results in the Robot not being able to retrieve the appropriate package. To avoid such scenarios, add the custom feed

To use custom feeds, make sure the Robot has access to the custom location.

# Activity feeds

When multiple feeds are used, NuGet selects the one that responds the fastest. Since activity packages can have multiple versions, the Robot searches for a version based on the runtime rules in Studio, as follows:For the Strict runtime rule, the Robot looks only for the specified package version. For example, if you select Version 2.5.0 and set the Runtime Rule as Strict, the Robot seeks only version 2.5.0. If not found, it throws an error.Fot the Lowest Applicable Version runtime rule, the Robot looks for the specified package version or higher. For example, if you select Version 2.5.0 and set the Runtime Rule as Lowest Applicable Version, the Robot searches for versions starting with 2.5.0 (2.5.0, 2.5.1, 2.5.2 and so on). If not found, it throws an error.If a feed lacks signed packages and dependencies, the automation might fail. This is because the Robot expects all packages and dependencies to be signed. To prevent this, ensure that all configured feeds contain only signed packages and dependencies.

Any time you modify config files, you need to restart the Robot Service for the changes to take effect.To ignore HTTPS feeds from NuGet.config, add the following line in UiPath.config, under <packageSettings>:<add key="skipHttpConfigurationSources" value="true" />

The following list summarizes the feeds the Robot uses, depending on how the feed is configured:If you choose to install the local feed, the %ProgramFiles%\UiPath\Studio\Packages folder is created. It contains the activity packages that are officially supported by UiPath at install time. The feed is enabled by default.If you choose not to install the local feed, the %ProgramFiles%\UiPath\Studio\Packages folder is created, however it only contains the packs that are added as default dependencies to a new project:UiPath.UIAutomation.ActivitiesUiPath.System.ActivitiesUiPath.Excel.ActivitiesUiPath.Mail.Activities

When you connect the Robot to Orchestrator, a NuGet feed is provided by Orchestrator. It contains the activity packages that are officially supported by UiPath . This feed is enabled by default and depends on your storage settings.

The following list summarizes the feeds the Robot uses, depending on the Robot connection to Orchestrator:Robot connected to OrchestratorIf NuGet.Repository.Type is set to Legacy, activities are saved in the ~/NuGetPackages/Activities location by default. This value is customizable and kept on the Orchestrator machine, in the NuGet.Activities.Path parameter of the web.config file.If NuGet.Repository.Type is set to Composite, activities are saved in the location specified through the Storage.Type and Storage.Location parameters.The Composite option restricts the usage of copy-paste commands in the packages directory.Robot not connected to OrchestratorWhen the Robot is not connected to Orchestrator, or it does not find the required activities in the local feed, it uses the following feed:https://pkgs.dev.azure.com/uipath/Public.Feeds/_packaging/UiPath-Official/nuget/v3/index.jsonThis is the official online UiPath feed, which is the source from where the Package Manager in Studio retrieves its activities. By default, this feed is not active. To enable it, in Studio, go to Settings > Manage Sources, and select the corresponding option.

# Fallback packages folders

A fallback package folder is a backup folder from which the robot can retrieve necessary packages if the primary source fails.

To set this folder up, add the NUGET_FALLBACK_PACKAGES environment variable on the robot machine. The variable should contain the list of full paths, each separated by a semicolon, to these backup folders. If the environment variable does not exist, the robot tries to read the NuGet packages fallback folders from the Nuget.config file.

You cannot use fallback folders to store and run entire automations or workflows.Processes deployed in fallback folders are not supported, only dependencies.
