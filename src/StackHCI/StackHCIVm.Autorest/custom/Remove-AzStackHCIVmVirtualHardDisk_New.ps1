
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The operation to delete a virtual hard disk.
.Description
The operation to delete a virtual hard disk.

.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

.Link
https://learn.microsoft.com/powershell/module/az.stackhci/remove-azstackhcivmvirtualharddisk
#>
function Remove-AzStackHCIVmVirtualHardDisk {
    [OutputType([System.Boolean])]
    [CmdletBinding(PositionalBinding=$false, SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    param(
        [Parameter(ParameterSetName='ByName',Mandatory)]
        [Alias('VirtualHardDiskName')]
        [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Path')]
        [System.String]
        # Name of the virtual hard disk
        ${Name},
    
        [Parameter(ParameterSetName='ByName',Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Path')]
        [System.String]
        # The name of the resource group.
        # The name is case insensitive.
        ${ResourceGroupName},
    
        [Parameter(ParameterSetName='ByName')]
        [Parameter(ParameterSetName='ByResourceId')]
        [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Path')]
        [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
        [System.String]
        # The ID of the target subscription.
        ${SubscriptionId},

        [Parameter(ParameterSetName='ByResourceId',Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Category('Path')]
        [System.String]
        # The ARM Resource ID of the virtual hard disk.
        ${ResourceId},

        [Parameter(HelpMessage='Forces the cmdlet to remove the virtual hard disk without prompting for confirmation.')]
        [System.Management.Automation.SwitchParameter]
        ${Force}

    )
    

    
    process {

        Write-Warning("Running this command will delete the virtual hard disk.")

        if ($PSCmdlet.ParameterSetName -eq "ByResourceId"){
            if ($ResourceId -match $vhdRegex){
        
                $subscriptionId = $($Matches['subscriptionId'])
                $resourceGroupName = $($Matches['resourceGroupName'])
                $resourceName = $($Matches['vhdName'])
                $null = $PSBoundParameters.Remove("ResourceId")
                $PSBoundParameters.Add("Name", $resourceName)
                $PSBoundParameters.Add("ResourceGroupName", $resourceGroupName)
                $null = $PSBoundParameters.Remove("SubscriptionId")
                $PSBoundParameters.Add("SubscriptionId", $subscriptionId)
    
            } else {             
                Write-Error "Resource ID is invalid: $ResourceId" -ErrorAction Stop
            }
        }
        if ($PSCmdlet.ShouldProcess($PSBoundParameters['Name']) -and ($Force -or $PSCmdlet.ShouldContinue("Delete this virtual hard disk?", "Confirm")))
        {
            if ($PSBoundParameters.ContainsKey("Force")) {
                $null = $PSBoundParameters.Remove("Force")
            }

            Az.StackHCIVm.internal\Remove-AzStackHCIVmVirtualHardDisk @PSBoundParameters
        }

    }
    
    

}
    