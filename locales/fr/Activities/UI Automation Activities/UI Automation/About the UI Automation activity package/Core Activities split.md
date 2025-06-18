# Core Activities split

Starting with the v2018.3 release, the Core Activities Package is split into two
            distinct packages, UiPath.System.Activities and
                UiPath.UIAutomation.Activities. This has been done with the
            intention of offering you more control over which activity versions you use in the
            execution of your automation projects. In correlation with the Project Dependencies feature, this
            split enables you to choose exactly the version of activities you want to use as a
            dependency for your project.

Whenever a project created with a version of Studio older than v2018.3 is opened with
            Studio v2018.3 or higher, the project is automatically migrated and the new
                System and UI Automation packages replace the old Core
            package.

Remember to properly migrate your processes when updating the 2018.3 UiPath Platform. The
            dependencies and activities installation algorithm has improved, which can cause
            conflicts when executing processes with packages installed from local feeds. If you
            encounter any issues while updating, check out possible solutions on this page. Also,
            remember to check out how to Open Projects Created with Previous
                    Versions.

Once the migration is
            performed, you cannot revert the project to use the old Core package.

Starting with Studio v2018.3 or higher, you cannot install the Core package from
            the Package Manager. However, rest assured that the
                UiPath.System.Activities and
                UiPath.UIAutomation.Activities packages contain all the activities
            that were in the old one. Additionally, from v2018.3 on, you can use any combination of
            activity packages regardless of what version of Studio you are using at that moment.

Once a project is published
            with v2018.3 or higher, it can no longer be executed by using a v2018.2 or lower
            Robot.

Please note that the location of the tessdata folder which is used to
            install languages for the Google OCR engine has been moved from
                %ProgramFiles(x86)%\UiPath\Studio essdata to
                %UserProfile%\.nuget\packages\uipath.vision. You can read more
            about installing and changing the language for the Google OCR engine on this page.

For more information on how this change impacts Studio, you can read more here.

# Core Legacy Activities

The Core Legacy Activities package (the UiPath.Core.Activities
                meta-package) was created as a result of the Core Activities Split to ensure
                compatibility between Legacy Processes and Robot versions v2018.3 or newer. The Core
                Legacy Activities and Legacy Processes are defined as follows:

* Core Legacy Activities - The UiPath.Core.Activities meta-package is available starting with the v2018.3 release. It references the UiPath.System.Activities and UiPath.UIAutomation.Activities packages whenever a legacy process is executed by a v2018.3 or newer Robot.
* Legacy Process - A process created with Studio v2018.2 or lower which uses the former UiPath.Core.Activities package as a dependency.

While the Robot is resolving dependencies, it searches for the UI Automation
                and System packages. If they are not available, it uses the Lowest Applicable
                Version runtime rule to determine what UI Automation and System
                package versions to use, which needs to be greater than the default one.

# Using a different UI Automation package

If a different version of the UiPath.UIAutomation.Activities package
                is needed for executing a process, the
                    UiPath.UIAutomation.Activities v18.3.6897.22543 package needs
                to be removed from the following locations and replaced with the required one:

* The Orchestrator feed.
* The default packages location - %Program Files (x86)%\UiPath\Studio\Packages in versions prior to 2021.4 or %Program Files%\UiPath\Studio\Packages starting with version 2021.4.
* The NuGet cache - %userprofile%\.nuget\packages\uipath.core.activities.

If the Robot machine has access to the Internet, then the Official feed from the
                    nuget.config file must be removed to prevent the Robot from
                downloading it again.

Read more about Managing
                Packages.

# Resolving legacy processes

If you have processes created with Studio v2018.3.1 which were using the
                    UiPath.UIAutomation.Activities v18.3.6864.20582 package, you
                must open them in Studio and update the
                    UiPath.UIAutomation.Activities package.

If you ever used Studio v2018.3.1 with legacy processes, the
                    UiPath.UIAutomation.Activities v18.3.6864.20582 package needs
                to be removed, as explained on this page.
