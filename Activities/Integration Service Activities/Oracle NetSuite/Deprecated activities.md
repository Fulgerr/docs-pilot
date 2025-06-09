# Deprecated activities

The following activities have been deprecated starting with the December 2024 release of
            the Oracle NetSuite activity package. They remain available in previous versions of this
            package.

## Create Basic Company Customer

UiPath.OracleNetSuite.IntegrationService.Activities.CreateBasicCompanyCustomer

# Description

Creates a basic customer of the type Company.

# Project Compatibility

Windows | Cross-platform

# Configuration

Connection - The
                        connection established in Integration Service. Access the dropdown menu to
                        choose, add, or manage connections.Name - The name of the company customer.Subsidiary - Select the subsidiary with which you want the contact to
                        be associated. This field is required only during creation if the Company ID
                        field is not provided.Parent Customer -  Start typing the company name to associate with
                        the customer. This field is required only during creation, if the Subsidiary
                        field is not provided.Email - The email address of the company.Phone - The phone number of the company.Website URL - The website url of the company. For example,
                            http://www.example.com.Currency - The currency you want to bill the customer in.

# Advanced

Options

* Address 1 line 1 - The first address line.
* Address 1 line 2 - The second address line.
* Address 1 state - The state of the address.
* Address 1 city - The city of the address.
* Address 1 zip - The zip code of the address.
* Address 1 country - The country of the address.
* Is address 1 default billing - If set to true, Address 1 is used for billing.
* Is address 1 default shipping - If set to true, Address 1 is used for shipping.
* Address 2 line 1 - The first address line.
* Address 2 line 2 - The second address line.
* Address 2 state - The state of the address.
* Address 2 city - The city of the address.
* Address 2 zip - The zip code of the address.
* Address 2 country - The country of the address.
* Is address 2 default billing - If set to true, Address 1 is used for billing.
* Is address 2 default shipping - If set to true, Address 1 is used for shipping.

Output

* Customer ID - The ID of the customer you have created.


## Update Basic Company Customer

UiPath.OracleNetSuite.IntegrationService.Activities.UpdateBasicCompanyCustomer

# Description

Updates a basic customer of the type Company without addressbook details.

# Project Compatibility

Windows | Cross-platform

# Configuration

Connection - The connection established in Integration Service. Access the dropdown menu to choose, add, or manage connections. This field supports String type input.Customer ID - The unique identifier of the customer.Name - The name of the company customer.Email - The email address of the company.Phone - The phone number of the company.Website URL - The website URL of the company. For example, http://www.example.com.Subsidiary - Select the subsidiary to associate to the customer. This field is required only during creation if the Parent customer field is not provided.Parent customer - Start typing the company name to associate to the customer. This field is requred only during creation if the Subsidiary field is not provided.Currency - The currency the customer is billed in.

# Advanced

Options

* Is customer inactive - Set to true if the company is inactive.


## Create Basic Individual Vendor

UiPath.OracleNetSuite.IntegrationService.Activities.CreateBasicIndividualVendor

# Description

Creates a basic vendor of the type Individual.

# Project Compatibility

Windows | Cross-platform

# Configuration

Connection - The
                        connection established in Integration Service. Access the dropdown menu to
                        choose, add, or manage connections.First Name - The first
                        name of the vendor.Last Name - The last
                        name of the vendor.Subsidiary - Select
                        the subsidiary with which you want the vendor to be associated.Salutation - The title of the person, such as Mr., Mrs., Ms., Dr.,
                        Rev., etc..Middle Name - The
                        middle name of the vendor.Email - The email
                        address of the vendor.Phone - The phone
                        number of the vendor.Currency - The
                        currency you want to bill the vendor in.

# Advanced

Options

* Company name - The name of the vendor's company.
* Address 1 line 1 - The first address line.
* Address 1 line 2 - The second address line.
* Address 1 state - The state of the address.
* Address 1 city - The city of the address.
* Address 1 zip - The zip code of the address.
* Address 1 country - The country of the address.
* Is address 1 default billing - If set to true, Address 1 is used for billing.
* Is address 1 default shipping - If set to true, Address 1 is used for shipping.
* Address 2 line 1 - The first address line.
* Address 2 line 2 - The second address line.
* Address 2 state - The state of the address.
* Address 2 city - The city of the address.
* Address 2 zip - The zip code of the address.
* Address 2 country - The country of the address.
* Is address 2 default billing - If set to true, Address 1 is used for billing.
* Is address 2 default shipping - If set to true, Address 1 is used for shipping.

Output

* Vendor ID - The ID of the vendor you have created.


## Update Basic Individual Vendor

UiPath.OracleNetSuite.IntegrationService.Activities.UpdateBasicIndividualVendor

# Description

Updates a basic individual vendor without address book details.

# Project Compatibility

Windows | Cross-platform

# Configuration

Connection - The
                        connection established in Integration Service. Access the dropdown menu to
                        choose, add, or manage connections.Vendor ID - The unique identifier of the vendor.First Name - The first
                        name of the vendor.Last Name - The last
                        name of the vendor.Salutation - The title
                        of the vendor, such as Mr., Mrs., Ms., Dr., Rev., etc..Middle Name - The
                        middle name of the vendor.Email - The email
                        address of the vendor.Phone - The phone
                        number of the vendor.Subsidiary - Select
                        the subsidiary with which you want the vendor to be associated.Currency - The currency you want to bill the customer in.

# Advanced

Options

* Company Name - The name of the vendor's company.
* Is vendor inactive - Set to true if the vendor is inactive.


## Create Basic Individual Customer

UiPath.OracleNetSuite.IntegrationService.Activities.CreateBasicIndividualCustomer

# Description

Creates a basic customer of the type Individual.

# Project Compatibility

Windows | Cross-platform

# Configuration

Connection - The connection established in Integration Service. Access the dropdown menu to choose, add, or manage connections. This field supports String type input.First Name - The first name of the customer.Last Name - The last name of the customer.Salutation - The title of the person, such as Mr., Mrs., Ms., Dr., Rev., etc..Middle Name - The middle name of the customer.Email - The email address of the customer.Phone - The phone number of the customer.Subsidiary - Select the subsidiary with which you want the customer to be associated. This field is required only during creation if the Parent Customer field is not provided.Parent Customer - Select the company name that is associated to the customer. This field is only required during creation if the Subsidiary field is not provided.Currency - The currency you want to bill the customer in.

# Advanced

Options

* Company name - The name of the company.
* Address 1 line 1 - The first address line.
* Address 1 line 2 - The second address line.
* Address 1 state - The state of the address.
* Address 1 city - The city of the address.
* Address 1 zip - The zip code of the address.
* Address 1 country - The country of the address.
* Is address 1 default billing - If set to true, Address 1 is used for billing.
* Is address 1 default shipping - If set to true, Address 1 is used for shipping.
* Address 2 line 1 - The first address line.
* Address 2 line 2 - The second address line.
* Address 2 state - The state of the address.
* Address 2 city - The city of the address.
* Address 2 zip - The zip code of the address.
* Address 2 country - The country of the address.
* Is address 2 default billing - If set to true, Address 1 is used for billing.
* Is address 2 default shipping - If set to true, Address 1 is used for shipping.

Output

* Customer ID - The ID of the customer you have created.


## Update Basic Individual Customer

UiPath.OracleNetSuite.IntegrationService.Activities.UpdateBasicIndividualCustomer

# Description

Updates a basic individual customer without address book details.

# Project Compatibility

Windows | Cross-platform

# Configuration

Connection - The
                        connection established in Integration Service. Access the dropdown menu to
                        choose, add, or manage connections. Customer ID - The unique identifier of the customer.Salutation - The title
                        of the customer, such as Mr., Mrs., Ms., Dr., Rev., etc..First Name - The first
                        name of the customer.Middle Name - The
                        middle name of the customer.Last Name - The last
                        name of the customer.Email - The email
                        address of the customer.Phone - The phone number of the customer.Currency - The
                        currency you want to bill the customer in.Subsidiary - Select
                        the subsidiary with which you want the contact to be associated. This field
                        is required only during creation if the Company ID field is not
                        provided.Parent Customer - The
                        company name that is associated to the customer. This field is only required
                        during creation if the Subsidiary field is not provided.

# Advanced

Options

* Company name - The name of the company.
* Is customer inactive - Set to true, if the company is inactive.


## Create Basic Company Vendor

UiPath.OracleNetSuite.IntegrationService.Activities.CreateBasicCompanyVendor

# Description

Creates a basic vendor of the type Company.

# Project Compatibility

Windows | Cross-platform

# Configuration

Connection - The connection
            established in Integration Service. Access the dropdown menu to choose, add, or manage
            connections.Name - The name of the company vendor.Subsidiary - Select the subsidiary with which you want the contact to be
            associated. This field is required only during creation if the Company ID field is not
            provided.Email - The email address of the contact.Phone - The phone number of the customer.Website URL - The website url of the vendor. For example,
              http://www.example.com.Currency - The currency you want to bill the customer in.

# Advanced

Options

* Address 1 line 1 - The first address line.
* Address 1 line 2 - The second address line.
* Address 1 state - The state of the address.
* Address 1 city - The city of the address.
* Address 1 zip - The zip code of the address.
* Address 1 country - The country of the address.
* Is address 1 default billing - If set to true, Address 1 is used for billing.
* Is address 1 default shipping - If set to true, Address 1 is used for shipping.
* Address 2 line 1 - The first address line.
* Address 2 line 2 - The second address line.
* Address 2 state - The state of the address.
* Address 2 city - The city of the address.
* Address 2 zip - The zip code of the address.
* Address 2 country - The country of the address.
* Is address 2 default billing - If set to true, Address 1 is used for billing.
* Is address 2 default shipping - If set to true, Address 1 is used for shipping.

Output

* Vendor ID - The ID of the vendor you have created.


## Update Basic Company Vendor

UiPath.OracleNetSuite.IntegrationService.Activities.UpdateBasicCompanyVendor

# Description

Updates a basic company vendor without addressbook details.

# Project Compatibility

Windows | Cross-platform

# Configuration

Connection - The
                        connection established in Integration Service. Access the dropdown menu to
                        choose, add, or manage connections.Vendor ID - The unique
                        identifier of the company vendor.Name - The name of the company vendor.Email - The email
                        address of the company vendor.Phone - The phone
                        number of the company vendor.Subsidiary - Select
                        the subsidiary with which you want the company vendor to be associated.Website URL - The
                        Website URL of the company vendor. For example,
                            https://www.example.com.Currency - The
                        currency of the vendor.

# Advanced

Options

* Is vendor inactive - Set to true if the vendor is inactive.

