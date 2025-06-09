# GetQueueItems

Enables you to retrieve a list of up to 100 transactions from an indicated Orchestrator queue, according to multiple
            filters, such as creation date, priority, state, and reference. Obtaining a different
            set is possible with the use of Pagination configurations.

# 



# Overloads

GetQueueItems(String)Retrieves a list of transactions from a specified queue.GetQueueItems(String, String)Retrieves a list of transactions from a specified queue, and from
                                a specific Orchestrator folder.GetQueueItems(String, String, Nullable<Int32>,
                                    Nullable<Date
                                    Time>,Nullable<Int32>,
                                    QueueItemStates, Nullable<Date Time>,
                                    ReferenceFilterStrategy, String, Int32, Int32,
                                Int32)Retrieves a list of transactions from an indicated queue,
                                according to multiple filters, such as creation date, priority,
                                state and reference.

# GetQueueItems(String)

Retrieves a list of transactions from a specified queue.

IEnumerable<QueueItem> GetQueueItems(
	string queueName
)

queueNameStringThe name of the queue you want to extract data from. The name has to be the
                        same as the one in Orchestrator and needs to have the same
                        capitalization.

# GetQueueItems(String,
                    String)

Retrieves a list of transactions from a specified queue, and from a specific
                Orchestrator folder.

IEnumerable<QueueItem> GetQueueItems(
	string queueName,
	string folderPath
)

queueNameStringThe name of the queue you want to extract data from. The name has to be the
                        same as the one in Orchestrator and needs to have the same
                        capitalization.folderPathStringThe path of the folder where
                        specified queue is located, if different from the folder where the process
                        is running. This field only supports string values, with /
                        as the separator to indicate subfolders. For example
                            "Finance/Accounts Payable".

# GetQueueItems(String,
                    String, Nullable<Int32>, Nullable<Date Time>, Nullable<Int32>,
                    QueueItemStates, Nullable<Date Time>, ReferenceFilterStrategy, String,
                    Int32, Int32, Int32)

Retrieves a list of transactions from an indicated queue, according to multiple
                filters, such as creation date, priority, state and reference.

IEnumerable<QueueItem> GetQueueItems(
	string queueName,
	string folderPath,
	int? duration,
	DateTime? from,
	int? priority,
	QueueItemStates queueItemStates,
	DateTime? to,
	ReferenceFilterStrategy filterStrategy,
	string reference,
	int skip,
	int top,
	int timeoutMS
)

queueNameStringThe name of the queue you want to extract data from. The name has to be the
                        same as the one in Orchestrator and needs to have the same
                        capitalization.folderPathStringThe path of the folder where
                        specified queue is located, if different from the folder where the process
                        is running. This field only supports string values, with /
                        as the separator to indicate subfolders. For example
                            "Finance/Accounts Payable".durationNullable<Int32>Filters transactions by the minimum time they spent in the previous
                        attempt.fromNullable<DateTime>Filters transactions by the minimum creation date. It accepts
                            DateTime values.priorityNullable<Int32>Filters transactions according to their priority. This field supports only
                        integers and integer variables. The priorities are as follows:0 - High1 - Normal2 - LowqueueItemStates QueueItemStatesFilters the queue item states. The
                        following options are available:All - The default option.NewInProgressFailedSuccessfulAbandonedRetriedDeletedtoNullable<DateTime>Filters transactions according to the maximum creation date. It accepts
                            DateTime values.filterStrategy ReferenceFilterStrategyThe strategy to use when filtering according to reference. The following
                        options are available:StartWith - looks for items whose references
                                start with the value indicated in the Reference field.Equals - looks for items whose references are
                                the same as the value indicated in the Reference field.referenceStringFilters Orchestrator queue items by
                        reference.skipInt32Helps you skip the first "n" items. topInt32Returns only a specified number of items out of the total. The maximum value
                        is 100. timeoutMSInt32Specifies the amount of time (in milliseconds) to wait for the activity to
                        run before an error is thrown. The default value is 30000 milliseconds (30
                        seconds).

# Return value

IEnumerable<QueueItem>

The corresponding QueueItems.
