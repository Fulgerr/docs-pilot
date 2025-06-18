# Creating a support case in Oracle
        NetSuite

The following tutorial shows you how to build a workflow that creates a support case in
            NetSuite with only a customer's email address.

This tutorial was created using an older version of the
                Oracle NetSuite activities. Some activities may have been deprecated or updated in
                the meantime. For example, the Create Basic Support Case activity is now
                available as Create Support Case.

1. Add a List All Records activity to the canvas and configure the Connection to Oracle NetSuite. This
                connection is propagated to the rest of the NetSuite activities once configured and
                is used for the entire workflow. This activity is used to retrieve the Internal
                    ID of the customer, based on the e-mail address you have. Rename the
                activity to Customer Internal ID.
2. In the Select Object field,
                open the drop-down menu and select Customer . This displays the properties
                specific to this type of object.
3. Click the Where field. The
                Filter builder is opened. Create a filter that states Email =
                    customer@company.com where customer@company.com is the
                email address of the contact. Save the filter.
4. In the Max Records field,
                write a value that accommodates the data you want to retrieve, in this case, 10 . The first List All Records activity should look like this:
5. Add a Write Line activity. In
                the Text field, select Customer Internal ID > First Customer Record
                    > InternalId > InternalId. This displays the Internal ID of the
                customer retrieved from NetSuite in the Output panel.
6. Add a second List All Records activity. Its connection is automatically configured. This activity is used to
                retrieve the Internal ID of the contact associated with the customer you
                retrieved earlier. Rename this activity to Contact Internal ID .
7. In the Select Object field,
                select Contact .
8. Click the Where field. The
                Filter builder is opened. Create a filter that states Company =
                    InternalID , where InternalID is the variable retrieved
                from Customer Internal ID > First Customer Record > InternalId >
                    InternalId .
9. In the Max Records field,
                write a value that accommodates the data you want to retrieve, in this case 10 . The second List All Records activity should look
                like this: In NetSuite, all primary
                        keys are denoted as Internal IDs.
10. Next, add a second Write Line activity. In the Text field, select Contact Internal ID > First
                    Customer Record > InternalId > InternalId. This displays the Internal
                ID of the contact retrieved based on the Internal ID of the customer.
11. Add a Create Basic Support
                    Case activity. Its connection is automatically configured based on the
                previous connections.
12. In the Subject field, add the
                subject of your support case, in this case we will use Subject from upstream
                    case .
13. In the Company field, add Customer Internal ID > First Customer Record > InternalId >
                    InternalId , which is the Customer Internal ID retrieved from the Customer
                    Internal ID activity.
14. Configure a Status and a Priority for the support case you want to create by choosing an
                appropriate value from each drop-down.
15. In the Contact field, insert
                the Contact Internal ID > First Customer Record > InternalId >
                    InternalId. , which is the Internal ID of the Contact retrieved from the Contact Internal ID activity.
16. In the Category field, select
                an appropriate category from the drop-down menu.
17. In the Incoming Message insert
                the message you want to be sent along with the support case.
18. Add another Write Line activity. In the Text field, select Create Basic Support Case > Case
                    Number > Case Number . This displays the number of the support case you
                have just created in the Output panel.
19. Run the workflow. The Contact
                Internal ID retrieved from the email address is displayed, the Customer Internal ID
                retrieved based on the Contact Internal ID is displayed, a support case is created
                in NetSuite and the case number is also displayed in the Output Panel.
