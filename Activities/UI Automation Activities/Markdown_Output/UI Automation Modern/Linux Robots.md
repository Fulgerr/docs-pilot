# Linux Robots

The Robot Linux image allows you to run cross-platform automations in docker containers.

The Robot Linux image is based on the Ubuntu Linux version of the mcr.microsoft.com/dotnet/runtime. All files required by the application are placed in the /application/ directory.

# Prerequisites

* Docker Environment.
* Network connection to Orchestrator.
* Machine Template Client Credentials.

# Deployment

To use robots in a Linux environment, create an unattended robot in orchestrator, save ClientID and ClientSecret to be used later, then follow the steps below on the robot machine:

1. Open a command line terminal and get the docker image using the following command:docker pull registry.uipath.com/robot/uiautomation-runtime:<tag>Not using a specific tag retrieves the most recent enterprise patch for the latest enterprise version. To retrieve or start a specific version of the robot, replace the <tag> parameter with the actual version from the Docker Image Tags column in the table below:Robot VersionDocker Image Tags2023.1023.10.69.35238-robot23.10.0
2. Based on the connection type, you can start the downloaded image and connect the robot to Orchestrator using one of the commands below:To successfully start the robot, you must accept the license agreement by adding the -e LICENSE_AGREEMENT=accept parameter in the command.Client ID and Client Secret:docker run -e LICENSE_AGREEMENT=accept -e ORCHESTRATOR_URL="https://cloud.uipath.com/organization/tentant/orchestrator_"-e CLIENT_ID="$Client_ID" -e CLIENT_SECRET="$Client_secret" -tid registry.uipath.com/robot/uiautomation-runtime:<tag>Machine Key:docker run -e LICENSE_AGREEMENT=accept -e ORCHESTRATOR_URL="https://cloud.uipath.com/organization/tentant/orchestrator_" -e MACHINE_KEY="$KEY" -tid registry.uipath.com/robot/uiautomation-runtime:<tag>

If you encounter issues connecting the robot to Orchestrator, this might be caused by a host machine configuration (e.g. firewall rules). To resolve this, add a specific DNS server in the command.

DNS configuration example:

docker run --dns="1.1.1.1" -e LICENSE_AGREEMENT=accept -e ORCHESTRATOR_URL="https://cloud.uipath.com/organization/tentant/orchestrator_" -e CLIENT_ID="$Client_ID" -e CLIENT_SECRET="$Client_secret" -tid registry.uipath.com/robot/uiautomation-runtime:<tag>

Where

1.1.1.1

refers to the public DNS resolver from Cloudflare. This can be any DNS resolver that can resolve the SignalR Hub.

Every time you run the command in step 2, a new unattended session is created in Orchestrator. To avoid this, use the docker start {container_id} command to start an already created container.

1. To see the status of your robots on the machine use the following command:docker ps -a
2. To disconnect a robot use the command below:docker stop {container_id}Using docker kill container_id stops the robot on the machine but does not disconnect it from Orchestrator.
3. To reconnect a specific robot use the command below:docker start {container_id}

# Creating automations for Linux robots

The Linux robot can run both background and foreground (using Google Chrome) automations.

If you want to create a web automation compatible with Linux robots, follow the steps below:

1. When creating a new process, choose the cross-platform project type in Studio.
2. In Studio, from the Package Manager, update the UI Automation activity package to the latest version. This feature is only available starting with the v21.11.0-preview package. Since you are using a Cross-platform project, only the activity packs that support cross-platform projects are displayed.
3. To create a web automation, you also need the latest Chrome extension. You can easily install it in the following ways:From StudioFrom Setup ExtensionsYou must have Chrome extension v21.10.4 or newer installed before you start designing the automation.

When designing the UI Automation project for Linux robots, you can use the following input methods for activities:

* ChromiumAPI (default)
* SimulateClick/SimulateType

Additionally, the following wizards are supported:

* Web Recorder
* Table Extraction

# Running automations on Linux Robots

The procedure for running an unattended job on Linux robots is identical to the one for Windows.

If you want to view the live execution of a process, you can do so using the preconfigured VNC server, accessible via the 5900 default port. To connect to it during process execution, you need to publish the VNC port when starting the image, by adding -p {localVncPort}:5900 --env VNC_ENABLED=true parameters to the Docker Run command.

docker run -e LICENSE_AGREEMENT=accept -e
ORCHESTRATOR_URL="{orchestrator url}" -e MACHINE_KEY="{machine_key}" -p 50000:5900 --env VNC_ENABLED=true registry.uipath.com/robot/uiautomation-runtime:<tag>

This command makes the VNC server available via the local machine (50000 port. After this, you can use any VNC client to follow the robot’s execution live.

# Remote Debugging

You can debug an already started robot container through the unattended robot connection feature.

# Logging

Logs related to process execution are found in the /home/robotuser/.local/share/UiPath/Logs folder on the docker image.

To extract Logs from the container, use the following command:

docker cp <ContainerId>:/home/robotuser/.local/share/UiPath/Logs <TargetPath>

# Configuring Package Feeds

The libraries used to run automations on the linux robots can be placed in the /application/Packages/ directory on the docker container. This can be configured by mounting the directory which contains the NuGet libraries using the following command:

docker run -e LICENSE_AGREEMENT=accept -e MACHINE_KEY="{machine_key}" -e ORCHESTRATOR_URL="https://cloud.uipath.com/organization/tentant/orchestrator_" -v <path to packages on the host machine>:/application/Packages/ -ti registry.uipath.com/robot/uiautomation-runtimedocker run -e LICENSE_AGREEMENT=accept -e ORCHESTRATOR_URL="https://cloud.uipath.com/organization/tentant/orchestrator_" -e CLIENT_ID="$Client_ID" -e CLIENT_SECRET="$Client_secret" -v <path to packages on the host machine>:/application/Packages/ -ti registry.uipath.com/robot/uiautomation-runtime:<tag>

Where <path to packages> refers to the location on the host machine .

Make sure that the robot user (UID 1000 user) has read access to the mounted path to the package feeds.
