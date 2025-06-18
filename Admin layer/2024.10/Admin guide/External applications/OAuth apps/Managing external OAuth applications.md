# Managing external OAuth applications

As an admin, using the OAuth framework, you can delegate authorization to external applications. Once registered, these applications can make API calls to UiPath applications or resources scoped to the APIs you designate.

### Adding an external application

To register an external application so that it can use OAuth to access your UiPath resources:

Log into the tenant as an Administrator to access the tenant-level Management portal.Select External Applications.Select Add Application in the top right.Fill in the Application Name fieldSelect an option for Application Type.If you select Confidential application, you receive an app secret at the end, so make sure your application can store it securely. If it can't, select Non-confidential application.Under Resources, select Add Scopes.The Edit Resource panel opens on the right, where you can select the resources to which the application should have access.From the Resource drop-down list, select the UiPath API that the application can use.You can only add scope for one resource at a time. If you want to allow access to multiple resources, repeat this process to add scope for each resource.On the User Scope(s) tab, select the check boxes for the logical API permissions that you want to grant, as needed.Granting permissions under user scope means that the external application can access those resources within a user context and a user with the appropriate permissions must be logged in.If this is a confidential application, you can switch to the Application Scope(s) tab to also grant application-level permissions for the selected resource, as needed.With permissions under application scope, the external application has access to application-wide data for the selected scopes without the need for user interaction.Non-confidential applications cannot access application scope.Select Save.The panel closes and the selected resource and scopes are added to the Resources table in the form.If the external application has been registered with user scopes, you must add a Redirect URL where the external application should receive the authorization response.If only application scopes are selected, providing a Redirect URL is optional.Select Add to create the registration.A confirmation message opens. For confidential applications, the confirmation message includes the app secret that the registered external application can use to request authorization. Make sure you save it in a secure location because you cannot view it again.


### Changing the scope for an existing application

Scopes are the permissions of the external application in relation to your UiPath resources.

Go to Admin > Organization > External Applications.Select the Editing icon.Change the scope to which the application has access:Use the icons at the right of a resource row to edit existing scope or to delete the resource. Select Add Scopes to add an additional resource and then select scopes for it.Select Save.


### Generating a new app secret

If you don't know the application secret that was generated for an external application, you cannot recover it. But you can generate a new one.If you generate a new app secret, make sure to share it with the developer who is maintaining the integration with the external application. They must update the authentication mechanism, otherwise the existing integration no longer works.To generate a new app secret:

Go to Admin > Organization > External Applications.Select the Editing icon.Under App Secret, select Generate New.A new app secret is generated and displayed. The app secret remains visible until you select Cancel to close the page.Copy it and make sure you store it in a safe place.


### Providing details to developers

After you register an external application, a developer must also set up the external application so that it properly authenticates, requests authorization from UiPath Identity Server, and then access the allowed UiPath resources.

To be able to perform those tasks, you must share the following information with them:

* the Application Type and Application ID , both of which are visible on the Admin > External Applications page
* the scopes added for each scope type. For some resources, the same name is used under both user and application scopes, so the type is also important.
* if this is a confidential application, the application secret generated when you registered the external application. If you do not have the secret anymore, generate a new one as previously described.

For more details on how to authenticate and authorize external apps as a developer, refer to External Apps in the API guide.

For more details on how to authenticate and authorize external apps as a developer, refer to External Apps in the API guide.

For more details on how to authenticate and authorize external apps as a developer, refer to External Apps in the API guide.

For more details on how to authenticate and authorize external apps as a developer, refer to External Apps in the API guide.

For more details on how to authenticate and authorize external apps as a developer, refer to External Apps in the API guide.

