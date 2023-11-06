
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
Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Models.Api20230901Preview.IVirtualMachineInstance
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
https://learn.microsoft.com/powershell/module/az.stackhci/new-azstackhcivmvirtualmachine
#>
function New-AzStackHCIVmVirtualMachine {
  [OutputType([Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Models.Api20230901Preview.IVirtualMachineInstance])]
  [CmdletBinding(PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
  param(
      [Parameter(Mandatory)]
      [Alias('VirtualMachineName')]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Path')]
      [System.String]
      # Name of the virtual machine
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

      [Parameter(Mandatory)]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.String]
      # The name of the extended location.
      ${CustomLocationId},

      [Parameter()]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.Int64]
      # Maximum Dynamic Memory
      ${DynamicMemoryMaximumMemoryInMb},

      [Parameter()]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.Int64]
      # Minimum Dynamic Memory
      ${DynamicMemoryMinimumMemoryInMb},

      [Parameter()]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.Int32]
      # Defines the amount of extra memory that should be reserved for a virtual machine at runtime, as a percentage of the total memory that the virtual machine is thought to need.
      # This only applies to virtual systems with dynamic memory enabled.
      # This property can be in the range of 5 to 2000.
      ${DynamicMemoryTargetBuffer},

      [Parameter()]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.Int64]
      # RAM in MB for the virtual machine
      ${VmMemoryInMB},

      [Parameter()]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.Int32]
      # Number of processors for the virtual machine
      ${VmProcessor},

      [Parameter()]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Support.VMSizeEnum]
      # Size of the VM. Can be a Predefined size or Custom. Possible Predefined Sizes include - Custom,Standard_A2_v2,Standard_A4_v2,Standard_D16s_v3,Standard_D2s_v3,Standard_D32s_v3,Standard_D4s_v3,Standard_D8s_v3,Standard_DS13_v2,Standard_DS2_v2,Standard_DS3_v2,Standard_DS4_v2,Standard_DS5_v2,Standard_K8S2_v1,Standard_K8S3_v1,Standard_K8S4_v1,Standard_K8S5_v1,Standard_K8S_v1,Standard_NK12,Standard_NK6,Standard_NV12, StandardNv6  

      ${VmSize},

      [Parameter()]
      [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Support.ResourceIdentityType])]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Support.ResourceIdentityType]
      # The identity type.
      ${IdentityType},

      [Parameter(ParameterSetName='ByImageId', Mandatory)]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.String]
      # Resource ID of the image to create the VM with. 
      ${ImageId}, 

      [Parameter(ParameterSetName='ByImageName',Mandatory)]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.String]
      # Name of the image to create the VM with. 
      ${ImageName},

      [Parameter(ParameterSetName='ByImageName')]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.String]
      # Resource group of the image to create the VM from. 
      ${ImageResourceGroup},

      [Parameter()]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.Management.Automation.SwitchParameter]
      # DisablePasswordAuthentication - whether password authentication should be disabled
      ${DisablePasswordAuthentication},

      [Parameter()]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.Management.Automation.SwitchParameter]
      # Used to indicate whether Arc for Servers agent onboarding should be triggered during the virtual machine creation process. VM Agent is provsioned by default. Please pass -ProvisionVMAgent:$false to disable. 
      ${ProvisionVMAgent},

      [Parameter()]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.Management.Automation.SwitchParameter]
      # Indicates whether virtual machine configuration agent should be provisioned on the virtual machine. When this property is not specified, default behavior is to set it to true. VM Config Agent is provisioned by default. Please pass -ProvisionVMConfigAgent:$false to disable.
      ${ProvisionVMConfigAgent},

      [Parameter()]
      [AllowEmptyCollection()]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.String[]]
      # NetworkInterfaces - list of network interfaces to be attached to the virtual machine in ARM Id format. 
      ${NicIds},

      [Parameter()]
      [AllowEmptyCollection()]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.String[]]
      # NetworkInterfaces - list of network interfaces to be attached to the virtual machine in name format. 
      ${NicNames},

      [Parameter()]
      [AllowEmptyCollection()]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.String]
      # NetworkInterfaces - Resource Group of Network Interfaces. 
      ${NicResourceGroup},

      [Parameter()]
      [AllowEmptyCollection()]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.String[]]
      # Data Disks - List of data disks to be attached to the virtual machine in id format. 
      ${DataDiskIds},

      [Parameter()]
      [AllowEmptyCollection()]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.String[]]
      # Data Disks - List of data disks to be attached to the virtual machine in name format .
      ${DataDiskNames},

      [Parameter()]
      [AllowEmptyCollection()]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.String]
      # Data Disks - Resource Group of Data Disks. 
      ${DataDiskResourceGroup},

      [Parameter(ParameterSetName='ByOsDiskId',Mandatory)]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.String]
      # Resource ID of the OS disk
      ${OSDiskId},

      [Parameter(ParameterSetName='ByOsDiskName',Mandatory)]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.String]
      # Name of the OS disk
      ${OSDiskName},

      [Parameter(ParameterSetName='ByOsDiskName')]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.String]
      # Resource Group of the OS disk
      ${OSDiskResourceGroup},

      [Parameter()]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.String]
      # AdminPassword - admin password
      ${AdminPassword},

      [Parameter()]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.String]
      # AdminUsername - admin username
      ${AdminUsername},

      [Parameter()]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.String]
      # ComputerName - name of the computer
      ${ComputerName},

      [Parameter(Mandatory)]
      [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Support.OperatingSystemTypes])]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.String]
      # OsType - string specifying whether the OS is Linux or Windows
      ${OsType},

      [Parameter()]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.Management.Automation.SwitchParameter]
      # Used to indicate whether or not to enable TPM
      ${EnableTpm},

      [Parameter()]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.String[]]
      # PublicKeys - The list of SSH public keys used to authenticate with VMs
      ${SshPublicKeys},

      [Parameter()]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.String]
      # Id of the storage container that hosts the VM configuration file
      ${StoragePathId},

      [Parameter()]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.String]
      # Name of the storage container that hosts the VM configuration file
      ${StoragePathName},

      [Parameter()]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.String]
      # Storage Container resource group. The resource group of the virtual machine will be used if this value is not provided. 
      ${StoragePathResourceGroup},

      [Parameter()]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Models.Api30.ITrackedResourceTags]))]
      [System.Collections.Hashtable]
      # Resource tags.
      ${Tag},

      [Parameter()]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.Management.Automation.SwitchParameter]
      # Specifies whether secure boot should be enabled on the virtual machine.
      ${SecureBootEnabled},

      [Parameter()]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.Management.Automation.SwitchParameter]
      # Specifies Whether to EnableAutomaticUpdates on the machine.
      ${EnableAutomaticUpdate},

      [Parameter()]
      [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVm.Category('Body')]
      [System.String]
      # TimeZone for the virtual machine
      ${TimeZone}
  )

    #name 
    if ($Name -notmatch $machineNameRegex){
      Write-Error "Invalid Name:  $Name. The name must start with an alphanumeric character, contain all alphanumeric characters or '-' or '_' or '.' and end with an alphanumeric character. The max length is 64 characters." -ErrorAction Stop
    }

    if ($CustomLocationId -notmatch $customLocationRegex){
      Write-Error "Invalid CustomLocationId: $CustomLocationId" -ErrorAction Stop
    }
    
    $PSBoundParameters.Add("Kind", "HCI")
    $PSBoundParameters.Add("IdentityType", "SystemAssigned")
    $null = $PSBoundParameters.Remove("DynamicMemoryMaximumMemory") 
    $null = $PSBoundParameters.Remove("DynamicMemoryMinimumMemory") 
    $null = $PSBoundParameters.Remove("DynamicMemoryTargetBuffer") 
    $null = $PSBoundParameters.Remove("VmMemoryInMB")
    $null = $PSBoundParameters.Remove("VmProcessor")
    $null = $PSBoundParameters.Remove("VmSize") 
    $null = $PSBoundParameters.Remove("NicIds") 
    $null = $PSBoundParameters.Remove("NicNames")
    $null = $PSBoundParameters.Remove("NicResourceGroup")
    $null = $PSBoundParameters.Remove("CustomLocationId") 
    $null = $PSBoundParameters.Remove("ImageId") 
    $null = $PSBoundParameters.Remove("ImageName")
    $null = $PSBoundParameters.Remove("ImageResourceGroup") 
    $null = $PSBoundParameters.Remove("DisablePasswordAuthentication") 
    $null = $PSBoundParameters.Remove("ProvisionVMAgent")
    $null = $PSBoundParameters.Remove("ProvisionVMConfigAgent")
    $null = $PSBoundParameters.Remove("DataDiskIds") 
    $null = $PSBoundParameters.Remove("DataDiskNames") 
    $null = $PSBoundParameters.Remove("DataDiskResourceGroup") 
    $null = $PSBoundParameters.Remove("OSDiskId") 
    $null = $PSBoundParameters.Remove("OSDiskName") 
    $null = $PSBoundParameters.Remove("OSDiskResourceGroup")
    $null = $PSBoundParameters.Remove("AdminPassword") 
    $null = $PSBoundParameters.Remove("AdminUsername")
    $null = $PSBoundParameters.Remove("ComputerName") 
    $null = $PSBoundParameters.Remove("EnableTpm") 
    $null = $PSBoundParameters.Remove("SshPublicKeys") 
    $null = $PSBoundParameters.Remove("SecureBootEnabled") 
    $null = $PSBoundParameters.Remove("StoragePathResourceGroup")
    $null = $PSBoundParameters.Remove("StoragePathName")
    $null = $PSBoundParameters.Remove("StoragePathId")
    $null = $PSBoundParameters.Remove("EnableAutomaticUpdate")
    $null = $PSBoundParameters.Remove("TimeZone")
    $null = $PSBoundParameters.Remove("NoWait")
    $null = $PSBoundParameters.Remove("AsJob")

    if ($OsType.ToString().ToLower() -eq "windows"){
      $null = $PSBoundParameters.Remove("OsType")
      $PSBoundParameters.Add('OSType', "Windows")
    } elseif ($OsType.ToString().ToLower() -eq "linux"){
      $null = $PSBoundParameters.Remove("OsType")
      $PSBoundParameters.Add('OSType', "Linux")
    } else {
      Write-Error "Invalid OSType provided: $OsType. Accepted Values are 'Windows' and 'Linux'" -ErrorAction Stop
   }


    Az.StackHCIVm.internal\New-AzStackHCIVmMachine @PSBoundParameters  | Out-Null

    if ($PSCmdlet.ParameterSetName -eq "ByImageId"){
      if($ImageId -notmatch $marketplaceGalImageRegex -and $ImageId -notmatch $galImageRegex){
        Write-Error "Invalid ImageId: $ImageId" -ErrorAction Stop
      }
      $PSBoundParameters.Add('ImageId', $ImageId)
    } elseif ($PSCmdlet.ParameterSetName -eq "ByImageName"){
        $rg = $ResourceGroupName
        if($ImageResourceGroup){
          $rg = $ImageResourceGroup
        }
        $isGalleryImage = $false
        $isMarketplaceGalleryImage = $false
      
      $galImage = Az.StackHCIVm.internal\Get-AzStackHCIVmGalleryImage -Name $ImageName -ResourceGroupName $rg -SubscriptionId $SubscriptionId -ErrorAction SilentlyContinue
      if($galImage -eq $null){
        $marketplaceGalImage = Az.StackHCIVm.internal\Get-AzStackHCIVmMarketplaceGalleryImage -Name $ImageName -ResourceGroupName $rg -SubscriptionId $SubscriptionId -ErrorAction SilentlyContinue
        if ($marketplacegalImage -eq $null){
          Write-Error "An Image with name: $ImageName does not exist in Resource Group: $rg" -ErrorAction Stop
        } else {
          $isMarketplaceGalleryImage = $true
        }
      
      } else{
        $isGalleryImage = $true 
        }

        if ($isGalleryImage){
          $ImageId = "/subscriptions/$SubscriptionId/resourceGroups/$rg/providers/Microsoft.AzureStackHCI/galleryimages/$ImageName"
        } else {
          $ImageId = "/subscriptions/$SubscriptionId/resourceGroups/$rg/providers/Microsoft.AzureStackHCI/marketplacegalleryimages/$ImageName"
        }

        $null = $PSBoundParameters.Remove("ImageResourceGroup")
        $null = $PSBoundParameters.Remove("ImageName")
        $PSBoundParameters.Add('ImageId', $ImageId)

  } elseif ($PSCmdlet.ParameterSetName -eq "ByOsDiskId"){      
      if($OSDiskId -notmatch $vhdRegex){
        Write-Error "Invalid OSDiskId : $OSDiskId" -ErrorAction Stop
      }
  } elseif ($PSCmdlet.ParameterSetName -eq "ByOsDiskName"){
      if ($OSDiskResourceGroup){
          $OSDiskId = "/subscriptions/$SubscriptionId/resourceGroups/$OSDiskResourceGroup/providers/Microsoft.AzureStackHCI/virtualharddisks/$OSDiskName"
      } else {
          $OSDiskId = "/subscriptions/$SubscriptionId/resourceGroups/$ResourceGroupName/providers/Microsoft.AzureStackHCI/virtualharddisks/$OSDiskName"
      }
      $PSBoundParameters.Add('OSDiskId', $OSDiskId)
      $null = $PSBoundParameters.Remove("OSDiskResourceGroup")
      $null = $PSBoundParameters.Remove("OSDiskName")
      
  } else {
      Write-Error "Either Image or OS Disk is required. " -ErrorAction Stop
  }

  if ($VmSize){
    if($VmSize.ToString().ToLower() -eq "default"){
      Write-Error "Invalid VM Size provided. 'Default' is not a supported VmSize." -ErrorAction Stop
    }
    if($VmSize.ToString().ToLower() -eq "custom"){
      if (-Not ($VmProcessor -and $VmMemoryInMB)){
        Write-Error "VmMemory and VmProcessor required for Custom VmSize" -ErrorAction Stop
      }
      $PSBoundParameters.Add("VmMemory", $VmMemoryInMB)
      $PSBoundParameters.Add("VmProcessor", $VmProcessor)
    } else {
        if ($VmProcessor -or $VmMemoryInMB){
          Write-Error "VmMemory and VmProcessor will be ignored. Please specify Custom for VMSize." -ErrorAction Continue
          $null = $PSBoundParameters.Remove("VmProcessor")
          $null = $PSBoundParameters.Remove("VmMemoryInMB")
        }
    }
  }

  if ($NicIds){
    $NetworkProfileNetworkInterface =  [System.Collections.ArrayList]::new()
    foreach ($NicId in $NicIds){
      if ($NicId -notmatch $nicRegex){
        Write-Error "Invalid Nic Id provided: $NicId." -ErrorAction Stop
      }
      
      $nic = Az.StackHCIVm\Get-AzStackHCIVmNetworkInterface  -ResourceId $NicId -ErrorAction SilentlyContinue  
      if ($nic -eq $null){
        Write-Error "A Network Interface with id: $NicId does not exist." -ErrorAction Stop
      }
      
      $NetworkInterface = @{Id = $NicId}
      [void]$NetworkProfileNetworkInterface.Add($NetworkInterface)
    }
    $null = $PSBoundParameters.Remove("NicIds")
    $PSBoundParameters.Add('NetworkProfileNetworkInterface', $NetworkProfileNetworkInterface)
  } elseif ($NicNames){
      $rg = $ResourceGroupName
      if($NicResourceGroup){
        $rg = $NicResourceGroup
      }

      $NetworkProfileNetworkInterface =  [System.Collections.ArrayList]::new()
      foreach ($NicName in $NicNames){
        $NicId = "/subscriptions/$SubscriptionId/resourceGroups/$rg/providers/Microsoft.AzureStackHCI/networkinterfaces/$NicName"
        $nic = Az.StackHCIVm\Get-AzStackHCIVmNetworkInterface -ResourceId $NicId  -ErrorAction SilentlyContinue
   
        if ($nic -eq $null){
          Write-Error "A Network Interface with id: $NicId does not exist." -ErrorAction Stop
        }
      
        $NetworkInterface = @{Id = $NicId}
        [void]$NetworkProfileNetworkInterface.Add($NetworkInterface)
      }
      $null = $PSBoundParameters.Remove("NicNames")
      $null = $PSBoundParameters.Remove("NicResourceGroup")

      $PSBoundParameters.Add('NetworkProfileNetworkInterface', $NetworkProfileNetworkInterface)
  }
  if ($OsType.ToString().ToLower() -eq "windows"){
    $OsType = "Windows"
    if($ComputerName){
      if ($ComputerName.length -gt 15 -or $ComputerName -match $allDigitsRegex -or $ComputerName -match $invalidCharactersComputerName){
        Write-Error "Invalid Computer Name : $ComputerName." -ErrorAction Stop
      }
    }
    if ($DisablePasswordAuthentication.IsPresent){
      $null = $PSBoundParameters.Remove('DisablePasswordAuthentication')
    }
  
    $PSBoundParameters.Add("WindowConfigurationProvisionVMAgent", $true)
    $PSBoundParameters.Add("WindowConfigurationProvisionVMConfigAgent", $true)
    if(-not $ProvisionVMAgent){
      $null = $PSBoundParameters.Remove("WindowConfigurationProvisionVMAgent")
    }
    if (-not $ProvisionVMConfigAgent){
      $null = $PSBoundParameters.Remove("WindowConfigurationProvisionVMConfigAgent")
    }
    $null = $PSBoundParameters.Remove("ProvisionVMAgent")
    $null = $PSBoundParameters.Remove("ProvisionVMConfigAgent")


    if ($SshPublicKeys){
      $WindowsConfigurationSshPublicKey = [System.Collections.ArrayList]::new()
      foreach ($key in $SshPublicKeys){
        $keyData = Get-Content -Path $key
        $WindowsKey = @{KeyData = $keyData}
        [void]$WindowsConfigurationSshPublicKey.Add($WindowsKey)
      }
      $null = $PSBoundParameters.Remove('SshPublicKeys')
      $PSBoundParameters.Add("WindowsConfigurationSshPublicKey", $WindowsConfigurationSshPublicKey)
    }
  } elseif ($OsType.ToString().ToLower() -eq "linux"){
      $OsType = "Linux"
      if ($ComputerName.length -gt 64 -or $ComputerName -match $allDigitsRegex -or $ComputerName -match $invalidCharactersComputerName){
        Write-Error "Invalid Computer Name : $ComputerName." -ErrorAction Stop
      }
      if ($EnableAutomaticUpdates.IsPresent){
        $null = $PSBoundParameters.Remove('EnableAutomaticUpdates')
      }
      if ($TimeZone){
        $null = $PSBoundParameters.Remove('TimeZone')
      }
      $PSBoundParameters.Add("LinuxConfigurationProvisionVMAgent", $true)
      $PSBoundParameters.Add("LinuxConfigurationProvisionVMConfigAgent", $true)
      if(-not $ProvisionVMAgent){
        $null = $PSBoundParameters.Remove("LinuxConfigurationProvisionVMAgent")
      }
      if (-not $ProvisionVMConfigAgent){
        $null = $PSBoundParameters.Remove("LinuxConfigurationProvisionVMConfigAgent")
      }
      $null = $PSBoundParameters.Remove("ProvisionVMAgent")
      $null = $PSBoundParameters.Remove("ProvisionVMConfigAgent")

      
      if ($SshPublicKeys){
        $LinuxConfigurationSshPublicKey = [System.Collections.ArrayList]::new()
        foreach ($key in $SshPublicKeys){
          $keyData = Get-Content -Path $key
          $LinuxKey = @{KeyData = $keyData}
          [void]$LinuxConfigurationSshPublicKey.Add($LinuxKey)
        }
        $null = $PSBoundParameters.Remove('SshPublicKeys')
        $PSBoundParameters.Add("LinuxConfigurationSshPublicKey", $LinuxConfigurationSshPublicKey)
      }
  } else {
     Write-Error "Invalid OSType provided: $OsType. Accepted Values are 'Windows' and 'Linux'" -ErrorAction Stop
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
  } elseif ($DataDiskNames){
      $rg = $ResourceGroupName
      if($DataDiskResourceGroup){
        $rg = $DataDiskResourceGroup
      }
     
      $StorageProfileDataDisk =  [System.Collections.ArrayList]::new()
      foreach ($DataDiskName in $DataDiskNames){
        $DataDiskId = "/subscriptions/$SubscriptionId/resourceGroups/$rg/providers/Microsoft.AzureStackHCI/virtualharddisks/$DataDiskName"
        $DataDisk = @{Id = $DataDiskId}
        [void]$StorageProfileDataDisk.Add($DataDisk)
      }
      $null = $PSBoundParameters.Remove("DataDiskNames")
      $null = $PSBoundParameters.Remove("DataDiskResourceGroup")
      $PSBoundParameters.Add('StorageProfileDataDisk',  $StorageProfileDataDisk)
  }  
  $resourceUri = "/subscriptions/" + $subscriptionId + "/resourceGroups/" + $resourceGroupName + "/providers/Microsoft.HybridCompute/machines/" + $Name
  $PSBoundParameters.Add("ResourceUri", $resourceUri)
  $PSBoundParameters.Add("CustomLocationId", $CustomLocationId)
  $PSBoundParameters.Add("OSDiskOstype", $OsType)
  $PSBoundParameters.Add('VmSize', $VmSize)
  if ($ComputerName){
    $PSBoundParameters.Add('ComputerName', $ComputerName)
  }
  if ($AdminUsername){
    $PSBoundParameters.Add('AdminUsername', $AdminUsername)
  }
  if ($AdminPassword){
    $PSBoundParameters.Add('AdminPassword', $AdminPassword)
  }
  if ($DynamicMemoryMaximumMemory){
    $PSBoundParameters.Add('DynamicMemoryMaximumMemory', $DynamicMemoryMaximumMemory)
  }
  if ($DynamicMemoryMinimumMemory){
    $PSBoundParameters.Add('DynamicMemoryMinimumMemory', $DynamicMemoryMinimumMemory)
  }
  if ($DynamicMemoryTargetBuffer){
    $PSBoundParameters.Add('DynamicMemoryTargetBuffer', $DynamicMemoryTargetBuffer)
  }
  if ($EnableTpm.IsPresent){
    $PSBoundParameters.Add('EnableTpm', $EnableTpm)
  }
  IF($SecureBootEnabled.IsPresent){
    $PSBoundParameters.Add('SecureBootEnabled', $SecureBootEnabled)
  }
  $null = $PSBoundParameters.Remove("Name")
  $null = $PSBoundParameters.Remove("ResourceGroupName")
  $null = $PSBoundParameters.Remove("SubscriptionId")
  $null = $PSBoundParameters.Remove("ResourceId")
  $null = $PSBoundParameters.Remove("NicResourceGroup")
  $null = $PSBoundParameters.Remove("NicNames")
  $null = $PSBoundParameters.Remove("Kind") 
  $null = $PSBoundParameters.Remove("Location") 
  $null = $PSBoundParameters.Remove("OSType")
  $null = $PSBoundParameters.Remove("IdentityType")
  return Az.StackHCIVm.internal\New-AzStackHCIVmVirtualMachine @PSBoundParameters
}

