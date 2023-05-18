
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
The operation to create or update a virtual machine.
Please note some properties can be set only during virtual machine creation.
.Description
The operation to create or update a virtual machine.
Please note some properties can be set only during virtual machine creation.
.Example
{{ Add code here }}
.Example
{{ Add code here }}

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Models.Api20221215Preview.IVirtualMachines
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

LINUXCONFIGURATIONSSHPUBLICKEY <IVirtualMachinePropertiesOSProfileLinuxConfigurationSshPublicKeysItem[]>: PublicKeys - The list of SSH public keys used to authenticate with linux based VMs.
  [KeyData <String>]: KeyData - SSH public key certificate used to authenticate with the VM through ssh. The key needs to be at least 2048-bit and in ssh-rsa format.    For creating ssh keys, see [Create SSH keys on Linux and Mac for Li      nux VMs in Azure](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-mac-create-ssh-keys?toc=%2fazure%2fvirtual-machines%2flinux%2ftoc.json).
  [Path <String>]: Path - Specifies the full path on the created VM where ssh public key is stored. If the file already exists, the specified key is appended to the file. Example: /home/user/.ssh/authorized_keys

NETWORKPROFILENETWORKINTERFACE <IVirtualMachinePropertiesNetworkProfileNetworkInterfacesItem[]>: NetworkInterfaces - list of network interfaces to be attached to the virtual machine
  [Id <String>]: ID - Resource Id of the network interface

STORAGEPROFILEDATADISK <IVirtualMachinePropertiesStorageProfileDataDisksItem[]>: adds data disks to the virtual machine
  [Id <String>]: Resource ID of the data disk

WINDOWSCONFIGURATIONSSHPUBLICKEY <IVirtualMachinePropertiesOSProfileWindowsConfigurationSshPublicKeysItem[]>: PublicKeys - The list of SSH public keys used to authenticate with linux based VMs.
  [KeyData <String>]: KeyData - SSH public key certificate used to authenticate with the VM through ssh. The key needs to be at least 2048-bit and in ssh-rsa format.    For creating ssh keys, see [Create SSH keys on Linux and Mac for Li      nux VMs in Azure](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-mac-create-ssh-keys?toc=%2fazure%2fvirtual-machines%2flinux%2ftoc.json).
  [Path <String>]: Path - Specifies the full path on the created VM where ssh public key is stored. If the file already exists, the specified key is appended to the file. Example: /home/user/.ssh/authorized_keys
.Link
https://learn.microsoft.com/powershell/module/az.azurestackhci/new-azazurestackhcivirtualmachine
#>
function New-AzAzureStackHciVirtualMachine {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Models.Api20221215Preview.IVirtualMachines])]
[CmdletBinding(PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(Mandatory)]
    [Alias('VirtualMachineName')]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Path')]
    [System.String]
    # Name of the virtual machine
    ${Name},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Path')]
    [System.String]
    # The name of the resource group.
    # The name is case insensitive.
    ${ResourceGroupName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String]
    # The ID of the target subscription.
    ${SubscriptionId},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [System.String]
    # The geo-location where the resource lives
    ${Location},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [System.String]
    # The name of the extended location.
    ${CustomLocationId},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [System.Int64]
    # .
    ${DynamicMemoryMaximumMemory},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [System.Int64]
    # .
    ${DynamicMemoryMinimumMemory},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [System.Int32]
    # Defines the amount of extra memory that should be reserved for a virtual machine at runtime, as a percentage of the total memory that the virtual machine is thought to need.
    # This only applies to virtual systems with dynamic memory enabled.
    # This property can be in the range of 5 to 2000.
    ${DynamicMemoryTargetBuffer},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [System.Int64]
    # RAM in MB for the virtual machine
    ${VmMemory},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [System.Int32]
    # number of processors for the virtual machine
    ${VmProcessors},

    [Parameter()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Support.VMSizeEnum])]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Support.VMSizeEnum]
    # .
    ${VmSize},

    [Parameter()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Support.ResourceIdentityType])]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Support.ResourceIdentityType]
    # The identity type.
    ${IdentityType},

    [Parameter(ParameterSetName='ByImage', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [System.String]
    # Resource ID of the image
    ${ImageId},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # DisablePasswordAuthentication - whether password authentication should be disabled
    ${DisablePasswordAuthentication},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Used to indicate whether Arc for Servers agent onboarding should be triggered during the virtual machine creation process.
    ${ProvisionVMAgent},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Models.Api20221215Preview.IVirtualMachinePropertiesOSProfileLinuxConfigurationSshPublicKeysItem[]]
    # PublicKeys - The list of SSH public keys used to authenticate with linux based VMs.
    # To construct, see NOTES section for LINUXCONFIGURATIONSSHPUBLICKEY properties and create a hash table.
    ${LinuxConfigurationSshPublicKey},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [System.String[]]
    # NetworkInterfaces - list of network interfaces to be attached to the virtual machine
    # To construct, see NOTES section for NETWORKPROFILENETWORKINTERFACE properties and create a hash table.
    ${NicIds},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [System.String[]]
    # 
    #
    ${DataDiskIds},

    [Parameter(ParameterSetName='ByOsDisk')]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [System.String]
    # Resource ID of the OS disk
    ${OSDiskId},

    [Parameter(ParameterSetName='ByOsDisk')]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [System.String]
    # Resource ID of the OS disk
    ${OSDiskName},

    [Parameter(ParameterSetName='ByOsDisk')]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [System.String]
    # Resource ID of the OS disk
    ${OSDiskResourceGroup},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [System.String]
    # AdminPassword - admin password
    ${AdminPassword},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [System.String]
    # AdminUsername - admin username
    ${AdminUsername},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [System.String]
    # ComputerName - name of the compute
    ${ComputerName},

    [Parameter(Mandatory)]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Support.OSTypeEnum])]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Support.OSTypeEnum]
    # OsType - string specifying whether the OS is Linux or Windows
    ${OsType},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${EnableTpm},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [System.String]
    # Id of the storage container that hosts the VM configuration file
    ${StoragePathId},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [System.String]
    # Name of the storage container that hosts the VM configuration file
    ${StoragePathName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [System.String]
    # Storage Container resource group. The resource group of the virtual machine will be used if this value is not provided. 
    ${StoragePathResourceGroup},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Models.Api30.ITrackedResourceTags]))]
    [System.Collections.Hashtable]
    # Resource tags.
    ${Tags},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Specifies whether secure boot should be enabled on the virtual machine.
    ${SecureBootEnabled},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Whether to EnableAutomaticUpdates on the machine
    ${EnableAutomaticUpdate},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [System.String]
    # TimeZone for the virtual machine
    ${TimeZone},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Models.Api20221215Preview.IVirtualMachinePropertiesOSProfileWindowsConfigurationSshPublicKeysItem[]]
    # PublicKeys - The list of SSH public keys used to authenticate with linux based VMs.
    # To construct, see NOTES section for WINDOWSCONFIGURATIONSSHPUBLICKEY properties and create a hash table.
    ${WindowsConfigurationSshPublicKey},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The credentials, account, tenant, and subscription used for communication with Azure.
    ${DefaultProfile},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command as a job
    ${AsJob},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command asynchronously
    ${NoWait},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

    #name 
    if ($Name -notmatch $vmNameRegex){
      Write-Error "Invalid Name:  $Name. The name must start with an alphanumeric character, contain all alphanumeric characters or '-' or '_' or '.' and end with an alphanumeric character. The max length is 64 characters." -ErrorAction Stop
    }

    if ($CustomLocationId -notmatch $customLocationRegex){
        Write-Error "Invalid CustomLocationId: $CustomLocationId" -ErrorAction Stop
    }
    
    if ($PSCmdlet.ParameterSetName -eq "ByImage"){
      if($ImageId -notmatch $marketplaceGalImageRegex -and $ImageId -notmatch $galImageRegex){
        Write-Error "Invalid ImageId: $ImageId" -ErrorAction Stop
      }
    } else if ($PSCmdlet.ParameterSetName -eq "ByOsDisk"){
        if($OSDiskId){
          if($OSDiskId -notmatch $vhdRegex){
            Write-Error "Invalid OSDiskId : $OSDiskId" -ErrorAction Stop
          }
        } elseif ($OSDiskName){
            if ($OSDiskResourceGroup){
                $OSDiskId = "/subscriptions/$SubscriptionId/resourceGroups/$OSDiskResourceGroup/providers/Microsoft.AzureStackHCI/virtualharddisks/$OSDiskName"
            } else {
                $OSDiskId = "/subscriptions/$SubscriptionId/resourceGroups/$ResourceGroupName/providers/Microsoft.AzureStackHCI/virtualharddisks/$OSDiskName"
            }
            $PSBoundParameters.Add('OSDiskId', $OSDiskId)
            $null = $PSBoundParameters.Remove("OSDiskResourceGroup")
            $null = $PSBoundParameters.Remove("OSDiskName")
        }
    } else {
        Write-Error "Either Image or OS Disk is required. " -ErrorAction Stop
    }

    if ($VmSize){
      #validate vmsize string
      if($VmSize.ToString().ToLower() -eq "custom"){
        if (-Not $VmProcessors -and -Not $VmMemory){
          Write-Error "VmMemory and VmProcessors required for Custom VmSize" -ErrorAction Stop
        }
      } else {
          if ($VmProcessors -or $VmMemory){
            Write-Error "VmMemory and VmProcessors will be ignored. Please specify Custom for VMSize." -ErrorAction Continue
            $null = $PSBoundParameters.Remove("VmProcessors")
            $null = $PSBoundParameters.Remove("VmMemory")
          }
      }
    }

    if ($NicIds){
      $NetworkProfileNetworkInterface =  [System.Collections.ArrayList]::new()
      foreach ($NicId in $NicIds){
        if ($NicId -notmatch $nicRegex){
          Write-Error "Invalid Nic Id provided: $NicId." -ErrorAction Stop
        }
        $NetworkInterface = @{Id = $NicId}
        [void]$NetworkProfileNetworkInterface.Add($NetworkInterface)
      }
      $null = $PSBoundParameters.Remove("NicIds")
      $PSBoundParameters.Add('NetworkProfileNetworkInterface', $NetworkProfileNetworkInterface)
    }

    if ($OsType.ToString().ToLower() -eq "windows"){
      $PSBoundParameters['OsType'] = "Windows"
      if($ComputerName){
        if ($ComputerName.length -gt 15 -or $ComputerName -match $allDigitsRegex -or $ComputerName -match $invalidCharactersComputerName){
          Write-Error "Invalid Computer Name : $ComputerName."
        }
      }
      if ($DisablePasswordAuthentication.IsPresent){
        $null = $PSBoundParameters.Remove('DisablePasswordAuthentication')
      }
      $PSBoundParameters.Add("WindowConfigurationProvisionVMAgent", $ProvisionVMAgent.IsPresent)
    } elseif ($OsType.ToString().ToLower() -eq "linux" -or $ComputerName -match $invalidCharactersComputerName){
        $PSBoundParameters['OsType'] = "Linux"
        if ($ComputerName.length -gt 64 -or $ComputerName -match $allDigitsRegex -or $ComputerName -match $invalidCharactersComputerName){
          Write-Error "Invalid Computer Name : $ComputerName."
        }
        if ($EnableAutomaticUpdates.IsPresent){
          $null = $PSBoundParameters.Remove('EnableAutomaticUpdates')
        }
        if ($TimeZone){
          $null = $PSBoundParameters.Remove('TimeZone')
        }
        $PSBoundParameters.Add("LinuxConfigurationProvisionVMAgent", $ProvisionVMAgent.IsPresent)
    } else {
       Write-Error "Invalid OsType: $OsType. Accepted Values are 'Windows' and 'Linux'" -ErrorAction Stop
    }

    if($StoragePathId){
      if($StoragePathId -notmatch $storagePathRegex){
        Write-Error "Invalid StoragePathId: $StoragePathId" -ErrorAction Stop
      }
    } elseif ($StoragePathName){
        if ($StoragePathResourceGroup){
            $ContainerId = "/subscriptions/$SubscriptionId/resourceGroups/$StoragePathResourceGroup/providers/Microsoft.AzureStackHCI/storagecontainers/$StoragePathName"
        } else {
            $ContainerId = "/subscriptions/$SubscriptionId/resourceGroups/$ResourceGroupName/providers/Microsoft.AzureStackHCI/storagecontainers/$StoragePathName"
        }
        $PSBoundParameters.Add('StoragePathId', $ContainerId)
        $null = $PSBoundParameters.Remove("StoragePathName")
        $null = $PSBoundParameters.Remove("StoragePathReourceGroup")
    }


    if ($DataDiskIds){
      $StorageProfileDataDisk =  [System.Collections.ArrayList]::new()
      foreach ($DataDiskId in $DataDiskIds){
        if ($DataDiskId -notmatch $vhdRegex){
          Write-Error "Invalid Data Disk Id provided: $DataDiskId." -ErrorAction Stop
        }
        $DataDisk = @{Id = $DataDiskId}
        [void]$StorageProfileDataDisk.Add($DataDisk)
      }
      $null = $PSBoundParameters.Remove("DataDiskIds")
      $PSBoundParameters.Add('StorageProfileDataDisk',  $StorageProfileDataDisk)
    }

    return Az.AzureStackHCI.internal\New-AzAzureStackHciVirtualMachine @PSBoundParameters

}
