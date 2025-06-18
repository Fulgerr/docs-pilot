# Get Sheet

# Description

Retrieve a sheet in Smartsheet.

# Untitled Section

text="Type the content"

# Configuration

* 
* Sheet - The ID of the sheet to be retrieved . Click the icon to browse your Smartsheet files. This field supports String type input.







* Exclude - Optional elements to exclude from the response. Select elements from the available drop-down list:Filtered out rows - Excludes filtered out rows from response payload if a sheet filter is applied; includes total number of filtered rows. Link in from cell details - Excludes the following attributes from the cell.linkInFromCell object: columnId, rowId, status.Links out to cell details - Excludes the following attributes from the cell.linksOutToCells object: columnId, rowId, status.Non existent cells - Excludes cells that have never contained any data.
* Include - Optional elements to include in the response. Select elements from the available drop-down list:Attachments - Includes the metadata for sheet-level and row-level attachments. To include discussion attachments, both attachments and discussions must be present in the include list. Column type - Includes columnType attribute in the row's cells indicating the type of the column the cell resides in. Cross sheet referencesDiscussions - Includes sheet-level and row-level discussions. To include discussion attachments, both attachments and discussions must be present in the include list. Filters - Includes filteredOut attribute indicating if the row should be displayed or hidden according to the sheet's filters. Filter definitions - Includes type of filter, operators used, and criteria. Format - Includes column, row, cell, and summary fields formatting. Gantt config - Includes Gantt chart details. Object value - When used in combination with a level query parameter, includes the email addresses for multi-contact data. Owner info - Includes the workspace and the owner's email address and user ID. Row permalink - Includes permalink attribute that represents a direct link to the row in the Smartsheet application. Source - adds the Source object indicating which report, sheet Sight (aka dashboard), or template the sheet was created from, if any. Writer info - Includes createdBy and modifiedBy attributes on the row or summary fields, indicating the row or summary field's creator, and last modifier.
* Rows modified since - Filter to return rows that have been modified since the date/time provided. Use the calendar widget to select a date. This field supports DateTimeOffset type input.



* Sheets - Automatically generated output variable.
