# UI-based automation profiling data
        collection

# Data privacy

UiPath values data privacy and aims towards protecting all users' right to privacy
                when sharing data while using the UiPath UI Automation functionality.

UiPath ensures the security and privacy of data through a comprehensive approach that
                includes compliance with global data protection regulations like GDPR, ensuring
                legal standards in data handling are met. The platform employs data encryption for
                both data in transit and at rest, safeguarding against unauthorized access.
                Additionally, robust access control mechanisms, such as Role-based Access Control
                (RBAC), restrict system and data access to authorized users only, enhancing data
                security.

The platform also adheres to secure development practices, which minimizes the risk
                of software vulnerabilities. Regular security audits and updates help in keeping the
                platform resilient against emerging threats. Furthermore, strong user authentication
                and authorization processes are in place to prevent unauthorized system access. In
                the event of a security breach, UiPath is equipped with an incident response plan to
                effectively mitigate potential impacts on data security and privacy.

# What data is processed by UiPath when your automation is running?

For the UI Automation activities, the job profiling data collection is performed
                during unattended runs of the automation, initiated from the Orchestrator. This
                includes activity properties runtime values, the execution duration, and application
                screenshots taken during execution. This means that during the execution of
                unattended automations, screenshots of your environment are captured. The capture is
                meant to focus on system processes, actions, and responses.

Example of profiling file

Example of screenshots

# Purposes of processing operations

The primary objective of our data processing is to improve the UI-based automation's
                reliability in the context of your unique user experience. This approach helps us
                better understand your particular needs and the goal is to ultimately enable us to
                build output that matches your expectations in a given context.

# Who is the data shared with?

The data we collect is only for internal use and will only be provided to UiPath
                sub-processors supporting with data processing activities, as necessary. Access to
                this data within the organization is limited to authorized personnel who are part of
                the product development team.

We remind you that you should not use any sensitive data such as personal data or
                confidential data when using our Community services.

Our hosting locations are in the EU and USA.

# What security measures we use to protect the data?

We implement stringent security measures to ensure the data's safety, such as:

* Use of TLS 1.2 encrypted protocol for data transfer.
* Secure storage with access controls. Azure encryption mechanisms for Storage Account and Data Lake Gen2 are leveraged by design. In Azure Storage, data is encrypted and decrypted transparently using 256-bit AES encryption algorithm.
* Periodical data audits to ensure there's no breach or misuse. Storage access is strictly regulated through Role-based Access Control (RBAC) and Privileged Identity Management (PIM). Elevation is only permitted to those individuals who have been granted this right.
