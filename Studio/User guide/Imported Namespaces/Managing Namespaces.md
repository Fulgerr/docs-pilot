# Managing Namespaces


## Importing New Namespaces

# From the Data Manager

1. Open the Data Manager, then right-click Namespaces and select *Add namespace.
2. A dialog listing available namespaces is displayed. To filter through the list, use the search box at the top of the dialog.
3. Select the namespace to import it.

# From the Imports Panel

1. Open the Imports panel.
2. In the Enter or Select namespace field, start typing the namespace that interest you. Note that suggestions are provided while you type, in case you are not exactly sure what you are looking for.
3. (Optional) Click the drop-down arrow to view and browse all available namespaces.
4. Select the desired namespace. The namespace is added to the Imported Namespaces list.

# From the Project Panel

Whenever you add a web service to a library project or install a new dependency to your project, either a .nupkg file from Manage Packages default feeds or a custom library that you've created, the namespace can be imported from the Project panel as well.

Simply right-click the dependency or web service in the tree, and select Import Namespaces. The namespaces are automatically added to your project, you can check them in the Imports panel.

![acbe80b-import=GUID-3541B4EB-0D69-47B9-A64F-617405A58AFB=1=en=Default](/images/acbe80b-import=GUID-3541B4EB-0D69-47B9-A64F-617405A58AFB=1=en=Default.png)


## Removing Namespaces

To remove a namespace, do one of the following:

* In the Data Manager, expand the Namespaces node, then right-click the namespace and select Delete .
* In the Imports panel, either right-click the namespace and select Delete , or select the namespace and press the Delete key.

To remove all the namespaces that are not used anywhere in the current file, select Remove Unused > Imports in the Studio ribbon.

Note that namespaces can only be removed if they aren't used. For example, you can remove a namespace from the project if the assembly that contains it is no longer referenced by the project.

