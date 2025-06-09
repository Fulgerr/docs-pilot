# Working with Context Grounding

This section includes information on how to use Context Grounding effectively.

# Getting started

To use Context Grounding with activities, create a connection to the UiPath GenAI
                activities connector and make sure you use Studio Web or Studio Desktop version
                2024.4 or newer.

To use Context Grounding with Agents or Autopilot for Everyone, create an index
                following the steps described in Creating indexes.

# Managing the ingestion pipeline

You can manage the ingestion pipelines through:

Directly in Orchestrator,
                        from the Indexes page. See Managing indexes.The Update Context
                            Grounding Index activity, part of the UiPath GenAI activities
                        package.

# Querying data with Context Grounding

After creating an index in Orchestrator, indexes are accessible throughout the UiPath
                platform. These indexes serve as persistent storage for documents ingested from your
                data sources, offering a reusable resource for various UiPath products:

* In Autopilot for Everyone, Context Grounding enhances user interactions by enabling searches across existing indexes to provide accurate answers to queries. For details, refer to Context Grounding in Autopilot for Everyone.
* GenAI Activities benefit from Context Grounding by allowing content generation based on information stored in permissioned knowledge bases. For details, refer to GenAI Activities.
* For Agents, indexes play a crucial role in providing context during runs. For details, refer to Contexts.

Monitoring Context Grounding

Understanding how Context Grounding influences your workflows is crucial for
                optimizing performance and troubleshooting. Here's how you can trace and view
                Context Grounding outputs across different UiPath products.

In Agents, access the Trace view of the agent run to see comprehensive
                details. This view provides all search results and citations from the Context
                Grounding query, offering insights into the agent's decision-making process.

To gather detailed information about Context Grounding in GenAI activities:

Place a Log Message activity immediately after the
                        Content Generation activity in your workflow sequence.Use the following output
                        variables to capture specific information:Top Generated
                                    Text: View the LLM generation response after workflow
                                execution.Citations:
                                Examine the semantic search results that influenced the generation
                                output. This works only for PDF and JSON data types.

# Context Grounding in GenAI Activities

Context Grounding interacts with your data in three phases:

Establish your data source for Context Grounding.Context Grounding follows shared folder permissions. Use a folder
                                with appropriate access to manage and query from data.Create a connection to the supported Integration Service data
                                sources or add data to a shared Orchestrator bucket location.Ingest data from your data source into Context Grounding.Create and sync indexes in Orchestrator.Use the Update Context Grounding
                                    Index activity to sync an index you have created. Query and ground prompts with your data.Use the Content Generation
                                activity, Agents, or Autopilot for Everyone to
                                query over documents and use information to augment or ground
                                prompts.

# Common Context Grounding patterns

The core components of Context Grounding are designed to provide a mechanism that
                supports finding pertinent information within and across documents, and surfacing
                only the most relevant pieces needed for a high-quality, low-latency generation from
                an LLM.

Searching within documents

The Context Grounding service helps you find specific information within a single
                document more effectively. Instead of just matching keywords, it understands the
                meaning and context of your search query. For example, if you're looking for
                information about "apple pie recipes" in a cookbook, it would understand that you're
                interested in desserts and baking, not technology or fruit farming.

Searching across documents

Context Grounding helps you find information spread across multiple documents. It can
                understand the relationships between different pieces of information and provide
                more relevant results. For example, if you're researching "climate change effects on
                agriculture" across various scientific papers, it pulls together relevant
                information from multiple sources, understanding that topics like rainfall patterns,
                crop yields, and temperature changes are all related to your query.

This means you can use Context Grounding for:

Data extraction and comparison: Context Grounding can
                            automatically identify and extract specific types of information from
                            documents, then compare them in meaningful ways. Imagine you have a
                            stack of résumés and want to compare candidates' work experiences. The
                            service could extract job titles, durations, and responsibilities, then
                            present them in a way that makes comparison easy, even if the
                            information is formatted differently in each résumé.Summarization: Context Grounding can create summaries of long
                            documents or multiple related documents. It doesn't pick out random
                            sentences, but understands the key points and overall message. For
                            example, if you have a long report on market trends, the service can
                            provide a summary highlighting the main findings, key statistics, and
                            overall conclusions.

Context Grounding in UiPath automations

# Notifications

You can subscribe to receive notifications from Context Grounding in Automation Cloud Name. Visit
                     to learn
                more.

Events serve as triggers for notifications. The Context Grounding events that
                generate notifications are:

* Ingestion Job Completed
* Ingestion Job Failed
* Ingestion Job Started

You can also subscribe to events based on their severity, such as Success or
                    Error.

### Frequently asked questions

What is Context Grounding?

Context Grounding is a new UiPath Name feature, part of the
            AI Trust Layer. It provides a mechanism to search and retrieve relevant context from
            data to ground prompts and guide more precise generations from large language models
            (LLMs) through UiPath GenAI features and products.

Why is Context Grounding important?

Context Grounding provides evidence via user-provided data to LLMs to influence their
            generations. This makes predictions more tailored to your use cases and data, rather
            than based on the general data upon which LLMs are trained. This allows both attended
            and unattended automations which leverage GenAI to be more accurate and precise.

How does Context Grounding work?

Context Grounding provides two services:

* Managed Vector DB as a Service: We make it easy for you to convert your data
                into embedding representations.
* Retrieval Augmented Generation (RAG) as a Service : Context Grounding queries
                data from various automation products, retrieves the most relevant results, and
                augments prompts with those results to ensure generations are more specific.

How do I use Context Grounding?

You can use Context Grounding through UiPath GenAI Activities, Autopilot for Everyone, and Agents.

You can use Context Grounding through Autopilot for Everyone.

Does Context Grounding eliminate hallucinations?

No, but it does significantly reduce the likelihood of hallucinations because generations
            are based on information queried from user-provided data. By default, Context Grounding
            provides a citation, or proof of knowledge, from which the generation was based. This
            means you can verify and validate the source. When Context Grounding isn't able to find
            a highly confident corresponding answer in the provided data, it does not try to make up
            answers. Instead, it generates a response such as: "An answer could not be found".

Do I have access to Context Grounding?

Context Grounding is accessible to all tenants and organizations.

Context Grounding is hosted in the European Union,
            Japan, and United States regions. Data leveraged by Context Grounding is limited to
            these three regions. Other UiPath regions will be routed to these three regions.

How is Context Grounding licensed?

Context Grounding charges for searches or RAG as it is executed through its supported
            UiPath product surfaces. For details, refer to .

Is Context Grounding available only in cloud deployments?

Yes, Context Grounding is only available in UiPath Automation Cloud Name.

Context Grounding is available in the European
            Union, Japan, and United States regions of UiPath Automation Cloud Name.

What types of data can I use in Context Grounding?

Context Grounding currently works the following data formats: PDF, JSON, CSV, DOCX, TXT,
            XLS.

Can I import additional business data into Context Grounding?

To leverage Context Grounding, you need to import data into UiPath Orchestrator storage
            buckets (via direct upload, Studio activity, or API).

You can then use Context Grounding activities to
            ingest and index, and manage the queried data to ensure highly relevant results.

Is there a limit on the amount of data I can include in Context Grounding?

The limit of data you can use to ground your
            prompts is based on the model context window token size limits. Refer to the model you
            are using to execute the RAG (e.g., in GenAI activities) to determine potential token
            limit thresholds.

The limit of data you can use to ground your
            prompts is based on the model context window token size limits. Refer to the model you
            are using to execute the RAG to determine potential token limit thresholds.

* Index limit : There is a limit
                of ten indices per tenant. We recommend you maintain a 1-1 relationship between
                Orchestrator buckets from which you are ingesting data to prevent data leak across
                folders and ensure logical separation of data that may need to be queried by
                different users for different purposes. Context Grounding takes advantage of folder
                authorization permissions to help enforce this recommendation.
* Storage : There is no limit on
                storage across or within these indices. However, we impose some limits on customers
                who have exceedingly high amount of data ingested.

Is Context Grounding the same as RAG?

Context Grounding does provide a RAG service at runtime for UiPath GenAI experiences.
            However, it also provides a managed vector database as a service to help manage the data
            used at runtime. This guarantees a high-quality search and generated results.

How is my data stored or shared with Context Grounding?

All data shared with UiPath is treated with standard enterprise compliance, encryption,
            and security standards.

Context Grounding is part of the AI Trust Layer, which means your data is never stored
            outside of UiPath, nor is it used to train third-party models.

How do you ensure data security?

Context Grounding is tenant-scoped and takes advantage of existing RBAC and AuthZ
            policies in UiPath, in addition to encrypting data at rest and in transit.

Because it is tenant-scoped, no data is shared across indices within the same tenant or
            across tenants.

How is Context Grounding permissioned?

Context Grounding is tenant-scoped. We support
            folder-level authorization in Orchestrator buckets, and Context Grounding leverages
            existing authentication and Automation Ops policies applied to the GenAI Activities.

Context Grounding is tenant-scoped. We support
            folder-level authorization in Orchestrator buckets, and Context Grounding leverages
            existing authentication and Automation Ops policies.

Can I dynamically select which LLM to
            use?

In the UiPath GenAI activities you can select which
            LLM to use for executing the RAG portion that Context Grounding supports. You can select
            any LLM available in the LLM Gateway (part of the UiPath AI Trust Layer). UiPath then
            manages the ingestion and semantic search strategies to optimize the generation.

