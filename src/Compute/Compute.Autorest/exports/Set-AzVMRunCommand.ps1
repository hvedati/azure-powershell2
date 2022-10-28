
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
The operation to create or update the run command.
.Description
The operation to create or update the run command.
.Example
Set-AzVMRunCommand -ResourceGroupName $rgname -VMName $vmname -RunCommandName 'firstruncommand' 

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Compute.Models.Api20210701.IVirtualMachineRunCommand
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

PARAMETER <IRunCommandInputParameter[]>: The parameters used by the script.
  Name <String>: The run command parameter name.
  Value <String>: The run command parameter value.

PROTECTEDPARAMETER <IRunCommandInputParameter[]>: The parameters used by the script.
  Name <String>: The run command parameter name.
  Value <String>: The run command parameter value.
.Link
https://learn.microsoft.com/powershell/module/az.compute/set-azvmruncommand
#>
function Set-AzVMRunCommand {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.Compute.Models.Api20210701.IVirtualMachineRunCommand])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Path')]
    [System.String]
    # The name of the resource group.
    ${ResourceGroupName},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Path')]
    [System.String]
    # The name of the virtual machine run command.
    ${RunCommandName},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Path')]
    [System.String]
    # The name of the virtual machine where the run command should be created or updated.
    ${VMName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String]
    # Subscription credentials which uniquely identify Microsoft Azure subscription.
    # The subscription ID forms part of the URI for every service call.
    ${SubscriptionId},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Body')]
    [System.String]
    # Resource location
    ${Location},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Optional.
    # If set to true, provisioning will complete as soon as the script starts and will not wait for script to complete.
    ${AsyncExecution},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Body')]
    [System.String]
    # Specifies the Azure storage blob where script error stream will be uploaded.
    ${ErrorBlobUri},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Body')]
    [System.String]
    # Specifies the Azure storage blob where script output stream will be uploaded.
    ${OutputBlobUri},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Models.Api20210701.IRunCommandInputParameter[]]
    # The parameters used by the script.
    # To construct, see NOTES section for PARAMETER properties and create a hash table.
    ${Parameter},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Models.Api20210701.IRunCommandInputParameter[]]
    # The parameters used by the script.
    # To construct, see NOTES section for PROTECTEDPARAMETER properties and create a hash table.
    ${ProtectedParameter},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Body')]
    [System.String]
    # Specifies the user account password on the VM when executing the run command.
    ${RunAsPassword},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Body')]
    [System.String]
    # Specifies the user account on the VM when executing the run command.
    ${RunAsUser},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Body')]
    [System.String]
    # Specifies a commandId of predefined built-in script.
    ${SourceCommandId},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Body')]
    [System.String]
    # Specifies the script content to be executed on the VM.
    ${SourceScript},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Body')]
    [System.String]
    # Specifies the script download location.
    ${SourceScriptUri},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.Compute.Models.Api20210701.IResourceTags]))]
    [System.Collections.Hashtable]
    # Resource tags
    ${Tag},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Body')]
    [System.Int32]
    # The timeout in seconds to execute the run command.
    ${TimeoutInSecond},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The credentials, account, tenant, and subscription used for communication with Azure.
    ${DefaultProfile},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command as a job
    ${AsJob},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command asynchronously
    ${NoWait},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Runtime')]
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

        if ($null -eq [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PowerShellVersion) {
            [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PowerShellVersion = $Host.Version.ToString()
        }         
        $preTelemetryId = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId
        if ($preTelemetryId -eq '') {
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId =(New-Guid).ToString()
            [Microsoft.Azure.PowerShell.Cmdlets.Compute.module]::Instance.Telemetry.Invoke('Create', $MyInvocation, $parameterSet, $PSCmdlet)
        } else {
            $internalCalledCmdlets = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets
            if ($internalCalledCmdlets -eq '') {
                [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets = $MyInvocation.MyCommand.Name
            } else {
                [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets += ',' + $MyInvocation.MyCommand.Name
            }
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = 'internal'
        }

        $mapping = @{
            UpdateExpanded = 'Az.Compute.private\Set-AzVMRunCommand_UpdateExpanded';
        }
        if (('UpdateExpanded') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('SubscriptionId')) {
            $PSBoundParameters['SubscriptionId'] = (Get-AzContext).Subscription.Id
        }
        $cmdInfo = Get-Command -Name $mapping[$parameterSet]
        [Microsoft.Azure.PowerShell.Cmdlets.Compute.Runtime.MessageAttributeHelper]::ProcessCustomAttributesAtRuntime($cmdInfo, $MyInvocation, $parameterSet, $PSCmdlet)
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }

    finally {
        $backupTelemetryId = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId
        $backupInternalCalledCmdlets = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
    }

}
end {
    try {
        $steppablePipeline.End()

        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = $backupTelemetryId
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets = $backupInternalCalledCmdlets
        if ($preTelemetryId -eq '') {
            [Microsoft.Azure.PowerShell.Cmdlets.Compute.module]::Instance.Telemetry.Invoke('Send', $MyInvocation, $parameterSet, $PSCmdlet)
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        }
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = $preTelemetryId

    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }
} 
}
