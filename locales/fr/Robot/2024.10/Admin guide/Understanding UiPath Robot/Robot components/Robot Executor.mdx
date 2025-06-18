# Robot Executor

UiPath Executor is a service component of the UiPath software structure that is used to run automations or jobs. It is the component that actually executes the automation workflows, and you can identify it in the system services list as UiPath.Executor.exe.

# How it works

During an automation lifecycle, the Executor represents the execution stage:

1. Design stage—Once an automation workflow is designed and created in Studio, it is then published to Orchestrator.
2. Orchestrator stage—The Orchestrator is the component that manages, controls, and logs the operations executed by the robots. Here, you can schedule a job or run it on-demand.
3. Execution stage—When a task is scheduled or triggered, Orchestrator sends a command to the Robot Service. The Robot Service then starts instances of UiPath Executor to run the automation task. Each instance operates in an isolated session, ensuring that if one task fails, the others remain unaffected.
4. Post-execution stage—When the task is completed, Executor instances are terminated, and the results are sent back to the Orchestrator. Details such as execution time, status (success or failure), and any exceptions are logged and can be analyzed for troubleshooting or process improvement.

# Capabilities

Some of the Executor capabilities include:

Executing local or remote tasks—UiPath Executor can execute tasks both in the local device where the Robot Service is installed, or it can connect to other devices remotely and execute tasks there.Running jobs concurrently—The Executor is capable of performing multiple automations at the same time, each one operating as an independent session.Load balancing and task prioritization—Together with UiPath Orchestrator, the Executor can help balance automation loads across multiple robots and prioritize tasks based on predefined rules.Maintaining workflow isolation—Each execution in the Executor is isolated, implying that error or failure in one job does not impact the performance of the rest.

The Executor adjusts to different DPI settings, enabling workflows to run on any resolution. If some applications cannot handle DPI, you can disable this particular feature.

# Executor types based on automation projects

Based on the automation project, the robot service launches the relevant executor type intended to execute the automation. The following tables summarizes the project types an executor can run, based on the used target framework.

Project/Executor typeArchitectureSupported OSFramework usedWindows - Legacy32-bitWindows (x64 and x86).NET Framework 4.6.1Windows64-bitWindows x64.NET 8 with Windows support (.NET Core - Windows)Cross-platform64-bitWindows, Linux, MacOS (64-bit).NET 8 with cross-platform support (.NET Core)

Each row in the table represents a different executor type, showing how it is configured to run projects based on the specific requirements of the project type, the target operating system, and the .NET framework version used. This information helps understand which executor is appropriate for each project, ensuring compatibility with the target environment and leveraging the relevant framework capabilities.

# User configurations for the Executor

The Executor has a dedicated system variable UIPATH_HEADLESS_WITH_USER, which you can configure depending on the type of user that runs the automation, and the version of the Robot installed on your machine.

When the user is the Local System, you can run background automations with Robot 2021.10 or a newer version. Here, the setting for UIPATH_HEADLESS_WITH_USER should either be Falseor not set at all.

When the user running the automation has credentials specified in Orchestrator, there are three scenarios you should consider:

* For any version of Robot running background automations, the UIPATH_HEADLESS_WITH_USER setting should be True.
* For any version of Robot running foreground automations, there should be no UIPATH_HEADLESS_WITH_USER variable set.
* For both foreground and background automations that use Robot version 2021.4 or older, there should be no UIPATH_HEADLESS_WITH_USER variable set.

The following table summarizes the user conditions for the Executor.User typeAutomation typeUIPATH_HEADLESS_WITH_USER settingThe robot version that uses this configurationLocal system userBackgroundFalse or null2021.10 and newerUser configured in OrchestratorBackgroundTrueAll versionsForegroundNo need for a variableAll versionsAnyNo need for a variable2021.4 and older

### Preloaded executor

Usually, each process requires time to load the required workflow, packages, and libraries into memory before it can start processing. In a preloaded setup, those dependencies are already loaded into memory, in dedicated execution slots. A preloaded executor is enabled by default.

Here are some key details about the preloaded executor:

Faster execution: By preloading the process, your robots can start working on their tasks much quicker.Resource utilization: With a preloaded executor, robots consume fewer resources by already having the required workflows loaded in memory.Availability: Preloaded executors are primarily designed for attended automations started from Assistant, RobotJS, Studio, or the command line interface. Unattended jobs from Orchestrator initiate a single, non-preloaded executor.

# System variables for preloaded setup

You can manage the behavior of preloaded executors by setting specific environment variables on the robot machine, as follows:Environment variableValueDescriptionUIPATH_PRE_LOADED_EXECUTORNoneOverwrites the default behavior and starts the preloaded executor only when the first job starts.UIPATH_DISABLE_PRE_LOADED_EXECUTORTrueDisables the preloaded executor.

# How it works

When you add the UIPATH_PRE_LOADED_EXECUTOR variable to your system, you configure a preloaded setup. This starts two executors: one whenever a job starts, and another one to wait for future jobs - the preloaded executor. When another job starts, it uses the preloaded executor, and it spawns another preloaded executor to wait for the next job. In short, a preloaded setup always make sure there is an available executor waiting for jobs.

# Preloaded executors and operating systems

For Windows devices, when UiPath.Service.UserHost.exe starts, it launches two preloaded executors: one for Windows projects, and another for Windows-Legacy projects.

For MacOS devices, when UiPath.Service.UserHost.exe starts, it launches a single preloaded executor for cross-platforms projects.

