# Send Email

# Description

Send a transactional email to an email address.

# Project compatibility

Windows | Cross-platform

# Configuration

* 
* Domain - Select the domain from the drop-down list. This field supports String type input.
* Subject - The subject of the email. This field supports String type input.
* To - The email address of the recipient. This field supports String type input.
* From - The email address of the sender. This field supports String type input.
* Text - Provides the plain text part of the message. This field supports String type input.
* HTML - Provides the HTML part of the message. This field supports String type input.
* Delivery time - Select the desired delivery time of the email. This field supports DateTimeOffset type input.







* Cc - The email address to receive the carbon copy (CC) of this email. This field supports String type input
* Bcc - The email address to receive a blind carbon copy (BCC) of this email. This field supports String type input
* Template - Select the email template from the drop-down list or pass template ID. Will overwrite Text and HTML content. This field supports String type input
* Template variables - Provide the key valu pairs in the format. Ex: var_name1:var_value1;var_name2:var_value2. This field supports String type input
* Tags - Select the tag from the drop-down list or enter the tag ID. This field supports String type input
* Test email - Whether the email is to be sent in test mode or not. This field supports String type input
* Enable DKIM - Whether to enable DKIM digital signature to outgoing messages or not. This field supports Boolean type input.
* Enable tracking - Whether to enable tracking on a per-message basis or not. This field supports Boolean type input.
* Enable click tracking - Whether to enable tracking of clicks on a per-message basis or not. This field supports Boolean type input.
* Enable open tracking - Whether to enable tracking of opens on a per-message basis or not. This field supports Boolean type input.



* Message - Automatically generated output variable.
* Message Id - Automatically generated output variable.
