# Configuring VPN for cloud robots

You can create a VPN gateway
			for a tenant so that your VM cloud robots or serverless cloud robots can access your on-premises resources that are behind a firewall.

You can create a VPN gateway for a tenant so that your VM cloud robots can access your on-premises resources that are behind a firewall.

## Prerequisites

Installing custom software on your VM, such as VPN clients, may interfere with core services and make the VM unusable. Use the configuration in this chapter instead.

To set up the VPN gateway, you must meet the following requirements:

* Have the knowledge or assistance from your network administrator or someone who has a good understanding of VPN and networking concepts.
* Be an organization administrator in {Delivery option} .
* Have an Orchestrator role that includes the Machines - Edit permission.
* Each tenant for which you want to create a VPN gateway must have at least 5000 robot units allocated to it.
* Information from your network administrator: A list of reserved IP address ranges located in your on-premises network configuration, in CIDR notation. As part of configuration, you need to specify the IP address range prefixes that we will route to your on-premises location.The subnets of your on-premises network must not overlap with the virtual network subnets to which you want to connect.Use compatible VPN devices and have the ability and know-how to configure them, as described in About VPN devices for connections - Azure VPN Gateway. For details on the default connection parameters, read the Default policies for Azure.Your VPN device must use externally-facing, public IPv4 addresses.A pre-shared key (PSK) for each VPN device.The pre-shared key should consist of a maximum 128 printable ASCII characters.Do not use space, hyphen -, or tilde ~ characters.You must enter a single IP range, in CIDR notation, with a mask of /25.


## The VPN gateway workflow schema

Connecting to a VPN gateway allows your ACR-VMs to access the restricted resources on your local network.The flow is as follows:

1. In your local network, set up the IP range (1) for the VPN Gateway. This represents the IP range of your on-prem network.
2. In your local network, provide the IP ranges of the ACR-VM pools (6, 7) to allow their traffic into the network.
3. Set up the IP range of the VPN gateway (4), which represent the underlying resources used to host the VPN Gateway in the cloud. The /25 is the mandatory suffix for the gateway. This tells your local network that the VPN gateway may require up to 128 IP addresses to operate.
4. A public IP is created for the gateway (5), which your local network must target in order to initiate a connection.
5. Your local network connects to the VPN gateway through a site-to-site tunnel (3), and, at this point, the VPN gateway targets the public IP of your local network (2), and your local network targets the public IP of the gateway (5). Your on-premise resources are available in the VPN Gateway and any connected ACR-VM can access them.
6. The ACR-VM pools have separate networks. To connect an ACR-VM pool to the VPN gateway, set up an IP range for that pool (6, 7). It is important that the IP range of the pools you want to configure (6, 7) do not overlap with any other IP ranges in your entire network space (including your local network (1) and any resources used by the UiPath VPN Gateway (4)).


## Step 1. Create the VPN gateway

To create a VPN gateway for a tenant:

In {Delivery option}, go to Admin.If not already enabled, enable the new Admin experience using the toggle from the header.From the Tenants panel on the left side, select the tenant for which you want to create a VPN gateway.The settings page for the selected tenant opens.Select the VPN Gateway tile.Select Create gateway for Tenant. The Create gateway panel opensIn the Name field, type a name for the gateway, as you want it to be displayed in the tenant's VPN Gateway page.In the Address space for VPN gateway vnet field, add the IP addresses you obtained from your network administrator. Use CIDR notation, with a mask of /25. For example, 10.0.0.0/25.This should be an IP address range that your network administrator reserved for this virtual network. Also, it must not overlap with the IP ranges representing the on-premises network or the IP ranges for the VM pool (defined later).Vnet ranges for the gateway or for the VM pool cannot be modified once created.(Optional) If you want to use a DNS for this connection, select Add DNS Address and then:In the DNS Address field, add a DNS address.To add additional DNS addresses, select Add more to add another field and then add the address to that field.You can add DNS addresses later, after the VPN gateway is created, but that requires that you restart all VMs that are connected to the gateway.Select Create at the bottom of the panel to create the VPN gateway connection.If the current tenant does not have at least 5000 robot units allocated to it, you cannot create the gateway.

The panel closes and the VPN gateway status is Provisioning. Deploying the gateway can take up to 45 minutes to complete.When complete, the status Deployed is displayed on the card of the gateway.If the status is Failed, delete the gateway and re-create it by following the previous instructions.


## Step 2. Create cloud robot templates

The VPN gateway must show the Deployed status before you can perform this step.

The Vnet for a cloud robot template is created when each template is created.

Cloud robots - VM: In Orchestrator, create one or more Cloud robot - VM pools, following the instructions in Creating the cloud robot pool. During setup, make sure to select the Connect VPN Gateway option.

For each pool, you can monitor the VPN status from the Machines > Manage Cloud Robot - VM page.

Existing Cloud robot - VM pools cannot connect to the VPN gateway. You must create new ones.Additionally, for pools that were set up to connect to the tenant's VPN gateway, you have the option to edit the pool and switch off the Enable VPN Integration toggle to disconnect the pool. Once disconnected, you cannot reconnect the pool to the VPN gateway.

Cloud robots - serverless: In Orchestrator, edit or createCloud robot - Serverless templates, following the instructions in Automation Cloud™ robots - Serverless. During setup, make sure to configure options on the VPN Setup page.


## Step 3. Creating the site-to-site connection

With the VPN gateway deployed, you can now connect your on-premises networks to it.The gateway card displays the public IP address, which is an essential information for the tunnel connection.To configure the VPN gateway to connect to a VPN device:

In {Delivery option}, go to Admin > Tenant > VPN Gateway.On the tile for the gateway, select Add connection.The Create connection panel opens at the right of the page.Provide values for the following fields:Connection name *Provide a name for your connection.Shared key (PSK) *Write a secret phrase or string. You need to remember this exact key and provide it when you configure the connection on your on-premises device.Public IP for the VPN device *Provide the public IP address of your on-premises VPN device. Important: Do not provide the public IP address of the VPN gateway shown on the card. That address needs to be configured on your on-premises device.Address space for the on-premises device *Specify all private IP address ranges on your on-premises network that need to communicate through this connection. Because the gateway does not support Border Gateway Protocol (BGP), manual configuration is required. If you have specified a DNS server IP address for the gateway, ensure that address falls within one of the private IP address ranges you define here.Optionally, you can define custom configurations for the IPSec/IKE policy. Use this section to ensure compatibility with the specific security settings required by your on-premises VPN device, or to implement advanced security policies tailored to your organization needs. To do this, turn on the Custom IPSec/IKE policy toggle.For IKE Phase 1, provide values for the following fields:Encryption *Provide the matching encryption method for the initial secure key exchange (IKE Phase 1). This must be identical to the UiPath Gateway setting (for example, AES-256, GCMAES).Possible values: GCMAES256, GCMAES128, AES256, AES192, AES128Integrity *Provide the matching data integrity check for the initial IKE Phase 1 communication (for example, SHA-256, SHA-512). This must match the UiPath Gateway.Possible values: SHA384, SHA256, SHA1, MD5DH Group *Provide the matching Diffie-Hellman (DH) group for the secure key exchange in IKE Phase 1 (for example, Group 14, Group 19). This must match the UiPath Gateway.Possible values: DHGroup24, ECP384, ECP256, DHGroup14, DHGroup2048, DHGroup2, DHGroup1, NoneFor IKE Phase 2 (IPSec), provide values for the following fields:IPsec Encryption *Provide the matching encryption method for data traffic within the VPN tunnel (IPSec Phase 2) (for example, AES-256, 3DES). This must match the UiPath Gateway.Possible values: GCMAES256, GCMAES192, GCMAES128, AES256, AES192, AES128, DES3, DES, NoneIPsec Integrity *Provide the matching data integrity check for traffic within the VPN tunnel (IPSec Phase 2) (for example, SHA-256, SHA-512). This must match the UiPath Gateway.Possible values: GCMAES256, GCMAES192, GCMAES128, SHA256, SHA1, MD5PFS Group *Provide the matching Perfect Forward Secrecy (PFS) group for IPSec Phase 2, if enabled on the UiPath Gateway (for example, Group 14, Group 19). If one side uses PFS, the other should match or disable it.Possible values: PFS24, ECP384, ECP256, PFS2048, PFS2, PFS1, NoneIPSec SA lifetime in Kilobytes *Provide the duration for active secure connections (IKE and IPSec). These are local settings; matching is not strictly required, but similar values are recommended for consistency.Possible values: minimum 1,024, default 10,2400,000IPsec SA lifetime in seconds *Provide the duration for active secure connections (IKE and IPSec). These are local settings; matching is not strictly required, but similar values are recommended for consistency.Possible values: minimum 300, default 27,000Select Add connection. Once the configuration is complete, it may take some time for the connection status to update to Connected.

The panel closes and the new connection is displayed on the Connections page. The connection is ready to use when the Connection status column displays Connected.A Connected status means the Pre-Shared Key (PSK), peer Public Internet Protocol (IP) address, and IPSec/IKE Policy parameters are configured correctly, and an encrypted tunnel exists.Serverless and Cloud Robots inherently do not accept incoming network connections. An exception exists for Cloud Robots, which allow Remote Desktop Protocol (RDP) connections only when explicitly enabled.If the connection status is Connection failed, you must delete the connection and create it again.To add more connections, on the Connections page, select Create connection.You can add up to 25 connections.


## Step 4. Setting up VPN devices

Your network administrator can now:

Set up your VPN device from your on-premise network.The PSK must match the one specified for the connection created in step 3.Add the address spaces used to configure the VPN gateway and Vnets for cloud robot templates to the allow list of your network.

For a list of supported VPN devices and for RouteBased configuration instructions, refer to About VPN devices for connections - Azure VPN Gateway in the Microsoft documentation.


## Frequently asked questions




### Data residency

The VPN gateway for a tenant is automatically created in the same region as the region of the tenant and you cannot change the region.

# Switching to a different region

If a VPN gateway already exists and you chose to move your tenant to a different region, you can either:

* continue to use the gateway in the old region or
* delete the existing VPN gateway and create a new one, which is created in the current region of the tenant.


### Data retention

If you disable a tenant that has a VPN gateway, you have a 60-day grace period before you lose access to your VPN device. After 60 days, your VPN gateway is permanently deleted from your tenants.

If you re-enable the tenant within 60 days, your VPN gateway is not deleted and available for use.


### License expiration

If you no longer have the required robot units, you have a 60-day grace period before you lose access to your VPN device. After 60 days, your VPN gateway is permanently deleted from your tenants.

