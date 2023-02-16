
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Code generated by Microsoft (R) AutoRest Code Generator.Changes may cause incorrect behavior and will be lost if the code
# is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Creates or updates a new Alias(Disaster Recovery configuration)
.Description
Creates or updates a new Alias(Disaster Recovery configuration)
.Example
New-AzServiceBusGeoDRConfiguration -Name myAlias -ResourceGroupName myResourceGroup -NamespaceName myPrimaryNamespace -PartnerNamespace "/subscriptions/0000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ServiceBus/namespaces/mySecondaryNamespace"

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Models.Api20221001Preview.IArmDisasterRecovery
.Inputs
Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Models.IServiceBusIdentity
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Models.Api20221001Preview.IArmDisasterRecovery
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IServiceBusIdentity>: Identity Parameter
  [Alias <String>]: The Disaster Recovery configuration name
  [AuthorizationRuleName <String>]: The authorization rule name.
  [ConfigName <MigrationConfigurationName?>]: The configuration name. Should always be "$default".
  [Id <String>]: Resource identity path
  [NamespaceName <String>]: The namespace name
  [PrivateEndpointConnectionName <String>]: The PrivateEndpointConnection name
  [QueueName <String>]: The queue name.
  [ResourceGroupName <String>]: Name of the Resource group within the Azure subscription.
  [RuleName <String>]: The rule name.
  [SubscriptionId <String>]: Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  [SubscriptionName <String>]: The subscription name.
  [TopicName <String>]: The topic name.

PARAMETER <IArmDisasterRecovery>: Single item in List or Get Alias(Disaster Recovery configuration) operation
  [AlternateName <String>]: Primary/Secondary eventhub namespace name, which is part of GEO DR pairing
  [PartnerNamespace <String>]: ARM Id of the Primary/Secondary eventhub namespace name, which is part of GEO DR pairing
  [SystemDataCreatedAt <DateTime?>]: The timestamp of resource creation (UTC).
  [SystemDataCreatedBy <String>]: The identity that created the resource.
  [SystemDataCreatedByType <CreatedByType?>]: The type of identity that created the resource.
  [SystemDataLastModifiedAt <DateTime?>]: The type of identity that last modified the resource.
  [SystemDataLastModifiedBy <String>]: The identity that last modified the resource.
  [SystemDataLastModifiedByType <CreatedByType?>]: The type of identity that last modified the resource.
.Link
https://learn.microsoft.com/powershell/module/az.servicebus/new-azservicebusgeodrconfiguration
#>
function New-AzServiceBusGeoDRConfiguration {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Models.Api20221001Preview.IArmDisasterRecovery])]
[CmdletBinding(DefaultParameterSetName='CreateViaIdentity', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Models.IServiceBusIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Models.Api20221001Preview.IArmDisasterRecovery]
    # Single item in List or Get Alias(Disaster Recovery configuration) operation
    # To construct, see NOTES section for PARAMETER properties and create a hash table.
    ${Parameter},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The credentials, account, tenant, and subscription used for communication with Azure.
    ${DefaultProfile},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName

        $mapping = @{
            CreateViaIdentity = 'Az.ServiceBus.private\New-AzServiceBusGeoDRConfiguration_CreateViaIdentity';
        }

        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {

        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {

        throw
    }

}
end {
    try {
        $steppablePipeline.End()

    } catch {

        throw
    }
} 
}
