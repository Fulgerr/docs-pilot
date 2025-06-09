# Working with Jira activities

This section includes information that may help you when building workflows using Jira
            activities, as well as some FAQs.

# General information

The authenticated user’s
                            permissions and access are kept in the automation.For the Create
                                Issue activity, the properties are retrieved using the
                                Project key and Issue type fields. If a field is set
                            as mandatory per Jira Workflow rules, it's not shown as required in the
                            activity.For the Update
                                Issue activity, the activity properties are retrieved using the
                                Project key and Issue type fields. If a field is set
                            as mandatory per Jira Workflow rules, it's not shown as required in the
                            activity.A Jira Workflow rule can
                            override API automations for the Create Issue and Update
                                Issue activities.Custom fields are
                            supported for the Create Issue and Update Issue
                            activities. Custom fields are not supported for the Record activities
                            (such as List All Records or Insert Record).For the Update
                                Issue activity, the properties dynamically refresh only when you
                            provide a new Issue key (and not a variable).For the Create
                                Issue activity, the properties dynamically refresh only when a
                            you provide a new combination of Project and Issue
                            key.The activities with a
                            look-up feature for retrieving issues only work when an Issue key
                            is provided during design time. During runtime, the activities work with
                            an Issue ID as well.Connection sharing: If you create a connection and a workflow and publish them to other
                            users, the design time fields may not be applicable to the other user's
                            account or tenant. Therefore, when it is shared, the workflow might not
                            work as intended and break.

# Frequently asked questions

If you are experiencing problems when using the Create
                    Issue activity, see the list below for possible workarounds.

Some
                    fields aren't displayed as required

Your administrator might have set
                some fields as mandatory from Jira Workflow Validator. These fields don't appear as
                required when building the experience of Create Issue using the Get create issue metadata API.

Some fields
                    auto-update even when I assign a different value

In most cases, this
                happens because of an automation or post functions set up for your Jira instance, where a
                field update automatically kicks in. These are Jira automation rules and they take
                precedence over any API automation. Additional information is available in the
                Atlassian Jira community documentation: Auto update custom field and Update the value of a custom field.

Unable to find project issue
                types

It's possible that an authenticated Jira account doesn't have
                sufficient permissions to view the project, issue, or issue type you're looking
                for.

If you are a Jira administrator, use Jira's Permissions helper to view the permissions of the
                linked Jira account. Otherwise, check with your Jira administrators for
                assistance.

Unable to find standard or custom fields

This is most
                often related to not having permissions to view the fields. See Jira's Permissions helper or check with your Jira
                administrators for assistance.

Sometimes, a custom field's field configuration
                might not be associated with the project's issue type. Check the field configuration
                in Jira, ensure it's associated with the correct issue type, and make sure the issue
                type scheme is associated with the right project. If you still encounter errors,
                contact your Jira administrators.

Some fields are enumerable and the
                    allowed values don't load

This is a known issue. As a workaround, you
                can type in the desired value.

Some autocomplete fields are not
                    rendering

This is a known issue which will be fixed in a future
                release. As a workaround, you can use the Find methods from the Invoke
                    Operation activity or the JQL Auto Complete Data object in the
                    Insert Record activity.



What is the expected input for fields like related
                    issue (i.e., Epic link, Parent Issue, Linked Issue)?

You must provide
                the Issue key (e.g. PROJ-12345) for most of these
                    fields.

Look-ups don't load when Issue ID is entered instead of Issue
                    key

The look-up feature only works with the Issue key field.
