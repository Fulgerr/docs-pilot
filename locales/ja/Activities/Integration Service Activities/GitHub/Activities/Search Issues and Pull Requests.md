# Search Issues and Pull Requests

UiPath.GitHub.IntegrationService.Activities.SearchIssues

# Description

Searches for an issue or a pull request in GitHub.

# Project Compatibility

Windows | Cross-platform

# Configuration

* Connection - The connection established in Integration Service. Access the drop-down to choose, add or manage connections.
* Max Records - The maximum number of records to return.
* Query - The query contains one or more keywords and qualifiers. Qualifiers allow you to limit your search to specific areas of GitHub. The REST API supports the same qualifiers as the web interface for GitHub. To learn more about the format of the query, see Constructing a search query. See Searching issues and pull requests for a detailed list of qualifiers.

# Advanced

Options

* Order - Determines whether the first search result returned is the highest number of matches (desc) or lowest number of matches (asc). This parameter is ignored unless you provide the Sort parameter as well. Choose your option from the available drop-down.* PageSize - The number of resources to return in a given page.
* Sort - Sorts the results of your query. Options available in the drop-down are: Comments, Reactions, Reactions-smile, Reactions-thinking_face, Reactions-heart, Reactions-tada, Interactions. You can also sort results by how recently items were Created or Updated. Default: best match.

Output

* Response - The search results, returned in a GetSearch_issues[] object.
