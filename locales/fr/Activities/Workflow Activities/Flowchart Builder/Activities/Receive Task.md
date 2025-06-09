# Receive Task

Receive Tasks pause the process and wait for a specific event of an external participant to complete. You can use them together with Error Boundary Events for any potential system errors.

It creates a subscription to an API event and listens for configured events from Integration Service (records in SAP Concur, employee updates in Workday), Microsoft 365 (emails received, spreadsheets updated, calendar events), or Google Workspace (emails received, spreadsheets updated, calendar events) packages.

The Receive Task activity is recommended for workflows that wait for external input, such as confirmations, responses, or acknowledgments. Alternatively, it can be used as shown in the following image, where on any potential system error, there is a recovery using an Error Boundary Event and a Service Task.



# Properties

Display nameThe name of the Receive Task activity as you want it to be displayed on the Long Running Workflow canvas.PrivateIf selected, the values of variables and arguments are no longer logged at Verbose level.

# Managing the Receive Task

To add the waiting of a event completion to your process:

1. Add the Receive Task to your canvas.
2. Right-click on the Receive Task canvas element and select Set Task Template. This opens the list of all available wait events. If the wait event you selected is not installed on your device, you must wait until the installation of the container package completes.
3. To add activities, double-click the Receive Task canvas element.
4. Return to the canvas by selecting Long Running Workflow in the breadcrumbs.
