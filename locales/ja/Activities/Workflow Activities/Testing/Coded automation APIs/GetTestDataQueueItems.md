# GetTestDataQueueItems

Extracts data rows from a specified TestDataQueue.

# 



# Overloads

GetTestDataQueueItems(String)Extracts data rows from a specified TestDataQueue.GetTestDataQueueItems(String, String)Extracts data rows from a specified TestDataQueue, in a certain
                                Orchestrator folder.GetTestDataQueueItems(String, String,
                                    TestDataQueueItemStatus, Nullable<Int32>)Extracts data rows from a specified TestDataQueue, in a certain
                                Orchestrator folder, for which you apply filters, so the search is
                                more precise.

# GetTestDataQueueItems(String)

Extracts data rows from a specified TestDataQueue.

List<TestDataQueueItem> GetTestDataQueueItems(
	string queueName
)

queueNameStringThe queue where the queue item fetched from. The name is not case sensitive.
                        For example, if you have defined your test data queue as
                            TestDataQueue in Orchestrator, it matches
                            testdataqueue.

# GetTestDataQueueItems(String, String)

Extracts data rows from a specified TestDataQueue, in a certain Orchestrator
                folder.

List<TestDataQueueItem> GetTestDataQueueItems(
	string queueName,
	string folderPath
)

queueNameStringThe queue where the queue item fetched from. The name is not case sensitive.
                        For example, if you have defined your test data queue as
                            TestDataQueue in Orchestrator, it matches
                            testdataqueue.folderPathStringThe path of the folder where the
                        specified test data queue is located, if different from the folder where the
                        process is running. This field only supports string values, with
                            / as the separator to indicate subfolders. For example
                            "Testing/Automated Testing".

# GetTestDataQueueItems(String, String, TestDataQueueItemStatus,
                    Nullable<Int32>)

Extracts data rows from a specified TestDataQueue, in a certain Orchestrator folder,
                for which you apply filters, so the search is more precise.

List<TestDataQueueItem> GetTestDataQueueItems(
	string queueName,
	string folderPath,
	string idFilter,
	TestDataQueueItemStatus testDataQueueItemStatus,
	int? skip,
	int? top,
	int timeoutMs
)

queueNameStringThe queue where the queue item fetched from. The name is not case sensitive.
                        For example, if you have defined your test data queue as
                            TestDataQueue in Orchestrator, it matches
                            testdataqueue.folderPathStringThe path of the folder where the
                        specified test data queue is located, if different from the folder where the
                        process is running. This field only supports string values, with
                            / as the separator to indicate subfolders. For example
                            "Testing/Automated Testing".idFilterStringThe ID of the queue item.testDataQueueItemStatus TestDataQueueItemStatusFilter by queue item status by selecting an option from the dropdown
                            list:All - All items regardless if they have been
                                marked as Consumed or Un-consumed.ItemConsumed - Filter by test data queue items
                                marked as Consumed.ItemsNotConsumed - Filter by test data queue
                                items marked as Un-consumed.skipNullable<Int32>Specify the number of items to be skipped before retrieving an item. If the
                        specified value is larger than total records, no records are fetched. This
                        property supports values up to the length of the test data queue. Default
                        value set to 0.topNullable<Int32>Specifies the maximum number of test data queue items fetched out of total
                        records. Set this only if you want a specific amount of items to be
                        fetched.timeoutMsInt32Specifies the amount of time (in milliseconds) to wait for the activity to
                        run before an error is thrown. The default value is 30000 milliseconds (30
                        seconds).

# Return value

List<TestDataQueueItem>

Output the test data queue items.
