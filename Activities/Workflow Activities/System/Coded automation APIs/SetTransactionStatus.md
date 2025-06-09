# SetTransactionStatus

Sets the status of an Orchestrator transaction item to Failed or Successful.

# 



# Overloads

SetTransactionStatus(QueueItem, ProcessingStatus)Sets the status of a transaction item to Failed or Successful.SetTransactionStatus(QueueItem, ProcessingStatus, String)Sets the status of a transaction, from a specified Orchestrator folder, item to Failed or Successful.SetTransactionStatus(QueueItem, ProcessingStatus, String, Dictionary<Strin, Object>, Dictionary<String, Object>, String, ErrorType, String, Int32)Sets the status of a transaction item to Failed or Successful, along with other configurations and updates.

# SetTransactionStatus(QueueItem, ProcessingStatus)

Sets the status of a transaction item to Failed or Successful.

void SetTransactionStatus(
	QueueItem transactionItem,
	ProcessingStatus status
)

transactionItemQueueItemThe TransactionItem whose status is to be updated.statusProcessingStatusThe status that is to be set to the TransactionItem.

# SetTransactionStatus(QueueItem, ProcessingStatus, String)

Sets the status of a transaction, from a specified Orchestrator folder, item to Failed or Successful.

void SetTransactionStatus(
	QueueItem transactionItem,
	ProcessingStatus status,
	string folderPath
)

transactionItemQueueItemThe TransactionItem whose status is to be updated.statusProcessingStatusThe status that is to be set to the TransactionItem.folderPathStringThe path of the folder where the TransactionItem is located, if different from the folder where the process is running. This field only supports string values, with / as the separator to indicate subfolders. For example "Finance/Accounts Payable".

# SetTransactionStatus(QueueItem, ProcessingStatus, String, Dictionary<Strin, Object>, Dictionary<String, Object>, String, ErrorType, String, Int32)

Sets the status of a transaction item to Failed or Successful, along with other configurations and updates.

void SetTransactionStatus(
	QueueItem transactionItem,
	ProcessingStatus status,
	string folderPath,
	Dictionary<string, Object> analytics,
	Dictionary<string, Object> output,
	string details,
	ErrorType errorType,
	string reason,
	int timeoutMS
)

transactionItemQueueItemThe TransactionItem whose status is to be updated.statusProcessingStatusThe status that is to be set to the TransactionItem.folderPathStringThe path of the folder where the TransactionItem is located, if different from the folder where the process is running. This field only supports string values, with / as the separator to indicate subfolders. For example "Finance/Accounts Payable".analyticsDictionary<String, Object>A collection of analytics information about the TransactionItem whose status is to be updated.outputDictionary<String, Object>A collection of additional information about the specific TransactionItem whose status is to be updated.detailsStringDetails regarding the failed Transaction. You can place any log information or other details about the failure.errorTypeErrorTypeThe error type that the failed Transaction has thrown. Application - a technical issue (e.g. a file that cannot be found), this type of error will retry the transaction according to the settings in Orchestrator, Business - an error regarding an external factor (e.g. an invoice that could not be paid). For more information on this choice, see the Business Exception vs Application Exception article.reasonStringThe reason for which the Transaction failed. You can place any short reason here (e.g. does not contain the letter F).timeoutMSInt32Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).
