
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
New-AzStackHCIVmVirtualHardDisk -Name "sampleVirtualHardDisk-1396" -Dynamic -SizeGb "2" -ResourceGroupName "test-rg" -CustomLocationId "/subscriptions/{subscriptionID}/resourceGroups/{resourceGroupName}/providers/Microsoft.ExtendedLocation/customLocations/{customLocationName}" -Location "eastus" 


.Outputs
Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Models.Api20230901Preview.IVirtualHardDisks
.Link
https://learn.microsoft.com/powershell/module/az.stackhci/new-azstackhcivmvirtualharddisk
#>
function New-AzStackHCIVmVirtualHardDisk {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Models.Api20230901Preview.IVirtualHardDisks])]
[CmdletBinding(PositionalBinding=$false,SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(Mandatory)]
    [Alias('VirtualHardDiskName')]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Path')]
    [System.String]
    # Name of the virtual hard disk. 
    # Must contain all alphanumeric characters or ‘-’ or ‘_’. Max length is 80 characters, and min length is 1 character.  
    ${Name},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Path')]
    [System.String]
    # The name of the resource group.
    # The name is case insensitive.
    ${ResourceGroupName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String]
    # The ID of the target subscription.
    ${SubscriptionId},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
    [System.String]
    # The geo-location where the resource lives
    ${Location},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
    [System.Int32]
    # The block size, in bytes, of the virtual hard disk.  
    ${BlockSizeByte},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
    [System.String]
    # Storage ContainerID of the storage container to be used for VHD
    ${StoragePathId},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
    [System.String]
    # Storage Container Name to be used for the VHD 
    ${StoragePathName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
    [System.String]
    # Storage Container resource group. The resource group of the virtual hard disk will be used if this value is not provided. 
    ${StoragePathResourceGroup},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
    [System.String]
    # The ARM Id of the extended location to create virtual hard disk resource in.
    ${CustomLocationId},

    [Parameter()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Support.DiskFileFormat])]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Support.DiskFileFormat]
    # The format of the actual VHD file [vhd, vhdx]
    ${DiskFileFormat},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
    [System.Int64]
    # Size of the disk in GB
    ${SizeGb},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Boolean for enabling dynamic sizing on the virtual hard disk
    ${Dynamic},

    [Parameter()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Support.HyperVGeneration])]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Support.HyperVGeneration]
    # The hypervisor generation of the Virtual Machine [V1, V2]
    ${HyperVGeneration},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
    [System.Int32]
    # Logical Sector Bytes of the Disk
    ${LogicalSectorByte},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
    [System.Int32]
    # Physical Sector Bytes of the Disk
    ${PhysicalSectorByte},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Models.Api30.ITrackedResourceTags]))]
    [System.Collections.Hashtable]
    # Resource tags.
    ${Tag}
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
            if ($SizeGb -gt 4095){
                Write-Error "Maximum value for $SizeGb is 4095."  -ErrorAction Stop
            }
        }

        if($StoragePathId){
            if (-Not ($StoragePathId -match $storagePathRegex)){
                Write-Error "Invalid resource ID provided for storage path $StoragePathId " -ErrorAction Stop
            }
        } elseif ($StoragePathName){
            if ($StoragePathResourceGroup){
                $StoragePathId = "/subscriptions/$SubscriptionId/resourceGroups/$StoragePathResourceGroup/providers/Microsoft.AzureStackHCI/storagecontainers/$StoragePathName"
            } else {
                $StoragePathId= "/subscriptions/$SubscriptionId/resourceGroups/$ResourceGroupName/providers/Microsoft.AzureStackHCI/storagecontainers/$StoragePathName"
            }
            $PSBoundParameters.Add('StoragePathId', $StoragePathId)
            $null = $PSBoundParameters.Remove("StoragePathName")
            $null = $PSBoundParameters.Remove("StoragePathResourceGroup")
        }

        return Az.StackHCIVm.internal\New-AzStackHCIVmVirtualHardDisk @PSBoundParameters
    
}

