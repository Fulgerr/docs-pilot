# Implementing authentication with credential providers


## Thales Luna credential system

The Thales Luna credential system is a credential type of Hardware Security Modules (HSMs). Instead of providing credentials directly, which could be intercepted, the Robot interacts with Thales Luna to request the necessary credentials for its tasks.Activating this type of login requires a few configuration steps in Orchestrator and on the machine used by the Robot.

In Orchestrator, add a robot account and configure it.On the Unattended setup page of the account-configuring process, provide the specific Windows credentials of the account for which you want to activate the login.For Credential Type*, select Luna Credential System.In the Password field, provide the PIN required to access the HSM.In Orchestrator, create a machine to run the unattended automations. The machine and the HSM should be connected to the same network.


## nShield Key Storage Provider

The nShield Key Storage Provider system is component of Hardware Security Modules (HSMs). It is a secure vault for confidential Robot data, ensuring that sensitive login information remains secure and accessible only by authorized entities.Activating this type of login requires a few configuration steps in Orchestrator and on the machine used by the Robot.

In Orchestrator, add a robot account and configure it.On the Unattended setup page of the account-configuring process, provide the specific Windows credentials of the user for which you want to activate the login.For Credential Type*, select nShield Key Storage Provider.In the Password field, provide the PIN required to access the HSM.In Orchestrator, create a machine to run the unattended automations. The machine and the HSM should be connected to the same network.

