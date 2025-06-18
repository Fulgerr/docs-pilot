# Remapping the organization IDs

To migrate from standalone Insights to Automation Suite, you must remap of the organization IDs in the following tables:

(
	[Id] [int] NOT NULL,
	[Key] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[OrganizationId] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.Tenants] PRIMARY KEY CLUSTERED 

CREATE TABLE [insightsintegrations].[TenantServiceIntegrations](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NOT NULL,
	[OrganizationId] [uniqueidentifier] NOT NULL,
	[ServiceName] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[LastUpdatetime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_TenantServiceIntegrations] PRIMARY KEY CLUSTERED 
 
 CREATE TABLE [insightspermissions].[GroupRoles](
	[GroupId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[OrganizationId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_GroupRoles] PRIMARY KEY CLUSTERED 
 
 CREATE TABLE [insightspermissions].[Groups](
	[Id] [uniqueidentifier] NOT NULL,
	[OrganizationId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
 
 CREATE TABLE [insightspermissions].[Roles](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[OrganizationId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Resource] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
 
 CREATE TABLE [insightspermissions].[TenantGroups](
	[GroupId] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[TimeProcessed] [datetime2](7) NULL,
	[LastUpdateTime] [datetime2](7) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[OrganizationId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_TenantGroup] PRIMARY KEY CLUSTERED 
 
 CREATE TABLE [insightspermissions].[Tenants](
	[Id] [uniqueidentifier] NOT NULL,
	[OrganizationId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Tenants] PRIMARY KEY CLUSTERED 
 
 CREATE TABLE [insightspermissions].[Users](
	[Id] [uniqueidentifier] NOT NULL,
	[OrganizationId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
 
 CREATE TABLE [insightsprovisioning].[TenantInstances](
	[TenantId] [uniqueidentifier] NOT NULL,
	[OrganizationId] [uniqueidentifier] NOT NULL,
	[ServiceType] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[State] [int] NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[LastUpdatetime] [datetime2](7) NOT NULL,
	[TenantName] [nvarchar](max) NULL,
 CONSTRAINT [PK_TenantInstances] PRIMARY KEY CLUSTERED 
 
 CREATE TABLE [read].[HASHKEYS](
	[hashkey] [bigint] NOT NULL,
	[tenantkey] [nvarchar](128) NOT NULL,
	[tenantname] [nvarchar](256) NULL,
	[organizationid] [nvarchar](128) NULL,
	[status] [int] NULL
)

[dbo].[Tenants]

[insightsintegrations].[TenantServiceIntegrations]

[insightspermissions].[GroupRoles]

[insightspermissions].[Groups]

[insightspermissions].[Roles]

[insightspermissions].[TenantGroups]

[insightspermissions].[Tenants]

[insightspermissions].[Users]

[insightsprovisioning].[TenantInstances]

[read].[HASHKEYS]

This is an example on how to update the tables:--- Script to replace MSI organization ID with AS organization ID.
--- Please update the following DECLARE statements with your corresponding MSI org ID and AS org ID before executing this script.

DECLARE @msi_organization_id nvarchar(500) = upper('687db434-ce5c-4058-bc0b-3ed3fa23882b');
DECLARE @as_organization_id nvarchar(500) = upper('AA259F1A-5828-4608-AF71-27177A7831B8');
DECLARE @msi_resource nvarchar(500) = lower('insights/687db434-ce5c-4058-bc0b-3ed3fa23882b/687db434-ce5c-4058-bc0b-3ed3fa23882b/*');
DECLARE @as_resource nvarchar(500) = lower('insights/aa259f1a-5828-4608-af71-27177a7831b8/687db434-ce5c-4058-bc0b-3ed3fa23882b/*');

SELECT * FROM [dbo].[Tenants];
UPDATE [dbo].[Tenants]
    SET OrganizationId = lower(@as_organization_id)
    WHERE OrganizationId = lower(@msi_organization_id);

SELECT * FROM [insightsintegrations].[TenantServiceIntegrations];
UPDATE [insightsintegrations].[TenantServiceIntegrations]
    SET OrganizationId = @as_organization_id
    WHERE OrganizationId = @msi_organization_id;

ALTER TABLE [insightspermissions].[GroupRoles] NOCHECK CONSTRAINT FK_GroupRoles_Groups_GroupId_OrganizationId;
SELECT * FROM [insightspermissions].[GroupRoles];
UPDATE [insightspermissions].[GroupRoles]
    SET OrganizationId =  @as_organization_id
    WHERE OrganizationId = @msi_organization_id;
ALTER TABLE [insightspermissions].[GroupRoles] CHECK CONSTRAINT FK_GroupRoles_Groups_GroupId_OrganizationId;

ALTER TABLE [insightspermissions].[TenantGroups] NOCHECK CONSTRAINT FK_TenantGroups_Groups_GroupId_OrganizationId;
SELECT * FROM [insightspermissions].[TenantGroups];
UPDATE [insightspermissions].[TenantGroups]
    SET OrganizationId = @as_organization_id
    WHERE OrganizationId = @msi_organization_id;
ALTER TABLE [insightspermissions].[TenantGroups] CHECK CONSTRAINT FK_TenantGroups_Groups_GroupId_OrganizationId;

SELECT * FROM [insightspermissions].[Groups];
UPDATE [insightspermissions].[Groups]
    SET OrganizationId =  @as_organization_id
    WHERE OrganizationId = @msi_organization_id;

SELECT * FROM [insightspermissions].[Roles];
UPDATE [insightspermissions].[Roles]
    SET OrganizationId = @as_organization_id
    WHERE OrganizationId = @msi_organization_id;
UPDATE [insightspermissions].[Roles]
    SET Resource = @as_resource
    WHERE Resource =  @msi_resource;

SELECT * FROM [insightspermissions].[Tenants];
UPDATE [insightspermissions].[Tenants]
    SET OrganizationId =  @as_organization_id
    WHERE OrganizationId = @msi_organization_id;

SELECT * FROM [insightspermissions].[Users];
UPDATE [insightspermissions].[Users]
    SET OrganizationId = @as_organization_id
    WHERE OrganizationId = @msi_organization_id;

SELECT * FROM [insightsprovisioning].[TenantInstances];
UPDATE [insightsprovisioning].[TenantInstances]
    SET OrganizationId =  @as_organization_id
    WHERE OrganizationId = @msi_organization_id;

SELECT * FROM [read].[HASHKEYS];
UPDATE [read].[HASHKEYS]
    SET OrganizationId = lower(@as_organization_id)
    WHERE OrganizationId = @msi_organization_id;
