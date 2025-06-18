# Run Agent

This is a preview activity, available starting with version 25.2.2 of the System activity package.

UiPath.Activities.System.Agentic.RunAgent

# Description

The Run Agent activity initiates the execution of a predefined process on a designated agent. The Run Agent can receive input arguments, it can be suspended, it provides outputs, and allows future interactions with its output.

Agents must exist in your Orchestrator folder prior to configuring this activity.After updating an agent, make sure you republish it and redeploy the corresponding process to the Orchestrator folder.

# Project compatibility

Windows | Cross-platform

# Windows, Cross-platform configuration

* Activity body properties:Orchestrator folder pathSelect the Orchestrator folder where the agent you want to run is deployed. Only the folders you can access are displayed in the dropdown menu. If you do not select an option, your Personal Workspace is used.Process nameSelect the process associated to the agent you want to run. The agent-based processes are displayed. If the agent you need is not listed, select Manage processes to be redirected to your folder in Orchestrator, where you can add the missing agent-based process.InputOnce you select an agent-based process, the Input field is displayed. Select it to open the Data Mapping window, where you can provide values for the process input arguments. To retrieve the latest list of process arguments, select Refresh arguments at the right side of the field.For the best experience, make sure you are using the latest Studio version (2025.0.161). Studio versions previous to 2025.0.161 use the Expression Editor window.The following code snippet show you how to provide values to agent input arguments using VB.NET and C#:'VB.NET New Email_Rewriter_Input() With { .feedback = "sample feedback", .originalEmail = "sample email content" }//C# new Email_Rewriter_Input { feedback = "sample feedback", originalEmail = "sample email content" }



* Properties panel:Continue on errorSpecify if the automation should continue even when the activity throws an error. This field only supports Boolean values (true, false). The default value is false. As a result, if the field is not configured and an error is thrown, the execution of the project stops. If the value is set to true, the execution of the project continues regardless of any error.OutputDisplays the list of output arguments for the agent-based process, as they were defined during the agent creation.If an output argument is of type Object, you can access its sub-properties. For example, if you have an Object named "PaymentDetail" with properties such as "DueDate", "Amount", and "Approver", you can access them like this: PaymentDetail.Amount, PaymentDetail.DueDate, PaymentDetail.Approver.
