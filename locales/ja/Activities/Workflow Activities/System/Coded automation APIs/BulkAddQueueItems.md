# BulkAddQueueItems

Adds a collection of items from a specified DataTable to a specified
                queue in Orchestrator. Once added to the
            queue, the items' statuses are changed to New.

# 



# Overloads

BulkAddQueueItems(DataTable, String)Adds a collection of items from a specified
                                        DataTable to a specified queue in
                                    Orchestrator.BulkAddQueueItems(DataTable, String,
                                    String)Adds a collection of items from a specified
                                        DataTable to a specified queue in a specified
                                    Orchestrator folder. BulkAddQueueItems(DataTable, String, String,
                                        BulkAddQueueItems.CommitTypeEnum, Int32)Adds a collection of items from a specified
                                        DataTable to a specified queue in a specified
                                    Orchestrator folder, along with other configurations.

# BulkAddQueueItems(DataTable, String)

Adds a collection of items from a specified DataTable to a specified
                    queue in Orchestrator. To ensure the method works, the Robot must be connected to
                    Orchestrator. This is needed in order to send and retrieve information about
                    queues, items and statuses.

DataTable BulkAddQueueItems(
	DataTable queueItemsDataTable,
	string queueName
)

queueItemsDataTableDataTableThe DataTable variable that contains the values you want to
                        add to the specified queue.This DataTable variable can
                            also contain data about References, depending on how the columns of the file are
                            mapped. You can also read more on References here.queueNameStringThe name of the queue where you want to add the new queue items.

# BulkAddQueueItems(DataTable, String, String)

Adds a collection of items from a Data Table to a queue, at a specified folder path.
                The status of the items will be New.

DataTable BulkAddQueueItems(
	DataTable queueItemsDataTable,
	string queueName,
	string folderPath
)

queueItemsDataTableDataTableThe DataTable variable that contains the values you want to
                        add to the specified queue.This DataTable variable can
                            also contain data about References, depending on how the columns of the file are
                            mapped. You can also read more on References here.queueNameStringThe name of the queue where you want to add the new queue items.folderPathStringThe path of the folder where the
                        specified queue is located, if different from the folder where the process
                        is running. This field only supports string values, with /
                        as the separator to indicate subfolders. For example
                            "Finance/Accounts Payable".

# BulkAddQueueItems(DataTable, String, String,
                    BulkAddQueueItems.CommitTypeEnum, Int32)

Adds a collection of items from a Data Table to a queue, along with other parameters.
                The status of the items will be New.

DataTable BulkAddQueueItems(
	DataTable queueItemsDataTable,
	string queueName,
	string folderPath,
	CommitTypeEnum commitType,
	int timeoutMS
)

queueItemsDataTableDataTableThe DataTable variable that contains the values you want to
                        add to the specified queue.This DataTable variable can
                            also contain data about References, depending on how the columns of the file are
                            mapped. You can also read more on References here.queueNameStringThe name of the queue where you want to add the new queue items.folderPathStringThe path of the folder where the
                        specified queue is located, if different from the folder where the process
                        is running. This field only supports string values, with /
                        as the separator to indicate subfolders. For example
                            "Finance/Accounts Payable".commitType CommitTypeEnumSpecify the way the items are added to the queue, as well as the manner in
                        which the errors are treated. The following options are available:AllOrNothing - The activity adds all of the specified
                                queue items if no error occurs. In the case of an error, no items
                                are added and the row where the error occurs is returned.ProcessAllIndependently - Adds each queue item
                                individually and returns a list of all queue items that could not be
                                added, if any.timeoutMS Int32Specifies the amount of time (in milliseconds) to wait for the activity to
                        run before an error is thrown. The default value is 30000 milliseconds (30
                        seconds).

# Return value

DataTable

All errors that occurred during the process, if any.
