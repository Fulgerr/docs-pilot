# Attended Automation Framework

# Overview

The Attended Automation Framework is a comprehensive template tailored to attended scenarios,
                which aims to provide a seamless and user-friendly experience by offering a set of
                intuitive forms and corresponding trigger workflows.

# How it works

The template consists of six distinct folders, each serving a particular purpose:

1. Framework_Workflows—Stores supporting workflows necessary for the template to execute correctly. This folder does not require modification.
2. Form_Inputs—Enables users to input information and interact with the automation through intuitive forms, and triggers workflows based on their actions (such as clicking Cancel, Continue, Select folder, or View user guide). The values are stored in the ConfigUtility.json file, which is used to pre-populate the forms in subsequent runs.
3. Form_ConfigUtility—Provides the ability to add custom logic and configurations, invoked by the ConfigUtility.xaml file and includes trigger workflows for canceling configuration changes, resetting all configurations to default, or saving new configurations. Allows you to customize the automation settings, including default form values, customized exceptions, additional settings, constants, and orchestrator assets, to tailor the automation to your specific needs. To set the configurations run this workflow at design time.
4. Form_Success—Displays the form when the transaction is successful and includes trigger workflows for options such as closing, repeating the process, or viewing the output.
5. Form_Error—Displays when an error or exception occurs during the automation process and includes trigger workflows for options such as closing the automation, emailing the error to the default email address (saved in the Form_ConfigUtility form file), or repeating the process.
6. Form_StatusWindow—Displays the automation process status throughout the automation, providing real-time updates on its progress.

![main_trigger_based_attended_automation_process=GUID-D39A644D-A71B-4C22-B798-75FA9DC7CA97=1=en=Default](/images/main_trigger_based_attended_automation_process=GUID-D39A644D-A71B-4C22-B798-75FA9DC7CA97=1=en=Default.png)

# Customizing the template

To configure the template for your specific use case, please follow these steps:

1. Open the Process.xaml file and customize the following options:Status messages - personalize the messages that appear to the user during the automation process (resultFormMessage).View Output button - choose whether the user can open the selected folder using the View Output button (Config("showViewOutput")).Place the logic of your automation in this workflow.
2. Run only the ConfigUtility.xaml file and configure the Form_ConfigUtility form file by following these steps:Form Defaults - Set the default form values that appear during every run. The form fields will reset to these values during every run.Exceptions - Define custom business exceptions in the automation.Settings - Define parameters that must be unique for each automation but are not fields in the input form. This includes:logF_BusinessProcessName—The name of your automation, which will be displayed at the top of your forms and in any error emails.userGuideUrl—The URL for the user guide or any other documentation you want to provide to the user as a reference.automationDescription—The text that appears at the top of the form below the automation name and before the user guide link.errorEmailRecipient—The recipient of the error email that is automatically generated in case of an error.Constants and Assets - Set constant values and Orchestrator assets used in the automation.

The default dependencies of this project template are UiPath.Form.Activities, UiPath.System.Activities, UiPath.UIAutomation.Activities, and UiPath.WebAPI.Activities.
