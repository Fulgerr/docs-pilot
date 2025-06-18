# Troubleshooting

This page explains how to fix issues you might encounter when using the ServiceNow activity
            package.

# Permissions issues

Problem

You want to use a Insert Record, Update Record, or Get Record activity. When selecting
                an object, the property list is blank.

Solution

The following table lists the API calls the activity package makes:

BehaviorAPI URLdropdown items/api/now/table/sys_db_object?&sysparm_action=getRecords&sysparm_fields=sys_name,super_class,label,sys_id,nameget all columns in incident table/api/now/table/sys_dictionary?sysparm_fields=internal_type,element,column_label,mandatory&sysparm_query=name%3Dincident%5EORname%3Dtaskgets sample value of one incident/api/now/table/incident?sysparm_action=getRecords&sysparm_limit=1

The first two permissions are required only for RPA developers working with the design-time experience. The accounts used by robots to run the process do not need them.

Detailed explanation

As an example,
                    /api/now/table/incident?sysparm_action=getRecords&sysparm_limit=1 is
                the API we call for the incident table. You need to check with your
                ServiceNow system administrator that you have the correct permission/access to
                retrieve data from the table.

Your ServiceNow administrator should also be able to check the underlying/more granular
                permissions.

As for configuring roles, this can vary, i.e. ServiceNow administrators may opt to adjust the
                default role settings. For example, if you want to read meta data on the
                    incident table you need access to both the
                    sys_db_object and the incident table.

Each table contains Access Controls and each access control contains Roles. These roles need to be configured for the user to read from both the tables.

# Active Directory users

Problem

You are unsure if you can use an Activity Directory user with the ServiceNow activities and your
                ServiceNow tenant.

Solution

UiPath has validated that this works correctly. To verify this we followed the below steps:

1. Create an Azure AD user and validate the ability to sign in with SSO:
2. Give this user an admin role (for now):
3. Through an incognito window, log in as the Azure AD user and set up a Client ID and Client Secret for OAuth 2.0:
4. When we use this Client ID and Client Secret, authentication passed:
