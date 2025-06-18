# Working with App tasks

For a detailed view on how to build an App task, check the Apps official documentation. After developing an action app
            within Apps, you can set up fields for each property defined in the action property.

To create an App task inside a workflow, using the Create App Task activity, go to
            Studio Web or Studio Desktop, and follow these steps:

# Create an App task inside a
                workflow

Create a workflow in Studio Web or Studio Desktop to download an invoice document
                from a Google Drive account. Upload the downloaded document to the storage bucket
                bound to your Action app. Next, add a User Action/App action  activity
                to display the specific document for user approval or rejection. Assign the task to
                a user, await action completion, and resume the workflow. Log a message detailing
                the user's validation decision for the document.App
                    tasks are available within Studio version 2022.10 or higher.

1. Create a new project in Studio.
2. Add a Download File activity.Establish a connection to Google Drive inside the activity.In the File to download field, specify the name of the file that you want to download.Under the Output section, create a variable to store the downloaded file.For this example, name the variable downloadFile.
3. Add an Upload Storage File activity to upload the file to the storage bucket associated with your Action app.From Orchestrator Folder Path and Storage Bucket Name, choose the Orchestrator folder path and storage bucket where you want to upload the file.In the File field, input the variable where you stored the file that you downloaded.For this example, input downloadFile.In the Where to upload/Path field, enter the downloadFile.FullName.toString expression, to save the file in the storage bucket. You can store this expression in a variable.
4. Add an activity, to create the action.Set the Title, and Priority accordingly.For Apps, select the Action app created in Apps.Populate the generated fields with the appropriate variables.Under the Output section, create an UserActionData variable to store the data related to the generated action.For this example, name the variable as taskID.
5. Add an activity to assign the task to a user within the organization.In the Task Id field, input an expression that retrieves the task ID from the output variable created at step 4, substep d.In this example, input the taskID.Id.Value expression.In the User Name or Email field input the username or the email address of the user to whom you want to assign this action.The Apps dropdown in the Create App Tasks activity only shows deployed apps that have actions.
6. Add a activity to wait for the user to complete the action and then resume the workflow.In the Created App Task field, input the output variable created at step 4, substep d.In the Action taken field, create a variable (example: userActionTaken) to store the type of action that the user took to complete the task.
7. Add a Log Message activity to print the type of action that the user took to complete the task. Use an expression such as "The action that user used to complete the Validate Invoice action was " + userActionTaken.ToString

# Workflow example

To follow the steps and try out the tutorial yourself, download the sample Studio
                Desktop project. To open it in Studio Web, save the
                project to Cloud, then check your Studio Web for the project to open it there.
