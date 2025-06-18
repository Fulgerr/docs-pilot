# Certificates

This page describes how certificate management is done in {Delivery option}, a process that is critical for the correct functioning of the platform, and connected robots. Information on how our current Certificate Authority, Let's Encrypt, executes the certificate rotation process is also available on this page.

# Let's Encrypt Certificate Authority (CA)

Let’s Encrypt is a global CA that allows users and organizations to obtain, renew, and manage SSL/TLS certificates that are used by websites to enable secure HTTPS connections.

The validity perios of Let's Encrypt certificates is 90 days.We strongly encourage you to always trust Let's Encrypt certificates, namely Root CAs and Intermediate CAs.If there are any planned rotations to your Root or Intermediate CAs, your access is not affected if you trust the Root and Intermediate CAs.If your certificate expires or is involved in a certificate rotation process, an error occurs indicating that your certificate is invalid. To learn how to fix errors related to certificates, refer to Troubleshooting.We generally recommend trusting the Certificate Authority (CA). However, if your organization's IT policy does not allow trusting the CA, consider installing your certificates at an organization level. This method is particularly helpful when dealing with a large number of machines, as it makes central management of certificates more feasible than setting them up individually. Keep in mind that if you choose this approach, you are responsible for periodically updating the certificates in line with our rotation schedule.

# Resources

To learn more about all the current and relevant historical CAs operated by Let’s Encrypt, refer to Chains of trust.

To learn more about CA features, limitations, and browser compatibility, refer to Certificate authorities.

## Certificate validity

To check your certificate validity, take the following steps:

In a browser window, navigate to {Delivery option} via https://cloud.uipath.com.In a browser window, navigate to {Delivery option} via govcloud.uipath.us.In a browser window, navigate to {Delivery option} via https://yourcompany.dedicated.uipath.com.Select the View site information icon. Select Connection is secure from the dropdown menu.Select Certificate is valid.In the Certificate Viewer, select the Details tab. Then select Export and save the certificate.Open the certificate (.crt file) locally.Select the General tab to check the validity of the certificate.

