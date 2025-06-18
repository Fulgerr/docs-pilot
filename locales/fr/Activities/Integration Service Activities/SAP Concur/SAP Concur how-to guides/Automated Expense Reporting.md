# Automated Expense Reporting

Applications: Microsoft Outlook Email, Document Understanding, SAP
                Concur.Description: When a new email is received from a
                vendor for an expense that is eligible for reimbursement, the system should
                automatically add an expense in SAP Concur, using the relevant information extracted
                with Document Understanding, and upload its  receipt.Steps:Open Studio Web and create a new project. Make sure that in the New
                    Project window, in the How to start the automation drop-down, Event
                        based is selected.Drag a Microsoft Outlook : Email Received
                    trigger activity to the canvas. In the trigger activity:Connect to your Microsoft Outlook 365 account.Configure the Email folder property to point to where
                            you receive expense-related emails.Additional filters may be added to your automation, depending on your
                            needs.Add a Microsoft 365 Download Email
                        Attachments activity to the canvas.In the Email property field, select the variable that
                            is set as the output of the Event Trigger activity added
                            earlied.For this example, we exclude inline attachments, so for
                                Exclude inline attachments select True.Additional filters may be added to your automation, depending
                            on your needs.Add aDocument Understanding: Extract Document
                        Data activity and:Set the Project field to Predefined.Set Extractor field to Receipts.For the Input file field, select the output of the
                                Downloaded Email Attachments>Downloaded attachments list
                            property as as the variable.Notice that a For Each activity gets added above the
                            activity that has currentItem as the Input file. This is
                            because an email can have an array of attachments, and the For Each
                            activity can parse through all of them.Next, add a SAP Concur: Add Quick Expense activity
                        and:Connect to your SAP Concur account.Select the appropriate Expense type from the drop-down
                            menu.Configure the Transaction currency field to use the
                            currency you want to use.Use a variable to set the Amount field to Extract
                                Document Data > Data > Total Amount > Value > Value.Set the Payment type from the drop-down menu.Finally, add an SAP Concur: Upload Receipt Image
                    activity and:Use a variable to set the Receipt field to
                            currentItemExecute the workflow. Your expense is added to SAP Concur alongside its
                    corresponding receipt.
