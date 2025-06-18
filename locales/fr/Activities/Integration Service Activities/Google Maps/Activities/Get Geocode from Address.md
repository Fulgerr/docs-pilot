# Get Geocode from Address

# Description

Retrieve latitude and longitude for a given address.

# Project Compatibility

Windows|Cross-Platform

# Configuration

Connection - The
                        connection established in Integration Service. Access the drop-down to
                        choose, add or manage connections.Address - The street
                        address or plus code that you want to retrieve the geocode for.

# Manage Properties Wizard

The Manage Properties Wizard can be used to configure or use any of the object’s
                standard or custom fields by selecting and adding them to the activity canvas. The
                added standard/custom fields are available in the Properties panel (in Studio
                Desktop) or under Additional options (in Studio Web).

# Advanced

Options

* Component address administrative area - State or subdivision within a country that can be used to influence results, but is not enforced.
* Component address country - Restrict results for an address within a country.
* Component address locality - Locality can be a city and can be used to influence results, but will not be enforced.
* Component address Postal Code - Additional filter to return results that match the postal code you supply.

Output

* Geocode - The returned geocode.
* Formatted address - The formatted address.
* Latitude - The geometry location latitude.
* Location Type - The geometry location type.
* Longitude - The geometry location longitude.
* Partial Match - The partial match.
* Place ID - The place ID.
* Plus code - The global plus code.
