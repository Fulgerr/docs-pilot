# Sync contact and opportunity in Act! 365 whenever a new opportunity is created in CRM

Summary: The purpose of this automation is to synchronize contact and opportunity
            information in Act! 365, whenever a new opportunity is created in CRM.

Applications Used: This process integrates Salesforce and Act!
            365.

Description:Opportunities in Salesforce can originate from several sources, which
            could range from potential customers to partners. To qualify or prospect the lead
            further, so as to convert it into an opportunity or a customer account, a corresponding
            contact must be created in marketing systems such as Act! 365. This enables the creation
            of customized campaigns. Furthermore, an opportunity in CRM can also be created in the
            same system so as to link and track the contact along with the opportunity.

The workflow makes use of iContact's activities Create Contact and Create
                Opportunity, alongside Salesforce's event Opportunity Created, and the
            activity Search Records.

# Workflow

TIP: To save time, consider using the Sync contact and opportunity in Act!
                    365 whenever a new opportunity is created in CRM template available in
                Studio Web to construct this workflow.

1. Open Studio Web and create a new project. In the How to start the automation field, select Event based. You are presented with a window that enables you to search for the trigger you want to start the automation with. Navigate to Salesforce > Opportunity Created.
2. Configure the Opportunity Created activity as follows:Establish your Salesforce connection.Apply any additional filters if necessary.Feel free to rename the trigger activity to better suit your use case.
3. Add the Search Records activity to your workflow. At this juncture, pass the output of the previous Trigger activity to retrieve primary contact details. Within this activity:Click on the Select object input parameter and choose Contact.Click Manage Properties, select Where, then click Update fields.Click See more on the right side of the Where input field, click Open expression editor, and type AccountId='"+_out_ConnectorTriggerActivity_1__Opportunity.AccountId+"'. Then click Save.
4. Add a Create Contact activity to your workflow. Here, pass the output of the previous Trigger activity as input to add subscriber details. During this activity:Click First name, search for FirstName, and then select Use FirstName of first item.Click Last name, search for LastName and choose Use LastName of first item.Click Email address, search for Email, and then choose Use Email of first item.Configure any additional options, if needed.
5. Add the Create Opportunity activity to your workflow. Again, pass the output of the previous Trigger activity as input, this time for adding the opportunity details. In this activity:Click Opportunity title, search for Name, and then select Opportunity.Name.Click Total, search for Amount, and then opt for Opportunity.Name.value.Click Description, look for Description, and then choose Opportunity.Description.

Publish:

You are ready to either publish or run the project. For publishing:

* Click the Publish button at the top of the workflow.
* Enter details such as the automation name, description, and the assigned workspace.
* The automation version will load automatically.

# Untitled Section
