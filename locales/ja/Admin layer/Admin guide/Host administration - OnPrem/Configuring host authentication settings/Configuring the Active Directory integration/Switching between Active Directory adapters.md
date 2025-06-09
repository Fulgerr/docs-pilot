# Switching between Active Directory adapters

UiPath Identity Server provides support for two Active Directory adapters: ad and ldapad.

* ad adapter: Legacy adapter that works only in standalone deployments. The ad adapter only operates on Windows and it supports external trust domains and NTLM, offering support for non-domain joined clients to authenticate.
* ldapad adapter: Adapter introduced in 2021.10. The ldapad adapter works in both standalone and Automation Suite deployments and it does not support external trust domains and NTLM for non-domain joined clients to authenticate.

The following table describes the two Active Directory adapters for each deployment model:

Deploymentad adapterldapad adapterStandaloneSupportedSupports external trust domains and NTLM - support for non-domain joined clients to authenticate.SupportedAutomation SuiteNot supportedSupported

All deployments prior to 2021.10 with Active Directory integration enabled keep the ad adapter after upgrade. All other deployments get, by default, the ldapad adapter when Active Directory integration is enabled.

# Checking the Active Directory adapter type

To determine the adapter type, a SQL query can be executed which checks the type of the adapter in the

[identity].[DirectoryConnections]

table.

SELECT dc.* from [identity].[DirectoryConnections] dc
JOIN [identity].[Partitions] p ON p.[Id]=dc.[PartitionId]
WHERE p.[GlobalId]='FEB0DD79-85B6-483B-B297-0E49A1AA5B7D' AND dc.[IsDeleted]=0

If

[Type]=ad

, then the

ad

adapter is in use. If

[Type]='ldapad'

, then the

ldapad

adapter is in use.

# Switching from ldapad to ad

This is supported only in standalone deployments.

To switch from ldapad to ad, take the following steps:

1. Check that ldapad adapter is enabled by making sure the following query returns one row:SELECT dc.* from [identity].[DirectoryConnections] dc JOIN [identity].[Partitions] p ON p.[Id]=dc.[PartitionId] WHERE p.[GlobalId]='FEB0DD79-85B6-483B-B297-0E49A1AA5B7D' AND dc.[Type]='ldapad' AND dc.[IsDeleted]=0
2. Connect to the Orchestrator/Identity database and run the following script, making sure to replace FQDN-OF-DOMAIN with the fully qualified name of the default/main domain. With Active Directory integration enabled in the UiPath host portal, the following SQL script updates the DirectoryId of Active Directory users and groups, soft-deletes ldapad directory connections, and creates ad directory connections. -- convert users IF OBJECT_ID('tempdb..#tmp_ldap_users') IS NOT NULL DROP TABLE #tmp_ldap_users SELECT [Id], [MasterPartitionId], CONCAT('ad', SUBSTRING([DirectoryId], 7, 256)) AS [DirectoryId] INTO #tmp_ldap_users FROM [identity].[AspNetUsers] WHERE [DirectoryId] LIKE 'ldapad|%' AND [IsDeleted]=0 --SELECT * FROM #tmp_ldap_users DELETE tmp FROM #tmp_ldap_users tmp JOIN [identity].[AspNetUsers] u ON u.[MasterPartitionId]=tmp.[MasterPartitionId] AND u.[DirectoryId]=tmp.[DirectoryId] --SELECT * FROM #tmp_ldap_users UPDATE u SET u.[DirectoryId]=tmp.[DirectoryId] FROM [identity].[AspNetUsers] u JOIN #tmp_ldap_users tmp on tmp.[Id]=u.[Id] -- create 'ad' directory connection DECLARE @HostPartitionId int -- host partition id SELECT @HostPartitionId = [Id] FROM [identity].[Partitions] WHERE [GlobalId]='FEB0DD79-85B6-483B-B297-0E49A1AA5B7D' UPDATE [identity].[DirectoryConnections] SET [IsDeleted]=1, [DeletionTime]=GETUTCDATE() WHERE [PartitionId]=@HostPartitionId AND [Type]='ldapad' and [IsDeleted]=0 SELECT * FROM [identity].[DirectoryConnections] WHERE [PartitionId]=@HostPartitionId AND [Type]='ad' and [IsDeleted]=0 IF @@ROWCOUNT=0 INSERT INTO [identity].[DirectoryConnections] ([PartitionId], [Type], [CreationTime], [Configuration], [IsDeleted]) VALUES (@HostPartitionId, 'ad', GETUTCDATE(), '{ "Domain": "<FQDN-OF-DOMAIN>" }', 0) SELECT * FROM [identity].[DirectoryConnections] WHERE [PartitionId]=@HostPartitionId AND [IsDeleted]=0
3. Restart the Identity application pool by running iisreset from an elevated prompt.

# Switching from ad to ldapad

1. Check that ad adapter is enabled by making sure the following query returns one row:SELECT dc.* from [identity].[DirectoryConnections] dc JOIN [identity].[Partitions] p ON p.[Id]=dc.[PartitionId] WHERE p.[GlobalId]='FEB0DD79-85B6-483B-B297-0E49A1AA5B7D' AND dc.[Type]='ad' AND dc.[IsDeleted]=0
2. Disable Active Directory integration in the host portal.
3. Reactivate Active Directory integration in host portal.
