# About the SAP BAPI activities

The SAP BAPI connector enables seamless integrations with SAP business objects, enhancing operational efficiency and data synchronization for streamlined business operations.



# Overview

The SAP BAPI activity package uses the SAP Java Connector version 3.0.18 and does not require any additional user installation. The SAP Java Connector official documentation is available on the SAP support website: SAP Java Connector.

The activity package contains only one activity, , and it's dynamic in nature. This means that, based on the selected BAPI, the activity retrieves all the input and output properties for a BAPI to be executed.

RFC is not currently supported.

# How it works

To enable the outbound automation between UiPath and SAP BAPI, the activities establish an authenticated connection using the UiPath Connector for SAP BAPI.

Before you build your first project, complete the steps in the Authentication guide from the connector documentation.
