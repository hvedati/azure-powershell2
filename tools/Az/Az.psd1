#
# Module manifest for module 'Az'
#
# Generated by: Microsoft Corporation
#
# Generated on: 1/6/2023
#

@{

# Script module or binary module file associated with this manifest.
# RootModule = ''

# Version number of this module.
ModuleVersion = '9.3.0'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = 'd48d710e-85cb-46a1-990f-22dae76f6b5f'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft Azure PowerShell - Cmdlets to manage resources in Azure. This module is compatible with PowerShell and Windows PowerShell.
For more information about the Az module, please visit the following: https://docs.microsoft.com/powershell/azure/'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.7.2'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# ClrVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @(@{ModuleName = 'Az.Accounts'; ModuleVersion = '2.11.1'; }, 
               @{ModuleName = 'Az.Advisor'; RequiredVersion = '2.0.0'; }, 
               @{ModuleName = 'Az.Aks'; RequiredVersion = '5.2.0'; }, 
               @{ModuleName = 'Az.AnalysisServices'; RequiredVersion = '1.1.4'; }, 
               @{ModuleName = 'Az.ApiManagement'; RequiredVersion = '4.0.2'; }, 
               @{ModuleName = 'Az.AppConfiguration'; RequiredVersion = '1.2.0'; }, 
               @{ModuleName = 'Az.ApplicationInsights'; RequiredVersion = '2.2.1'; }, 
               @{ModuleName = 'Az.Attestation'; RequiredVersion = '2.0.0'; }, 
               @{ModuleName = 'Az.Automation'; RequiredVersion = '1.9.0'; }, 
               @{ModuleName = 'Az.Batch'; RequiredVersion = '3.3.0'; }, 
               @{ModuleName = 'Az.Billing'; RequiredVersion = '2.0.0'; }, 
               @{ModuleName = 'Az.Cdn'; RequiredVersion = '2.1.0'; }, 
               @{ModuleName = 'Az.CloudService'; RequiredVersion = '1.1.0'; }, 
               @{ModuleName = 'Az.CognitiveServices'; RequiredVersion = '1.12.0'; }, 
               @{ModuleName = 'Az.Compute'; RequiredVersion = '5.3.0'; }, 
               @{ModuleName = 'Az.ConfidentialLedger'; RequiredVersion = '1.0.0'; }, 
               @{ModuleName = 'Az.ContainerInstance'; RequiredVersion = '3.1.0'; }, 
               @{ModuleName = 'Az.ContainerRegistry'; RequiredVersion = '3.0.1'; }, 
               @{ModuleName = 'Az.CosmosDB'; RequiredVersion = '1.9.0'; }, 
               @{ModuleName = 'Az.DataBoxEdge'; RequiredVersion = '1.1.0'; }, 
               @{ModuleName = 'Az.Databricks'; RequiredVersion = '1.4.0'; }, 
               @{ModuleName = 'Az.DataFactory'; RequiredVersion = '1.16.11'; }, 
               @{ModuleName = 'Az.DataLakeAnalytics'; RequiredVersion = '1.0.2'; }, 
               @{ModuleName = 'Az.DataLakeStore'; RequiredVersion = '1.3.0'; }, 
               @{ModuleName = 'Az.DataProtection'; RequiredVersion = '1.0.1'; }, 
               @{ModuleName = 'Az.DataShare'; RequiredVersion = '1.0.1'; }, 
               @{ModuleName = 'Az.DesktopVirtualization'; RequiredVersion = '3.1.1'; }, 
               @{ModuleName = 'Az.DeploymentManager'; RequiredVersion = '1.1.0'; }, 
               @{ModuleName = 'Az.DevTestLabs'; RequiredVersion = '1.0.2'; }, 
               @{ModuleName = 'Az.Dns'; RequiredVersion = '1.1.2'; }, 
               @{ModuleName = 'Az.EventGrid'; RequiredVersion = '1.5.0'; }, 
               @{ModuleName = 'Az.EventHub'; RequiredVersion = '3.2.0'; }, 
               @{ModuleName = 'Az.FrontDoor'; RequiredVersion = '1.9.0'; }, 
               @{ModuleName = 'Az.Functions'; RequiredVersion = '4.0.6'; }, 
               @{ModuleName = 'Az.HDInsight'; RequiredVersion = '5.0.1'; }, 
               @{ModuleName = 'Az.HealthcareApis'; RequiredVersion = '2.0.0'; }, 
               @{ModuleName = 'Az.IotHub'; RequiredVersion = '2.7.4'; }, 
               @{ModuleName = 'Az.KeyVault'; RequiredVersion = '4.9.1'; }, 
               @{ModuleName = 'Az.Kusto'; RequiredVersion = '2.1.0'; }, 
               @{ModuleName = 'Az.LogicApp'; RequiredVersion = '1.5.0'; }, 
               @{ModuleName = 'Az.MachineLearning'; RequiredVersion = '1.1.3'; }, 
               @{ModuleName = 'Az.Maintenance'; RequiredVersion = '1.2.1'; }, 
               @{ModuleName = 'Az.ManagedServiceIdentity'; RequiredVersion = '1.1.0'; }, 
               @{ModuleName = 'Az.ManagedServices'; RequiredVersion = '3.0.0'; }, 
               @{ModuleName = 'Az.MarketplaceOrdering'; RequiredVersion = '2.0.0'; }, 
               @{ModuleName = 'Az.Media'; RequiredVersion = '1.1.1'; }, 
               @{ModuleName = 'Az.Migrate'; RequiredVersion = '2.1.0'; }, 
               @{ModuleName = 'Az.Monitor'; RequiredVersion = '4.4.0'; }, 
               @{ModuleName = 'Az.MySql'; RequiredVersion = '1.1.0'; }, 
               @{ModuleName = 'Az.Network'; RequiredVersion = '5.3.0'; }, 
               @{ModuleName = 'Az.NotificationHubs'; RequiredVersion = '1.1.1'; }, 
               @{ModuleName = 'Az.OperationalInsights'; RequiredVersion = '3.2.0'; }, 
               @{ModuleName = 'Az.PolicyInsights'; RequiredVersion = '1.5.1'; }, 
               @{ModuleName = 'Az.PostgreSql'; RequiredVersion = '1.1.0'; }, 
               @{ModuleName = 'Az.PowerBIEmbedded'; RequiredVersion = '1.2.0'; }, 
               @{ModuleName = 'Az.PrivateDns'; RequiredVersion = '1.0.3'; }, 
               @{ModuleName = 'Az.RecoveryServices'; RequiredVersion = '6.1.2'; }, 
               @{ModuleName = 'Az.RedisCache'; RequiredVersion = '1.7.0'; }, 
               @{ModuleName = 'Az.RedisEnterpriseCache'; RequiredVersion = '1.1.0'; }, 
               @{ModuleName = 'Az.Relay'; RequiredVersion = '1.0.3'; }, 
               @{ModuleName = 'Az.ResourceMover'; RequiredVersion = '1.1.0'; }, 
               @{ModuleName = 'Az.Resources'; RequiredVersion = '6.5.1'; }, 
               @{ModuleName = 'Az.Security'; RequiredVersion = '1.3.0'; }, 
               @{ModuleName = 'Az.SecurityInsights'; RequiredVersion = '3.0.1'; }, 
               @{ModuleName = 'Az.ServiceBus'; RequiredVersion = '2.1.0'; }, 
               @{ModuleName = 'Az.ServiceFabric'; RequiredVersion = '3.1.0'; }, 
               @{ModuleName = 'Az.SignalR'; RequiredVersion = '1.5.0'; }, 
               @{ModuleName = 'Az.Sql'; RequiredVersion = '4.2.0'; }, 
               @{ModuleName = 'Az.SqlVirtualMachine'; RequiredVersion = '1.1.0'; }, 
               @{ModuleName = 'Az.StackHCI'; RequiredVersion = '1.4.1'; }, 
               @{ModuleName = 'Az.Storage'; RequiredVersion = '5.3.0'; }, 
               @{ModuleName = 'Az.StorageSync'; RequiredVersion = '1.7.0'; }, 
               @{ModuleName = 'Az.StreamAnalytics'; RequiredVersion = '2.0.0'; }, 
               @{ModuleName = 'Az.Support'; RequiredVersion = '1.0.0'; }, 
               @{ModuleName = 'Az.Synapse'; RequiredVersion = '2.2.0'; }, 
               @{ModuleName = 'Az.TrafficManager'; RequiredVersion = '1.1.0'; }, 
               @{ModuleName = 'Az.Websites'; RequiredVersion = '2.12.1'; })

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @()

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'Azure','ARM','ResourceManager','Linux','AzureAutomationNotSupported'

        # A URL to the license for this module.
        LicenseUri = 'https://aka.ms/azps-license'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/Azure/azure-powershell'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = '9.3.0 - January 2023
Az.Accounts
* Supported Web Account Manager (WAM) as an opt-in interactive login experience. Enable it by ''Update-AzConfig -EnableLoginByWam True''.
* Optimized the mechanism for assembly loading.
* Enabled AzKeyStore with keyring in Linux.
* Fixed a typo in GetAzureRmContextAutosaveSetting.cs changing the cmdlet class name to GetAzureRmContextAutosaveSetting
* Removed survey on error message in ''Resolve-AzError''. [#20398]

Az.Aks
* Added parameter ''-EnableEncryptionAtHost'' for ''New-AzAksCluster'' and ''New-AzAksNodePool''
* Added parameter ''-EnableUltraSSD'' for ''New-AzAksCluster'' and ''New-AzAksNodePool''
* Added parameter ''-NodeKubeletConfig'' for ''New-AzAksCluster'', ''-KubeletConfig'' for ''New-AzAksNodePool''
* Added parameter ''-NodeLinuxOSConfig'' for ''New-AzAksCluster'', ''-LinuxOSConfig'' and ''New-AzAksNodePool''
* Added parameter ''-NodeMaxSurge'' for ''New-AzAksCluster'', ''-MaxSurge'' for ''New-AzAksNodePool'' and ''Update-AzAksNodePool''
* Added parameter ''-PPG'' for ''New-AzAksCluster'' and ''New-AzAksNodePool''
* Added parameter ''-SpotMaxPrice'' for ''New-AzAksNodePool''
* Added parameter ''-EnableFIPS'' for ''New-AzAksCluster'' and ''New-AzAksNodePool''
* Added parameter ''-AutoScalerProfile'' for ''New-AzAksCluster'' and ''Set-AzAksCluster''
* Added parameter ''-GpuInstanceProfile'' for ''New-AzAksCluster'' and ''New-AzAksNodePool''
* Added parameter ''-EnableUptimeSLA'' for ''New-AzAksCluster'' and ''Set-AzAksCluster''
* Added parameter ''-EdgeZone'' for ''New-AzAksCluster''

Az.ApiManagement
* Updated description of ResourceId param ''New-AzApiManagementBackend'' and ''Set-AzApiManagementBackend'' cmdlet [#16868]

Az.ApplicationInsights
* Enabled output object enumerating for ''Get-AzApplicationInsights'' [#20225]

Az.Automation
* Updated Example: Start-AzAutomationRunbook should pass ordered dictionary for parameters [#20408]

Az.Batch
* Added new properties ''CurrentNodeCommunicationMode'' (read only) and ''TargetCommunicationMode'' of type ''NodeCommunicationMode'' to ''PSCloudPool''.
  - Valid values for ''NodeCommunicationMode'': Default, Classic, Simplified
  - When the ''PSCloudPool'' is updated with a new ''TargetCommunicationMode'' value, the Batch service will attempt to update the pool to the new value the next time the pool is resized down to zero compute nodes and back up.
* ''PSPrivateLinkServiceConnectionState''''s ''ActionRequired'' property required has been renamed to ''ActionsRequired''. The old property has been marked as obsolete, and now just returns the new property. This should not impact existing consumers.

Az.Compute
* Removed the image ''Win2008R2SP1'' from the list of available images and documentation. This image is no longer available on the backend so the client tools need to sync to that change.
* Fixed a bug for creating Linux VM''s from SIG/Community Gallery Images
* Added ''ImageReferenceId'' string parameter to the ''New-AzVmssConfig'' cmdlet. This allows gallery image references to be added for the Confidential VM feature.
* Added ''SecurityEncryptionType'' and ''SecureVMDiskEncryptionSet'' string parameters to the ''Set-AzVmssStorageProfile'' cmdlet for the Confidential VM feature.

Az.ContainerRegistry
* Fixed bug in ''Get-AzContainerRegistryTag'' to show correct tags [#20528]

Az.Monitor
* Fixed bug for ''Remove-AzDataCollectionRuleAssociation'' [#20207]
* Added support for test notifications cmdlets
  * ''Test-AzActionGroup''
* Fixed start time parameter description of ''Get-AzActivityLog'' [#20409]

Az.Network
* Added samples for retrieving Private Link IP Configuration using ''New-AzApplicationGatewayPrivateLinkIpConfiguration'' with fix [#20440]
* Added ''DdosProtectionPlan'' property in ''AzPublicIpAddress''
* Updated mapping in ''AzPublicIpAddress'' to always show/create DdosSettings
* Fixed a bug that added Ddos related properties when viewing PublicIpAddress and DdosProtectionPlan objects
* Fixed a Bug for Set-AzIpGroup cmdlet to support the ''-WhatIf'' parameter
* Fixed a Bug for ''Add-AzLoadBalancerFrontendIpConfig'', ''Add-AzLoadBalancerProbeConfig'', ''Add-AzLoadBalancerBackendAddressPoolConfig'', ''Set-AzLoadBalancer'', ''New-AzLoadBalancerRuleConfig'', ''Remove-AzLoadBalancerInboundNatRuleConfig'' cmdlets to support the ''-WhatIf'' parameter. [#20416]
* Fixed a bug for DestinationPortBehavior in ''Get-AzNetworkWatcherConnectionMonitor'', ''New-AzNetworkWatcherConnectionMonitor'' powershell command by adding this properties to get and set the DestinationPortBehavior information. [#15996]

Az.RedisCache
* Added optional parameter ''PreferredDataArchiveAuthMethod'' in ''Export-AzRedisCache''  
* Added optional parameter ''PreferredDataArchiveAuthMethod'' in ''Import-AzRedisCache''  
* Added 4 additional properties for a geo replication link: ''PrimaryHostName'', ''GeoReplicatedPrimaryHostName'', ''ServerRole'', and ''LinkedRedisCacheLocation''in ''Get-AzRedisCacheLink'' and ''New-AzRedisCacheLink'' 

Az.Resources
* Fixed issue introduced in previous fix for ''Set-AzPolicySetDefinition'' InternalServerError when the initiative is too large [#20238], which will remove space in value.
* Fixed ''Get-AzRoleAssignment'' BadRequest when scope is ''/'' [#20323]

Az.SecurityInsights
* Fixed for ''Update-AzSentinelAlertRule'' fails when using ''-TriggerThreshold 0'' [#20417]

Az.Sql
* Added a parameter named ''UseIdentity'' for ''Set-AzSqlServerAudit'', ''Set-AzSqlDatabaseAudit'', ''Set-AzSqlServerMSSupportAudit''
* Added ''IsManagedIdentityInUse'' property to the output of ''Get-AzSqlServerMSSupportAudit''
* Added ''PreferredEnclaveType'' parameter to ''New-AzSqlDatabase'', ''Get-AzSqlDatabase'' and ''Set-AzSqlDatabase'' cmdlet

Az.StackHCI
* Added support for arc extensions which depend on HCI cluster''s IMDS endpoints.

Az.Storage
* Return ListBlobProperties in blob list result
    - ''Get-AzStorageBlob''
* Output AllowedCopyScope in get account result
    - ''Get-AzStorageAccount''

Az.Websites
* Fixed ''Import-AzWebAppKeyVaultCertificate'' to use certificate naming convention same as portal [#19592]
'

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

 } # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

