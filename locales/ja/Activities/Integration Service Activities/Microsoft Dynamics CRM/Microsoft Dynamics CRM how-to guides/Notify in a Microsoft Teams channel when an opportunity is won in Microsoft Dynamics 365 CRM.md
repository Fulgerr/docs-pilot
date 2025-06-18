# Notify in a Microsoft Teams channel when an opportunity is won in Microsoft Dynamics 365 CRM

Applications Used: Microsoft Dynamics 365 CRM and Microsoft Teams

Description: An opportunity in Microsoft Dynamics 365 CRM represents a potential
            deal that the sales team creates to monitor possible revenue generation from a sale.
            When an opportunity is won, it signifies that the sale is confirmed; in other words, the
            revenue generated from this opportunity can now be included in the quarterly targets,
            and a sales order can be created in ERP. To carry out subsequent tasks, like creating a
            sales order or documenting the opportunity amount in the current quarter's target, the
            sales team must be notified. A notification on the collaboration tool being utilized by
            the sales team, such as Microsoft Teams, is more preferable, as the team is more engaged
            and spends a significant amount of time on this platform.

The workflow uses the Get Record Microsoft Dynamics 365 CRM activity and the event
                Opportunity Closed and Won. It also uses the Get Team by Name, Get
                Channel by Name and Send Channel Message Microsoft Teams activities.

# Workflow

TIP: If you want to save time, use the Notify in Microsoft Teams channel
                    when an opportunity is won in Microsoft Dynamics 365 CRM template in Studio
                Web to build this workflow.

1. Open Studio Web and create a new project. In the How to start the automation field, select Event based. You are presented with a window that enables you to search for the trigger you want to start the automation with. Navigate to Microsoft Dynamics 365 CRM > Opportunity Closed and Won.
2. Configure the Opportunity Closed and Won activity as follows:Set up your Microsoft Dynamics 365 CRM connection.Add any additional filter, if needed.You can also rename the trigger activity to any name that suits your usecase.
3. Add a Get Record activity to your workflow. At this step, you want to pass the output of previous Trigger activity as input for retrieving the owner details. In the activity:Select Systemusers under Select object.select on Systemusers id and search for ownerid and select the same under Opportunity Closed and Won.Any additional options can also be configured, if needed.
4. Add the Microsoft Teams activity Get Team by Name to your workflow. At this step, you want to set and retrieve the team as a variable. In the activity:Type or select your team. For example, Avengers.
5. Add the Microsoft Teams activity Get Channel by Name to your workflow. At this step, you want to set and retrieve the channel as a variable. In the activity:Select See more at the right side of the Team property field and select Use variable. Search for TeamID and select it under Get Team by Name.Type your channel. For example, DAPAks.
6. Add the Microsoft Teams activity Send Channel Message to your workflow. At this step, you want to send a message by passing team ID and channel ID as variables, retrieved from the previous steps. In the activity:Select See more in the right side of the Team parameter and selec Use variable. Search for TeamID and select it under Get Team by Name.Select See more at the right side of the Channel parameter and select Use variable. Search for ChannelID and select the same under Get Channel by Name.Configure the Message body parameter and type any message. For example, Congratulations Team! The opportunity is won!.
7. You can also pass variables such as opportunity name and opportunity owner name. When you select Message body, search for name and select it under Opportunity Closed And Won. Similarly, search for firstname and select it under Get Record.
8. You are now ready to publish or run the project. For publishing, select on the Publish button at the top of the workflow and enter the details such as name, description, workspace of the automation. The version will be automatically loaded for the automation.
