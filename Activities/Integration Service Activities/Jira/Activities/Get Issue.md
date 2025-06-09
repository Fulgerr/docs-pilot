# Get Issue

# Description

Returns all the information of a Jira issue (assignee, reporter, project, etc.).

# Untitled Section

text="Type the content"

# Configuration

* 
* Project - The unique key of the project. This field supports String type input.Select the Project and the related Issue type to dynamically retrieve output properties. Once the output properties are set, you can use a variable for the Issue key or ID field. When using variables, you can still use the same output properties during execution, as long as the properties still apply. Alternatively, create a sample Jira project with an issue type that includes all possible fields across various projects and issue types. This enables you to handle different fields in different projects when retrieving the issue.
* Issue type - The type of issue you wish to retrieve (task, story, bug, epic, etc.). This field supports String type input.
* Issue ID or key - The issue you wish to retrieve. Enter the full issue key, such as ABCD-1234, or the issue ID. You can also use the dropdown list to search for an issue. This field supports String type input.









* Issue - The retrieved issue. Automatically generated output variable.

# How it works

This activity retrieves an issue in Jira based on the specified issue key and creates a just-in-time (JIT) object that consists of all the related dynamic standard and custom fields.

Once you set the Project and Issue type fields, you can go to Output and see
                that a JIT object has been created. You can then use the desired fields from the
                variable's output.

When using the Get Issue activity that compliments an event trigger from JIRA, you can assign the output of the trigger activity as an input variable in Get Issue. In this case, you are only able to retrieve Get issue response fields for the project the issue belongs to. These issue fields can vary depending on the issue type.

We recommend that you create a sample Project with an Issue type that contains all
                possible issue fields across multiple projects and issue types, so that you can
                retrieve issues across multiple projects and issue types. This is because issues can
                have different fields in different projects.

Alternatively, you can use the Get Record activity, with an Issues object. This scenario, however, prevents us from generating a JIT object for your issue key and you must work with standard fields like Summary, Description, Assignee etc.
