# RobotAPI

UiPath Robot API is a component designed to expand the functionality of your own Robot. It comes with several features, each addressing a specific aspect of automation management. These include:

Individual job management: Provides the capability to run, stop, and track personal automation processes.Domain-specific interfaces: Allows for the development of tailored interfaces to meet unique automation needs.Local accessibility: Available only on the machine where the Robot is installed, ensuring secure and direct access.Version compatibility: Keeps consistent with the version of the installed Robot, which allows for backwards compatibility.

Robot API uses the UiPath.Robot.api library. Use the following feed to download the library:

https://uipath.pkgs.visualstudio.com/Public.Feeds/_packaging/UiPath-Official/nuget/v3/index.json.



# Compatibility matrix

Robot VersionAPI 2024.10.xAPI 2023.10.xAPI 2023.4.xAPI 2022.10.xAPI 2022.4.xAPI 2021.10.xRobot 2024.10.xRobot 2023.10.xRobot 2023.4.xRobot 2022.10.xRobot 2022.4.xRobot 2021.10.x

# Common Robot API calls

Description.NET Robot API callIncluding the client in your applicationvar client = new RobotClient();Getting the list of available processesvar processes = await client.GetProcesses(); 
var myProcess = processes.Single(process => process.Name == "MyProcess"); 
var job = myProcess.ToJob();Using the process key to start a jobvar job = new Job("812e908a-7609-4b81-86db-73e3c1438be4");Starting a process execution{ 
await client.RunJob(job); 
} 
catch (Exception ex) 
{ 
Console.WriteLine(ex.ToString()); 
}Adding input argumentsjob.InputArguments = {["numbers"] = new int[] { 1, 2, 3 }}; 
await client.RunJob(job);Exporting output argumentsvar jobOutput = await client.RunJob(job); 
Console.WriteLine(jobOutput.Arguments["sumOfNumbers"]);Stopping a processawait client.RunJob(job, cancellationToken);Monitoring the process statusjob.StatusChanged += (sender, args) => Console.WriteLine($"{((Job)sender).ProcessKey}: {args.Status}"); 
await client.RunJob(job);Using the event schedulernew RobotClient(new RobotClientSettings { EventScheduler = TaskScheduler.Default })
