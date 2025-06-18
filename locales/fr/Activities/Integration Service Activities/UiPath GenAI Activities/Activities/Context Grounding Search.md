# Context Grounding Search

# Description

Given a natural language input or query, retrieve similar context from Context grounding indexes or from files. You can also set this directly in the Content Generation activity. Use Context Grounding Search if you need to extract similar context from an index based on some other text input instead of the prompt itself.

# Project compatibility

Windows | Cross-platform

# Configuration

Input text - Text used to query the index or file and return similar content. This field supports String type input.Orchestrator folder path - The
                        Orchestrator folder containing the index to search within. Search by name or
                        select from the dropdown list of permissioned Orchestrator folders in that
                        tenant. This field supports String type input. Use the
                            Force refresh button to retrieve the latest folders. Index name - The index to search for
                        similar context from. Select an index from the available dropdown list. This
                        field supports String type input. Use the Force
                            refresh button to retrieve the latest indexes.



* Number of results - The total number of results returned by the query. Default value: 3. This field supports Int32 type input.
* Query threshold - The minimum relevance score for search results. Default value: 0.75. This field supports Double type input.



* Search result object - The search results object containing citation information. Automatically generated output variable.
* Search result - The outcome of the search query.
