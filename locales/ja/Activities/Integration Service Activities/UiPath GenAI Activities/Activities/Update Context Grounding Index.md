# Update Context Grounding Index

# Description

Sync latest data for existing indexes in Context grounding. The ingestion processing may take some time depending on the quantity of new data being synced. You can also accomplish this manually in the Automation Cloud Admin, in the AI Trust Layer panel.

To automate the process of adding new documents to an existing index, use the Orchestrator storage bucket activities or the Integration Service connector activities corresponding to the file storage system the index is syncing from (for example, the Google Drive activities).

# Project compatibility

Windows | Cross-platform

# Configuration

* 
* Orchestrator folder path - The Orchestrator folder containing the index to update. This must be a Shared folder. Search by name or select from the dropdown list of permissioned Orchestrator folders in that tenant. Use the Force refresh button to retrieve the latest folders. This field supports String type input.
* Index name - Select an index from the available dropdown list. Use the Force refresh button to retrieve the latest indexes. This field supports String type input.

### Managing the ingestion pipeline

# Untitled Section

The  activity
                provides an asynchronous mechanism to sync your data source and the previously
                created index directly in an automation workflow. This allows you to manage data
                freshness to ensure the most relevant results are retrieved during query time.
                Alternatively, you can use the Context Grounding UI that is part of the AI Trust
                Layer admin panel experience.

After you create an index, activities and other UiPath products can use it to query
                documents that are important for your use case.

Ingestion time

Ingestion is an asynchronous process. After you execute the activity, it does not
                mean the data is queryable immediately. Smaller ingestion payloads are processed
                faster. Therefore, we recommend you upload documents in batches and run this
                activity periodically. The duration of this process depends on the amount of data
                and how many other users submit ingestion requests.

Run  each time
                you add or delete data from your data source. This ensures parity with your data
                source and the embeddings used for search and RAG.

The index name may not appear in the Content Generation activity before the
                ingestion is completed. If you can’t find the index name after running the  activity,
                select the Force Refresh button menu next to the Index field:

Common errors and resolution patterns

You may receive an error ("No
                        Results Found") if the ingestion job has not completed.You may receive an error ("No
                        Schema Found") if the ingestion job has failed. In this case, wait a few
                        minutes, retry querying, and retry ingestion.You may receive an error
                        ("Datasource Synchronization Already in Progress") which means you have an
                        ingestion job to that index that is currently in progress. Wait a few
                        minutes and retry ingestion.

You can run the  activity:

* Manually (strongly recommended).
* Event-based: Set up an automation to run the ingestion pipeline every time a new document is added to or removed from a storage bucket. Do this if you regularly add or remove documents from buckets.
* Time-based: Set up an automation to run the ingestion pipeline on a scheduled basis. Do this if you regularly expect a high volume of inflow/outflow of documents. For any trigger creation to work with these activities you should consider previous statements of ingestion being an asynchronous process.

