# Managing AI Trust Layer


## Checking usage summary

The Usage Summary tab on the AI Trust Layer page provides an overview of
            the model usage and restrictions across different regions. It represents the historical
            data from your audit log and reflects the settings of your governance policies.

You can view data displayed on the following criteria:

* Total LLM Actions per Status :
                Enables you to monitor the status of different models across regions. To customize
                the data visualization, you can filter by region, model, status, and source.
* Total LLM Actions per
                        Product : Allows you to monitor the AI feature adoption within your
                    organization. To customize the data visualization, you can filter by tenant and
                    product.


## Viewing audit logs

The Audit tab on the AI Trust Layer page offers a comprehensive view of
                        AI-related operations, with details about requests and actions, the products
                        and features initiating requests, as well as the used models and their
                        location. You can monitor all AI-related operations and ensure their
                        compliance with your established guidelines and policies. Audit logs also
                        provide visibility into the inputs and outputs for Gen AI Activities,
                        Agents, Autopilot for Everyone, and Document Understanding generative
                        features. Note that you can view log entries created in the last 60
                        days.

The audit data is displayed as a table, with each of its columns providing a specific
            information about the AI-related operations:

* Date (UTC) : This displays
                    the exact date and time,when each operation was requested. It allows for
                    accurate tracking of requests according to their chronological order,
                    facilitating timely audits.
* Product : The specific
                    product that initiated each operation. This visibility allows tracing any
                    operation back to its originating product for enhanced understanding and
                    accountability.
* Feature : The specific
                    product feature that initiated the operation, facilitating issue traceability to
                    particular features, if any occurred.
* Tenant : The specific tenant
                    within your organization that initiated the operation. This insight enables a
                    more detailed overview and helps recognize patterns or issues at the tenant
                    level.
* User : The individual user
                                within the tenant who initiated the operation. It allows for tracing
                                activities at a granular user level, enhancing the oversight
                                capabilities. For GenAI Activities, the user is represented by the
                                person who created the connection. An N/A value indicates a
                                service-to-service communication where a user is not available.
* Model Used : The specific AI
                    model employed to process each operation. This insight provides a better
                    understanding of which models are handling which types of requests.
* Model Location : The
                    location where the used model is hosted. This information can assist potential
                    troubleshooting or audit requirements that could arise from model performance in
                    specific locations.
* Status : The status of each
                    operation—showing if it was successful, failed, or blocked. This quick way of
                    identifying operational issues is crucial for maintaining a smooth, efficient
                    environment.

Additionally, the filtering capability allows you to narrow down your audit based on
                        criteria such as the date, product, used model, status, or source. The
                                Source filter allows you to choose between viewing all calls,
                        only UiPath-managed calls, or exclusively custom connection calls (using
                        customer-managed subscriptions, as defined in ).

Furthermore, when you select an entry from the Audit table, you can access a
                                Details section for a more in-depth review, which includes
                        all data available in the Audit table, as well as the LLM call source and
                        the exact deployment associated with the call.


### Exporting audit logs

This feature is available on the Enterprise licensing
            plan.

The Export option enables you to export audit logs.

# Exporting logs

Triggering and downloading an export

Go to Admin > AI Trust Layer and select the Audit tab. Select Export. Choose to export with or
                        without inputs and outputs. Only one export can be processed at a time.
                            You must wait for the current export to complete before initiating a new
                            one.The system processes exports asynchronously,
                                with those including inputs and outputs requiring additional
                                time.Upon export completion, you
                        receive notifications via email and in the Notifications panel.Exported files are accessible
                        through the View Exports option in the AI Trust Layer > Audit
                        tab for a period of seven days.

The interface displays the number of remaining exports with inputs and outputs for
                the current month. Please note that once you reach the monthly limit, exporting with
                inputs and outputs will be suspended until the next month.

Filtering data for exports

Use the available filter options to narrow down the data you wish to export:

* Product – Select the products you want to export data from.
* Model Used – Choose specific models to filter the export.
* Status – Filter by Failed or Successful requests. A Failed status appears when an Automation Ops policy blocks a model, product, or feature.
* Date – Select a time range (e.g., Last day, Last week, Last 30 days) and choose between local or UTC time zones.

Filtering allows you to bypass the size and maximum rows per export limits, by
                selecting only the data you want to export.

# Viewing exports

The View Exports pane displays the exported data, the user who generated the
                request, and the status of the export. This pane is also where you can download your
                exports by selecting the Download action.

If an error occurs, your monthly export limit is not affected, and you can generate a
                new export.

Export statusesStatusDefinitionPendingThe request is being processed. The status transitions to
                                    Completed or Failed once processing is complete.FailedSometimes, a request can fail. A failed request does not
                                        count towards your monthly export allowance if you are
                                        exporting with inputs and outputs.CompletedThe processing is complete, and the file is ready for
                                    download.DownloadedThe file was downloaded.ExpiredThe file has reached the end of its 7-day availability window
                                    and can no longer be downloaded.

CSV structure

Audit logs consist of the following columns:

Audit logs CSV structureColumn nameTypeDescriptionDateDateTimeWhen the action was registered.ActionIdString/UUIDA unique identifier for the specific action. Can be used to
                                    further trace information across the UiPath platform and get
                                    more insights.ProductStringName of the product where the action took place.FeatureStringName of the feature that triggered the action.UserStringThe user who triggered the action.TenantStringThe tenant where the action took place.ModelStringThe model that processed the input.ModelLocalizationStringThe region of the model.StatusStringStatus for the action which can be failed or
                                    succeeded.

Export limitations

Inputs and outputs longer than 32,767 characters are truncated from the end. A
                message is automatically added to the truncated row to inform you the truncation of
                the information took place.

Inputs and outputs are processed to remove commas (”,”) so that you can easily
                process information without CSV malfunctions.

License duration and grace period

During the grace period, previously stored data remains accessible. However, no new
                data is saved in either Warm or Cold storage during this time. It's important to
                note that the data in Cold storage will eventually expire. The expiration timeline
                is calculated based on your license duration plus an additional two or three years,
                depending on your previous license type. This approach ensures that you have ample
                time to access your historical data even after your license has expired.

# Data retention and storage

Data is stored in the tenant region you selected when creating the organization and
                the tenant, according to the following rules:Export limits per license
                        typeFeatureEnterprise StandardEnterprise AdvancedActive storage (UI Visible)60 days60 daysWarm storage (Export available)90 days180 daysCold storage (Archived)2 years3 yearsMaximum rows per export200K200KMaximum export size1 GB1 GBExports with inputs and outputs 4 per month4 per monthExports without inputs and outputsUnlimitedUnlimited

Disabling the storage of inputs and outputs

You can disable saving inputs and outputs in exports by deploying an Automation Ops
                policy applicable at tenant, group, or user level. For details, refer to Settings for AI Trust Layer Policies.

Once this feature is disabled, the inputs and outputs are no longer saved and cannot
                be recovered.

UiPath cannot recover the data if you
                    choose not to save it. Before making this decision, ensure compliance with your
                    company's policies and relevant local or global regulations.


### Handling PII and PHI data in audit logs

If you use the GenAI features, you must be aware that your audit logs might include Personally Identifiable Information (PII) and Protected Health Information (PHI). These details can appear in logs when processing documents or managing input prompts through both attended and unattended automation. You can view the input and output prompts in the Details section when you review specific requests.

The information that can contain PII and PHI includes user and product prompts sent to LLM models as well as the responses generated by these models.

You can track the origin of the PII or PHI in your logs by reviewing the request timestamps, input content, and associated metadata such as Action ID, Tenant, Product, Feature, and User.

If your compliance rules require hiding PII and PHI data in audit logs, you can do so by disabling the input and output prompts saving mechanism using the AI Trust Layer policy settings. To do this, take the following steps:

1. Go to Automation Ops > Governance and select the AI Trust Layer policy.
2. Under the Feature Toggles tab, make sure to set Enable prompts saving for Audit? option to No. This configuration allows you to hide sensitive content from log entries, maintain compliance requirements, and control visibility of sensitive data while preserving audit capabilities. However, please note that once hidden, you cannot revover the prompts for further use.


## Managing AI Trust Layer policies

The AI governance tab on the AI Trust Layer page allows you to manage third party AI models usage for your organizations, tenants, or user groups through AI Trust Layer policies. This helps you control user access to Generative AI features and ensures appropriate governance across your organization.

You get an overview of all active policies and their current statuses. In addition to this, you can view and manage policies and their deployments, as follows:

* When you select the policy name, you are redirected to the respective AI Trust
                    Layer policy in Automation Ops > Governance. You
                    can now view the policy details and, if necessary, make changes. For details,
                    refer to Settings for AI Trust Layer Policies. You can also
                    directly create an AI Trust Layer policy by selecting Add policy.
* When you select Manage deployments, you are redirected to Automation Ops > Governance > Deployment, where
                    you can review all your policy deployments. For details, refer to Deploy Policies at Tenant Level.


## Managing Autopilot for Everyone

This Autopilot for Everyone tab on the AI Trust Layer page allows you to
            manage Autopilot for Everyone usage across your organization.

You can perform the following actions:

* Install Autopilot for Everyone
* Update Autopilot for Everyone
* Uninstall Autopilot for Everyone


## Configuring LLMs

This feature is available on the Enterprise - Advanced (Flex)
            and Enterprise (Unified Pricing) licensing plans.

The LLM configurations tab allows you to integrate your existing AI subscriptions
            while maintaining the governance framework provided by UiPath. You can:

Bring your own subscription: Replace UiPath-managed subscriptions with your own,
                    provided they match the same model family and version already supported by the
                    UiPath product. This allows for seamless swapping of UiPath-managed models with
                    your subscribed models.Bring your own LLM: Use any LLM that meets the product's compatibility criteria.
                    To ensure smooth integration, your chosen LLM must pass a series of tests
                    initiated through a probe call before it can be used within the UiPath
                    ecosystem.

Configuring LLMs preserves most of the governance benefits of the AI Trust Layer,
            including policy enforcement via Automation Ops and detailed audit logs. However, model
            governance policies are specifically designed for UiPath-managed LLMs. This means that
            if you disable a particular model through an AI Trust Layer policy, the restriction only
            applies to the UiPath-managed version of that model. Your own configured models of the
            same type remain unaffected.

When leveraging the option to use your own LLM or subscription, keep the following points
            in mind:

Compatibility requirements: Your chosen LLM or subscription must align with the
                    model family and version currently supported by the UiPath product. Setup: Make sure you properly configure and maintain all required LLMs in the
                        custom setup. If any component is missing, outdated, or incorrectly
                        configured, your custom setup may cease to function. In such cases, the
                        system will automatically revert to a UiPath-managed LLM to ensure
                        continuity of service.Cost-saving: If your custom LLM setup is complete, correct, and meets all
                        necessary requirements, you may be eligible for a Reduced Consumption Rate.


### Setting up an LLM connection

LLM connections rely on Integration Service to establish the connection to your own
                models. You can create connections to the following providers: Azure Open AI Open AI Amazon Bedrock Google VertexOpen AI V1 Compliant LLM – Use
                    this option to connect to any LLM provider whose API follows the OpenAI V1
                    standard. For details, refer to the OpenAI V1 Compliant LLM connector
                        documentation.To set up a new connection, take the following steps:

Create a connection in Integration Service to your provider of choice.For connector-specific authentication details, see the Integration Service user
                        guide.Create the Integration Service connection in a
                        private, non-shared folder to prevent unauthorized access.Navigate to Admin > AI Trust Layer > LLM
                        Configurations.Select the tenant where you want to configure the connection.Select Add configuration. Select the Product.Select the Configuration type: Replace UiPath LLM Subscription or
                        Add your own LLM.Depending on the selected product, only one of these options may be
                        available.If you choose to replace the UiPath subscription, select a different LLM
                    model.In the Configure customer managed connection section, configure the
                    following fields:Folder – Select
                            the folder where the connection belongs. Connector – Select
                            the connector and a connection. If no connections are available, select
                                Add new connection to be redirected to Integration
                            Service.LLM identifier
                                name – Select the name of the LLM you want to use.LLM alias - Provide an alias for your new LLM. This field is
                            available only for the Add your own LLM configuration type.Select Test to check that the model is reachable and meets the required
                    criteria.While we can confirm reachability, verifying the exact model used is your
                    responsibility.If the test is successful, select Save to activate the connection.


### Managing existing LLM connections

You can perform the following actions on your existing connections:

* Check Connection – Verify the status of your Integration Service
                    connection. This action ensures that the connection is active and functioning
                    correctly.
* Edit – Modify any parameters of your existing connection.
* Disable – Temporarily suspend the connection. When disabled, the
                    connection remains visible in your list but doesn't route any calls. You can
                    re-enable the connection when needed.
* Delete – Permanently remove the connection from your system. This action
                    disables the connection and removes it from your list.


### Configuring LLMs for Agents

When working with Agents, you can incorporate your own LLM using the OpenAI V1 Compliant
            connector.

Follow the steps outlined in the previous section to create a connection.

When configuring your model deployment, ensure that your LLM supports the following
            capabilities:

* Tool (function) calling – Your model must be able to call tools or
                    functions during execution.
* Disabling parallel tool calls – If supported by your LLM provider, the
                    model should offer the option to disable parallel tool calls.


## Governing contextual data for GenAI
        features

The Context Grounding tab on the AI Trust Layer page allows you to manage
            and govern the data you use as context with UiPath® GenAI features. For more details
            about context grounding, refer to About Context Grounding.

You can check the Context Grounding indexes available across specific tenants. Data about
            the index data source, update time, and last query time is also available.

Moreover, you can perform the following operations:

* Add a new index. For details, refer to Adding a new index .
* View details for the index attributes, using the See more actions menu.
* Permanently delete the index, including all embeddings and data representation
                within the index. You can delete the index form the See more actions menu. If other products use an index that is deleted,
                    you must reconfigure them with a new index, otherwise they will
                fail.
* Sync the index to update it with the most recent data from the data source. The sync
                operation overwrites the embeddings and captures only the data currently available
                in the data source. You can sync the index from the See more actions menu.

# Adding a new index

To add a new index that you can use as data context with UiPath GenAI features, take
                the following steps:

1. On the AI Trust Layer page, go to the Context Grounding tab, then select the Add new button.
2. Provide the index name and, optionally, a short description.
3. Specify the source of the data that you plan to ingest and make queryable.If you choose Storage bucket as your data source, take the following steps:Specify the Orchestrator folder where the storage bucket resides.Indicate the storage bucket where the desired documents are available.Select the format of the files you want to index. If you want to ingest multiple file formats, you must select the All option.You cannot change the selected option after creating the index.If you choose IS Connection as your data source, take the following steps:Specify the Orchestrator folder where the storage bucket resides.Select the connector and the connection. If no connection exists, you can add one.Specify the location of your documents.Select the format of the files you want to index. If you want to ingest multiple file formats, you must select the All option.You cannot change the selected option after creating the index.
4. Create the index by selecting Sync now. Initially, the index status is Sync in Progress and changes when the sync is complete.

