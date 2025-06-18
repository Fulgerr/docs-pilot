# SetTransactionProgress

Helps you create custom progress statuses for your In ProgressOrchestrator transactions.

# 



# Overloads

SetTransactionProgress(QueueItem,
                                String)Create custom progress statuses for your In Progress
                                transaction.SetTransactionProgress(QueueItem, String,
                                    String)Create custom progress statuses for your In Progress
                                transaction, from a specified Orchestrator folder path.SetTransactionProgress(QueueItem, String, String,
                                    Int32)Create custom progress statuses for your In Progress
                                transaction, from a specified Orchestrator folder path, with
                                    TimeoutMS configured.

# SetTransactionProgress(QueueItem, String)

Create custom progress statuses for your In Progress transaction.

void SetTransactionProgress(
	QueueItem transactionItem,
	string progress
)

transactionItemQueueItemThe TransactionItem whose progress is to be updated.progressStringThe custom progress status that is to be set to the
                            TransactionItem.

# SetTransactionProgress(QueueItem, String, String)

Create custom progress statuses for your In Progress transaction, from a
                specified Orchestrator folder path.

void SetTransactionProgress(
	QueueItem transactionItem,
	string progress,
	string folderPath
)

transactionItemQueueItemThe TransactionItem whose progress is to be updated.progressStringThe custom progress status that is to be set to the
                            TransactionItem.folderPathStringThe path of the folder where the
                        specified queue is located, if different from the folder where the process
                        is running. This field only supports string values, with /
                        as the separator to indicate subfolders. For example
                            "Finance/Accounts Payable".

# SetTransactionProgress(QueueItem, String, String, Int32)

Create custom progress statuses for your In Progress transaction, from a
                specified Orchestrator folder path, with TimeoutMS configured.

void SetTransactionProgress(
	QueueItem transactionItem,
	string progress,
	string folderPath,
	int timeoutMS
)

transactionItemQueueItemThe TransactionItem whose progress is to be updated.progressStringThe custom progress status that is to be set to the
                            TransactionItem.folderPathStringThe path of the folder where the
                        specified queue is located, if different from the folder where the process
                        is running. This field only supports string values, with /
                        as the separator to indicate subfolders. For example
                            "Finance/Accounts Payable".timeoutMSInt32Specifies the amount of time (in milliseconds) to wait for the activity to
                        run before an error is thrown. The default value is 30000 milliseconds (30
                        seconds).
