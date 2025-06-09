# About Publishing Automation Projects

Publishing an automation project means archiving the project folder so that it can be sent to Robots and then executed.

By default, all the files in the project folder are published except for test cases. If you want to prevent a specific file from being included in the published package, right-click it in the Project panel, and then select Ignore from Publish (not available for workflow files in library projects). In the case of libraries, to prevent a workflow file from appearing as a reusable component in the Activities panel when the published library is installed in a project, right-click it in the Project panel, and then select Make Private.

You can publish automation projects to Orchestrator, a custom NuGet feed, or locally. After publishing to Orchestrator, the archived project is displayed on the Packages page and you can create a process to be distributed to Robots. When you publish an automation process to the Orchestrator Personal Workspace or you publish test cases, a process is created automatically if one does not already exist, and existing processes are automatically updated to the latest published version.

Additionally, automation projects may be published to a custom NuGet feed, with the option to also add an API key if the feed requires authentication.

Publishing projects locally requires you to provide a path on the local machine, different than the location where process packages are published. From here, you can later manually send the packages to the Robots, so they can be executed. The default local publish location is %ProgramData%\UiPath\Packages.

To publish a project, the project.json and design.json files in the project folder must not be in a read-only location (for example, if the project is under source control, the files must be checked out for editing).

You can publish projects from Studio
                                    or from
                                                  the command line. To update
                                    dependencies for multiple projects and publish them all at once,
                                    use the Project
                                                  Dependencies Mass Update Tool.Other software applications
                                                can interfere with the publishing process if folders
                                                that start with a period (.) are hidden and thus
                                                ignored when publishing.

## Publishing Projects From Studio

To publish a project, select
          Publish in the Studio Design tab ribbon.To publish an automation project:

In Studio, create a new project. In the Design ribbon tab, click Publish. The Publish window opens.
          Notice that the window's title bar changes depending on the context:Publish Process when
              publishing a process; Publish Library when
              publishing a library project; Publish UI Library when
              publishing a UI library project; Publish Test Cases when
              publishing test cases. Publish Templates when
              publishing templates. In the Package Properties tab:Enter a name for the package. The
              drop-down list contains up to 5 of the most recent names of packages that you
              previously published. In the Version section, review
              the Current Version of your project, and type a New Version if needed.
              Check the Is Prerelease box to mark the version as alpha.
              Please note that this automatically changes the project’s version schema to semantic.
              When publishing a new version of the file locally, make sure that the custom location
              does not already include a file with the same proposed version number. For more
              details about project versioning, check the About Automation Projects page. Optionally, use the Project
                  Icon option to define a custom icon for the project. You can browse to and
                select a file, or enter a path or public URL to a jpeg,
                  jpg, or png file up to 1MB in size.After the project is published, the icon is displayed as follows:For processes, in the Assistant
                  next to the process name, making it easier to identify it in the list of
                  processes. For templates, next to the
                  template in Home (Studio Backstage View) > Templates. For libraries, next to the
                    package in the Manage Packages window in Studio.The icon is not
                    visible in Manage Packages if a local file is used for a library published to
                    Orchestrator or to a feed that does not support embedded icons. In this case,
                    specify the icon using a URL.In the Project tags box,
                you can add one or more tags to the project, either by creating new ones or by
                reusing tags already defined in Orchestrator. There are two types of tags:
                  labels and properties (key-value pairs). Tags are included in the
                published package and they help describe and categorize projects. For example, they
                can refer to the automated application (an Excel label) or the
                department (a department:accounting key-value property).When you start typing, possible matches are suggested from already defined tags,
                and you can reuse one by selecting it from the list of matches. For a property
                match, the key followed by the : (colon) character is displayed
                first, and the associated values are displayed after you select the key, To add a
                new tag, after you enter the name, click the entry with the plus sign next to the
                name. Separating strings with the : (colon) character enables you
                to add properties, while entries that don't contain a : add
                labels.Labels and key-value properties are limited to 256 characters. Tag names can't
                contain these characters: <, >,
                  %, &, \,
                ?, /, :.Project tags can be automatically applied to processes in Orchestrator. For more
                information about using tags, see Organizing resources with
                    tags in the Orchestrator guide.In the Release Notes text
                box, enter details about the version and other relevant information. Release notes
                for published projects are visible in the Packages section in Orchestrator.
                Please note that the Release Notes field accepts a maximum of 10,000 characters.Click Next.If you are publishing a template, the Template info tab opens next (step 5).
            Otherwise, proceed to step 6.(For templates only) In the Template info tab, provide the following
          information, and then click Next:Name - The name of the
              template. Description - The template
              description in the Templates tab. Default Project Name - The
                default project name when creating a new project using this template.Avoid using
                punctuation marks, separator characters, and characters that are not allowed in file
                names. These characters may be removed from the default name when the template is
                used.Default Project Description
                - The default description when creating a new project using this template.In the Publish options tab, select where to publish the project. The available
          options depend on the type of project you are publishing:For processes (including
                StudioX projects):Orchestrator Tenant
                      Processes Feed, Orchestrator Personal Workspace Feed and, if a
                    first-level folder with a separate package feed or one if its subfolders is
                      selected from the folders menu in the
                    Studio status bar, the feed for that folder hierarchy. These options are
                    available if Studio is connected to Orchestrator. The Orchestrator Personal
                    Workspace Feed is available only if your user has the Personal Workspace
                    feature enabled in Orchestrator.If the Personal Workspace or a folder from a hierarchy with a separate package
                    feed is selected in Studio, the feed for that folder is the default option.
                    Otherwise, the tenant feed is the default option. If you already published a
                    project in the current session, the last publish location you used is the
                    default selection until you close Studio or change the Orchestrator folder from
                    the Studio status bar.Assistant (Robot Defaults)
                  - the default package location for the Robot and Assistant,
                    C:\ProgramData\UiPath\Packages. Projects published here
                  automatically appear in the Assistant. The option is not available if Studio is
                  connected to Orchestrator. Custom - either a custom
                  NuGet feed URL or local folder. Adding an API Key is optional. For test cases:The same options that are
                  available for processes, with the exception of Orchestrator Personal Workspace
                  Feed. For libraries and UI
                  libraries:Orchestrator Tenant Libraries
                    Feed or Orchestrator Shared Libraries Feed - available if Studio is
                  connected to Orchestrator. The available option depends on whether the tenant
                  libraries feed is enabled in Orchestrator. Custom - either a custom
                  NuGet feed URL or local folder. Adding an API Key is optional. For templates:Orchestrator Tenant Libraries
                    Feed or Orchestrator Shared Libraries Feed - available if Studio is
                  connected to Orchestrator. The available option depends on whether the tenant
                  libraries feed is enabled in Orchestrator. Local - the location for
                  publishing templates locally, by default:
                    C:\Users\User\Documents\UiPath\.templates. Custom - either a
                    custom NuGet feed URL or local folder. Adding an API Key is optional.If you are publishing a library or any project with the Windows or cross-platform
            compatibility except for templates, additional settings are available in the Publish
              options tab under Compilation Settings:(For libraries only)Activities Root Category - enter a name for the category under which the
              reusable component will be listed in the Activities panel. (For Windows-legacy libraries
                only)Compile activities expressions - select this option to compile and package all
              activities expressions. This results in an improved execution time. (For Windows - legacy libraries
                  only)Ready to Run - select this option to optimize the generated assemblies for
                faster JIT compilation at runtime.To find out what
                might prevent a library from being published successfully, read about the limitations when publishing
                libraries.Click Next to advance to the Certificate signing tab, or Publish
          to publish your project.(Optional) In the Certificate Signing tab, add a local Certificate
            Path next to the Certificate box. Furthermore, add the Certificate
            Password and an optional certificate Timestamper if needed. For more details,
          check out the Signing Packages page.Currently
              .pfx and .p12 certificate extensions are accepted
            for signing projects.Click Publish. A NUPKG file is created and uploaded to Orchestrator, the custom
          NuGet feed, or saved in the local directory. For libraries, if the Separate Runtime
            DependenciesProject
            Settings option is enabled, two NUPKG files are created: one file is the design
          time package used in Studio and the other file is the runtime package used by the Robot
          when executing the automation. Depending on the project, the package contains:For template projects and processes
              with the Windows - Legacy compatibility, the project source files. For libraries and projects with the
              Windows or Cross-platform compatibility, compiled DLL files. If the project is published successfully, the Info dialog box is displayed and
          the project is copied to the NuGet location set in the NuGetServerUrl
          parameter, in the UiPath.settings file.

The Info dialog box
        displays:The name under which the package was
          published. The version number under which the
          package was published; The location where the project was
          published if the project was published locally or in the Robot's Default. Click the
          path to go to the package, except if the publish location was Orchestrator. The Details option which expands a
          list containing the names of project files that were published. The Copy to Clipboard
            option.Information added during publishing, like the publish location is persisted in the
        window, so it can be used for subsequent publish actions performed for the same type of
        project. Each time you click Publish, a new version of the project is created and
        sent to the packages feed. Publishing to a secure feed can be authenticated either through
        the Robot Key, Orchestrator credentials, Windows authentication, or API key.Published projects must not
        be unpackaged. To make any changes, please open the initial .xaml file in
        Studio, perform the changes, and then publish the project again.


## Publishing Projects from the Command Line

You can publish projects using the UiPath.Studio.CommandLine.exe publish command.

UiPath.Studio.CommandLine.exe is available in the installation folder:

* For per-machine installations, the default path is C:\Program Files\UiPath\Studio\.
* For per-user installations, the default path is
                %localappdata%\Programs\UiPath\Studio\.

The following arguments are available for the publish command:

ArgumentDescription-p, --project-pathThe path to the project.json to publish. The argument is
                                mandatory.-g, --targetWhere to publish the project:Custom - Custom URL or local folder. Define the location
                                        using the -f, --feed argument.Robot - Default publish location for the Robot, if not
                                        connected to Orchestrator. Not available for publishing
                                        libraries or templates.OrchestratorTenant - Orchestrator Tenant Processes Feed (for
                                        processes and test cases) or Orchestrator Libraries Feed
                                        (for libraries and templates).OrchestratorPersonalFolder - Orchestrator Personal Workspace
                                        Feed. Not available for publishing libraries, templates, or
                                        test cases.OrchestratorFolderHierarchy - If a first-level folder with
                                        a separate package feed or one if its subfolders is selected from the folders menu in
                                        the Studio status bar, the feed for that folder hierarchy.
                                        Not available for publishing libraries or templates. -f, --feedThe custom URL for publishing the project. This can also be a
                                custom local directory, similar to the path in the Publish options tab in Studio.-a, --api-keyThe API key for publishing the project. This argument can be used
                                for a custom target.-i, --iconPath to the custom icon to use for the package.-n, --notesRelease notes that contain changes brought to the
                                project.-v, --new-versionThe new version for the project. If not provided, the version is
                                automatically incremented.-t, --timeoutSpecifies the timeout value for publishing projects. The default
                                timeout is 30 seconds. This setting only applies for the package
                                transfer to Orchestrator duration.--cer-pathThe local path to the certificate for package signing.--cer-passwordThe password for the certificate.--timestamper-urlThe URL to the timestamper.--incl-all-feedsNot required.--helpView the arguments available for each command.--versionCheck the version of UiPath.Studio.CommandLine.exe.

For example:

* The following command publishes the Sample process to the Orchestrator Tenant
                    Processes Feed: UiPath.Studio.CommandLine.exe publish --project-path
                    "C:\Users\username\Documents\UiPath\Sample\project.json" --target
                    OrchestratorTenant --notes "Fixed a couple of bugs."
* The following command publishes the same process to a local folder: UiPath.Studio.CommandLine.exe publish --project-path
                    "C:\Users\username\Documents\UiPath\Sample\project.json" --target Custom --feed
                    "C:\Users\username\Desktop\myfeed" --notes "Fixed a couple of bugs."

For more information about the CommandLine.exe utility, see Mass Update Command
                Line Parameters.

