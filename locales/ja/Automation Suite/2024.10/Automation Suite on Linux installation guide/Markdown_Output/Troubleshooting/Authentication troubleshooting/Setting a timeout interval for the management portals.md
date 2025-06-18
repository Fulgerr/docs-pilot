# Setting a timeout interval for the management portals

Pre-installation, you cannot update the expiration time for the token used to authenticate to the host- and organization-level Management portals. Therefore user sessions do not time out.

To set a time interval for timeout for these portals, you can update the accessTokenLifetime property.

The following example sets the timeout interval to 86,400 seconds (24 hours):

UPDATE [identity].[Clients] SET AccessTokenLifetime = 86400 WHERE ClientName = 'Portal.OpenId'
