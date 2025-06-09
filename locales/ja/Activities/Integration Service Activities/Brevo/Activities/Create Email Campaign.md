# Create Email Campaign

# Description

Create an email campaign in Brevo.

# Project Compatibility

Windows|Cross-Platform

# Configuration

Connection - The connection established in Integration Service.
                        Access the drop-down to choose, add or manage connections.Sender email - Select the sender from the drop-down menu.Name - The name of the campaign.Subject - The subject of the campaign.HTML - Pass the custom HTML content for the email. required only if
                        an HTML URL or a Template is not provided.HTML URL - URL to the message (HTML). For example, www.example.com.
                        Required only if HTML or Template is not provided.Template - The active transactional email template. Mandatory if
                        htmlContent and htmlUrl are empty.Scheduled at - Sending UTC date-time (YYYY-MM-DDTHH:mm:ss:SSSZ). It
                        is recommended to pass your timezone in date-time format for an accurate
                        result.Preview text - The preview text or preheader of the email
                        campaign.Lists - Select the list from the drop-down or pass one or more list
                        IDs in comma-separated format. Either Lists or Segments must be
                        provided.

# Manage Properties Wizard

The Manage Properties Wizard can be used to configure or use any of the object’s
                standard or custom fields by selecting and adding them to the activity canvas. The
                added standard/custom fields are available in the Properties panel (in Studio
                Desktop) or under Additional options (in Studio Web).

# Advanced

Options

* Reply to - The email address to which the campaign recipients can reply to.
* Segments - Select the segment from the drop-down or pass one or more segment IDs in comma-separated format. Either lists or segments must be provided.
* Attachment URL - The absolute URL of the attachment to be sent as part of the email. The following extensions are supported: xlsx, xls, ods, docx, docm, doc, csv, pdf, txt, gif, jpg, jpeg, png, tif, tiff, rtf, bmp, cgm, css, shtml, html, htm, zip, xml, ppt, pptx, tar, ez, ics, mobi, msg, pub, and eps.

Output

* Campaign Id - The id. of the created campaign.
