# UiPath Proprietary Variables


## GenericValue Variables

The GenericValue variable is a type of variable that can store any kind of data, including text,
                                    numbers, dates, and arrays, and is particular to Studio.

GenericValue variables are automatically converted to other types, in order to perform certain actions. However, it is important to use these types of variables carefully, as their conversion may not always be the correct one for your project.

UiPath Studio has an automatic conversion mechanism of GenericValue variables, which you can guide towards the desired outcome by carefully defining their expressions. Take into account that the first element in your expression is used as a guideline for what operation Studio performs. For example, when you try to add two GenericValue variables, if the first one in the expression is defined as a String, the result is the concatenation of the two. If it is defined as an Integer, the result is their sum.


### Supported .NET Methods

| Name/Syntax | Description |
| --- ---| CompareToFunction GenericValue.CompareTo(other As GenericValue) As IntegerFunction GenericValue.CompareTo(obj As Object) As Integer | Click here for details. |
| ContainsFunction GenericValue.Contains(other As String) As Boolean | Click here for details.Used to check whether a string variable contains a certain substring or not. For example, if you want to check if a sentence contains a specific word, the expression should be [SentenceVariable].Contains("term"), where [SentenceVariable] is the GenericValue variable containing the sentence and "term" is the word to be searched for.When using this method with a GenericValue variable of data type Int, Float or Boolean, the data is automatically converted to String and handled accordingly. |
| EqualsFunction GenericValue.Equals(other As GenericValue) As BooleanFunction GenericValue.Equals(obj As Object) As Boolean | Click here for details. |
| GetHashCodeFunction GenericValue.GetHashCode() As Integer | Click here for details. |
| GetTypeFunction Object.GetType() As Type | Click here for details. |
| GetTypeCodeFunction GenericValue.GetTypeCode() As TypeCode | Click here for details. |
| IndexOfFunction GenericValue.IndexOf(value As String) As IntegerFunction GenericValue.IndexOf(value As String, comparisonType As StringComparison) As IntegerFunction GenericValue.IndexOf(value As String, startIndex As Integer) As IntegerFunction GenericValue.IndexOf(value As String, startIndex As Integer, comparisonType As StringComparison) As Integer | Click here for details.Used to return the index of a substring contained inside a string variable. For example, if you want to find the index of the word "locate" inside the sentence "Find 'locate' in this sentence", the expression should be [SentenceVariable].IndexOf("locate"), where [SentenceVariable] is the GenericValue variable containing the sentence and "locate" is the term to be searched for.When using this method with a GenericValue variable of data type Int, Float or Boolean, the data is automatically converted to String and handled accordingly. |
| LengthFunction GenericValue.Lenght() As Integer | Click here for details.Used to return the number of characters in a string variable. For example, if you want to find out how many letters a word has, the expression should be [WordVariable].Length, where [WordVariable] is the GenericValue variable containing the word.When using this method with a GenericValue variable of data type Int, Float or Boolean, the data is automatically converted to String and handled accordingly. |
| ReplaceFunction GenericValue.Replace(oldValue As String, new value As String) As String | Click here for details.Used to replace data contained inside a string variable. For example, if you want to change a local file path C:\ExampleFolder\Main.xaml into the corresponding server file path C:/ExampleFolder/Main.xaml, the expression should be [PathVariable].Replace("\","/") where [PathVariable] is the GenericValue variable containing the file path, "\" is the character to be replaced and "/" is the character used as replacement.When using this method with a GenericValue variable of data type Int, Float or Boolean, the data is automatically converted to String and handled accordingly. |
| SplitFunction GenericValue.Split(ParamArray separator As Char()) As String()Function GenericValue.Split(ParamArray separator As String()) As String()Function GenericValue.Split(separator As Char(), options As StringSplitOptions) As String()Function GenericValue.Split(separator As String(), options As StringSplitOptions) As String() | Click here for details.Used to return individual components from a string variable. For example, if you want to extract the year from a MM.DD.YYYY date format, the expression should be [DateVariable].Split(".".ToCharArray)(2), where [DateVariable] is the GenericValue variable containing the date, "." is the character used as a separator, .ToCharArray is a method that creates an array with the elements delimited by the separator and (2) represents the index of the element to be returned, in our case, the year.When using this method with a GenericValue variable of data type Int, Float or Boolean, the data is automatically converted to String and handled accordingly. |
| SubstringFunction GenericValue.Substring(startIndex As Integer) As StringFunction GenericValue.Substring(startIndex As Integer, length As Integer) As String | Click here for details.Used to return a substring contained in a string variable. For example, if you want to extract a word from the "There are 100 machines available" sentence, the expression should be [SentenceVariable].Substring(10,3), where [SentenceVariable] is the GenericValue variable containing the sentence, 10 is the index of the first character to be returned, and 3 is the length of the substring starting from the first character. In this example, the resulted substring would be "100".When using this method with a GenericValue variable of data type Int, Float or Boolean, the data is automatically converted to String and handled accordingly. |
| ToBooleanFunction GenericValue.ToBoolean(provider As IFormatProvider) As Boolean | Click here for details. |
| ToByteFunction GenericValue.ToByte(provider As IFormatProvider) As Byte | Click here for details. |
| ToCharFunction GenericValue.ToChar(provider As IFormatProvider) As Char | Click here for details. |
| ToDecimalFunction GenericValue.ToDecimal(provider As IFormatProvider) As DecimalFunction GenericValue.ToDecimal(format As NumberStyles) As Decimal | Click here for details. |
| ToDoubleFunction GenericValue.ToDouble(provider As IFormatProvider) As DoubleFunction GenericValue.ToDouble(format As NumberStyles) As Double | Click here for details. |
| ToIntFunction GenericValue.ToInt(culture As IFormatProvider) As Integer?Function GenericValue.ToInt() As Integer? | Used to convert a specified value to a nullable integer.When using this method with a GenericValue variable of data type Boolean, the "True" and "False" values are converted to 1 and 0, respectively. |
| ToInt16Function GenericValue.ToInt16(provider As IFormatProvider) As Short | Click here for details.When using this method with a GenericValue variable of data type Boolean, the "True" and "False" values are converted to 1 and 0, respectively. |
| ToInt32Function GenericValue.ToInt32(provider As IFormatProvider) As Integer | Click here for details.When using this method with a GenericValue variable of data type Boolean, the "True" and "False" values are converted to 1 and 0, respectively. |
| ToInt64Function GenericValue.ToInt64(provider As IFormatProvider) As Long | Click here for details.When using this method with a GenericValue variable of data type Boolean, the "True" and "False" values are converted to 1 and 0, respectively. |
| ToLowerFunction GenericValue.ToLower() As String | Click here for details.When using this method with a GenericValue variable of data type Int, Float or Boolean, the data is automatically converted to String and handled accordingly. |
| ToLowerInvariantFunction GenericValue.ToLowerInvariant() As String | Click here for details.When using this method with a GenericValue variable of data type Int, Float or Boolean, the data is automatically converted to String and handled accordingly. |
| ToSByteFunction GenericValue.ToSByte(provider As IFormatProvider) As SByte | Click here for details. |
| ToSingleFunction GenericValue.ToSingle(provider As IFormatProvider) As Single | Click here for details. |
| ToStringFunction GenericValue.ToString(formatProvider As IFormatProvider) As StringFunction GenericValue.ToString(format As String, formatProvider As IFormatProvider) As StringFunction GenericValue.ToString() As String | Click here for details. |
| ToTypeFunction GenericValue.ToType(conversionType As Type, provider As IFormatProvider) As Object | Click here for details. |
| ToUInt16Function GenericValue.ToUInt16(provider As IFormatProvider) As UShort | Click here for details.When using this method with a GenericValue variable of data type Boolean, the "True" and "False" values are converted to 1 and 0, respectively. |
| ToUInt32Function GenericValue.ToUInt32(provider As IFormatProvider) As UInteger | Click here for details.When using this method with a GenericValue variable of data type Boolean, the "True" and "False" values are converted to 1 and 0, respectively. |
| ToUInt64Function GenericValue.ToUInt64(provider As IFormatProvider) As Ulong | Click here for details.When using this method with a GenericValue variable of data type Boolean, the "True" and "False" values are converted to 1 and 0, respectively. |
| ToUpperFunction GenericValue.ToUpper() As String | Click here for details.When using this method with a GenericValue variable of data type Int, Float or Boolean, the data is automatically converted to String and handled accordingly. |
| ToUpperInvariantFunction GenericValue.ToUpperInvariant() As String | Click here for details.When using this method with a GenericValue variable of data type Int, Float or Boolean, the data is automatically converted to String and handled accordingly. |
| TrimFunction GenericValue.Trim(ParamArray trimChars As Char()) As StringFunction GenericValue.Trim() As String | Click here for details.When using this method with a GenericValue variable of data type Int, Float or Boolean, the data is automatically converted to String and handled accordingly. |
| TrimEndFunction GenericValue.TrimEnd(ParamArray trimChars As Char()) As String | Click here for details.When using this method with a GenericValue variable of data type Int, Float or Boolean, the data is automatically converted to String and handled accordingly. |
| TrimStartFunction GenericValue.TrimStart(ParamArray trimChars As Char()) As String | Click here for details.When using this method with a GenericValue variable of data type Int, Float or Boolean, the data is automatically converted to String and handled accordingly. |

When using Ctrl + K, Ctrl + M, or Ctrl + Shift + M directly in the Format Value activity body, the created variable or argument is of type GenericValue. For other activities, the created type is the same as the required type of the activity.


### Example of Using a GenericValue Variable

To demonstrate how a GenericValue variable works, let us create an automation that performs different operations whose results depend on the way we define their expressions. We create two GenericValue variables of different data types and display the results in the Output panel.

1. Create a new blank project.
2. Create three GenericValue variables: Int , Str , and Result .
3. In the Default column for the Int variable, type 12, and for the Str variable, type "34". The first variable is interpreted as an integer, while the second one is interpreted as a string.
4. Add an Assign activity to the Designer panel and connect it to the Start node.
5. In the Properties panel, in the To field, enter the Result variable.
6. In the Value field, type Int + Str .
7. Add a Write Line activity and connect it to the Assign one.
8. Double click the activity card and in the Text field, enter the Result variable. The project should look as in the following screenshot.
9. Press F5 to execute your automation. Note that, in the Output panel, the sum of the two numbers is displayed.
10. Go back to the previously added Assign activity and change the Value field to Str + Int, to reverse the order of the variables. The project should look as in the following screenshot.
11. Press F5 to execute your automation. Note that, in the Output panel, the concatenation of the two numbers is displayed.

This means that UiPath Studio takes the first element defined in your expression as a guideline for what operation to perform. If the first element in your expression is an integer or a GenericValue variable filled in as integer, UiPath Studio will perform the sum of the elements.

If the first element in your expression is a string or a GenericValue variable filled in as string, UiPath Studio will perform the concatenation of the elements.

Download example


## QueueItem Variables

We recommend that you read the About Queues and
                Transactions page, for an overview on queues and transactions, before
            further proceeding to the QueueItem variable.

Before getting into an in-depth detailing of the subject, make sure you understand the
            distinction between queue items (items stored in a queue in Orchestrator) and QueueItem
            variables (variables used in Studio to process queue items). We refer to them exactly
            like that: “QueueItem variables” and “queue items”.

Broadly, as the name says, the QueueItem variable stores an item which has been extracted
            from a container of items, a queue. This extraction is generally made with the purpose
            of further using the queue items in various scenarios. Let’s say you represent a banking
            institution and you have a deposits’ report of 50 clients. You want to process the data
            of each client who had previously deposited an On-Us Check smaller than $5000, using a
            third-party financial application. In this regard, you can make a workflow in which the
            QueueItem variable stores, by turn, the information of each client. Each entry read by
            the QueueItem variable is stored in a queue item and added to the designated queue in
            Orchestrator. The result of this whole process is a queue which contains the clients'
            information, each in the corresponding queue item.

To further process the data which meets the condition, you must create another workflow
            which extracts from the previously created queue, the items with a corresponding On-Us
            Check value smaller than $5000. A step-by-step procedure on how to create such a project
            is provided at the end of this topic.


### Supported .NET Methods

| Name/Syntax | Description |
| --- ---| EqualsFunction Object.Equals(obj As Object) As Boolean | Click here for details. |
| GetHashCodeFunction Object.GetHashCode() As Integer | Click here for details. |
| GetTypeFunction Object.GetType() As Type | Click here for details. |
| ToStringFunction Object.ToString() As String | Click here for details. |


### Supported Properties

| Name/Syntax | Description |
| --- ---| AssignedToProperty QueueItem.AssignedTo As String | Click here for details. |
| DueDateProperty QueueItem.DueDate As Date? | The latest date and time at which the item should be processed. If empty, the item can be processed at any given time. |
| DeferDateProperty QueueItem.DueDate As Date? | The earliest date and time at which the item is available for processing. If empty, the item can be processed as soon as possible. |
| IdProperty QueueItem.Id As Long? | Click here for details. |
| ItemKeyProperty QueueItem.ItemKey As Guid | The unique identifier of the item. For example, 1bf829e1-cd6b-4275-a364-19db3cfe09c7. |
| PriorityProperty QueueItem.Priority As QueueItemPriority | The priority of the queue item as defined in Studio in the Priority field on the Properties panel. |
| ProcessingExceptionProperty QueueItem.ProcessingException As ProcessingException | The processing exception of a failed item. |
| ProgressProperty QueueItem.Progress As String | Custom progress information about a queue item whose status is InProgress. |
| QueueDefinitionIdProperty QueueItem.QueueDefinitionId As Long | The unique identifier of the queue under which a queue item/transaction has been created. |
| QueueNameProperty QueueItem.QueueName As String | The name of the queue containing the processed items. |
| ReferenceProperty QueueItem.Reference As String | A user-specified value for easier queue item identification. |
| RetryNoProperty QueueItem.RetryNo As Integer | The number of times the item has been retried. |
| ReviewStatusProperty QueueItem.ReviewStatus As String | The revision status of the queue item as retrieved from Orchestrator. |
| RowVersionProperty QueueItem.RowVersion As Byte() | An internal field used for version stamping. It gets updated whenever a property of the current transaction is changed. |
| SpecificContentProperty QueueItem.SpecificContent As Dictionary(Of String, Object) | A collection of key value pairs containing custom data associated with the current transaction, as configured in the Add Queue Item activity. |
| StartTransactionTimeProperty QueueItem.StartTransactionTime As Date? | The time and date the transaction processing began. |
| StatusProperty QueueItem.Status As QueueItemStatus | The status of the queue item as retrieved from Orchestrator. |


### Example of Using a QueueItem Variable

Due to the nature of this example, we have split this section in two parts, each representing one of the two main workflows to be used when working with queues and queue items:

* Uploading items into a queue
* Processing the transactions from a queue

