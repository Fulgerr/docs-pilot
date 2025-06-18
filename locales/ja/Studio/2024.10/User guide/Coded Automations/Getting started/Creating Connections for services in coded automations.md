# Creating Connections for services in coded automations

This section helps you create connections needed to access coded automation APIs from
            services that use connections, such as GSuite.Activities and
                Excel.Activities within coded automations.

Start by creating a connection in Integration Service. The connections can be accessed
            within the same organization, and tenant of your coded automation project. Inside the
            coded automation, use the connections object to access the earlier
            created connections in Integration Service, and then access the corresponding coded
            automation APIs.

After you complete the automation and publish it to Orchestrator, you can override the
            original connection configurations set up in code, if needed.

# Prerequisites

Create a connection in Integration Service:

1. Go to Integration Service, and select the tenant that your Studio is connected to.
2. Navigate to Connections.
3. Select Add connection, and create a connection for one of the following applications:Google DriveGmailGoogle SheetsMicrosoft Office 365

# Steps

1. Open an existing coded automation from the same organization, and tenant where you initially created your connection.
2. Inside the Execute() body, type connections, and then press Ctrl + Space to see the available connections.Depending on the application for which you previously created the connection, you can choose from the following connection types:GDriveGmailGoogleSheetsExcelOneDriveO365Mail
3. Further configure your connection by adding the Orchestrator folder and subfolder name, and the specific connection address you want. Use underlines to separate this information.For example, a Gmail connection for the My Workspace folder, and My Gmail Worskapce subfolder in Orchestrator, and for the john.doe@gmail.com address would be written in code as: connections.Gmail.My_Workspace_My_Gmail_Workspace_john_doe_gmail_com.RecommendationWe recommend you to create your connections in one step to avoid potential errors. We also recommend you to create a variable for the connection. This way, if changes occur in Integration Service, you'll avoid updating every instance of the connection throughout your automation. Use the following approach: var myGmailConnection = connections.Gmail.My_Workspace_My_Gmail_Workspace_john_doe_gmail_com;Avoid creating your connections in two separate steps like:var myGmailConnection = connections.Gmail; myGmailConnection.My_Workspace_My_Gmail_Workspace_john_doe_gmail_com;
4. Once you have established the connection, you can access the relevant coded automation APIs specific to a service through that connection.For example, if you have set up a Gmail connection as follows: var myGmailConnection = connections.Gmail.My_Workspace_john_doe_gmail.com, you can use the service's coded automation API using myGmailConnection.

# Overriding the connection in Orchestrator

1. Publish your project to Orchestrator.
2. Go to the Orchestrator feed where you have published the project.
3. Go to the published process and select Edit.
4. In Process Configuration, choose the coded automation containing your configured connection as the entry point.
5. In Package Requirements, find and select the corresponding connection type for your coded automation.Be careful to select the connection type for your coded automation, as connections for XAML files within your project also appear in the list.
6. Identify and select the account address you plan to associate with the connection when it runs.

# Known limitation

The default connection of an exported library will work in other projects, only if
                the imported project is in the same tenant as the originating library project.
