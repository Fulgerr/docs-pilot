# Methodology for reusing UI components

UiPath projects have two main layers:

* Logic layer - Contains all the data validation and processing and any other logical instructions needed for the process flow.
* GUI interaction layer - Used to extract and input data into the application.

To avoid issues regarding the maintainability and the reusability of the components, you can separate the GUI interaction layer by creating a series of libraries with reusable components dedicated exclusively to the interaction with the user interfaces. This way, you can create a versatile and very robust library that is easy to maintain (it only contains GUI interaction elements and no other process-dependent logic) and extremely reusable (it is very likely that a different process that automates the same application can reuse at least some of the components).

Furthermore, the Object Repository introduced in Studio v2020.10 has brought a completely new way of creating and managing elements used in UI automation, making it a gamechanger when it comes to building scalable and highly reusable UI automations.

This article defines a methodology in which we can use libraries and the Object Repository to build easily maintainable and reusable code, describes the architectural principles and best practices behind it, and offers a detailed breakdown of the steps needed to create reusable components, together with a number of examples that use the ACME web application.

## General principles

There are a variety of software development principles that can be applied regardless of the programming language or the platform used and that can prove very useful in the context of RPA development with UiPath Studio.


### Separation on concerns

This is the most important principle to address. Separation on concerns states that a program must be separated into different sections, so that each section addresses a separate concern. In our case, we need to layer our solution, meaning that each section should become a layer. Separating a solution on layers makes it possible to test the layers individually. For a normal software application, we usually have three distinct layers:

* Presentation layer refers to the interaction with the user, displaying data and presenting it to the user. This layer should not contain business logic. In the context of an RPA project, the GUI Interaction layer replaces this layer, since the main objective of an automation is to interact with other applications instead of with an actual user.
* Domain layer is concerned with the domain logic, referring to the general business/problem domain that the application solves. In the context of an RPA project, this is the Logic layer that is concerned with the logic of the application.
* Persistence layer is where the data required by the application is stored. This is not a mandatory layer in an RPA project, because there are use cases in which there is no permanent data storage. Given the scope of this article, we'll leave out this layer.


### Single responsibility

Another principle we need to take into consideration when designing an RPA project is the single responsibility principle. This means that a XAML file should do one thing and one thing only. This principle is associated with the low coupling and high cohesion principle. This means that the code should be modularized, even though it is layered. Therefore, we can have multiple modules for a single layer.

* Low coupling means that a module should depend on another module as little as possible. In a UiPath project, we obtain modularization by using libraries (you can find more about this in the Method section).
* High cohesion means that actions associated with the same application should be kept in the same module.


## Leveraging the Object Repository

An RPA process can be simply defined as a combination of data, data
				manipulation, and application interaction.

![rpa_process.drawio=GUID-8950F10F-C071-4D3D-B746-32C2D946ABF1=1=en=Default](/images/rpa_process.drawio=GUID-8950F10F-C071-4D3D-B746-32C2D946ABF1=1=en=Default.png)

* Data - Pre-defined data types selected when defining variables or arguments,
				or your own types that you can import and use in Studio. In addition, the Data
					Service feature introduced in v2020.10 offers a centralized location
				where you can create data types and reuse them across automations.
* Data manipulation - This can de done through activities which are the
				building blocks of automation and/or data manipulation expressions. Activities are
				available in packages that you can install in
					Studio . You can also create your own custom activities when certain
				functionalities are not covered by the available packages. For more information
				about how you can build custom UiPath activities, see Creating a Custom Activity .
* Application interaction - This can be done through UI Automation or
					integrations/APIs. UI Automation can be used for most applications available
					today. UI interaction components can be reused with the help of libraries or the Object Repository .

The Object Repository has a hierarchical structure where each node represents screens or
			elements, all under the application level. The structure is as follows:

* UI Application is the targeted application that can have multiple versions
				and each version can have multiple screens.
* Screen is a UI Scope that groups together multiple elements belonging to the
				same screen. The UI Scope is either extracted from activities inside the workflow or
				generated at element capture time.
* UI Element contains full or partial selectors, anchor selectors, screen and
				element image capture context, and other metadata that describe the element on the
				screen.
* UI Descriptors is a superset of selectors which holds information for
				uniquely identifying elements on the screen. They are extracted from activities in
				the workflow and added to the structured schema which groups them by Application,
				Application Version, Screens and UI Elements. Out of the taxonomy structure, only
				Screens and Elements hold descriptor information, whereas the rest are used for
				grouping and their role is to ensure upgrades between versions of an application.

For example, in the image below we can identify:

* UI Application : ACME version 1.0.0.
* Screens : Dashboard, Invoices, Login.
* UI Elements: Email, Login button.

For each element and screen in the Object Repository, provide the following details:

* The exact name of the screen, page,
				or element, as it appears in the UI (for example, Login button ).
* The type, for example Button or Input (only for elements).
* An optional description. We recommend
				adding a quick overview of how the element can be used (for example, Click Login
					to complete the login process ).
* UI Descriptor - Information that uniquely identifies the element.
					Incorporates classic selectors, fuzzy selectors, and image-based automation. We
					recommend using image-based automation only if the other methods don't work.

See About Object
				Repository for more information on how to use the Object Repository.


## Scaling up by combining workflow libraries and the Object Repository

The Object Repository can significantly impact the ease and efficiency of building UI automations, but to take full advantage of this feature, you can incorporate the Object Repository elements into a separate library project that also includes all the UI interactions that must be built. This enables you to build projects that contain no UI interactions and only include the logic of the automations.

We recommend building a library for each application you're planning to automate and including all UI interactions and Object Repository elements in it. The library activity can then be called from a workflow file that is part of the logic layer (the main project). This ensures that:

* Changes to the UI interaction will not affect the logic of the application. This can be likened to a model-view-controller separation where, in our case, the model layer is primarily concerned with the data passed from the controller to the view.
* Once a library is published and a package is created, it can be referenced in different projects without having to be rewritten each time and without having to copy and paste code between multiple projects. If a change occurs in the UI interaction, the library can be updated, a new version published and all projects updated to use the latest version. Additionally, changes that may occur in the logic layer will not affect the UI interaction.
* Because Orchestrator can store multiple versions of the same library, if an earlier version must be used again, it will be easily retrievable. This way, different versions of the same library can be used in different projects and a single automation project can instantly switch between different versions of the same library.

Using this methodology, the main automation project (the controller) will contain all the process-dependent logic and it will interact with the UI by leveraging the workflows inside the library (which can be thought of as a pseudo-view). Finally, the model is represented by the arguments which help us pass data between these 2 components.

![4f6e827-view_controller=GUID-C9A3AB31-B298-4D88-9616-A5768D39B5B9=1=en=Default](/images/4f6e827-view_controller=GUID-C9A3AB31-B298-4D88-9616-A5768D39B5B9=1=en=Default.png)


### Creating a UI library

Follow these steps to create a UI library as described above:

# 1. Analyze your process and break it down into the steps it contains

We recommend creating a flow diagram to visualize the process.

# 2. Assign each of the steps to a category

Based on the layer it belongs to, assign each step either to the GUI layer category or the logic layer category. For example:

* Assign steps like Click, Type Into, and Get Text to the GUI interaction layer.Tip: Don't add single activities to the library, only add more complex actions such as click until something appears in the UI, go through all pages of a table and extract all the rows, or a more complex action like logging in, which consists of multiple smaller GUI interaction parts. As a general rule. each component you add to a library should be an action, a more complex piece of automation involving multiple activities, rather than a single UI automation activity.
* Assign actions such as file processing, data validation and filtering, business exceptions handling to the logic layer. Keep in mind that the logic layer must call the GUI layer in order to perform its steps.

# 3. Create a separate library for each application used in the automation

# 4. Populate and publish the UI libraries

For each library you create, do the following:

1. Create the application object and the necessary screens in the Object Repository.
2. For each screen in the Object Repository, create the necessary elements and build their descriptors.If you cannot use the Object Repository, follow the same procedure, but skip the previous two steps (4-1 and 4-2).
3. Develop a XAML file for each necessary action. Screens and elements can be added as new workflow files are built, so this step can be performed interchangeably with the two previous steps.For example, these are some of the components built to automate the Acme Test Processes.
4. Publish the library to Orchestrator or to a local NuGet feed.

# 5. Install the libraries in your automation projects

Install the necessary libraries from the Manage Packages window to add them as project dependencies. Each workflow inside the libraries is available as an activity in the Activities panel. You can drag-and-drop them into the project workflow and use them in the same way you use activities.

![1e7de2d-acme_components_activities=GUID-F44460AB-5A7F-439F-8C33-ADCEC42D9272=1=en=Default](/images/1e7de2d-acme_components_activities=GUID-F44460AB-5A7F-439F-8C33-ADCEC42D9272=1=en=Default.png)


### Best practices

# Arguments

* Name arguments using the PascalCase standard. This is the standard used for the parameters of activities in UiPath Studio libraries.
* Do not include in_, out_, io_` prefixes in the argument names because they will appear as properties of the activities in the library.For example, arguments could look like in the image below. If you look at your published component, you can see that your arguments are already separated in different categories based on their type, so adding the prefix would be redundant.
* All workflows inside a GUI library which open / launch the application to automate (for example, an activity that opens and logs in to the application) should return the resulting application window using either an out argument of type UiPath.Core.UiElement for the modern design experience, or UiPath.Core.Window or UiPath.Core.Browser for the classic experience. Additionally, for both classic and modern experience, all other activities in the package should have an in argument of type UiPath.Core.Window or UiPath.Core.Browser which will indicate the correct window in which the current action should be performed. This is extremely helpful if you have multiple instances of an application open during the runtime of the processes. If you are using the classic design experience, do not send selectors as arguments.

Developing a library of automation components for the ACME website (you can download example library below) requires a component which opens the browser and performs the login operation. This activity should take as arguments the username, password, site URL, and return the Browser element. Optionally, to support a scenario in which the login takes place in an existing window, the browser can be sent as an in/out argument.

The Browser element is of type UiPath.Core.UiElement:

![0707d70-modern_browser=GUID-15F13FCB-F16E-4CC6-8AAF-AD2A68AF76C8=1=en=Default](/images/0707d70-modern_browser=GUID-15F13FCB-F16E-4CC6-8AAF-AD2A68AF76C8=1=en=Default.png)

This is how the arguments would look like:

![944a4e0-modern_args=GUID-B5ABDCB8-592B-4187-B8DB-C579A955C53D=1=en=Default](/images/944a4e0-modern_args=GUID-B5ABDCB8-592B-4187-B8DB-C579A955C53D=1=en=Default.png)

When building the workflow that opens the browser (for example, the Login workflow), you must first check if the Browser argument is null and, in case this is true, open <https://acme-test.uipath.com/> in a new browser in a separate workflow:

![f6a4023-browser_cond=GUID-4FAD1383-428C-4EDB-ABF2-1F589331125D=1=en=Default](/images/f6a4023-browser_cond=GUID-4FAD1383-428C-4EDB-ABF2-1F589331125D=1=en=Default.png)

After the login is performed and the Browser element is passed back to the process, all other activities from this library will require this parameter. For example, the activity that downloads all invoices from the website will have the following parameters:

![5782166-browser_pass=GUID-2F9468BB-04D2-4865-B989-1EB226CE6415=1=en=Default](/images/5782166-browser_pass=GUID-2F9468BB-04D2-4865-B989-1EB226CE6415=1=en=Default.png)

If a valid browser is not passed to this activity, the execution results in an error.

# Error handling

* Inside a library, always throw errors when they appear, do not signal them through output arguments.
* At the end of a library component, we recommend validating its outcome. Check if the desired action took place and throw an exception if it didn't.

Example

When creating a component that performs the application login, you may want to throw an exception if the login is not performed correctly. To achieve this, after entering the credentials and clicking the Login button, add a Check App State activity (when using the Modern Design Experience) or Element Exists activity (when using the Classic Design Experience) with a timeout of 10 seconds that checks if the "Welcome..." label appears. If this activity returns false, it means that the authentication process was not successful and an exception is thrown:

![ee392f9-check_state=GUID-7267E755-2A1B-4952-B359-138BCA108403=1=en=Default](/images/ee392f9-check_state=GUID-7267E755-2A1B-4952-B359-138BCA108403=1=en=Default.png)

# Structure and naming

Creating a component for each activity means that your library will get very large very quickly. To allow your developers to easily identify them in the Activities panel, it is essential to define a standard for naming your components. The standard we recommend for naming components is {Action} {Entity Used by Activity}. This standard:

* Allows developers to search for a component either by its name, the action performed by this activity, or by the entity used during this action.
* Makes it very easy to understand what the component can be used for and with what pages of the application it interacts with.

In some cases, you can use simply {Action}. You can do this if the action is not performed on an entity (for example, Login) or if you need to give more information through the name by adding more attributes to the name, each separated by a space.

Additionally, we recommend creating a folder structure inside the library project and grouping similar components in the same folder. A good rule of thumb is to have one folder for each main entity that you interact with inside the GUI layer. If there are a large number of entities you can interact with in an application, a multi-layered folder structure can be used. This greatly improves the cohesiveness of your library and makes it easier to see the possible actions that can be leveraged for each entity.

You can name folders either using the name of the entity the components interact with {Entity Used by Activity} or the general activity they perform {Action}. For example, if you want to create a folder where to store all the components that navigate through the pages of a web application, you can call it Navigation).

A naming convention needs to be applied to Object Repository entities like screens or elements too, preferably the same as in the case of workflows and folders, PascalCase.

Example

The ACME website (https://acme-test.uipath.com/) contains several pages which allow users to interact with entities such as Work Items, Checks, Accounts, Vendors, Invoices, etc.

![a1024ac-acme_site=GUID-FC9AF46B-8AEA-4098-9A4B-EF76E86523B9=1=en=Default](/images/a1024ac-acme_site=GUID-FC9AF46B-8AEA-4098-9A4B-EF76E86523B9=1=en=Default.png)

When creating a library with components that interact with the aforementioned items in the ACME website, you can create a folder structure and name the workflows in the library as in the following image:

![80074d1-acme_components=GUID-5814C60A-A611-438C-B7BE-551F5DAE45C3=1=en=Default](/images/80074d1-acme_components=GUID-5814C60A-A611-438C-B7BE-551F5DAE45C3=1=en=Default.png)

We recommend using the Title Case standard for the names of each component / folder (Application Name, Action, Entity Used by Activity).


### Approach for larger solutions

In larger automation projects, several components inside a library may have a very similar or even identical piece of code. In this case, you should isolate this component in a separate workflow and, if you don't want this workflow to be accessible outside the library, mark it as ignored from publish to make it private.

Additionally, it is possible that the same logic needs to be implemented between multiple processes. In this case, the reusable piece of logic should be isolated in a separate library.

The following diagram gives an overview of how a solution like this might look like:

![6c7e9a5-logic_library=GUID-9878F2B2-AF1B-4F7E-9BCA-FC1E9CAB006E=1=en=Default](/images/6c7e9a5-logic_library=GUID-9878F2B2-AF1B-4F7E-9BCA-FC1E9CAB006E=1=en=Default.jpg)


### Benefits

* Build only one layer without interfering with the other one.
* Reuse existing code without having to rewrite it each time it is used.
* Easily change the UI Interaction when an update in the application occurs and push the change to all the processes using the library without having to republish them.
* Sharing the UI interaction layer between multiple processes means that the same module is tested more thoroughly and that any fixes can be made for all processes at once, resulting in very robust and reliable automations.
* Having a dedicated GUI Interaction library makes it very easy to build dedicated Test Automation projects for testing the Ui automation for specific applications, thus ensuring that code is very easy to test and that breaking changes to the application are quickly detected.


## Example projects

To exemplify the creation and usage of a library using Object Repository, we created a use case with the ACME web application.

# Library

The library containing all of the ACME automation activities is called Acme_ObjectRepository. You can find the latest version below:

Download library project

Download library package

Even though the library is a module focused on the interaction with the ACME web application, it is also modularized and organized into multiple folders, based on their purpose:

![7c183b1-acme_library_structure=GUID-C612A5B2-C426-4AC0-9496-5665913D1C54=1=en=Default](/images/7c183b1-acme_library_structure=GUID-C612A5B2-C426-4AC0-9496-5665913D1C54=1=en=Default.png)

Here’s a quick breakdown of the library components:

* Login Acme.xaml - Logs in to the application. It contains the following arguments:Four In arguments (URL, Username, Password, TimeoutDesired). The Browser In/Out argument of type UiPath.Core.UiElement This component will either attach to any ACME windows that are already open, or open a new browser window if one is not already open and perform the login. The browser parameter will return the browser window and this variable will be passed on to all other components in the library.
* Logout Acme.xaml - Invokes the Navigate to home page workflow from the Navigation module and subsequently terminates the current session.
* User Options module - Contains the options that can change the current account's configurations inside the ACME web application. Reset test data.xaml - Resets the test data used in the ACME application.
* Invoices module - Contains the actions performed on the invoices found in the test data.Download all invoices.xaml - Extracts all the items in the invoice table inside the application and returns them as a DataTable. Download invoices by vendor tax ID.xaml - Navigates through the entire invoice table until it finds an invoice with a specific tax ID, which it then returns.
* Navigation module - Contains workflows that navigate through the different pages of the web applicationThe components in this module are mostly used by the other library workflows, and usually should not be invoked directly from our main process. However, they are marked as Publishable because they might be useful in attended processes where we might want the robot to navigate to a specific page and then allow the user to interact with the application.
* Work items module - Contains the actions which take place on the work items found in the application.Download all work items.xaml - Downloads all work items in the test data.

# Process

Download process

The main project, AcmeProcess_ObjectRepository consists of four different use cases. It requires that the user creates a Windows credential of Generic type named ACMETest, which saves the username and the password with which the robot will log in to the ACME web application.

The use case components in this process perform various tasks using the multiple components built in the ACME UI Components library.

When the Main.xaml workflow is invoked, the robot will log in to the ACME application, a dialog box will then prompt the user to select one of the use cases, and then invoke the workflow corresponding to the user's choice:

![5c4774d-acme_project_main=GUID-48C0FCF3-67F4-4072-8A1E-DD4F5D4E52AA=1=en=Default](/images/5c4774d-acme_project_main=GUID-48C0FCF3-67F4-4072-8A1E-DD4F5D4E52AA=1=en=Default.png)

# Testing project

Download testing project

The testing project, Test_UiPath.AcmeProcess_ObjectRepository consists of five different test cases that test different functionalities of the process: login/logout, download all invoices / download invoices by vendor tax id, download work items.

