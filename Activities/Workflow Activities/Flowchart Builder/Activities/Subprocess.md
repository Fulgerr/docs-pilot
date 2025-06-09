# Subprocess

Subprocesses are groups of related tasks and events within the parent process. You can configure subprocesses similarly to Long Running Workflow canvas, as they support the same activities. Start events in subprocesses cannot be manually triggered, so you cannot use Message Start Event or Timer Start Event in a subprocess.

Use subprocesses when you want to simplify the main canvas and when a set of related tasks needs to be executed sequentially or logically at a specific point in the process.

Another use-case for subprocesses is using Business Exceptions through the Error End Event—Error Boundary Event pair.



# Properties

Display nameThe name of the Subprocess activity as you want it to be displayed on the Long Running Workflow canvas.PrivateIf selected, the values of variables and arguments are no longer logged at Verbose level.ValidateUnconnectedNodesIf selected, you are notified whether there are any activities that are not connected to the other ones.

# Managing the Subprocess

To add a subprocess to your process:

1. Add the Subprocess to your canvas.
2. Double-click the Subprocess canvas element. This opens a new canvas, where you can group related activities.
3. Add the desired activities and configure their properties as needed.
4. Return to the canvas by selecting Long Running Workflow in the breadcrumbs.
