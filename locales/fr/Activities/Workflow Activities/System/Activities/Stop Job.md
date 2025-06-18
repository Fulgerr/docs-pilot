# Stop Job

This activity is available starting with v2018.1.

UiPath.Core.Activities.StopJob

Enables you to stop or kill a job on Orchestrator. Please note that in order to execute this activity in Studio, the Robot has to be connected to Orchestrator and the Robot role needs to also have the Create and Edit rights on jobs, as well as View permissions on processes and environments. The activity runs under the Robot it executes it.

# Properties

Job - Specify the job to be stopped or killed. This property supports OrchestratorJob variables.Strategy - Select how to stop the job:Stop - Stop the job in a safe manner, when a Should Stop activity is encountered in the workflow.Kill - Forcefully stop the job, regardless of where the execution is.Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for a specified element to be found before an error is thrown. The default value is 300000 milliseconds (300 seconds).Continue On Error - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.
