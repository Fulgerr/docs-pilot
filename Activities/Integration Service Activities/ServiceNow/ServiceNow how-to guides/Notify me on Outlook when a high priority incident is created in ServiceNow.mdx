# Notify me on Outlook when a high priority incident is created in ServiceNow

Applications: ServiceNow, Outlook

Description: Receive an email notification via Outlook when a high priority
            incident is created in ServiceNow, assign it to the corresponding department and notify
            the customer once the incident is resolved.

Steps:

1. Open Studio Web and create
                a new project. In the How to start the automation field, select Event
                    based . You are presented with a window that enables you to search for the
                trigger you want to start the automation with. Navigate to ServiceNow >
                    Incident Created .
2. Configure the Incident Created activity as follows: Set up your ServiceNow
                            connection.Configure any additional
                        filters that you want to add (here, Urgency is set to 1, which means it is
                        of high priority).
3. Next, add a ServiceNow: Get Record activity to your
                    canvas. Set the Object field
                        to the Incident value.For the Incident
                        idfield, select the output of the Event Trigger,
                            EventObjectId.
4. Next, add a Control: Set Variable Value activity to
                the canvas. For the To variable
                        property, open the Data Manager and create a new variable called
                            emailAddressHelpDesk, and specify the email address in
                        the Set value field.
5. Add a Microsoft 365: Send Email activity to your
                    project. Set up your Microsoft 365
                        Outlook connection.For the To property,
                        use a variable and select Variables >
                            emailAddressHelpDesk.Provide a Subject for
                        the email.Provide a Body for the
                        email to describe the incident.
6. Optional step: You can use ServiceNow: Update Incident to update
                State, Urgency, Assignee etc. Using Manage Properties you can add more
                incident fields to the activity to be updated.
7. Add a ServiceNow: Create Incident Task activity. For the Incident
                        property, use variable to set the value as High Priority Incident Created
                            > EventObjectId.Assign the individual
                        responsible to pick the task by typing their name within the Assigned
                            to property lookup.You can also optionally set
                        the Priority and State using the lookup as per your
                        requirement.
8. Next, add a ServiceNow: Update Incident Task activity. For the property Incident task ID, use a variable to select the
                            output of Create Incident Task for Help Desk > sys_id.
9. Add another ServiceNow: Update Incident activity. Use a variable to set the
                            Incident ID as High Priority Incident Created >
                            EventObjectId.Change the State and
                            Resolution code. Using Manage Properties
                        you can add more incident fields to the activity to be updated.
10. Add another Control: Set Variable Value activity to
                your canvas. For the To variable
                        property, open Data Manager and create a new variable, called
                            emailAddressCustomer and specify the email address in
                            Set value.
11. Finally, add a second Microsoft 365: Send Email activity to your
                    project. For the To property,
                        use a variable and select Variables > emailAddressCustomer.Provide a Subject for
                        the issue resolution email.Provide a Body for the
                        email to describe the resolution.
12. Execute the workflow.
