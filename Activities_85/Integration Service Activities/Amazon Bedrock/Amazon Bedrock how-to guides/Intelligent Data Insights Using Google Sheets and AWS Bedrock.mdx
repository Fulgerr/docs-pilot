# Intelligent Data Insights Using Google Sheets and AWS Bedrock

# Intelligent Data Insights Using Google Sheets and AWS Bedrock

Applications: Google Sheets, AWS Bedrock, Gmail

Description: This automation initiates when a new sheet is created in a Google
                Sheets Spreadsheet that contains annual business metrics. Once the metrics are
                completed (year-end), a temporary data table is created and fed to AWS Bedrock where
                a foundational large language model (Anthropic Claude) can identify data insights
                that can be used for future forecasting and/or further analysis and inquiry. The
                result is sent to a user via email.

# Steps

1. Open Studio Web and create a new project. In the How to start the automation field, select Event based. You are presented with a window that enables you to search for the trigger you want to start the automation with. Navigate to Google Workspace > Sheet Created.
2. Next, add a Google Workspace > Read Range activity and indicate where the Annual Sales were recorded in the worksheet.
3. You can use a spreadsheet sample to give the robot a template to use in order to effectively indicate the range.
4. Next add a Control: Output Data Table activity in order to take the Read Range output and turn it into a string/CSV so that the model can interpret the data effectively.
5. Add an AWS Bedrock:‘Get Text Completion Using Anthropic’ activity (or use any of the other Bedrock models available).For the prompt, make sure to be very specific about what you want the model to return both in terms of format and content. Note that this example asks the model to return formatted HTML. That will be very useful for including rich format in the subsequent email activity. Since each model is somewhat different in terms of preferred syntax and strength, make sure to go through a few iterations and testing before settling on something.
6. Finally, use a Gmail: Send Email activity to send the data insights that are returned from the large language model.
7. For the body of the email, you can use a System.Web.HttpUtility.HtmlDecode function to take the HTML formatted output from the model and include the rich formatted text in your output. You can also link the Google Sheet to the email using a variable as shown in the example below.

The final result should look like this:
