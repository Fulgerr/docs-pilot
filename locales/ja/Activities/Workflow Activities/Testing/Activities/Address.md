# Address

UiPath.Testing.Activites.TestData.Address

# Description

Generates a valid address. You can generate a random address, or select a city from the available list of countries and cities. Selecting a country from the list enables the city list from your selection.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Windows - Legacy configuration

Designer panel

* <Random Country> - Choose a random country from the dropdown list.
* <Random City> - Choose a random city that is located in the country that you chose earlier.

Properties panel

Common

* DisplayName - The display name of the activity.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* Address - Dictionary (String, String) with the following fields:Country, PostalCode, StreetNumber, StreetName, City, State. Charset: Unicode

# Windows, Cross-platform configuration

* Country - Choose a random country from the dropdown list.
* City - Choose a random city that is located in the country that you chose earlier.
* Address - Dictionary (String, String) with the following fields:Country, PostalCode, StreetNumber, StreetName, City, State. Charset: Unicode
