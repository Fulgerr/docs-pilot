# Governance

This page documents the file-based governance model available for Studio. For information on how to deploy policies from Automation Ops, see the Automation Ops Guide.

To ensure Studio users adhere to development standards and comply with certain rules, organizations can enforce governance policies that control Studio functionalities.

You can enforce governance policies in one of the following ways:

* Create and deploy policies from Automation Ops, an easy-to-use web application.
* Use a file-based governance model that consists of creating a JSON policy file and deploying the file locally, externally, or via Orchestrator.

The current capabilities are:

* enforce different policies per Studio profile.
* restrict usage of package feeds from the Manage Packages window and Backstage View > Settings > Manage Sources .
* enforce organizational development standards using Workflow Analyzer rules.
* enforce design and location settings, and configure several settings that are not available Studio .
* enable sending Studio usage data to your organization .
* enforce the use of specific repositories for GIT source control .

Watch the following video for an overview of the governance capabilities available in Studio and a demo of how to use them in StudioX.

Governance made easy for the StudioX user

To enforce a governance policy, start by generating a governance file from Studio, then configure the file using the parameters it contains, and apply the policy in one of the following ways:

* Using a local file (for testing purposes) - Place the governance file in the Roaming folder on the machine where Studio is installed.
* Using an external file (for large deployments) - Place the governance file at a path (for example, an HTTP/HTTPS server) referenced by either a registry key or an asset in Orchestrator.
* Using an asset in Orchestrator - Copy the contents of the governance file to an asset in Orchestrator.

## Generate the Governance File

The first step in enforcing development standards in your organization is to generate a
      governance file from Studio or manually create a similar file that would incorporate all or
      part of the capabilities we listed above.

The governance file
        must be of type .config with the following name
        uipath.policies.config.

To generate a governance file with your current configuration from Studio, go to the
      Backstage view > Help tab, and select Generate Governance File. The exported file
      can be shared across your team.

![Governance_GenerateGovernanceFile=GUID-88B1449A-8BA5-4697-AFB1-78FD3C43A6FB=1=en=Default](/images/Governance_GenerateGovernanceFile=GUID-88B1449A-8BA5-4697-AFB1-78FD3C43A6FB=1=en=Default.png)

If Automation Ops is enabled
      for your organization, you are prompted to select whether to generate a Classic or a
        Modern policy. Select the classic option for the file-based governance model. The
      modern option generates policies that you can then import in Automation Ops for an easy
      migration to that model.

Use the button below to download the sample that includes all Workflow Analyzer rules. Modify
      the sample to fit your organization's needs.

Download sample


## Configure the Governance File




### File Version and File Label

Governance files may have different versions and a custom name.

{
    "Metadata": {
        "Version": "1.0"
                "LastUpdatedUtc": "2021-08-25T07:49:26.3089368Z",
                "Availability": null
    },
    "Info": {
        "Name": "Sample Policy Registry Key"
    }
}


| Parameters | Values |
| --- ---| "Metadata" > "Version" | major.minor between quotation marks "" |
| "Info" > "Name" | Label written between quotation marks "", visible in Home > Help, under Company Policy. |


### Studio Profiles

The governance file may contain policies for Studio and StudioX users, however, these must be structured per profile. Policies for Studio must be separated from those for StudioX as in the example below:

{
    "Profiles": {
        "Development": {
            "Shell": {
                "IsFeedbackEnabled": true,
                "HideGettingStartedScreen": false
            },
            "PackageManager": {},
            "Analyzer": {}
        },
        "Business": {
            "Shell": {
                "IsFeedbackEnabled": true,
                "HideGettingStartedScreen": false
            },
            "PackageManager": {},
            "Analyzer": {}
        }
    }
}


| Parameters | Values |
| --- ---| "Profiles" | For Studio: DevelopmentFor StudioX: BusinessYou can add both profiles in the same file. |


### Settings Users Cannot Configure From Studio

The parameters under "Shell" enable you to prevent production runs from StudioX by setting a limit for the number of runs a user can perform for a project without any changes.

In addition, you can configure whether the feedback form and welcome screen are available to users.

{
      "Shell": {
        "IsFeedbackEnabled": true,
        "HideGettingStartedScreen": false,
        "RequireUserPublish": {
          "PermittedConsecutiveRuns": 3,
          "DialogMessage": null,
          "LogToQueue": {
            "QueueName": "NameOfQueue",
            "QueueFolder": "NameOfQueueFolder"
          }
        }
      }
}


| Studio Setting | Parameters | Values |
| --- --- ---| Enables or disables the Send feedback form that can be accessed from the Studio title bar. | "IsFeedbackEnabled" | Either true or false. |
| Enables or disables the welcome screen with links to the UiPath Academy, an introduction video, and tutorials that is displayed when users open Studio | "HideGettingStartedScreen" | Either true or false. |
| The parameters under "RequireUserPublish" enable you to limit the number of consecutive runs that can be triggered from Studio for a project that has no changes, and to configure logging settings for events where the limit is exceeded.This can be used to prevent users from triggering production runs from Studio. As a best practice, projects that are ready for production should be published to Orchestrator and executed from the Assistant. | "RequireUserPublish"1 | N/A |
| Maximum number of consecutive times a project without changes can be run. | "PermittedConsecutiveRuns"1 | Enter the allowed number of times. If the value is null or a negative number, no limit is set. |
| Message to display to the user in a dialog box when the allowed number of consecutive executions is exceeded. The dialog box prompts the user to either publish the project or cancel the execution. | "DialogMessage" | Enter a custom message to display between quotation marks "". If the value is null, the following message is used: It appears you are performing production runs directly from your project. Your organization requires you to publish your project to Orchestrator and run from your Assistant. |
| The parameters under "LogToQueue" give you the option to configure an Orchestrator queue where to log events. The following information is logged for each event: username, project name, hash of the main XAML file, and timestamp from the local machine. | "LogToQueue" | N/A |
| Orchestrator queue in which to save the records. | "QueueName" | Enter the name of the queue between quotation marks "". If the value is null, no records are saved. |
| Orchestrator folder containing the queue in which to save the records. | "QueueFolder" | Enter the name of the Orchestrator folder between quotation marks "". If the value is null, no records are saved. |

1 - Changes take effect only in the StudioX profile.


### Usage of Package Sources

You can restrict accessing, adding, or removing package sources per Studio or StudioX using the governance file.

{
    "PackageManager": {
        "AllowAddRemoveFeeds": false,
        "AllowEnableDisableFeeds": false,
        "AllowOrchestratorFeeds": true,
        "EnablePreviewPackagesParam": {
          "AllowEdit": true,
          "Value": null
        },
        "Feeds": [{
                "Name": "Organization Internal Feed",
                "Source": "https://[company].pkgs.visualstudio.com/_packaging/nuget-packages/nuget/v3/index.json",
                "IsEnabled": true
            },
            {, 
                "Name": "Official",
                "Source": "https://uipath.pkgs.visualstudio.com/Public.Feeds/_packaging/UiPath-Official/nuget/v3/index.json",
                "IsEnabled": true
            }
        ]
    }
}


| Parameters |  | Values |  |
| --- --- --- ---| "Package Manager" | "AllowAddRemoveFeeds" |  | Either true or false. |
|  | "AllowEnableDisableFeeds" |  | Either true or false. |
|  | "AllowOrchestratorFeeds" |  | Either true or false. |
|  | EnablePreviewPackagesParam |  | Either true or                             false. |
|  | "Feeds" | "Name" | Label written between quotation marks "", visible in Manage Packages. |
|  |  | "Source" | Feed source written between quotation marks ", visible in Manage Packages. |
|  |  | "IsEnabled" | Either true or false. |

If the "AllowAddRemoveFeeds" and "AllowEnableDisableFeeds" parameters are set to true, the user may modify feeds available in the Package Manager. If any changes are made, they are persisted when Studio is restarted.

If the "AllowOrchestratorFeeds" parameter is set to true and the Robot is Connected to Orchestrator,  users cannot disable the default Orchestrator feeds.

If the EnablePreviewPackagesParam parameter is set to true, user
            have access to prerelease (beta) versions of activities packages. Users can select the
                Include Prereleases filter option in the Manage Packages window to
            install prerelease versions of packages. Users can also select the Preview filter
            option in the Activities panel to access preview activities in the
                Activities panel and the Add activity search bar.Installing prerelease versions of the Integration Service activities
                            package is not restricted by the new governance policy. The
                        policy only restricts displaying such activities in the Activities
                        panel.When restoring a project (for example, when converting a cross-platform
                            project to the Windows compatibility), the restored project receives the
                            latest prerelease version of the System activities package even
                            if access to prelease packages is restricted.

Feeds that are defined in the governance file are added to the Default package sources section in the Manage Packages window and the user can add the custom feeds (if provided with the required rights in the governance file) to the User defined package sources section.

Please note that the path to the Local feed for per-user installations is C:\Users\CurrentUser\AppData\Local\Programs\UiPath\Studio\Packages.


### Activities Panel Settings

The settings under ActivitiesManager enable you to hide specific activities in Studio and
                        StudioX and enforce the use of the Show Developer filter in
                        StudioX.

"ActivitiesManager": {
        "AllowShowDeveloper": false,
        "HiddenActivities": ["UiPath.Mail.Activities.Business.GmailApplicationCard","UiPath.Mail.Activities.Business.OutlookApplicationCard"]
}


| Setting | Parameters | Value |
| --- --- ---| Allows users to select the Show Developer filter in the activities panel in StudioX. If set to False, the option becomes unavailable. | "AllowShowDeveloper" | Either true or false. |
| A list of activities to be hidden from the activities panel. | "HiddenActivities" | Enter activity names in the array, separated by commas.In the example below, the Use Gmail and Use Desktop Outlook App activities have been hidden."HiddenActivities": ["UiPath.Mail.Activities.Business.GmailApplicationCard","UiPath.Mail.Activities.Business.OutlookApplicationCard"] |


### Template Feeds

The settings under TemplatesManager enable you to enforce which template feeds are enabled or disabled for your organization.

"TemplatesManager": {
        "Feeds": [
          {
            "Name": "GettingStarted",
            "IsEnabled": true
          },
          {
            "Name": "Official",
            "IsEnabled": true
          },
          {
            "Name": "Marketplace",
            "IsEnabled": true
          }
        ]


| Settings |  | Parameters | Value |
| --- --- --- ---| TemplatesManager | Feeds | Name | The name of the feed written between quotation marks "". |
|  |  | IsEnabled | Either true or false. |


### Source Control Settings

The settings under "SourceControl" enable you to enforce the use of allowed repositories when working with GIT, and committing changes before publishing.

{
      "SourceControl": {
        "PublishSourceControlInfoParam": {
          "AllowEdit": false,
          "Value": false
        },
        "CheckInBeforePublishParam": {
          "AllowEdit": false,
          "Value": false
        },
       "RepositoriesConfigParam": {
          "AllowEdit": true,
          "Value": {
            "AllowSaveLocal": null,
            "AllowEditRepositories": null,
            "Repositories": [
              {
                "SourceControlType": 0,
                "Name": null,
                "Url": null,
                "DefaultFolder": null
              }
            ]
          }
       
}

The "AllowEdit" parameter indicates whether or not users are allowed to change the default setting configured by the governance file.


| Studio Setting | Parameters | Value |
| --- --- ---| See process source control information (repository URL, repository               commit, repository branch, Automation Hub idea URL, and repository type). | PublishSourceControlInfoParam | Either true or false. |
| Enforce Check-In before PublishThis setting is available in Home > Settings > Design. | "CheckInBeforePublishParam" | Either true or false. |
| The parameters under RepositoriesConfigParam enable you to govern the use of source control repositories. This applies only for GIT. | "RepositoriesConfigParam" | N/A |
| Allow users to save projects locally on their machine. | "AllowSaveLocal"1 | Either true or false. If the value is null, the parameter is interpreted as true.When set to false, users can't select This PC as the location when creating a new project in StudioX and will save the project to a repository. |
| Allow users to add and edit repositories. | "AllowEditRepositories" | Either true or false. If the value is null, the parameter is interpreted as true.If set to false:In StudioX backstage view, the options in Home > Team are read only and users are not able to add, edit or remove a repository.In Studio, users can add repository URLs in the Clone a remote GIT repository window, but each URL is checked against the list of allowed repositories. |
| A list of allowed GIT repositories. This parameter accepts a JSON array of repositories. | "Repositories"A repository that is already checked out locally by a user is allowed for both profiles even if it is on the allowed list for only one of them. | Enter repositories in the array by adding the Name, Url, and optionally DefaultFolder (the default folder of the repository).Example of a repository:"Name":"%username%'s Repo","Url": "https://github.com/uipath/%username%","DefaultFolder":nullAdding a base URL (e.g. https://github.com/MyOrg/) allows the  use of repositories with child URLs (e.g. https://github.com/MyOrg/RPA).Any strings placed between % in the name and URL parameters are interpreted as environment variables on the user machines.All spaces in the URL parameter are replaced with hypens (-). |

1 - Changes take effect only in the StudioX profile.


### Studio Settings

The following parameters enable you to configure settings mostly found in Home (Studio
      Backstage View) > Settings. For more information, see Configuring
          Studio Settings. There are also parameters that configure project-level
      settings from the Project
        Settings window and settings that cannot be configured from the Studio UI.

{
      "Workflow": {
        "DefaultProjectLanguageParam": {
          "Value": VisualBasic,
          "AllowEdit": false
        },
        "DefaultProjectFrameworkParam": {
          "Value": "Classic",
          "AllowEdit": true
        },          
        "AllowedProjectFrameworks": {
          "Classic": true,
          "Modern": true,
          "CrossPlatform": true
        },
        "DockedAnnotationsParam": {
          "AllowEdit": false,
          "Value": true
        },
        "ShowDataManagerOnlyParam": {
          "AllowEdit": true,
          "Value": false
        },
        "ShowPropertiesInlineParam": {
          "AllowEdit": true,
          "Value": false
        },
        "IsCollapsedViewSlimParam": {
          "AllowEdit": false,
          "Value": false
        },
        "UseSmartFilePathsParam": {
          "AllowEdit": true,
          "Value": true
        },
        "EnableLineNumberingParam": {
          "AllowEdit": true,
          "Value": true
        },
        "EnableActivityOnlineRecommendationsParam": {
          "AllowEdit": true,
          "Value": true
        },
        "EnableDiscoveredActivitiesParam": {
          "AllowEdit": true,
          "Value": true
        },
        "EnforceReleaseNotes": false,
        "DisplayLegacyFrameworkDeprecation": true,
        "AnalyzeOnPublishParam": {
          "AllowEdit": false,
          "Value": false
        },
        "PublishApplicationsMetadata": true,
        "AnalyzeOnPushParam": {
          "AllowEdit": true,
          "Value": false
        },
        "AnalyzeOnRunParam": {
          "AllowEdit": false,
          "Value": false
        },
        "AnalyzeRpaXamlsOnlyParam": {
          "AllowEdit": false,
          "Value": false
        },
        "AdditionalAnalyzerRulePathParam": {
          "AllowEdit": false,
          "Value": null
        },
        "DefaultProjectFolderParam": {
          "AllowEdit": false,
          "Value": null
        },
        "DefaultProcessPublishUrlParam": {
          "AllowEdit": false,
          "Value": null
        },
        "DefaultLibraryPublishUrlParam": {
          "AllowEdit": false,
          "Value": null
        },
        "DefaultTemplatePublishUrlParam": {
          "AllowEdit": false,
          "Value": "C:\\Users\\username\\Documents\\UiPath\\.templates"
        },
        "DefaultPipTypeParam": {
          "Value": "ChildSession",
          "AllowEdit": true
        },
        "SeparateRuntimeDependenciesParam": {
          "AllowEdit": true,
          "Value": true
        },
        "IncludeSourcesParam": {
          "AllowEdit": true,
          "Value": true
        },
        "ObjectRepositoryEnforcedParam": {
          "AllowEdit": false,
          "Value": false
        },
        "UseConnectionServiceParam": {
          "AllowEdit": true,
          "Value": false
        },
        "PlatformAutoUpdateIntervalDaysParam": {
          "AllowEdit": true,
          "Value": 7
        },
        "HideSequencesParam": {
          "AllowEdit": true,
          "Value": true
        },
        "AutoGenerateActivityOutputsParam": {
          "AllowEdit": true,
          "Value": true
        },
        "AllowedPublishFeeds": {
          "Custom": true,
          "PersonalWorkspace": true,
          "TenantPackages": true,
          "FolderPackages": true,
          "HostLibraries": true,
          "TenantLibraries": true,
          "Local": true
        },
        "SaveToCloudByDefaultParam": {
          "AllowEdit": true,
          "Value": false
        },
        "EnableGenerativeAiParam": {
          "AllowEdit": true,
          "Value": true
        }
      },
}

Two parameters are available for most options:

* "AllowEdit" - Indicate whether or
        not users are allowed to change the default setting configured by the governance file
          ( true to allow, false to deny).
* "Value" - Indicate the default
        setting, as described in the following tables.

# Under "Workflow":

Studio SettingParametersValueUse C# Language"DefaultProjectLanguageParam"1CSharpIf "AllowEdit" is
                      false - Allow only C#.If "AllowEdit" is
                      true - Set the default language to C# and allow users to
                    change the default language.VisualBasicIf "AllowEdit" is
                      false - Allow only VB.If "AllowEdit" is
                      true - Set the default language to VB and allow users to
                    change the default language.Create docked annotations"DockedAnnotationsParam"Either true or false.Show Data Manager panel only"ShowDataManagerOnlyParam"Either true or false.Show all activity properties in the activity cards in the
                  Designer panel."ShowPropertiesInlineParam"Either true or false.Hide sequences"HideSequencesParam"Either true or false.Generate outputs automatically for activities"AutoGenerateActivityOutputsParam"Either true or false.Save projects to the cloud by default.“SaveToCloudByDefaultParam”Either true or false.Default project target framework"DefaultProjectFrameworkParam"1"Classic"If "AllowEdit" is
                      false - Allow only Windows - Legacy (.NET Framework
                    4.6.1).If "AllowEdit" is
                      true - Set the default target to Windows - Legacy and allow
                    users to change the target framework."Modern"If "AllowEdit" is
                      false - Allow only Windows.If "AllowEdit" is
                      true - Set the default target to Windows and allow users to
                    change the target framework."Cross-platform"If "AllowEdit" is
                      false - Allow only Cross-platform.If "AllowEdit" is
                      true - Set the default target to Cross-platform and allow
                    users to change the target framework.The parameters under "AllowedProjectFrameworks"
                  determine the target frameworks allowed when creating or opening a project in the
                  Studio profile. To enable a framework, set its parameter to
                  true.This setting cannot
                  be configured from the Studio UI"AllowedProjectFrameworks" 1Either true or false. for
                  each of the following:"Classic" (Windows -
                    Legacy)"Modern" (Windows)"Cross-platform"
                    (Cross-platform)Use Smart File Paths"UseSmartFilePathsParam" 2Either true or false.Enable line numbering"EnableLineNumberingParam"2Either true or false.Enable AI activity suggestions"EnableActivityOnlineRecommendationsParam"Either true or false.Show all official activities packages that can be installed in
                your project"EnableDiscoveredActivitiesParam"Either true or false.Track which external applications and URLs are targeted by an
                automation in Windows and cross-platform projects. The latest versions of activity
                packages need to be installed.This setting cannot be configured from the Studio UI."PublishApplicationsMetadata"Either true or false.Make the Release Notes field in the Publish wizard
                  mandatoryThis setting cannot
                  be configured from the Studio UI."EnforceReleaseNotes"Either true or false.Set the visibility of the message which appears when you open a
                Windows - Legacy project. This setting cannot be
                  configured from the Studio UI."DisplayLegacyFrameworkDeprecation"Either true or false.Slim View for Collapsed Activities"IsCollapsedViewSlimParam"Either true or false.Enforce Analyzer before Publish"AnalyzeOnPublishParam"Either true or false.Enforce Analyzer before Push/Check-in"AnalyzeOnPushParam"Either true or false.Enforce Analyzer before Run"AnalyzeOnRunParam"Either true or false.Analyze RPA XAML Files Only"AnalyzeRpaXamlsOnlyParam"Either true or false.Workflow Analyzer Rules Location"AdditionalAnalyzerRulePathParam"null - Use the
                    default location.To change the location, enter
                    the path to the folder where custom rules are stored between quotation
                    marks.Project Path"DefaultProjectFolderParam"null - Use the
                    default location.To change the location, enter
                    the path to the folder where custom rules are stored between quotation
                    marks.Publish Process URL"DefaultProcessPublishUrlParam"null - Use the
                    default location.To change the location, enter
                    the path between quotation marks.Publish Library URL"DefaultLibraryPublishUrlParam"null - Use the
                    default location.To change the location, enter
                    the path between quotation marks.Publish Project Templates URL"DefaultTemplatePublishUrlParam"To change the location, enter the path between quotation
                  marks.Separate Runtime DependenciesThis
                  setting is in the Project Settings window."SeparateRuntimeDependenciesParam"Either true or false.Include SourcesThis setting is in the
                  Project Settings window."IncludeSourcesParam"Either true or false.Object Repository enforced"ObjectRepositoryEnforcedParam"Either true or false.Default to managed connections"UseConnectionServiceParam"Either true or false.The parameters under "AllowedPublishFeeds" determine the
                  publish locations available to users. To enable a publish location, set its
                  parameter to true.This setting cannot
                  be configured from the Studio UI"AllowedPublishFeeds"Either true or false. for
                  each of the following: "Custom", "PersonalWorkspace",
                    "TenantPackages", "FolderPackages", "HostLibraries",
                    "TenantLibraries", "Local".PiP Type"DefaultPipTypeParam"ChildSession -
                    New session.SecondaryDesktop - New desktop.Enable generative AI capabilitiesEnableGenerativeAiParamEither true or false.

1 - Changes take effect only in the Studio profile.

2 - Changes take effect only in the StudioX profile.

# Under "ObjectBrowser":

Studio SettingParametersValueSend anonymous UI Descriptors"SendUiDescriptors"Either true or false


### Send Studio Usage Data to Your Organization

The parameters under "Telemetry" allow you to enable sending Studio usage data to an Application Insights resource in your Azure portal. This data allows you to monitor and analyze what users are doing in Studio. To enable this feature, enter the instrumentation key of your Application Insights instance in the "instrumentation-keys" parameter.

{
       "Telemetry": {
        "TelemetryOptions": {
          "TelemetryOptionsDictonary": {
            "instrumentation-keys": ""
        }
      }
   }
}

See the following table for information about the telemetry data that is sent to Application Insights.


| Action | Event Name | Data Collected |
| --- --- ---| Studio is started | StudioStarted | Windows user IDSession ID |
| Studio is closed | StudioClosed | Windows user IDSession IDSession duration |
| Project is opened | OpenProject | Windows user IDSession IDProject name |
| Project is created 1 | NewProjectNewProjectCreated | Windows user IDSession IDProject name |
| Project is run | RunProjectStartDebug 2 | Windows user IDSession IDProject name |
| File is run | RunDocumentStartDebug 2 | Windows user IDSession IDProject name |
| Project is debugged | DebugProjectStartDebug 2 | Windows user IDSession IDProject name |
| File is debugged | DebugDocumentStartDebug 2 | Windows user IDSession IDProject name |
| Run to this Activity is executed | Designer_RunTo | Windows user IDSession IDProject name |
| Project is published | PublishProject | Windows user IDSession IDProject nameOrchestrator URLFolder namePublish location (feed) |
| Activity package is installed | PackageAdded | Windows user IDSession IDPackage namePackage versionProject name |
| Activity is added to a project | S.Activities.ActivityAdded | Windows user IDSession IDActivity namePackage namePackage version |
| Target is indicated in UI Automation activity | S.Activities.PropertyChanged | Windows user IDSession ID |

1 - When a project is created, NewProject is generated when the user selects to create a new project in the Studio Backstage View, and NewProjectCreated is generated when the user clicks the Create button in the new project dialog.

2 - The StartDebug event tracks the target robot that executed the operation - the local robot (Local) or a remote robot (Orchestrator for unattended robot connection, Remote for remote machine connection).

# Using the Data in Application Insights

In addition to the use case scenarios described in the official Microsoft documentation, you can test and build queries using Log Analytics in the Azure Monitor of your Azure Insights instance. To see all possible data for an event, you can build a simple query that will explore all its occurrences in the predefined time range. For example:

customEvents
| where name == "StudioStarted"

See the following table for examples of telemetry queries and a description for each one. You can also check the list of known issues.

EventExample QueryQuery DescriptionStudioStartedStudio is startedcustomEvents| where name == "StudioStarted"| where timestamp >= startofday(ago(30d))and timestamp <= endofday(ago(1d))| summarize count(name) by bin(timestamp, 1d)| order by timestamp descHow many times per day Studio was opened in the last 30 days, excluding the current day.StudioClosedStudio is closedcustomEvents| where name == "StudioClosed"| where timestamp >= startofday(ago(30d))and timestamp <= endofday(ago(1d))| summarize count(name) by bin(timestamp, 1d)| order by timestamp descHow many times per day Studio was closed in the last 30 days, excluding the current day.StudioClosedStudio is closedcustomEvents| where name == "StudioClosed"| where timestamp >= startofday(ago(30d))and timestamp <= endofday(ago(1d))| extend TotalSessionTimeInSeconds = tostring(customDimensions.TotalSessionTimeInSeconds)| extend SessionId = tostring(parse_json(tostring(customDimensions.Context)).SessionId)| summarize AvgSessionTime_inMinutes = round(avg(todouble(TotalSessionTimeInSeconds))/60,2) by bin(timestamp, 1d)| order by timestamp descThe average daily session duration for the last 30 days, excluding the current day (in minutes rounded to two decimal points).OpenProjectProject is openedcustomEvents| where name == "OpenProject"| where timestamp >= startofday(ago(30d))and timestamp <= endofday(ago(1d))| summarize count(name) by bin(timestamp, 1d)| order by timestamp descHow many times per day a project was opened in the last 30 days, excluding the current day.NewProjectCreatedProject is createdcustomEvents| where name == "NewProjectCreated"| where timestamp >= startofday(ago(30d))and timestamp <= endofday(ago(1d))| extend ActionArgs = tostring(customDimensions.ActionArgs)| where ActionArgs != ""| summarize count(name) by ActionArgs,bin(timestamp, 1d)| order by timestamp descHow many projects and of what type were created in the last 30 days, excluding the current day.StartDebugProject is run or debugged / File is run or debuggedcustomEvents| where name == "StartDebug"| where timestamp >= startofday(ago(30d))and timestamp <= endofday(ago(1d))| extend RunTarget = tostring(customDimensions.RunTarget)| summarize count(name) by RunTarget,bin(timestamp, 1d)| order by timestamp descHow many runs were started and for what target in the last 30 days, excluding the current day.Designer_RunToRun to this Activity is executedcustomEvents| where name == "Designer_RunTo"| where timestamp >= startofday(ago(30d))and timestamp <= endofday(ago(1d))| summarize count(name) by bin(timestamp, 1d)| order by timestamp descHow many times Run to this Activity was executed in the last 30 days, excluding the current day.PublishProjectProject is publishedcustomEvents| where name == "PublishProject"| where timestamp >= startofday(ago(30d))and timestamp <= endofday(ago(1d))| summarize count(name) by bin(timestamp, 1d)| order by timestamp descHow many projects were published in the last 30 days, excluding the current day.PackageAddedActivity package is installedcustomEvents| where name == "PackageAdded"| where timestamp >= startofday(ago(30d))and timestamp <= endofday(ago(1d))| extend ActionArgs = tostring(customDimensions.ActionArgs)| summarize count(name) by ActionArgs,bin(timestamp, 1d)| order by timestamp descHow many packages and the names of the packages that were installed in the last 30 days, excluding the current day.S.Activities.ActivityAddedActivity is added to a projectcustomEvents| where name == "S.Activities.ActivityAdded"| where timestamp >= startofday(ago(30d))and timestamp <= endofday(ago(1d))| extend ActivityType = tostring(customDimensions.ActivityType)| extend PackageName = tostring(customDimensions.PackageName)| extend PackageVersion = tostring(customDimensions.PackageVersion)| summarize count(name) by ActivityType, PackageName, PackageVersion, bin(timestamp, 1d)| order by timestamp descHow many activities were added in the last 30 days, excluding the current day. Includes the name and version of the package each activity comes from. 3S.Activities.PropertyChangedTarget is indicated in UI Automation activitycustomEvents| where name == "S.Activities.PropertyChanged"| where timestamp >= startofday(ago(30d))and timestamp <= endofday(ago(1d))| extend ActivityType = tostring(customDimensions.ActivityType)| extend PropertyName = tostring(customDimensions.PropertyName)| summarize count(name) by ActivityType, PropertyName, bin(timestamp, 1d)| order by timestamp descHow many times properties of used activities were changed in the last 30 days, excluding the current day. Includes the activity names and the name of each property that was changed.

The following table lists additional parameters that are included by default in events.

ParameterDescriptionIn-Query Representation (on a selected event)customDimensionsA detailed collection of data and parameters related to every event.customEvents| where name == "StudioStarted"| extend customDimensionsContextA part of the customDimensions collection that handles details about the project, including profile, user ID, license type, robot type, session ID.customEvents| where name == "StudioStarted"| extend Context = parse_json(customDimensions.Context)EnvironmentA part of the customDimensions collection that consists of the machine name, OS version, and username.customEvents| where name == "StudioStarted"| extend Environment = parse_json(customDimensions.Environment)

Log Analytics gives you the option to explicitly extend each data type that is part of the mentioned parameters to serve as a filter or to be used as an additional summarize element. To do this, click the three-dot icon next to a data element in the log, and then choose to either extend data or use it as a filter.

![7cc0cce-insights_menu=GUID-25EE96EF-5D2B-4232-A85F-276B54155CA9=1=en=Default](/images/7cc0cce-insights_menu=GUID-25EE96EF-5D2B-4232-A85F-276B54155CA9=1=en=Default.png)

See the following table for examples of extending or filtering data.

Data ExampleIn-Query Representation (on a selected event)ApplicationName (extend)customEvents| where name == "StudioStarted"| extend ApplicationName = tostring(customDimensions.ApplicationName)LicenseType (extend)customEvents| where name == "StudioStarted"| extend LicenseType = tostring(parse_json(tostring(customDimensions.Context)).LicenseType)OSVersion (filter included)customEvents| where name == "StudioStarted"| where parse_json(tostring(customDimensions.Environment)).OSVersion == "Microsoft Windows NT 10.0.19043.0"CurrentLanguage (filter included)customEvents| where name == "StudioStarted"| where parse_json(tostring(customDimensions.Context)).CurrentLanguage == "en"

Known Issues

* The PublishProject event only displays details for projects published to Orchestrator.
* The S.Activities.ActivityAdded event displays an incorrect package version.


### Workflow Analyzer Rules

The Workflow Analyzer is the tool for verifying if projects meet development standards. Using the governance file, organizations can enforce custom rules pertaining to their needs across all projects, in a centralized manner.

# Remarks

* The custom ruleset can be defined beforehand in a separate file of type .json, and delivered through a dll external assembly or custom activity pack. Read more about Building Custom Rules for Workflow Analyzer.
* The governance file can't deliver credentials, which means secure feeds aren't supported.
* If a custom ruleset is enforced, then users cannot make any changes to Workflow Analyzer rules.
* If a custom ruleset was not referenced or embedded in the governance file, the Workflow Analyzer default rules are used. If the "Analyzer" section is not mentioned, governance for Workflow Analyzer is not enforced. If the section is mentioned, even if it's empty, then the management of rules is disabled in Studio.
* When enforcing governance, rules built-in Studio or UiPath activity packages are disabled by default unless otherwise mentioned in the governance file or custom ruleset.

# Enforcing Rules

There are two ways to manage the custom ruleset in the uipath.policies.config governance file:

1. Point to the ruleset located at one of the following paths:on the local machine; shared on a network server or machine, identifiable by the UNC path; in shared blob storage, identifiable via the http(s) path.
2. Embed the custom ruleset by enabling or disabling rules, mentioning their IDs, parameters, error levels.

All custom rules must be referenced or added in the "Analyzer" section. Rules and counters must be split into their own sections, as illustrated below:

{
    "Analyzer": {
    "AllowEdit": false,
        "ReferencedRulesConfigFile": null,
        "EmbeddedRulesConfig": {
            "Rules": [
        {
                    "Id": "ST-NMG-001",
                    "IsEnabled": false,
                    "Parameters": [{
                        "Name": "Regex",
                        "Value": null
                    }],
                    "ErrorLevel": "Error"
                }
            ],
            "Counters": [{
                "Id": "ST-ANA-009",
                "IsEnabled": true,
                "Parameters": []
            }]
        }
    }
}

Parameters/SectionsValues"AllowEdit"If set to true, governance settings are passed as defaults allowing the user to make changes to rules.If set to false, no changes can be made to any rules.If the parameter is not added, by default, users are restricted from editing rules."ReferencedRulesConfigFile"Path to .json rulesetUse null to enforce rules from "EmbeddedRulesConfig""EmbeddedRulesConfig"Holds "Rules" and "Counters""Id"Rule ID, ex. ST-NMG-001"IsEnabled"Either true or false"Parameters"Holds the rule parameter's Name and ValueUse [] if the rule doesn't have parameters."Name"The parameter's name written between quotation marks."Value"The parameter's value written between quotation marksCan be null"ErrorLevel"Either Error, Warning, Info or Verbose."Counters"Holds parameters for counters: "Id", "IsEnabled", "Parameters"1.

1 - Since counters don't have parameters, use [].

If the "AllowEdit" parameter is set to true, the user may modify rules available in the Workflow Analyzer settings window. If any changes are made, they are persisted when Studio is restarted.


## Enforce the Governance Policy

We recommend configuring and
      deploying policies using Automation Ops. For more information on how to create policies from
      governance files generated from Studio, see Create a Governance Policy in
      the Automation Ops Guide.

# Using a Local File

If stored locally, the governance file must be located at the following path:
          %AppData%\UiPath.

# Using an External File

If stored externally, the path to the policy file must be defined using the Windows
        Registry or an Orchestrator asset:

To define the file path using the Windows Registry:

1. Open Registry Editor on the machine where Studio is installed.
2. Locate the following registry key: Computer\HKEY_CURRENT_USER\Software\UiPath and hit Enter.
3. In the Registry Editor, right-click and select New > String Value. Type in the GovernanceSource name for the new value. Do not use another name for the value!
4. Double-click the GovernanceSource string to edit. In the Value data field add the path to the uipath.policies.config file, and click OK. If the policy file is stored locally, an example for this field would be C:\policies\uipath.policies.config.If the policy file is stored on a server, an example for this field would be 192.168.1.1\policies\uipath.policies.config.

The registry key should look like this:

![99e801d-registry=GUID-ED896230-F521-421B-9DAF-FAC07A24EA0C=1=en=Default](/images/99e801d-registry=GUID-ED896230-F521-421B-9DAF-FAC07A24EA0C=1=en=Default.png)

To define the file path using an Orchestrator asset:

1. In Orchestrator, select Tenant > Folders and add a new folder named uipath.settings.config.
2. Assign the users for which to enforce the governance policy to the folder.
3. In the uipath.settings.config folder, create a new asset and configure it as follows:Asset name - uipath.studio.governancesource. Type - Text. Global Value - Select this option and enter the full path to the uipath.policies.config file in the text box.Optionally, you can apply different policies to different users by adding per-user values with paths to different files.

# Using an Orchestrator Asset

1. In Orchestrator, select Tenant > Folders and add a new folder named uipath.settings.config.
2. Assign the users for which to enforce the governance policy to the folder.
3. In the uipath.settings.config folder, create a new asset and configure it as follows:Asset name - uipath.studio.governancepolicy. Type - Text. Global Value - Select this option and paste the entire contents of the uipath.policies.config file in the text box.Optionally, you can apply different policies to different users by adding per-user values and pasting different parameters.Enforcing a governance policy using an Orchestrator asset that references the file path or holds the contents of the file requires Orchestrator v2020.10 or later with modern folders.Users need to be signed in to their account in Studio to receive per-user policies.

# Applying and Precedence

When a policy is defined, it is applied after Studio is restarted.

![Governance_ApplyPolicy1=GUID-72344F38-6478-403D-84B6-57953F98AE98=1=en=Default](/images/Governance_ApplyPolicy1=GUID-72344F38-6478-403D-84B6-57953F98AE98=1=en=Default.png)

A message appears in the Workflow Analyzer settings window, Send Feedback
        window, in the Settings tab in Backstage View, and in the Manage Packages
        window.

![Governance_ApplyPolicy2=GUID-17BC53AC-B0E8-44EB-9C5C-7C31B30F75EF=1=en=Default](/images/Governance_ApplyPolicy2=GUID-17BC53AC-B0E8-44EB-9C5C-7C31B30F75EF=1=en=Default.png)

Studio applies the governance policy using the following order of precedence: Automation
        Ops > uipath.studio.governancepolicy > uipath.studio.governancesource > Registry
        key > local file.

If the governance policy is removed for the user, settings that were enforced through the
        governance file are persisted as defaults. However, now the user has the option to modify
        settings that were restricted when the governance policy was in place.

