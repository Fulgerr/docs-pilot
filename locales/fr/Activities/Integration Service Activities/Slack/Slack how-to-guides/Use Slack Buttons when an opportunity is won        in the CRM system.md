# Use Slack Buttons when an opportunity is won
        in the CRM system

# About

Summary: Use Slack Buttons when an opportunity is won in the CRM

Applications: Slack, Salesforce

Description

Slack buttons allow you to create an inbuilt review/approval mechanism and trigger
                automations from Slack messages by just clicking a button. Anyone can effectively
                use human intervention at key decision or touch points and choose among 1-5
                automations (with the help of 1-5 buttons) involving complex systems such as CRM,
                ERP, ITSM, HR, Finance, etc., by triggering them from Slack messages, without
                logging into that respective system.

Here are some key use cases taking advantage of Slack buttons:

1. When an opportunity is closed and won in Salesforce, choose whether to initiate or create an invoice or a sales order in QuickBooks or NetSuite, or send a sales agreement via DocuSign, or email a supplier via Outlook, by triggering the respective automation with the help of a Slack button.
2. When a time-off request is raised in an HR tool such as Bamboo HR, approve or deny the time-off request with the help of a Slack button.
3. When an expense report or claim is created in SAP Concur, approve or reject the report with the help of a Slack button.
4. When a customer support request is raised in the help channel of Slack, create a Jira/Zendesk ticket or notify the team or user group with the help of a Slack button.
5. Every week, using a time-based trigger, create an email campaign in Mailchimp and send a test email for manager or peer review, who in turn can approve or reject the scheduling or sending of the email campaign to the target audience with the help of a Slack button.
6. When a GitHub pull request (PR) is raised for peer review, approve or reject the PR with the help of a Slack button.

In this user guide, we are using two workflows to build the first use case.

The first workflow uses Slack activities, such as , and the Salesforce: Opportunity Closed
                    and Won trigger.

The second workflow uses Slack activities, such as , , and , along with Salesforce
                activities, such as , , and , an Oracle NetSuite  activity, and
                     from
                DocuSign.

# First workflow

If you want to save time, use the Send a Slack button
                        message when an opportunity is won in Salesforce template in Studio Web
                    to build this workflow.

Open Studio Web and create a new project.Select the More options  menu on the Manual trigger and
                            select Change trigger.From the trigger catalog, select Salesforce: Opportunity Closed and Won. In this trigger
                            activity:Set up your Salesforce connection.Add any additional filters, if needed.You can also rename
                                the trigger activity to something more representative of your use
                                    case.Add the Slack  activity to your workflow. At this step, you want to
                        pass the output of the previous trigger activity as variables in the Slack
                        message. In the activity:In the Channel
                                field, select the respective channel from the drop-down list or
                                enter the exact channel name (without #).In the Message
                                field, type the main section text message. For example:
                                "Congratulations team! We have won the below opportunity."In the Send as
                                field, select either Bot, to send the message as a bot, or
                                    User, to send the message as the current authenticated
                                user on Slack.In the Message
                                    fields, enter the opportunity ID and name in
                                    key:value pairs, separated by a comma. Change
                                the label of Opportunity ID and Opportunity Name to
                                bold using Slack markdown formatting For example:
                                    *Opportunity ID*:<opportunity ID>;*Opportunity
                                    Name*:<opportunity name>where
                                        <opportunity ID> and <opportunity name> are
                                        variables retrieved from Salesforce trigger. In the Buttons actions fields, enter two button actions for
                                Approve Invoice and Send Sales Agreement. Add the action ID
                                (required), action name (required), style (primary/danger),
                                confirmation title, confirmation text, confirm ok title, confirm
                                deny title, in a comma-separated format:
                                aks1,Approve Invoice,primary; 
aks2,Send Sales Agreement,danger,Confirm,Are u sure?,Yes,NoYou are now ready to publish
                        or run the project. Select the Publish button at the top of the
                        workflow and enter the details such as Automation name, Description, and
                        Workspace. The Version is updated automatically.

# Second workflow

If you want to save time, use the Configure/trigger
                        an automation when a button is clicked on Slack for the closed/won
                        opportunity in Salesforce template in Studio Web to build this
                    workflow.

Open Studio Web and create a new project.Select the More options  menu on the Manual trigger and
                            select Change trigger.From the trigger catalog,
                        select Slack: Button Clicked. In this trigger activity:Set up your Slack
                                connection.It is mandatory to
                                select either a Channel or a User for this trigger, to
                                restrict the button events to a particular channel or from a
                                particular user.Add any additional
                                filters, if needed.You can also rename
                                the trigger activity to something more representative of your use
                                    case.Add the Salesforce 
                        activity to your workflow. In the first workflow, we entered the opportunity
                        ID and opportunity name as a Slack message field. The same information must
                        be retrieved from the  output response. In
                        the activity: For the
                                    Opportunity field, select See more  icon to change input
                                type and select Use variable. Under the Button Clicked
                                output, search for the field > field2_text property. This
                                is the value of Opportunity ID.In the
                                    first workflow, message fields are passed in
                                        key:value pairs separated by a comma. Each
                                    message field in the  response
                                    (irrespective of key or value) will be sequentially assigned,
                                    i.e. if key1:value1; key2:value2; key3:value3
                                    were passed in Message fields, key1 is
                                    assigned to field1, value1 is
                                    assigned to field2, key2 is
                                    assigned to field3, value3 is
                                    assigned to field4, key3 is
                                    assigned to field5, value3 is
                                    assigned to field6 and so on.Add a Salesforce 
                        activity to your workflow. At this step, you want to pass the output of
                        previous activity as input for retrieving the primary account details. In
                        the activity:For the
                                    Account field, select See more  icon to change input
                                type and select Use variable. Under the Get
                                    opportunity output, select the Id property.Add an If activity to your workflow. Now you want to
                        filter or add an if condition to check on the Slack button that was clicked.
                        In this activity:Select the
                                    Condition field, select See more  icon to change input
                                type and select Use variable. Under the Button clicked
                                output, select Button actions1 > text property.Select the Equals
                                operator.For the third column,
                                type "Approve Invoice". Remember that in the first workflow we
                                passed Approve Invoice as one of the button action names. Click
                                    Save.For the Then branch,
                        add the Oracle NetSuite 
                        activity to your workflow. At this step, you want to pass the output of the
                        previous  activity as input for creating a customer record in
                        NetSuite. In the activity:For the Name
                                field, select See more  icon to change input
                                type and select Use variable. Under the Get account
                                response, select the name property.For the
                                    Subsidiary field, select any of the available options. For the Phone
                                field, select See more  icon to change input
                                type and select Use variable. Under the Get account
                                response, select the phone property.Still under the Then
                        branch, add a Slack  activity. At this
                        step, you want to use the Response URL output of the Button
                            Clicked trigger as input for replacing/deleting the original
                            Button message sent in the first workflow. This restricts the
                        button click to a one time only and not allow multiple button clicks. In the
                            activity:Select Button
                                    response URL, select See more  icon to change input
                                type and select Use variable. Under the Button Clicked
                                response, select the Button > response URL property.For the Response
                                    type field, select In channel. This sends a message
                                in the channel that can be seen by others. The Ephemeral
                                option is used to send a message that can be seen only by the user
                                who clicked the button and not others in the channel. Set the Replace
                                    original field to True, to replace the original button
                                message (sent in the first workflow).For the
                                    Message field, type a message by dynamically passing the
                                user name who clicked the button and the NetSuite customer created
                                in the previous step. For example:"<username> has approved
                                    the creation of <customer name> in NetSuite for Sales
                                    Order or Invoice processing"where
                                        <username> is retrieved from the output of , and
                                        <customer name> is retrieved from the output of .Next, for the Else
                        branch of the If activity, add a Salesforce  activity to your
                        workflow. At this step, you want to retrieve the primary contact name and
                        email of the customer retrieved in the Get Account. In the activity:For the Select
                                    object field, select Contact.Select Manage
                                    Properties, select Where and click Update
                                    fields.Select the
                                    Where field, now displayed on the canvas, to open the
                                filter builder. In the first
                                        column, select Account ID.Select the
                                        Equals (=) operator.For the third
                                        column, use a variable. Select the Id property under
                                        the Get account response.Click
                                            Save.Still under the Else
                        branch, add a DocuSign  activity to your
                        workflow. Now you pass the primary contact name and email of the customer to
                        send a sales agreement for e-sign. In the activity:For the
                                    Template field, select the respective template for sales
                                agreement.For the Status
                                field, select Send to create and send the envelope for
                                signature. The Draft option only creates the envelope in
                                draft but doesn't send it.For the Email
                                    subject field, type the respective subject. For example:
                                "Welcome to our family! Please sign the Sales Agreement!".For the Recipient
                                    legal name field, select See more  icon to change input
                                type and select Use variable. Under the Search Records
                                response, select First Contact Record > Name
                                property.For the Recipient
                                    email field, select See more  icon to change input
                                type and select Use variable. Under the Search Records
                                response, select First Contact Record > Email
                                    property.In the same Else
                        branch, add the Slack  activity to your workflow. At this step, you want to
                        pass the user name, channel ID, message timestamp of the  event
                        and account, opportunity information from the previous Salesforce
                        activities. In the activity:For the
                                    Channel field, select See more  icon to change input
                                type and select Use variable. Under the Button Clicked
                                response, select Button > channel id property.For the Message
                                    timestamp field, select See more  icon to change input
                                type and select Use variable. Under the Button Clicked
                                response, select Button > message ts property.For the
                                    Message field, type a message by dynamically passing the
                                user name who clicked the button, the account name, and the
                                opportunity name and ID. For example:"<username> has sent
                                    the sales agreement to the <account name> for the below
                                    opportunity: <opportunity ID> - <opportunity
                                    name>"where
                                        <username> is retrieved from the 
                                        response, <account name> is retrieved from , and
                                        <opportunity ID> and <opportunity name> are
                                        retrieved from 
                                        response.You are now ready to publish
                        or run the project. Select the Publish button at the top of the
                        workflow and enter the details such as Automation name, Description, and
                        Workspace. The Version is updated automatically.
