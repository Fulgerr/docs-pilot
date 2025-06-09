# Managing organization settings

Organization settings are broadly-applicable and impact everyone who the UiPath platform. Settings can impact all tenants, all services, and all users, except where options exist to customize more granularly.

In the standalone model, each organization corresponds directly to a tenant. You can configure organization-specific settings like language and custom logo directly at the tenant level.

## Accessing organization settings

If you are an organization administrator, you can access the Admin space, which includes the organization settings.

To access organization settings

* From the App launcher (top left corner), select Admin. You are then redirected to the organization settings page.
* If you are already browsing the Admin pages, select your organization name at the top of the panel on the left:


## Changing the organization name or URL

Go to Admin, select your organization, and then select Settings. The Settings page for the organization opens.In the Organization Name field, you can edit the name of your organization.You can enter up to 30 characters of any type, but the last character cannot be an underscore _.When you change the organization name, the URL is automatically changed based on the new organization name.In the URL field, you can modify the URL for your organization.Rules:up to 15 lowercase alphabetical or numeric characters start with a letter no spaces or special characters are allowed.When you're finished editing, select Save Changes to apply the new name or URL.When you're finished editing, select Save Changes to apply the new name and URL.


### Changing the URL

Changing the URL for your {Delivery option} organization (also known as your Account Logical Name) greatly impacts the entities that used the previous URL.

* Robots configured at the services level are disconnected. If you change the URL, you need to reconnect your robots , entering the new URL.
* Bookmarks containing the organization URL don't work anymore. You must send the new URL to your users.
* User invites that were sent before the URL change are no longer valid. You must send new invites for the colleagues who haven’t joined yet.
* Mobile Orchestrator users are disconnected. Send them the new URL to connect again.


### After Changing Your Site URL

The URL is also known as your Account Logical Name or organization-specific URL. Changing the URL greatly impacts the entities that were using the previous URL:

* Robots configured at the service level are disconnected. If you change the URL, you need to reconnect your robots, entering the new URL.
* Bookmarks containing the organization URL don't work anymore. You must share the new URL with all your users.
* Mobile Orchestrator users are disconnected. Send them the new URL to connect again.


## Changing localization settings

You can change the language either globally, with the change being propagated to all the users accessing your organization, or at a local level, for yourself only. The default language is English.

In some cases, you might need to refresh the page or log out and then log back in so that all elements on the page are localized.

# Global language settings

You can change the language used for system emails sent by {Delivery option} and other services to your users.

If a service has a different language setting for system emails, that setting takes precedence.

!['Organization settings' image](/images/4af478e-LanguageSettings=GUID-6BD87D5D-AD68-4D2D-BE14-41D18076E15B=1=en=Default.png)

# User language settings

Each user can localize the user interface for themselves by selecting the desired language from the Preferences page. For details, refer to Selecting the user language.

For details about the supported languages across our products, refer to Localization Support.


## Adding your company logo

# Untitled Section

Adding your company logo is only available for Pro, Pro Trial and Enterprise users.

You can display your own company logo in the header:To add your logo

Go to Admin, select your organization, and then select Settings.The Settings page for the organization opens.Under Company Logo, select Upload light theme logo and select the logo image.You can upload an image file with a size of up to 3000 x 3000 pixels. We support formats that allow for transparent pixels, such as PNG. The image is automatically resized proportionally to a maximum width of 151 pixels.If your logo does not look good against a dark background, select Upload dark theme logo to also add an alternative image to use when users select the dark theme.Select Save to add your logo.

The appropriate logo for your current theme appears in the header.


## Finding your support ID

The Support ID is only available if Automation Suite is licensed.

The Support ID uniquely identifies your organization. You must provide this ID if you want to:

* contact sales to request an upgrade to the Enterprise plan.
* contact support (only available for enterprise)
* contact support (only available for enterprise; for other plans, use the UiPath Community Forum ).

The Support ID uniquely identifies your organization. You must provide this ID if you want to contact support.

To view your support ID:

* Select the help icon  in the header. Select the copy icon  to copy your support ID.
* Go to Admin. The support ID is visible in the bottom left corner of the page.
* Go to Admin, select the organization in the left pane, and then Settings. The support ID is visible in the top right corner of the page. Select the copy icon  to copy your support ID.


## Hiding services

The UI Customization feature is only available for Pro, Pro Trial and Enterprise users.It is important to have control over the products and services that are accessible to your users.For some products and services, you can choose to hide the left rail navigation icons from all non-administrator users in your organization. Users can still access the service if they have the direct URL to the service. This change only removes the navigation icon.This menu allows you to also hide certain areas from the homepage.To hide unused services:

Go to Admin, select your organization, and then select Settings.The Settings page for the organization opens.Along the top, select the Advanced tab. The following table describes each service and product's behavior when using UI customization:Product/Service/AreaBehaviorAcademyHides the left navigation icon.AppsHides the left navigation icon and the home page widget.MarketplaceHide the left navigation icon.StudioHides the left navigation icon.Integration ServiceHides the left navigation icon.InsightsHides the left navigation icon.AI CenterHides the left navigation icon.Automation HubHides the left navigation icon.Communications MiningHides the left navigation icon.Process MiningHides the left navigation icon.DownloadsRemoves the link to downloads which is accessible through the help menu in the header and the home page widget.Under UI Customization, select the toggle for the service that you want to hide or show.A confirmation dialog opens.If you are hiding Apps, make sure to provide the direct URL to Apps to your users who need it. They will no longer be able to navigate to the service otherwise.Confirm the change. This does not immediately apply the change.The toggle updates and the selected setting (Shown or Hidden) is displayed next to the toggle.Select Save Changes at the bottom of the page to apply your changes.

Hidden items are no longer visible in navigation for your users, only organization administrators can continue to view them. Shown items are visible in navigation to all users.


## Changing the license management option

User license management allows you to get more out of user licenses because one license can be used across all tenants. When this setting is disabled, user licenses are bound to the tenant to which they are allocated.

For more information about this option, refer to User license management.


## Moving cloud organization data to a different region

To schedule data moves to a new region, contact UiPath Support to request enabling this feature for your cloud organization.


### Before you begin

Before you begin, read the following information:

* Depending on the services used by your tenant, multiple days to perform the move for cloud services may be necessary. The move date(s) are determined based on required version compatibility across regions.
* Changing a tenant's region does not affect the region for your other tenants or for your organization. To schedule a move to a new target region for your organization, follow the Performing a cloud organization data move procedure. For more information, refer to Organization and tenant services data.
* To schedule a move to a new target region for multiple tenants, schedule the moves individually for each tenant.
* While a four-hour window for region change is allocated, the average move downtime lasts less than 30 minutes. However, this interval can vary, depending on the size of the tenant. In rare cases, particularly for very large tenants, the move may take longer than hours.
* During the scheduled downtime window you requested for the region move to be executed in, you are temporarily unable to access your tenant. During this time, any running jobs are paused and automatically resume after the move.
* We recommend notifying your cloud organization members about the scheduled downtime window in advance.
* Your robot execution logs history are only kept for 30 days. You can export the logs, if you want to preserve them. For more details, refer to Robot logs.
* If you currently have any scheduled robot jobs or suspended robot jobs, we recommend temporarily disabling them during the downtime window. This proactive step helps ensure a seamless data migration process.
* If you have processes within any tenants that are integrated with UiPath Apps, you must make some edits and replacements to update references. For details, refer to Replacing a process.
* Insights service can be moved to a new region, but backfilling historical data can only be done within 30 days after moving Orchestrator. If Orchestrator is moved more than 30 days before Insights, Insights is moved without historical data. Therefore, after the transfer, users only have access to limited data.


### Performing a cloud organization data move

To schedule a move for the data of your organization services to a new target region, take the following steps:

Go to your organization Admin.Select Settings and the Advanced tab.Under Region, select Change region.The Change organization region wizard opens.Follow the three steps in the Change organization region wizard to proceed: select the region, select the downtime window, and confirm the details.Select the regionSelect a target region from the Organization target region dropdown.Review the services available to move.Region availability and data move capabilities vary depending on the specific service.If a service you want to move is not available for scheduling, contact UiPath Support.Select Next.Select the downtime windowSelect a preferred time from the Downtime window dropdown that has the least impact on your operations.A downtime window is automatically assigned and will be used if you do not select a preferred window.Select Next.Confirm the detailsReview the details before requesting to move the operational metadata for your organization alongside organization services.Select Schedule.The status for your organization region in Admin, then Settings, and Advanced tab page changes to Region change scheduled.Select Region change scheduled to display the details for your organization move.To check the new organization region, once the service and metadata move is performed, navigate to Admin, then Settings, Advanced, and Region.


### Canceling a cloud organization data move

If you scheduled the move by mistake or need to cancel for any reason before the move of any services starts, take the following steps:

Navigate to Admin, Settings, Advanced.In the Region section, select Region change scheduled.Select Cancel request.Select Confirm.

If you need assistance with canceling your region change, contact UiPath Support.


## Deleting your organization

If you want to delete your organization, you must reach out to our support team and raise a ticket.

If you have duplicate organizations, you are moving from cloud to on-premises, or you just decided that you want to stop using the UiPath platform, as an organization administrator you have the option to explicitly delete the data for an organization.

Local users that were members of the deleted organization are not deleted as part of this operation. Users can continue to use their accounts to log in to the UiPath Forum, Academy, or any other Automation Cloud organizations of which they are members.


### Deleting organizations

If you are an organization admin, you can delete your organization and its data. To do that, take the following steps:

* Community, Free, and Pro Trial organizations To delete an organization for which you have an active Community, Free, or Pro Trial license, you can delete the organization yourself by following the steps in the Community, Free, and Pro Trial organizations procedure, or by filling out the Trust and Security form to submit your deletion request.
* Enterprise organizations To delete an organization for which you have an active enterprise license, you must fill out the Trust and security form to submit your deletion request.

If you are an organization admin, you can delete your organization and its data. To delete an organization, you must fill out the Trust and security form to submit your deletion request.


### Community, Free, and Pro Trial organizations

If you are the organization administrator for an organization that is on the community, free, or pro trial licensing plan, you can delete your organization yourself.We initially perform a soft delete, meaning that the organization, services, and data are no longer accessible to any of your users. For seven days, you can choose to undo the deletion, but we do not guarantee that all data can be restored.After a seven-day grace period, your data is no longer accessible.To delete your organization:

Go to Admin, select your organization, and then select Settings.The Settings page for the organization opens.Along the top, select the Advanced tab.At the bottom of the page, select Delete. The Delete Organization dialog opens.Select the reason why you decided to delete your organization and then select Continue to move to the next step.In the field, type the name of your organization, respecting punctuation and capitalization, and then select Delete.If any tenant operations - such as enabling a tenant - are still in progress, you cannot go through with the deletion. If this happens, allow some time for the operation to conclude and try again later.

The organization is deleted and no longer accessible to any of your users, and you are logged out of the Automation Cloud organization.A confirmation email message is sent to the email address of the organization administrator, containing details on how to undo the deletion within seven days, if needed.

