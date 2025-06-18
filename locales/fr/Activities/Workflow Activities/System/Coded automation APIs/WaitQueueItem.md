# WaitQueueItem

Retrieves an Orchestrator queue item from a specified queue and stores it in a QueueItem variable. This method is different from the Get Transaction Item method as, at runtime, in case the specified queue is empty, it sends a message to Orchestrator stating it is ready to receive a queue item and then waits for a new queue item to be added to the specified queue. Once retrieved, the status of the queue item is set to In Progress.

# 



# Overloads

WaitQueueItem(String)Waits for an item in the queue to be available so that you can process it (start the transaction) and sets its status to In Progress. WaitQueueItem(String, String)Waits for an item in the queue, from a specified folder path, to be available so that you can process it (start the transaction) and sets its status to In Progress. WaitQueueItem(String, String, Int32, ReferenceFilterStrategy, String, Int32)Waits for an item in the queue, from a specified folder path, to be available so that you can process it (start the transaction) and sets its status to In Progress. You can look for queue items based on a filter strategy, and by reference.

# WaitQueueItem(String)

Waits for an item in the queue to be available so that you can process it (start the transaction) and sets its status to In Progress.

QueueItem WaitQueueItem(
	string queueName
)

queueNameStringThe name of the queue where you want to search for the queue item.

# WaitQueueItem(String, String)

Waits for an item in the queue, from a specified folder path, to be available so that you can process it (start the transaction) and sets its status to In Progress.

QueueItem WaitQueueItem(
	string queueName,
	string folderPath
)

queueNameStringThe name of the queue where you want to search for the queue item.folderPathStringThe path of the folder where the specified queue is located, if different from the folder where the process is running. This field only supports string values, with / as the separator to indicate subfolders. For example "Finance/Accounts Payable".

# WaitQueueItem(String, String, Int32, ReferenceFilterStrategy, String, Int32)

Waits for an item in the queue, from a specified folder path, to be available so that you can process it (start the transaction) and sets its status to In Progress. You can look for queue items based on a filter strategy, and by reference.

QueueItem WaitQueueItem(
	string queueName,
	string folderPath,
	int pollTimeMS,
	ReferenceFilterStrategy filterStrategy,
	string reference,
	int timeoutMS
)

queueNameStringThe name of the queue where you want to search for the queue item.folderPathStringThe path of the folder where the specified queue is located, if different from the folder where the process is running. This field only supports string values, with / as the separator to indicate subfolders. For example "Finance/Accounts Payable".pollTimeMSInt32Specifies the amount of time (in milliseconds) between two attempts to retrieve a new item. The default value is 30000 milliseconds (30 seconds).filterStrategyReferenceFilterStrategyThe strategy to use when filtering according to reference. The following options are available:StartWith - looks for items whose references start with the value indicated in the Reference field.Equals - looks for items whose references are the same as the value indicated in the Reference field.referenceStringFilter items according to their reference.timeoutMSInt32Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).

# Return value

QueueItem

The retrieved TransactionItem.
