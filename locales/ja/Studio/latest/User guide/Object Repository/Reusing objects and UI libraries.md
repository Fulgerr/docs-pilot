# Reusing objects and UI libraries

# Start from a UI library

We recommend starting to build your sharable UI elements directly inside libraries, when you know that your internal applications will be automated multiple times. But even if you did not do so, you can always extract them from your existing processes.

When you start building a UI Library, you start by creating a simple Library process. To capture your application elements follow the steps described in Creating an Object Repository.

# Extract as UI library project

The project's local repository can be extracted to a UI library project. This allows publishing the library and reusing the elements from it by adding it as a dependency to your process. Click on the Extract as UI Library Project icon in the Descriptors tab and provide a name for your library in the New UI Library window.

![c445a85-extract=GUID-244A08DB-8FFD-4F20-BEE6-4F7AAAB84EFC=1=en=Default](/images/c445a85-extract=GUID-244A08DB-8FFD-4F20-BEE6-4F7AAAB84EFC=1=en=Default.png)

Click Create and the descriptors are extracted.

![f805f89-extract_successful=GUID-CB436639-A66D-4E5F-AB93-87A364346E56=1=en=Default](/images/f805f89-extract_successful=GUID-CB436639-A66D-4E5F-AB93-87A364346E56=1=en=Default.png)

Click Yes to close the current project and open the extracted descriptors in a library project, or No to return to the current workflow.

After opening the extracted UI library, you can publish it and use it in other workflows.

# Publish a UI library

When you publish a UI library, a .nupkg package is created which can be installed in another project as a dependency and its descriptors used as selectors in other activities. Such packages may be published to Orchestrator and shared across your organization.

You can publish, the entire workflow together with its UI library, or the extracted UI library.

Publishing the entire workflow or the extracted UI library is done in the same way as for any other process. Read more about Publishing Projects.

# Load UI libraries in projects

Create a process in Studio. From the Manage Packages window, go to the feed where you published your UI Library and install it to your current project, just as you would an activity package. The UI Library is added as a dependency to your project, and its descriptors are visible in the Object Repository panel, under UI Libraries. Please note that one UI Library can contain a single version of a UI Descriptor and a single version of an application.

![a092969-library=GUID-A29BE3BF-7E79-479C-99AE-5FBB835A7395=1=en=Default](/images/a092969-library=GUID-A29BE3BF-7E79-479C-99AE-5FBB835A7395=1=en=Default.png)

The descriptors in the UI Libraries section can also be added to the local project. To do this, right-click the application name and choose Add to UI Objects.

![bb77bab-addto1=GUID-62B425DA-DD37-4C21-8B5E-0724E95F8E20=1=en=Default](/images/bb77bab-addto1=GUID-62B425DA-DD37-4C21-8B5E-0724E95F8E20=1=en=Default.png)

Whenever you need to use a Screen or UI Element from the project's Descriptors panel or the UI Libraries section, simply drag and drop it on top of an activity that supports Object Repository. The activity automatically picks up the descriptor.

The version of the UI library is not incremented in the Publish window. When publishing a new version of the same UI library make sure to properly add the new version number.

# Upgrade application and process selectors

Using UI libraries, you can update selectors in a process in one go whenever the application you're automating receives a new UI, as it sometimes happens with desktop applications or websites.

1. Inside a library project, create the first version of the object repository a library with elements from an application. Publish the library when done.
2. Use the objects inside activities as part of a process by installing the library as a dependency.
3. In the initial library, update the descriptor for each screen or element with the new app UI. It is important not to delete the elements, but rather update their selectors so that the link between element and select is preserved.
4. Publish the library with a higher version and install it in the initial process.
5. The descriptors are automatically updated inside activities.

# Check in an Object Repository

When an object repository is created, the metadata associated with the descriptors are mapped in the Project panel, as part of the current project, be it a process or a UI library.

When versioning the project, the object repository is also added to the TFS, SVN, or GIT repository together with the other project files. You can add new descriptors to the repository, and then check in the changes as you would do with other projects. Read more About Version Control in Studio.

After adding a new descriptor, right-click the Objects folder in the Project panel and select Check In, the Check in Changes window opens, displaying the same hierarchy of elements as in the Object Repository.

![8e96906-check_in=GUID-ADAF227A-E94F-45C6-875B-CF718B9373B5=1=en=Default](/images/8e96906-check_in=GUID-ADAF227A-E94F-45C6-875B-CF718B9373B5=1=en=Default.png)

# Add to Snippets

Snippets can store Applications for testing purposes. The entire local object repository from a project can be added to the Snippets panel for later use in other local projects, be they processes or libraries. Right-click the application and select Add to Snippets. Applications are added together with child screens and UI elements.

![372230b-addsnippets=GUID-A12FA97C-88DC-44DF-9FD9-349B8D713FCA=1=en=Default](/images/372230b-addsnippets=GUID-A12FA97C-88DC-44DF-9FD9-349B8D713FCA=1=en=Default.gif)

From the Snippets panel, you can edit, and add descriptors to your project via the context menu option available in the application version menu. Adding screens and UI elements to your project can be done via the same context menu available for each of the elements.

![1c6d499-snippets=GUID-4D7C5BF0-D296-4A1C-87C5-FE9D58F27E7E=1=en=Default](/images/1c6d499-snippets=GUID-4D7C5BF0-D296-4A1C-87C5-FE9D58F27E7E=1=en=Default.png)

Dragging and dropping elements from the Snippets Panel is not a supported feature. Referencing elements from Snippets Panel is not supported either. Snippets Panel is only a testing capability which allows saving elements on your disk. From there, elements can be then added to your local repository and vice-versa. As a result, any added resource, be it a descriptor, a screen, a version of an application, or a whole application can be removed from the Snippets panel, without affecting the existence of that resource in other areas of the project, such as the Object Repository panel.

The Snippets panel plays the role of an "on-disk" personal object repository that can hold elements from any of your local projects and make them available for other projects. As an added benefit, since Snippets is never involved in referencing elements or runtime execution, you can store here multiple versions of the same application. To create multiple versions of an application you can right-click on the application, choose Create Version and then copy elements from the previous version to ensure you maintain element uniqueness between versions.

![0813fa2-createversion=GUID-4B585347-C9A6-4587-A06F-34FFF4B8634E=1=en=Default](/images/0813fa2-createversion=GUID-4B585347-C9A6-4587-A06F-34FFF4B8634E=1=en=Default.png)

Fill in the details of the new version in the New Application Version Inside Snippets dialog, then click Create version.

![20766b3-version=GUID-7D5D7279-C419-496A-9A9E-46F37D6E27B5=1=en=Default](/images/20766b3-version=GUID-7D5D7279-C419-496A-9A9E-46F37D6E27B5=1=en=Default.png)

Object repositories cannot be published from the Snippets panel as they play no role in referencing inside projects or at runtime.

# Copy and Paste objects

You can copy the whole tree structure to and from the Object Repository, Snippets panel, or in between Studio instances, using the Copy Tree options available at right-click in the Object Repository and the Snippets panel.

In addition, the Copy option or the combination of keyboard shortcuts, Ctrl + C and Ctrl + V shortcuts allows you to copy individual elements from the repository, and paste them in the above-mentioned locations.

# Find References

Using the Find References option you can check whether the UI Element or UI Descriptor from your library is used throughout the project.

To do so, right-click a UI Element in the Descriptors tab from any of the Objects Browser panels (Project UI Descriptors, UI Libraries, or Snippets - UI Descriptors) and select Find References. The results are displayed in the Find References panel. Double-clicking on a result focuses the activity that uses the UI Element.

![7e82d05-find_ref=GUID-E3A71650-444C-4885-94AC-BCD284E6C290=1=en=Default](/images/7e82d05-find_ref=GUID-E3A71650-444C-4885-94AC-BCD284E6C290=1=en=Default.png)
