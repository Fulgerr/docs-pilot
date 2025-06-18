# Queue generation with coded workflows and
        Orchestrator APIs

This tutorial shows you how to build an automation that generates random queues using
                the Orchestrator APIs, accessed from Swagger. The automation creates a new queue,
                generates queue items with random data, and adds them to the queue.

Prerequisites:For this example, you need to use
                    a Library or a Test Automation. But you can use coded workflows
                    for any type of RPA process. System.Activities 23.10Testing.Activities 23.10Add a new service (Orchestrator) in the Services section of your Studio
                        project.Add the Orchestrator API Swagger definition of the instance that you
                            want to use under File or Link, then click Load. To get
                            the swagger definition link, visit API References. Deselect all endpoints, except QueueDefinitions, then click
                                Save.

Create a Coded workflow by selecting New, and then Coded Workflow
                    from the File group.Inside the Execute method, create an instance of the HttpClient
                    object, by calling the BuildClient(String, Boolean)
                    method. This method builds and HTTP Client with a specified scope.The method takes two parameters, that have the following default values:scope
                                "Orchestrator" - The OAuth 2.0 scope for which to get an
                            access token.force
                                True - Generates a new access token.var client = BuildClient();Create an instance of the QueueDefinitionsClient, pass the client
                    instance as a parameter, and assign it to a variable named queueClient.
                    This client variable is used to interact with the Orchestrator's Queue
                        Definitions APIs.var queueClient = new QueueDefinitionsClient(client);Generate a queue name and create a new queue.var queueName = "SampleQueue" + Guid.NewGuid().ToString("N");
var queue = queueClient.PostAsync(new QueueDefinitionDto() { Name = queueName }, null).Result;
Create a Parallel For Each loop to iterate over a range of numbers
                    between 0 and 100. Use a dictionary to store the values for Address, FirstName,
                    and LastName. Generate random values for these items, using the Address, GivenName, and LastName coded automation APIs.In this scenario, a Parallel For Each is used instead of a simple
                        For Each, with the purpose of improving the performance of the
                    automation.Parallel.ForEach(Enumerable.Range(0, 100), i =>
      {
        var data = new Dictionary<string, object>()
        {
          { "Address", testing.Address("Romania", "Bucharest")["City"].ToString() },
          { "FirstName", testing.GivenName() },
          { "LastName", testing.LastName() }
        };
Add the random data to a queue, using the AddQueueItem coded automation
                    API.system.AddQueueItem(queueName, null, DateTime.UtcNow, data, DateTime.UtcNow, QueueItemPriority.Normal, i.ToString(), 100);

Sample projectTo follow the steps, download the following sample project: Queue generation with coded workflows and
                    Orchestrator APIs.
