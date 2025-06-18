# Custom Mapping

ADFS, Google, and Okta all use your email address as a SAML attribute. This section handles custom SAML mapping based on either your username or an external provider key.

Please be aware that configuring custom mapping attributes impacts the entire system, meaning they apply to all existing identity providers. As a result, no other provider (Azure, Windows) can work while a new mapping is set into place.

The following parameters need to be configured in this regard in Identity Server's SAML2 settings within the External Providers page (refer to Host Identity Management hub to learn how to access Identity Server):

* External user mapping strategy - Defines the mapping strategy. The following options are available: By user email - Your email address is set as the attribute. This is the default value. By username - Your username is set as the attribute. By external provider key - An external provider key is set as the attribute.
* External user identifier claim name - Defines the claim to be used as an identifier for the mapping. This is only required if you set your username as the attribute.
