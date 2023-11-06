
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
Gets a virtual hard disk 
.Description
Gets a virtual hard disk 

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Models.Api20230901Preview.IVirtualHardDisks
.Link
https://learn.microsoft.com/powershell/module/az.stackhci/get-azstackhcivmvirtualharddisk
#>
function Get-AzStackHCIVmVirtualHardDisk_ByResourceId {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Models.Api20230901Preview.IVirtualHardDisks])]
[CmdletBinding( PositionalBinding=$false)]

param(
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Path')]
    [System.String]
    # The ARM ID of the virtual hard disk.
    ${ResourceId}

)
  process {

       if ($ResourceId -match $vhdRegex){
            
            $subscriptionId = $($Matchqes['subscriptionId'])
            $resourceGroupName = $($Matches['resourceGroupName'])
            $resourceName = $($Matches['vhdName'])
            $null = $PSBoundParameters.Remove("ResourceId")
            $PSBoundParameters.Add("Name", $resourceName)
            $PSBoundParameters.Add("ResourceGroupName", $resourceGroupName)
            $null = $PSBoundParameters.Remove("SubscriptionId")
            $PSBoundParameters.Add("SubscriptionId", $subscriptionId)
      
            return  Az.StackHCIVm\Get-AzStackHCIVmVirtualHardDisk @PSBoundParameters

        } else {             
            Write-Error "Resource ID is invalid: $ResourceId"
        }

    } 
}