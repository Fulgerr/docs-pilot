# Search Payments

# Description

Searches for payments based on given criteria in Stripe.

# Project Compatibility

Windows|Cross-Platform

# Configuration

Connection - The connection established in Integration Service.
                        Access the drop-down to choose, add or manage connections.Limit - A limit on the number of objects to be returned. The limit
                        can range between 1 and 100. By default, the value of this field is 10.Query - Enter the Query to search for payment intents. By default,
                        all payments having amount greater than 0 are returned. To identify the
                        supported querying parameters and query guidelines, refer to
                        https://stripe.com/docs/search#query-fields-for-payment-intents.

# Manage Properties Wizard

The Manage Properties Wizard can be used to configure or use any of the object’s
                standard or custom fields by selecting and adding them to the activity canvas. The
                added standard/custom fields are available in the Properties panel (in Studio
                Desktop) or under Additional options (in Studio Web).

# Advanced

Output

* Search Payment Intent - The search payment intent.
