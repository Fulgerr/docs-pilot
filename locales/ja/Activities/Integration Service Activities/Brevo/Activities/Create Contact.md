# Create Contact

# Description

Create a contact in Brevo.

# Project Compatibility

Windows|Cross-Platform

# Configuration

Connection - The connection established in Integration Service.
                        Access the drop-down to choose, add or manage connections.Emails - One or more emails provided in a comma-separated format to
                        add to the list. You can pass a maximum of 150 emails for addition in one
                        request.Lists - Type the name to select the list from the drop-down or pass a
                        custom list ID.

# Manage Properties Wizard

The Manage Properties Wizard can be used to configure or use any of the object’s
                standard or custom fields by selecting and adding them to the activity canvas. The
                added standard/custom fields are available in the Properties panel (in Studio
                Desktop) or under Additional options (in Studio Web).

Custom fields i.e. account specific fields (to capture
                custom data) are supported and can be used/accessed under attributes from the
                Manage Properties Wizard.

# Advanced

Options

* External ID - Pass any external ID to create a contact.
* Email blacklisted - Set this field to blacklist the contact for emails.
* Sms blacklisted - Set this field to blacklist the contact for SMS (smsBlacklisted = true).
* Update enabled - Facilitate to update the existing contact in the same request.
* Black list sender - Transactional email forbidden sender for contact.

Output

* Contact Id - The contact id.
