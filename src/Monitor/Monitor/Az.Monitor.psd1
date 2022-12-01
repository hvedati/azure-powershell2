#
# Module manifest for module 'Az.Monitor'
#
# Generated by: Microsoft Corporation
#
# Generated on: 12/1/2022
#

@{

# Script module or binary module file associated with this manifest.
# RootModule = ''

# Version number of this module.
ModuleVersion = '4.2.1'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = 'bc723b54-a697-44a2-9c48-d5749b138d1a'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft Azure PowerShell - Monitor service cmdlets for Azure Resource Manager in Windows PowerShell and PowerShell Core.

For more information on Monitor, please visit the following: https://docs.microsoft.com/azure/monitoring-and-diagnostics/'

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
RequiredModules = @(@{ModuleName = 'Az.Accounts'; ModuleVersion = '2.10.3'; })

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = 'Microsoft.Azure.Management.Monitor.dll', 
               'Microsoft.Azure.PowerShell.AutoMapper.dll', 
               'ActivityLogAlert.Autorest\bin\Az.ActivityLogAlert.private.dll', 
               'DiagnosticSetting.Autorest\bin\Az.DiagnosticSetting.private.dll', 
               'ScheduledQueryRule.Autorest\bin\Az.ScheduledQueryRule.private.dll', 
               'Autoscale.Autorest\bin\Az.Autoscale.private.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = 'Monitor.format.ps1xml', 
               'ActivityLogAlert.Autorest\Az.ActivityLogAlert.format.ps1xml', 
               'DiagnosticSetting.Autorest\Az.DiagnosticSetting.format.ps1xml', 
               'ScheduledQueryRule.Autorest\Az.ScheduledQueryRule.format.ps1xml', 
               'Autoscale.Autorest\Az.Autoscale.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
NestedModules = @('Microsoft.Azure.PowerShell.Cmdlets.Monitor.dll', 
               'ActivityLogAlert.Autorest\Az.ActivityLogAlert.psm1', 
               'DiagnosticSetting.Autorest\Az.DiagnosticSetting.psm1', 
               'ScheduledQueryRule.Autorest\Az.ScheduledQueryRule.psm1', 
               'Autoscale.Autorest\Az.Autoscale.psm1')

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Get-AzActivityLogAlert', 'New-AzActivityLogAlert', 
               'Remove-AzActivityLogAlert', 'Update-AzActivityLogAlert', 
               'Get-AzDiagnosticSetting', 'Get-AzDiagnosticSettingCategory', 
               'Get-AzEventCategory', 'Get-AzSubscriptionDiagnosticSetting', 
               'New-AzDiagnosticSetting', 'New-AzSubscriptionDiagnosticSetting', 
               'Remove-AzDiagnosticSetting', 
               'Remove-AzSubscriptionDiagnosticSetting', 
               'Get-AzScheduledQueryRule', 'New-AzScheduledQueryRule', 
               'New-AzScheduledQueryRuleConditionObject', 
               'New-AzScheduledQueryRuleDimensionObject', 
               'Remove-AzScheduledQueryRule', 'Update-AzScheduledQueryRule', 
               'New-AzActivityLogAlertActionGroupObject', 
               'New-AzActivityLogAlertAlertRuleAnyOfOrLeafConditionObject', 
               'New-AzActivityLogAlertAlertRuleLeafConditionObject', 
               'New-AzDiagnosticSettingLogSettingsObject', 
               'New-AzDiagnosticSettingMetricSettingsObject', 
               'New-AzDiagnosticSettingSubscriptionLogSettingsObject', 
               'Get-AzAutoscalePredictiveMetric', 'Get-AzAutoscaleSetting', 
               'New-AzAutoscaleNotificationObject', 'New-AzAutoscaleProfileObject', 
               'New-AzAutoscaleScaleRuleMetricDimensionObject', 
               'New-AzAutoscaleScaleRuleObject', 'New-AzAutoscaleSetting', 
               'New-AzAutoscaleWebhookNotificationObject', 
               'Remove-AzAutoscaleSetting', 'Update-AzAutoscaleSetting'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = 'Get-AzMetricDefinition', 'Get-AzMetric', 'Remove-AzLogProfile', 
               'Get-AzLogProfile', 'Add-AzLogProfile', 'Get-AzActivityLog', 
               'Get-AzAutoscaleHistory', 'Add-AzMetricAlertRule', 
               'Add-AzWebtestAlertRule', 'Get-AzAlertHistory', 'Get-AzAlertRule', 
               'New-AzAlertRuleEmail', 'New-AzAlertRuleWebhook', 
               'Remove-AzAlertRule', 'New-AzActionGroupReceiver', 
               'Set-AzActionGroup', 'Get-AzActionGroup', 'Remove-AzActionGroup', 
               'New-AzMetricFilter', 'Add-AzMetricAlertRuleV2', 
               'Get-AzMetricAlertRuleV2', 
               'New-AzMetricAlertRuleV2DimensionSelection', 
               'New-AzMetricAlertRuleV2Criteria', 'Remove-AzMetricAlertRuleV2', 
               'New-AzInsightsPrivateLinkScope', 'Get-AzInsightsPrivateLinkScope', 
               'Update-AzInsightsPrivateLinkScope', 
               'Remove-AzInsightsPrivateLinkScope', 
               'New-AzInsightsPrivateLinkScopedResource', 
               'Get-AzInsightsPrivateLinkScopedResource', 
               'Remove-AzInsightsPrivateLinkScopedResource', 
               'Get-AzDataCollectionRule', 'New-AzDataCollectionRule', 
               'Set-AzDataCollectionRule', 'Update-AzDataCollectionRule', 
               'Remove-AzDataCollectionRule', 
               'Get-AzDataCollectionRuleAssociation', 
               'New-AzDataCollectionRuleAssociation', 
               'Remove-AzDataCollectionRuleAssociation'

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = 'Get-AzLog'

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
        Tags = 'Azure', 'ResourceManager', 'ARM', 'Monitor'

        # A URL to the license for this module.
        LicenseUri = 'https://aka.ms/azps-license'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/Azure/azure-powershell'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = '* Upgraded AutoMapper to Microsoft.Azure.PowerShell.AutoMapper 6.2.2 with fix [#18721]'

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

