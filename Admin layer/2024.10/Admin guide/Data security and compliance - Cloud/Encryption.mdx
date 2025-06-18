# Encryption

# Overview

UiPath enforces encryption in transit and at rest. All communications inbound to the UiPath Platform services and products require at least TLS 1.2. Additionally, all data at rest is encrypted using Transparent Data Encryption (TDE), which leverages AES 256-bit encryption.

Beyond TDE, we also employ Application Level Encryption (ALE) for certain services. Some services automatically incorporate ALE - we refer to this as "Implicit ALE". For other services, the use of ALE is optional and can be chosen by you - we refer to this as "Optional (Opt in) ALE", some services do not currently support ALE.

# Application-Level Encryption (ALE)

For services with ALE, either implicit or opted in for, you have the ability to choose who handles the encryption key. It could be managed by either UiPath or yourself.

UiPath-managed key:This option allows UiPath to create, store, and protect the keys used for encrypting your data.This is the default option, and it is automatically enabled in the Encryption tab of your Admin section.Customer-managed key:This option grants you full control and responsibility over the creation, storage, and protection of the encryption keys used for safeguarding your data. Unlike the UiPath-managed key, where UiPath manages these tasks by default, with a customer-managed key (CMK), you directly handle these aspects in your own secure environment.Useful resources:Overview of CMKs: Understand and use Customer Managed Keys.Switching from customer-managed to UiPath-managed keys: Your guide for migrating from UiPath Key to CMK.Enabling a firewall for the customer-managed key: Learn to set up a firewall for CMKs.

# Infrastructure-level encryption

In {Delivery option}, encryption at rest is enabled by default for data stores such as SQL and Azure storage (Blob, disks, and files). Currently, UiPath manages the TDE protector as the default setting.

* UiPath-managed key:UiPath creates, stores, and protects the keys used for encrypting your data.This is the default option, and it is automatically enabled.

Customer-managed key is currently not available. Stay tuned for upcoming updates.

# Key rotation and management

By default, key auto-rotation is enabled and occurs every 18 months. This operation only decrypts and re-encrypts the database encryption key.

The system auto-updates the TDE protector with the latest key version found in Azure's key vault within 24 hours. The auto-updating feature, combined with the regular, automatic protector rotation, provides an end-to-end zero-touch rotation system for the TDE protector.

## Encryption per service

The specifics of the encryption for each service or resource can be found in the following table.

For more information about ALE with Customer-Managed Keys, and guidance on how to set it up, visit ALE with CMK.


| Product | Resource | Encrypted resource fields | Encryption applied |
| --- --- --- ---| Action Center(Actions and Processes) | Tasks | Data | Connection protocol: TLS 1.2TDE: AES 256ALE: Optional - as opted in when creating the parent entity (i.e. the task catalog) |
| AI Center™ | Dataset, data labeling sessions, pipeline data, and artifacts | Database and storage | Connection protocol: TLS 1.2TDE: AES 256ALE: Optional1 - as opted in by the user |
| {Delivery option} | External applications | Customer access data | Connection protocol: TLS 1.2TDE: AES 256ALE: Implicit |
| {Delivery option} | Directory connections | Customer access data | Connection protocol: TLS 1.2TDE: AES 256ALE: Implicit |
| {Delivery option} | External identity providers | Customer access data | Connection protocol: TLS 1.2TDE: AES 256ALE: Implicit |
| Automation Hub | Customer idea data | Database and storage | Connection protocol: TLS 1.2TDE: AES 256ALE: Not available |
| Automation Ops | API access keysAccess Tokens | Database and storage | Connection protocol: TLS 1.2TDE: AES 256ALE: Not available |
| Communications Mining | All datasets | Database and storage | Connection protocol: TLS 1.2TDE: AES 256ALE: Not available |
| Document Understanding | Document Manager sessions, document storageFormsAI sessions are not available on CMK-enabled accounts. | Database and storage | Connection protocol: TLS 1.2TDE: AES 256ALE: Optional1 - as opted in by the user |
| Insights | Dataset, reporting | Database and storage | Connection protocol: TLS 1.2TDE: AES 256ALE: Not available. Data that is ALE encrypted at its origin arrives encrypted in Insights. |
| Integration Service | Event data | Database and storage | Connection protocol: TLS 1.2TDE: AES 256ALE: Not available |
| Marketplace |  | Database and storage | Connection protocol: TLS 1.2TDE: AES 256ALE: Not available |
| Orchestrator | Queue Items | Specific DataOutput | Connection protocol: TLS 1.2TDE: AES 256ALE: Optional - as opted in when creating the parent entity (i.e. the queue) |
| Orchestrator | Asset Values | Value | Connection protocol: TLS 1.2TDE: AES 256ALE: Implicit |
| Orchestrator | Credential Stores | Orchestrator credential stores content | Connection protocol: TLS 1.2TDE: AES 256ALE: Implicit |
| Orchestrator | Credential Stores | Non-Orchestrator credential stores access data | Connection protocol: TLS 1.2TDE: AES 256ALE: Implicit |
| Orchestrator | Storage Buckets | Non-Orchestrator storage buckets access data | Connection protocol: TLS 1.2TDE: AES 256ALE: Implicit |
| Process Mining |  | Database and storage | Connection protocol: TLS 1.2TDE: AES 256ALE: Not available |
| Task Mining | Recorded data (includes PII masking) | Database and storage | Connection protocol: TLS 1.2TDE: AES 256ALE: Optional1 - as opted in by the user |
| Test Manager | Credentials for third party integrationCredentials                                 for integrations announced to be deprecated are not                                 encrypted. | Configuration | Connection protocol: TLS 1.2TDE: AES 256ALE: Implicit |
| Test Manager | Attachments | Database and storage | Connection protocol: TLS 1.2TDE: AES 256ALE: Implicit |

1 - The customer or their account teams must submit a ticket to enable ALE. The UiPath engineering team manages these requests, so please allow a few days for processing. Once we've enabled ALE, you can configure in the Admin section whether or not to use CMK.

