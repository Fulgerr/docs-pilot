# About the Windows - Legacy
    Compatibility

Studio 2021.10 brought support for .NET-based projects and introduced the concept of project
      compatibility based on the target framework. In releases prior to 2021.10, all projects used
      .NET Framework 4.6.1, but since Studio 2021.10 you have had the option to create projects with
      the Windows - Legacy compatibility (.NET Framework 4.6.1) or with the Windows and
      cross-platform compatibilities based on .NET.

# Windows - Legacy projects do not receive
        new features

The default compatibility for new projects is now Windows. While we continue to support the
        Windows - Legacy compatibility, new features will only be available in projects with the
        Windows and cross-platform compatibilities.

For example, the following features introduced in Studio 2022.10 are not available in
        Windows - Legacy projects:

* Support for creating global variables and constants in the Data Manager.
* New design experience available for cross-platform projects and some activities in Windows projects.
* The ability to customize the layout of activities generated from libraries.

# How to continue creating Windows -
        Legacy projects

While you can only create new projects with the Windows or cross-platform compatibility
        from Backstage view, organizations are still able to use governance policies to
        restore the option of creating Windows - Legacy projects by configuring the Allowed
          compatibility frameworks setting. To do this:Navigate to Automation Ops™ >
              Governance.Define a new Studio governance policy.
            Make sure to use the 24.10.0 Studio policy template.In the governance policy window, select
            the Design tab and scroll to the Design Style section.Enable the Allowed compatibility
              frameworks setting and select the Windows - Legacy target framework.Save and deploy the governance
            policy.

To learn more, refer to Settings for Studio Policies in the Automation Ops guide.

Alternatively, you can configure the setting by using the file-based governance model:Generate a JSON governance file from
            Studio.Locate the
              AllowedProjectFrameworks setting inside the governance file.Set the value of the Classic
            parameter to True.Save and deploy the governance
            file.

To learn more, refer to Governance in the Studio guide.

To stay up to date with upcoming changes, see Deprecation Timeline.

# How to edit existing Windows - Legacy
        projects

Editing, publishing, and running Windows - Legacy projects will continue to be supported in
        future releases, which means you can open and edit them like other Windows and
        cross-platform projects.

# How to convert Windows-Legacy projects
        to the Windows compatibility

Dependencies for which no versions with the
          Windows compatibility are found are marked as unresolved and the version used in the
          Windows - Legacy project is displayed in the Project panel after the conversion. Most
          activity packages developed by UiPath and available on the Official feed support the
          Windows compatibility. For a complete list, see the Activities
            Guides.

Studio comes with a built-in conversion tool that enables you to convert any Windows -
        Legacy project to Windows.

When you convert a project to Windows:

* Project dependencies are managed based on the following rules:If the same version of the package exists in the configured package sources, the version used in the Windows - Legacy project is not changed.If the same version of the package does not exist, the version used in the Windows - Legacy project is changed to the highest patch of the nearest version.
* All the activities and properties are preserved in the converted project.
* Namespaces that are different in Windows - Legacy and Windows projects are updated.
* Namespaces that are required in Windows projects are added and those used only in Windows - Legacy projects are removed.Convert and republish Windows - Legacy libraries before you convert the processes where they are installed as dependencies.

To convert a legacy project to the Windows compatibility:

1. Open the Windows - Legacy project in Studio and make sure you only open it in one Studio instance.
2. Right-click the project node in the Project panel and then select Convert to Windows. A new window is displayed.
3. Select how to convert:To create a copy of the current project using the Windows compatibility and keep the original Windows - Legacy project, select Create a new project. Enter the name, the location where to create, and optionally a description for the new project. To update the existing project and convert it to the Windows compatibility, clear the Create a new project checkbox. The changes made to the project if you select this option cannot be undone.
4. Click Convert.

If dependency issues cause unresolved activities after the conversion, a message displayed
        at the top of each such activity indicates that it is missing or it could not be loaded. The
        following information is available for each one: display name, activity namespace, activity
        properties and values. Click Replace to find an alternative and replace the missing
        or invalid activity. For more information, see Missing or Invalid Activities.

# Legacy library migration
        scenarios

See the scenarios below when migrating legacy libraries:

Legacy library created with Studio
            (source code available): Migrate the library first, publish it, and then migrate the
            process. .NET library with .NET Framework target
            (source code available): For .NET libraries, change the target to .NET. You can:Check the supported .NET Studio version (for example, Studio 24.10.X runs on .NET
                  8).Multi-target to support both .NET Framework and .NET.Use flavors for the .NET version. net6.0-windows targets are
                  compatible only with Windows projects, while net6.0 is compatible
                  with both Windows and cross-platform project.See the following
                resources:Creating activities with code in the SDK
                  guide.Migrating Activities to .NET 6 in the SDK
                  guide.MSBuild reference for .NET SDK
                  projects.Third-party legacy library (source code not available): Replace activities using
              alternatives recommended by UiPath.

# Blueprint for converting Windows -
        Legacy projects

This step-by-step guide aims to help you to seamlessly transition your automations from
        Windows-Legacy to Windows.Inventory and assessment -
            Prepare a detailed inventory of all your Windows - Legacy projects and their
              dependencies:List all projects, libraries, and
                dependencies.Assess compatibility with the
                Windows (.NET) environment.Identify components that need
                updates or replacements. The NuGet Package Explorer application can be
              used to inspect .NET target frameworks.Proof of concept - Test the
            conversion process on a small subset of workflows:Select a representative workflow
                that has a library added as a dependency.Perform a pilot conversion to
                identify challenges and blockers.Validate the result with
                tests.Create a backup of the Windows -
                  Legacy project and library.Do not change the name of the
                  project or library when migrating.Migrate the library first and
                  publish it. Don’t worry – the migrated version of the library cannot be used in
                  Windows - Legacy projects.Scaling - Convert all projects
            and libraries systematically:Migrate all libraries and publish
                them.Migrate all projects.Validation and testing - Ensure
            the converted workflows perform as intended:Perform testing.Address errors or compatibility
                issues iteratively.Test interactions with external
                systems and data sources.Production deployment -
            Transition the project to the production environment:Deploy workflows to
                production.Monitor for stability and
                performance issues.Provide user training or updated
                documentation if necessary.Post-migration monitoring -
            Report migration issues to UiPath for future improvements:Send feedback.Share challenges or solutions with
                UiPath representatives.

# Known issues

IssueSolutionSome expressions are incompatible with Windows projects and need to be manually
                changed to successfully convert a Windows - Legacy project to Windows.{} to new Object() {}new Object() {task_output.Id.ToString,task_action,now,I_comment
                    } to new Object()
                    {task_output.Id.ToString,task_action,now,I_comment }Validation errors generated by other expressions that worked before the
                conversion.Cut the expression using the CTRL + X keyboard shortcut and paste it
                back in the activity field using CTRL + V.In a For Each activity, naming the variable whose values you
                want to iterate as “expression” results in a compilation error. Refrain from naming the variable "expression".Communication between UiPath Studio and the Taxonomy Manager ended
                  unexpectedly.After converting a project that contained an older versions of the IntelligentOCR activity package, make sure to upgrade to
                  the latest version of the IntelligentOCR package.BC36915: Cannot infer an element type because more than one type is
                    possible. Specifying the type of the array might correct this
                  error.BC30512: Option Strict On disallows implicit conversions from 'Object()'
                    to 'String()'. The selected value is incompatible with the property
                    type.BC36914: Cannot infer an element type, and Option Strict On does not
                    allow 'Object' to be assumed. Specifying the type of the array might correct
                    this error.Modern programming languages enforce stricter type inference compared to older
                  versions.Cast the array or the element to the desired type, for example:{} to new Object() {}<object>.ToString()CType(<element>, Object)Encoding-sensitive operationsAdd
                  System.Text.Encoding.RegisterProvider(System.Text.CodePagesEncodingProvider.Instance)
                using InvokeMethod.“ (0x201C) vs. " (0x22)Replace all instances with " (0x22), which is the only valid
                quotation mark for string literals in modern .NET.BC30311: Value of type 'SecureString' cannot be converted to
                  'CvString'. The selected value is incompatible with the property
                type.Remove and re-add the Computer Vision activity arguments.BC31424: Type ‘System.Data.DataTable' in assembly ‘…’ has been forwarded
                    to assembly 'System.Data.Common’ …BC30652: Reference required to assembly ‘System.Collections’ … containing
                    the type 'List(Of )'. Add one to your project.BC30057: Too many arguments to 'Public Overloads Property SpecificContent
                    As Dictionary(Of String, Object)'.To fix these validation errors:Navigate to the activity
                      properties that contain the errors.Remove the configuration (Cut
                      or Ctrl + X).Click outside the
                      activity.Add the configuration back
                      (Paste or Ctrl + V).
