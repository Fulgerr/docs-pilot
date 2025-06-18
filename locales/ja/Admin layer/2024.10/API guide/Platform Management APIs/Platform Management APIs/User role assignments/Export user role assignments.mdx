# Export user role assignments

Exports a report containing all roles and role assignments associated with any UiPath product.

### Postman collection

To use the Check access export API, download and import the Postman collection in your Postman app.

!['Postman collection' image](/images/postman collection=GUID-77952E8E-80A3-43F1-AB09-868B3D6AC4A4=1=en=Default.png)

When using the Postman collection, you might encounter errors when the response is higher than 50 MB. This setting on Postman can be changed (in both Desktop and Web versions) by navigating to Settings, then selecting General, and then setting the Max response size to zero MB.

!['Max response size' image](/images/max=GUID-629626A2-3011-46F9-8C46-FB640E2D6A72=1=en=Default.png)


### API Endpoint

GET https://cloud.uipath.com/<yourorgname>/pap_/api/userroleassignments/export


### Scopes

Requires all the platform-level scopes.


### Request headers

--header 'Authorization: Bearer {access_token}'\

To obtain the {access_token}, ensure you authenticate through one of the methods described in Authentication methods.


### Query parameters

| Query parameter | Data type | Description |
| --- --- ---| exportoutputtype(required) | string | Specify one of the two available file formats: .json or .csv |
| expandgroupmemberships(required) | string | true - enables expanding AAD group memberships in the response.false or missing - AAD members that are part of local groups are not visible in the report. |


### Responses




### Example request

curl --location -- request GET 'https://cloud.uipath.com/acmeorg/pap_/api/userroleassignments/export?exportoutputtype=json' \
--header 'Authorization: Bearer {your token}

The following response body represents a successful user role and role assignment retrieval:

[
    {
        "Id": "34ecc3f3-a582-4cad-9889-120d7a3ffd62",
        "RoleUniqueName": "DOCUMENTUNDERSTANDING.DU VIEWER",
        "RoleDescription": "Can view all the entities but has not rights to edit or delete them.",
        "SecurityPrincipalId": "cdc34b5b-77d2-4ae1-9744-209d21ce557d",
        "RoleAssignmentType": "BuiltIn",
        "RoleType": "BUILTIN",
        "Scope": "/",
        "OrganizationId": "feb0dd79-85b6-483b-b297-0e49a1aa5b7d",
        "TenantId": null,
        "CreatedBy": "7f36fcc2-b822-430b-ae30-5ecfbacac186",
        "CreatedOn": "2023-03-30T08:30:04.9346766+00:00"
    },
...
]

The following table describes the header fields from the exported file:

FieldDescriptionIdThe unique identifier of the assigned role.OriginalRoleNameThe role name, as displayed in the interface.RoleDescriptionThe role description, as displayed in the interface.RoleAssignmentTypeThe role assignment type when it was created, which can be one of the following two options:Custom, assignment made by the user.Built in, assignment made by the system.RoleTypeThe role type, as defined by the user or the system:Custom (user defined role)Built in (system defined role)ScopeThe scope is a specific level in the organizational hierarchy that serves as a boundary for certain actions, permissions, and objects. A scope can be one of the following hierarchical options:OrganizationTenantServiceFolderSecurityPrincipalIdThe unique identifier for the identity of a user, group, etc.SecurityPrincipalTypeThe identity type of a user, group, or robot.SecurityPrincipalEmailThe email of the user. This field is blank in case the identity is not a user.SecurityPrincipalDisplayNameThe name of the identity. This field is blank in case of directory users.InheritedFromGroupNameThe group name from which the role assignment is inherited.InheritedFromGroupIdGroup identifier from which the role assignment is inherited.TenantNameThe name of the tenant where the assignment is made. This field is blank in case of organization-level assignments.OrganizationNameThe name of the organization where the assignment is made.OrganizationIdThe identifier of the organization where the assignment is made.TenantIdThe identifier of the tenant where the assignment is made. This field is blank in case of organization-level assignments.CreatedByThe unique identifier of the user who creates the assignment.CreatedOnThe timestamp when the role is assigned.

