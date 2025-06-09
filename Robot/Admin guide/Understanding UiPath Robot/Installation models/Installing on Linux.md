# Installing on Linux

Installing Robots on Linux requires a Docker environment, a network connection to Orchestrator, and the client credentials of the machine template.

# The Docker image tag

To install the docker image of a specific Robot LTS version, you would need to mention the tag. For version 2024.10, the tag is latest24.10. To install the latest patch available, do not mention a tag. The command to download the docker image is:

docker pull uipathprod.azurecr.io/robot/uiautomation-runtime:<tag>

# Linux automations - particularities

* To create automations for Linux, ensure you have Chrome extension version 2021.10.4 or later. This allows the robot to execute background and foreground automations.
* To design a UI automation for Linux, you can select the following input methods for activities:ChromiumAPI: The default input mode that lets robots interact directly with Chrome elements.SimulateClick/SimulateType: Simulates user actions like clicking or typing on a webpage.Additionally, you can use the following tools:Web Recorder: Replicates a series of actions on a webpage that a robot can replay.Table Extraction: A tool to facilitate data extraction from web tables.

# Parameters for the docker run command

The following table summarizes the parameters used by the docker run command. Use this command to start the Docker image.

ParameterDescriptionExampleLICENSE_AGREEMENT=acceptAccepts the UiPath license agreement.Using the client ID and client secret:docker run -e LICENSE_AGREEMENT=accept -e ORCHESTRATOR_URL="https://cloud.uipath.com/organization/tentant/orchestrator_"-e CLIENT_ID="$Client_ID" -e CLIENT_SECRET="$Client_secret" -tid registry.uipath.com/robot/uiautomation-runtime:<tag>Using the machine key:docker run -e LICENSE_AGREEMENT=accept -e ORCHESTRATOR_URL="https://cloud.uipath.com/organization/tentant/orchestrator_" -e MACHINE_KEY="$KEY" -tid registry.uipath.com/robot/uiautomation-runtime:<tag>ORCHESTRATOR_URL="https://cloud.uipath.com/organization/tentant/orchestrator_"Sets the URL of the Orchestrator instance where your robots should connect.CLIENT_ID="$Client_ID"Use together with client secret.If you use the machine key, do not use this parameter.Sets the client ID of the machine template.CLIENT_SECRET="$Client_secret"Use together with client ID.Sets the client secret of the machine template.MACHINE_KEY="$KEY"If you use client ID and secret, do not use this parameter.Sets the key of the machine template.VNC_ENABLED=trueOptional. Enables the live streaming of the Robot execution on Linux through Virtual Networking Computing (VNC).Requires port 5000:5900 for accessing the VNC server.After enabling the VNC server, use any VNC client to live stream the robot execution.docker run -e LICENSE_AGREEMENT=accept -e
ORCHESTRATOR_URL="{orchestrator url}" -e MACHINE_KEY="{machine_key}" -p 50000:5900 --env VNC_ENABLED=true registry.uipath.com/robot/uiautomation-runtime:<tag>

# Orchestrator connection failure

Firewall rules might block the connection to Orchestrator. To address this, specify a DNS server in the docker run command. For example:

docker run --dns="1.1.1.1" -e LICENSE_AGREEMENT=accept -e ORCHESTRATOR_URL="https://cloud.uipath.com/organization/tentant/orchestrator_" -e CLIENT_ID="$Client_ID" -e CLIENT_SECRET="$Client_secret" -tid registry.uipath.com/robot/uiautomation-runtime:<tag>

The value --dns="1.1.1.1" represents the public DNS resolver from Cloudflare. You can use any DNS resolver to redirect the SignalR Hub.

# Configuring package feeds

Automations on Linux require certain libraries, which are stored in the /home/robotuser/.nuget/Packages/ directory of a docker container. To configure this, you need to mount the directory containing the NuGet libraries. Add the following flag to the docker run command: -v <path to packages on the host machine>:/home/robotuser/.nuget/Packages/.

For example, using machine key:

docker run -e LICENSE_AGREEMENT=accept -e MACHINE_KEY="{machine_key}" -e ORCHESTRATOR_URL="https://cloud.uipath.com/organization/tentant/orchestrator_" -v <path to packages on the host machine>:/home/robotuser/.nuget/Packages -ti registry.uipath.com/robot/uiautomation-runtime

Make sure that the robot Linux user (UID1000) has read access to the mounted path leading to the package feeds.

# Remote debugging

To debug a running robot container, use the Remote Debugging feature.
