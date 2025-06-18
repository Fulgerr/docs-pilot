# Invoke Power Automate Workflow

# Description

Triggers a Power Automate flow from UiPath Maestro. The flow runs with the permissions of
        the user who created the connection.

To use this activity in a Maestro agentic process, take the following
        steps:

Add a task element to the canvas. In the Implementation section, from the Action dropdown list, select
              Start and wait for an external agent.Select the Power Automate connector.Select an existing connection or create a new one.Under Activity, select Invoke
              a Power Automate Workflow.Invoking a Power Automate flow using the Start and wait for an external
                    agent task in Maestro

# Project compatibility

Cross-platform

# Configuration

The activity authenticates via
                Microsoft Entra ID (Azure AD) using the connection’s credentials. Any actions
                performed by the invoked flow execute with the same permissions as the user who
                created the connection. Ensure that admin consent is granted if required. For
                details, refer to the Power Automate authentication page.Workflow ID - Select the relevant workflow from the dropdown list.Input - Depending on the selected workflow, different input fields may be
              displayed. Add any input to be sent to Power Automate.

* Output - The output returned by the Power Automate flow, typically in JSON format. Automatically generated output variable.
