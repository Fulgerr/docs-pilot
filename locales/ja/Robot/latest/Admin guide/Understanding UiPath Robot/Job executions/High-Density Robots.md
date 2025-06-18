# High-Density Robots

In a UiPath High-Density (HD) environment, commonly known as HD robots, multiple robots run concurrently under different user accounts on Windows Server machines. The machine allows as many concurrent executions (or user accounts) as the number of runtimes set for the machine template in Orchestrator.

Because each user has its own unique environment and access permissions, you must provide each robot with user-specific paths to navigate the system or to access certain files or folders. This is due to the way mappings are resolved per user. Since the computer account owns the installed files, it does not have access to user-specific network mappings.

# HD robots particularities

A High-Density environment has the following particularities:

* Requires Windows Server or Azure Windows 10 Enterprise Multi-session OSs.
* Requires the LoginToConsole parameters to be set to false for all robots.
* You can execute the same automation with all Robots at the same time.
* You can execute different automations with all Robots at the same time.
* In Service Mode installations, all robots operating on the machine connect to the same Orchestrator instance.
* If the Robot Service is already active, you can add a new robot on the machine without restarting the service.
