# Managing Dependencies

Project dependencies in Studio refer to packages linked into a specific project, containing activities, either default or custom. Dependencies are contextual and take into consideration each project's definition, including the activities that it uses, variables, input/output arguments. Therefore, a dependency is set only if it has at least one reference in the project's definition.

In Studio, the default dependencies for a project differ depending on the project type, compatibility, or template used to create the project.

In StudioX, all projects come with the following default packages: UiPath.System.Activities, UiPath.ComplexScenarios.Activities, UiPath.Excel.Activities, UiPath.Mail.Activities, UiPath.Presentations.Activities,UiPath.UIAutomation.Activities, and UiPath.Word.Activities.

If more need to be added, click on the Manage Packages button and install them. Installed dependencies are available only for the current project, and the list of dependencies per project is visible in the project.json file.

The Project panel displays the activities packages installed in the automation project, together with their sub dependencies, runtime rules, requested, and resolved versions. The project compatibility is displayed in the Dependencies node.

![514cf7f-dependencies_tree=GUID-503E6533-4319-40C4-BBCB-8758A427751F=1=en=Default](/images/514cf7f-dependencies_tree=GUID-503E6533-4319-40C4-BBCB-8758A427751F=1=en=Default.png)

Hover over a dependency to view requested and resolved versions. Contextual actions like
                Manage, Repair or Remove Dependency are available only for
            dependencies and not their subpackages.

The status of dependencies in the tree is color-coded as follows:Red - The dependency was not found.Orange - A subpackage was not found.Gray - The dependency is unresolved.Faded Blue - The resolved version is higher than the requested version.Strong Blue - There is an exact match between the requested version and the
                    resolved version.

## Adding and Updating Dependencies

To add dependencies to a project, install them from the Manage
          Packages window. Please note that the available packages differ based on the
        project compatibility.

Whenever new versions are available for the current project dependencies, the Manage Packages button from the ribbon gets an update icon .

1. To manage dependencies in a project, simply right-click on the Dependencies category in the Project panel, and then click on Manage. This opens the Manage Packages window, with the Project Dependencies category. The  icon shows which packages are currently installed.
2. Default dependencies are displayed, together with the versions that are currently linked to the project. To update a package, simply click on the update icon , next to the available version number. The icon is shown next to the package, meaning that dependencies are ready to be installed.
3. Dependencies are installed in the project only after you click Save . Simultaneously, the versions of dependencies are updated in the project.json file belonging to the project.

# Removing Dependencies

* To remove a project dependency, right-click the dependency in the Project panel, and then select Remove Dependency. The dependency is removed from the Project panel and project.json file.Alternatively, you can go to Manage Packages > Project Dependencies, select the dependency to remove, and then click Uninstall.
* To remove all unused dependencies in the project, select Remove Unused > Dependencies in the Studio ribbon, or use the Ctrl + Shift + R keyboard shortcut. All the installed packages that have no references in the current project are removed from the Project panel and project.json file.

# Repairing Dependencies

If a workflow opened in Studio has references to packages with versions that aren’t available in current Studio feeds, said dependencies are marked as broken in the Project panel and details are made available in the Output panel.

Studio allows for all dependencies to be repaired in bulk or individually. To repair all broken dependencies, right-click on the Dependency node in the Project panel, and click on Repair Dependencies.

Right-click on a broken dependency and select Resolve Dependency to repair it individually. Alternatively, you can select Manage to open the Manage Packages window and update packages.

NuGet resolves broken dependencies by applying the Lowest Applicable Version runtime rule, meaning that it searches for the first applicable package version, higher than the one previously set.

If the target version cannot be found, the repair function automatically uses the next
        available higher version. Please note that this behavior depends on the feed
        configuration.

![a444f6f-dependencies_menu=GUID-8251FE5D-FABE-4CAF-B101-732FEEB56715=1=en=Default](/images/a444f6f-dependencies_menu=GUID-8251FE5D-FABE-4CAF-B101-732FEEB56715=1=en=Default.png)

Missing or invalid activities are marked in the Designer panel, while an error banner provides additional information regarding the workflow and its unresolved dependency conflicts.

# Setting Dependency Rules

Activity packages are available in multiple versions, which is why upon installing or updating them using the Manage Packages, you can set dependency runtime rules for each of them.

![344dd52-package_runtime_rules=GUID-89742F70-DA7A-49D0-80FD-29925FC9777B=1=en=Default](/images/344dd52-package_runtime_rules=GUID-89742F70-DA7A-49D0-80FD-29925FC9777B=1=en=Default.png)

The Runtime Rule specifies which package version to install at runtime. It features two available options.

The Strict runtime rule is the default state for dependencies added upon process creation, and for activities packages installed from the Manage Packages window. It means that only the specified version of the package is used at runtime to execute the parent process. The Strict rule is marked in the Project panel, under Dependencies by the  sign next to the package version.

The Lowest Applicable Version runtime rule means that if the target package isn’t found, the next higher version is searched in order to resolve dependencies. The Lowest Applicable Version rule is marked in the Project panel, under Dependencies by the  sign next to the package version.

When executing an automation project from Studio, the Robot downloads the specified or indicated package version it needs to execute the project, in accordance to the previously set runtime rules for each project. If the dependency used during execution has a Strict runtime rule and the exact package version was not found, an error is thrown. For more information on setting runtime rules for project dependencies check the Managing Dependencies page.


## Resolving Dependency Conflicts

The installation of activities packages takes into consideration dependency runtime rules previously set for said packages, but some conflicts between versions might occur when automating the projects. Both the automation project and the library it contains might have the same activities package, but with different versions and runtime rules. At design time, NuGet resolves such conflicts by choosing the top level dependency, which is the closest to the project in the hierarchy.

The resolution of conflicts that might occur is explained below:

![ce9e154-scenario1=GUID-4D843A75-E379-4DF8-8E8E-143285627677=1=en=Default](/images/ce9e154-scenario1=GUID-4D843A75-E379-4DF8-8E8E-143285627677=1=en=Default.jpg)

The project contains an activities package with version 1.0. The library is referenced to the project and uses the same pack, but with a higher version. The top-level dependency v1.0 is used at runtime. A warning is given, mentioning that a downgrade was detected.

The resolution of this scenario is applicable regardless of the runtime rule (Strict or Lowest Applicable Version) previously set for the activities packages.

![31278ac-downgrade2=GUID-75AA3AA4-BAEE-4FDE-A589-1BDF94E8D5E3=1=en=Default](/images/31278ac-downgrade2=GUID-75AA3AA4-BAEE-4FDE-A589-1BDF94E8D5E3=1=en=Default.png)

* If you choose Yes , the activities package referenced in the project is upgraded to the version used in the library.
* If you choose No, the Manage Packages window is opened with the Project Dependencies window.

The project contains an activities package with the version 2.0. The library uses the same pack, but with a lower version and the Strict runtime rule. The top level dependency used in this case is v2.0 and a warning is given when the package is installed in the project.

![ed5352a-scenario3=GUID-BFE0C062-1848-4BBE-BE78-91E47DFDD94B=1=en=Default](/images/ed5352a-scenario3=GUID-BFE0C062-1848-4BBE-BE78-91E47DFDD94B=1=en=Default.jpg)

The project contains an activities package with the version 2.0. The library uses the same pack, but with a lower version and the Lowest Applicable Version runtime rule. The top level dependency used in this case is v2.0 and a warning is given when the package is installed in the project.

![8cd80f8-scenario4=GUID-DEE344CD-7ABA-418A-B3CF-883B9AB5F05C=1=en=Default](/images/8cd80f8-scenario4=GUID-DEE344CD-7ABA-418A-B3CF-883B9AB5F05C=1=en=Default.jpg)

The project references a library with an activities package version 1.0 and Strict runtime rule. The project references another library, but with an activities package version 2.0. The top level dependency in this case is the pack with v2.0, since it has the highest version. A warning is given when the activities package is installed.

![40e380b-scenario5=GUID-F7D8B8EB-E18E-4A1E-8507-56A416F12E3C=1=en=Default](/images/40e380b-scenario5=GUID-F7D8B8EB-E18E-4A1E-8507-56A416F12E3C=1=en=Default.jpg)

In this conflict the project references two libraries, which in turn have Strict dependencies referenced among them. This scenario isn't supported. For detailed information, check the Dependency Resolution page.

Dependency cycles are types of conflicts that occur when a package references itself. If you name your project UiPath, Studio detects a dependency conflict. This happens because the UiPath package already exists and is a dependency to UiPath.UIAutomation.Activities. It is recommended to avoid naming your project with the name of an already existing package that you intend to add as a dependency.

The same dependency cycle occurs if you open a .xaml file from a folder named UiPath or any name of an existing package that you intend to add as a dependency, and there is no project.json in that folder. When you open a .xaml file that doesn’t have an associated project.json file, Studio creates one and the "name" tag is populated with the name of the parent folder.


## Opening Projects Created With Previous Versions

Opening projects created with Studio v2016.2 directly in v2020.4 or higher versions is not supported. First, open these projects with Studio v2018.4 and then with v2020.4 or higher.

When opening a project with or without dependencies, designed with a version prior to v2018.3 (except for v2016.2), Studio asks you if an automatic migration shall be performed, so that it may attempt to retrieve missing dependencies or add default ones.

![4bdd61f-migrate=GUID-1FB83B32-6083-43C5-9F6E-800FE2B840F2=1=en=Default](/images/4bdd61f-migrate=GUID-1FB83B32-6083-43C5-9F6E-800FE2B840F2=1=en=Default.png)

Upon confirmation, Studio attempts to retrieve missing dependencies and sets the Strict runtime rule for the packages that it finds. When using the Repair Dependency option in the Project panel, Studio attempts to install the next best package version. If the package version is not found, alerts are shown in the Output panel and you should check the configured feeds in the Manage Packages window.

Processes containing dependencies and that were built with Studio versions prior to v2018.3 continue to execute with Robot v2018.3. The runtime rule for such projects is set to Lowest Applicable Version.

Projects created with versions prior to v2018.3 that were never published don't have dependencies listed in the project.json file. When opening such projects, an alert in the Output panel notifies you of missing dependencies. UiPath packages delivered locally with Studio are added as dependencies with the Strict runtime rule. The latest version of such packages is automatically set.

If such projects contain packages other than those delivered with Studio locally, we recommend:

* Publishing the project using the Studio version in which it was created, thus aiding the migration process by adding dependencies in the project.json file;
* Manually installing the missing package from the Manage Packages window, after setting up the required feed;
* Using the Project Dependencies Mass Update tool to add the missing dependency to a bulk of projects. Workflows containing invalid activities cannot be saved. Install the needed dependency and then save the project.

Activities packages UiPath.V7.Activities, UiPath.Platform.Activities, UiPath.Framework.Activities have been deprecated. Upon opening projects with UiPath.Platform.Activities and UiPath.Framework.Activities packages, Studio v2018.3 or above attempts to perform an automatic migration to replace the old versions of activities with new ones.

Workflows containing activities part of UiPath.V7.Activities package cannot be migrated.

A workaround is available for some cases in which the migration isn't automatically performed.

1. Open the project.json file with Notepad++.
2. Remove the "schemaVersion": "3.2" parameter.
3. Replace "studioVersion" with "toolVersion" .
4. Change the "toolVersion" value from "18.3.xxx" to a previous version. For example, change the value from "18.3.0.958" to "18.2.958" . Save the file.
5. Open the .xaml file with Studio v2018.3 or above for the migration to be performed. The deprecated activities packages are replaced with new ones, as illustrated in the Dependencies section of the Project panel. In some cases, .xaml files containing the packages UiPath.Platform.Activities and UiPath.Framework.Activitiescannot be automatically migrated and the workaround isn't applicable. For these situations, it is recommended to open the projects in Studio v2018.2 or lower, and replace the activities belonging to the aforementioned packages with activities contained in the UiPath.Core.Activities package. The same can be done for workflows containing activities from UiPath.V7.Activities package.

Starting with Studio v2018.4.1, Microsoft.Activities v.1.0.1 and Microsoft.Activities.Extensions v2.0.6.9 are no longer packaged in the UiPathStudio.msi installer.

In case repairing is needed when migrating projects containing these packs as dependencies, install the two packages from the Official feed or a local feed. Before executing such projects created with versions prior to v2018.4.1, make sure that the aforementioned packages are available in a feed accessible by the Robot.

If you upgrade from a version prior to v2018.4.1, the two activities packages remain on the Local feed.

