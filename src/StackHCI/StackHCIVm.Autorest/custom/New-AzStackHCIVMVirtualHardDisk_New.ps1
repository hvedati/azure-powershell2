
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
The operation to create or update a virtual hard disk.
Please note some properties can be set only during virtual hard disk creation.
.Description
The operation to create or update a virtual hard disk.
Please note some properties can be set only during virtual hard disk creation.
.Example
{{ Add code here }}
.Example
{{ Add code here }}

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Models.Api20221215Preview.IVirtualHardDisks
.Link
https://learn.microsoft.com/powershell/module/az.StackHCIVM/new-azStackHCIVMvirtualharddisk
#>
function New-AzStackHCIVMVirtualHardDisk {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Models.Api20221215Preview.IVirtualHardDisks])]
[CmdletBinding(PositionalBinding=$false,SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(Mandatory)]
    [Alias('VirtualHardDiskName')]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Category('Path')]
    [System.String]
    # Name of the virtual hard disk
    ${Name},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Category('Path')]
    [System.String]
    # The name of the resource group.
    # The name is case insensitive.
    ${ResourceGroupName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String]
    # The ID of the target subscription.
    ${SubscriptionId},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Category('Body')]
    [System.String]
    # The geo-location where the resource lives
    ${Location},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Category('Body')]
    [System.Int32]
    # .
    ${BlockSizeBytes},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Category('Body')]
    [System.String]
    # Storage ContainerID of the storage container to be used for VHD
    ${StoragePathId},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Category('Body')]
    [System.String]
    # Storage Container Name to be used for the VHD 
    ${StoragePathName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Category('Body')]
    [System.String]
    # Storage Container resource group. The resource group of thr virtual hard disk will be used if this value is not provided. 
    ${StoragePathResourceGroup},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Category('Body')]
    [System.String]
    # The name of the extended location.
    ${CustomLocationId},

    [Parameter()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Support.DiskFileFormat])]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Support.DiskFileFormat]
    # The format of the actual VHD file [vhd, vhdx]
    ${DiskFileFormat},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Category('Body')]
    [System.Int64]
    # Size of the disk in GB
    ${SizeGb},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Boolean for enabling dynamic sizing on the virtual hard disk
    ${Dynamic},

    [Parameter()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Support.HyperVGeneration])]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Support.HyperVGeneration]
    # The hypervisor generation of the Virtual Machine [V1, V2]
    ${HyperVGeneration},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Category('Body')]
    [System.Int32]
    # .
    ${LogicalSectorBytes},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Category('Body')]
    [System.Int32]
    # .
    ${PhysicalSectorBytes},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Models.Api30.ITrackedResourceTags]))]
    [System.Collections.Hashtable]
    # Resource tags.
    ${Tags},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The credentials, account, tenant, and subscription used for communication with Azure.
    ${DefaultProfile},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command as a job
    ${AsJob},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command asynchronously
    ${NoWait},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

        if (-Not ($Name -match $vhdNameRegex)){
            Write-Error "Invalid Name:  $Name. The name must contain all alphanumeric characters or '-' or '_'. The max length is 80 characters." -ErrorAction Stop
        }

        if ($CustomLocationId -notmatch $customLocationRegex){
             Write-Error "Invalid CustomLocationId: $CustomLocationId" -ErrorAction Stop
        }

        if ($DiskFileFormat){
            if ($DiskFileFormat.ToString().ToLower() -ne "vhd" -and $DiskFileFormat.ToString().ToLower() -ne "vhdx"){
                Write-Error "Invalid disk file format provided. Allowed values are 'vhd' and 'vhdx'. " -ErrorAction Stop
            }
        }

        
        if ($LogicalSectorByte){
            if ($LogicalSectorByte -ne 512 -and $LogicalSectorByte -ne 4096){
                Write-Error "Invalid value for logical sector bytes provided. Allowed values are 512 and 4096. " -ErrorAction Stop
            }
        }

              
        if ($PhysicalSectorByte){
            if ($PhysicalSectorByte -ne 512 -and $PhysicalSectorByte -ne 4096){
                Write-Error "Invalid value for physical sector bytes provided. Allowed values are 512 and 4096'. "  -ErrorAction Stop
            }
        }

        if ($SizeGb){
            if ($SizeGb > 4095){
                Write-Error "Maximum value for $SizeGb is 4095."  -ErrorAction Stop
            }
        }

        if($StoragePathId){
            if (-Not ($StoragePathId -match $storagePathRegex)){
                Write-Error "Invalid resource ID provided for storage path $StoragePathId "
            }
            $PSBoundParameters.Add('ContainerId', $StoragePathId)
            $null = $PSBoundParameters.Remove("StoragePathId")
        } elseif ($StoragePathName){
            if ($StoragePathResourceGroup){
                $ContainerId = "/subscriptions/$SubscriptionId/resourceGroups/$StoragePathResourceGroup/providers/Microsoft.StackHCIVM/storagecontainers/$StoragePathName"
            } else {
                $ContainerId = "/subscriptions/$SubscriptionId/resourceGroups/$ResourceGroupName/providers/Microsoft.StackHCIVM/storagecontainers/$StoragePathName"
            }
            $PSBoundParameters.Add('ContainerId', $StoragePathId)
            $null = $PSBoundParameters.Remove("StoragePathName")
            $null = $PSBoundParameters.Remove("StoragePathReourceGroup")
        }

        return Az.StackHCIVM.internal\New-AzStackHCIVMVirtualHardDisk @PSBoundParameters
    
}

