# Search Transactions

# Description

Search for a transaction based on a filter such as transaction ID, status, amount, store, dates, etc.

# Untitled Section

text="Type the content"

# Configuration

Transaction ID - Filters the transactions by a PayPal transaction ID. A valid transaction ID is 17 characters long. There can be multiple transactions with same ID. This field supports String type input.Transaction start date - Filters the transactions by transaction start date. Transaction start and end date must be used together. Use the calendar widget to select a date. This field supports DateTimeOffset type input. Transaction end date - Filters the transactions by transaction end date. Transaction start and end date must be used together. Use the calendar widget to select a date. This field supports DateTimeOffset type input. Transaction type - Filters the transactions by a PayPal transaction event code. This field supports String type input.Transaction status - Filters the transactions by a PayPal transaction status. Select an option from the available dropdown list: Denied, Pending, Successful, Reversed. Transaction amount - Filters the transactions by a gross transaction amount range. Specify the range in lower denominations as <start-range> TO <end-range>. For example, to search for transactions from $5.00 to $10.05, specify [500 TO 1005].







* Fields - Indicates which fields appear in the response. Can be one or more comma-separated list of fields. To include all fields in the response, select All. Select an option from the available dropdown list.
* Transaction currency - Filters the transactions by a 3-character ISO-4217 transaction currency code. This field supports String type input.
* Payment method - Filters the transactions by payment instrument type/method: Credit card or Debit Card.
* Store ID - Filters the transactions by a store ID. This field supports String type input.
* Terminal ID - Filters the transactions by a terminal ID. This field supports String type input.
* Only balance affecting transactions? - Whether to show only the balance affecting transactions or all the transactions. Boolean value.



Transactions - Automatically generated output variable.

It can take a maximum of 3 hours for executed transactions to appear in the list of transactions.
