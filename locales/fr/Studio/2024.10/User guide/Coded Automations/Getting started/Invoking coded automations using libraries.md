# Invoking coded automations using libraries

You can reuse coded automations within both low-code (XAML) and coded automations (CS) by
            publishing them to a library and invoking them in another project.

The default connection of
            an exported library will work in other projects, only if the imported project is in the
            same tenant as the originating library project.

# Steps

1. Publish a Studio project that contains both low-code and coded automations to a library.For this example, we'll consider the library as myFavoriteLibrary.
2. Open a different project, and select Manage Packages.
3. Under All Packages, search for and install myFavoriteLibrary.
4. In the Activities panel of your project, follow these steps according to the type of automation you want to reuse the workflows in:For low-code automations: Drag-and-drop the workflows from the installed library package into your current workflow.For coded automations: Call the service that matches the library name and access the workflow from the installed library package. The service name always starts with lowercase letter (for example, myFavoriteLibrary).myFavoriteLibrary.<WorkflowFromThatLibrary>()
5. When you include the coded automation into another project as an invoked workflow in XAML files, you can modify its arguments. These arguments are available as properties inside the activity that invokes the coded automation.Optionally, you can also edit the arguments defined in the library as Activity Properties. To do this, go to the library project, right-click the workflow you wish to export, and select Activity Layout. This action displays the activity properties window that allows you to configure different options depending on the library compatibility (Windows-Legacy, Windows, Cross-platform). Unlike low-code automations, you cannot configure an icon or color for coded automation sin libraries.Visit Configuring the Layout of an Activity for more information.The Activity Properties window where you can configure the activity layoutThe Activity Properties window where you can configure the activity layout
