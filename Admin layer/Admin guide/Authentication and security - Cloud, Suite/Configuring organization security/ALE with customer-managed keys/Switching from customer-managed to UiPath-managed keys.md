# Switching from customer-managed to UiPath-managed keys

You can always switch between the two encryption types, at your discretion. However, be mindful of the 15-minute propagation duration.

If you want to allow UiPath to manage your data encryption, you can do so by selecting UiPath managed key (Default).

Switching from a customer-managed key to a UiPath-managed key results in deleting your existing Azure Key Vault details and usage information from the organization. If you choose to switch back to the customer-managed key, you need to reenter this information.

This change does not affect already encrypted data, which remains available to you.
