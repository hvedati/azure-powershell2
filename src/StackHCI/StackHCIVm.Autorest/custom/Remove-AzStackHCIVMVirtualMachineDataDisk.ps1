function Remove-AzStackHciVMVirtualMachineDataDisk {
    [OutputType([Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Models.Api20230901Preview.IVirtualMachineInstance])]
    [CmdletBinding(PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
    param(
        [Parameter(ParameterSetName='ByName', Mandatory)]
        [Alias('VirtualMachineName')]
        [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Path')]
        [System.String]
        # Name of the virtual machine
        ${Name},
    
        [Parameter(ParameterSetName='ByName', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Path')]
        [System.String]
        # The name of the resource group.
        # The name is case insensitive.
        ${ResourceGroupName},
    
        [Parameter(ParameterSetName='ByResourceId', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Path')]
        [System.String]
        # The ARM Resource ID of the virtual machine.
        ${ResourceId},
    
        [Parameter(ParameterSetName='ByName')]
        [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Path')]
        [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
        [System.String]
        # The ID of the target subscription.
        ${SubscriptionId},
    
        [Parameter(ParameterSetName='ByResourceId')]
        [Parameter(ParameterSetName='ByName')]
        [AllowEmptyCollection()]
        [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Body')]
        [System.String[]]
        # Data Disks - list of data disks to be removed from  the virtual machine in id format.
        ${DataDiskIds},
    
        [Parameter(ParameterSetName='ByResourceId')]
        [Parameter(ParameterSetName='ByName')]
        [AllowEmptyCollection()]
        [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Body')]
        [System.String[]]
        # Data Disks - list of data disks to be removed from  the virtual machine in name format.
        ${DataDiskNames},
    
        [Parameter(ParameterSetName='ByResourceId')]
        [Parameter(ParameterSetName='ByName')]
        [AllowEmptyCollection()]
        [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Body')]
        [System.String]
        # Resource Group of the Data Disks.
        ${DataDiskResourceGroup}
    )
    
    if (($ResourceId -match $vmRegex) -or ($Name -and $ResourceGroupName -and $SubscriptionId)){
        if ($ResourceId -match $vmRegex){
            $SubscriptionId = $($Matches['subscriptionId'])
            $ResourceGroupName = $($Matches['resourceGroupName'])
            $Name = $($Matches['machineName'])
        }
        $null = $PSBoundParameters.Remove("Name")
        $null = $PSBoundParameters.Remove("ResourceGroupName")
        $null = $PSBoundParameters.Remove("SubscriptionId")
        $null = $PSBoundParameters.Remove("ResourceId")
        $resourceUri = "/subscriptions/" + $subscriptionId + "/resourceGroups/" + $ResourceGroupName + "/providers/Microsoft.HybridCompute/machines/" + $Name
        $PSBoundParameters.Add("ResourceUri", $resourceUri)
        } else {             
            Write-Error "One or more input parameters are invalid. Resource ID is: $ResourceId, name is $name, resource group name is $resourcegroupname, subscription id is $subscriptionid"
        }
    
        if ($DataDiskIds){
            $DataDisks = $PSBoundParameters['DataDiskIds']
            $null = $PSBoundParameters.Remove("DataDiskIds")
    
            $VM = Az.StackHciVM.internal\Get-AzStackHciVMVirtualMachine @PSBoundParameters
            $StorageProfileDataDisk =  $VM.StorageProfileDataDisk
            foreach ($DataDisk in $DataDisks){
                $diskName = ($DataDisk -split "/")[8]
                if ($DataDisk -in $StorageProfileDataDisk) {
                    $StorageProfileDataDisk.Remove($DataDisk)
                } elseif ( $diskName -in $StorageProfileDataDisk){
                    $StorageProfileDataDisk.Remove($diskName)
                } else {
                    Write-Error "Data Disk is not currently attached: $DataDisk"
                }
            }
    
            $PSBoundParameters.Add('StorageProfileDataDisk',  $StorageProfileDataDisk)
    
        } elseif ($DataDiskNames){
            $rg = $ResourceGroupName
            if($DataDiskResourceGroup){
              $rg = $DataDiskResourceGroup
            }
    
            $null = $PSBoundParameters.Remove("DataDiskNames")
            $null = $PSBoundParameters.Remove("DataDiskResourceGroup")
            
            $VM = Az.StackHciVM.internal\Get-AzStackHciVMVirtualMachine @PSBoundParameters
            $StorageProfileDataDisk =  $VM.StorageProfileDataDisk
    
            foreach ($DataDiskName in $DataDiskNames){
                $DataDiskId = "/subscriptions/$SubscriptionId/resourceGroups/$rg/providers/Microsoft.AzureStackHCI/virtualharddisks/$DataDiskName"
                if ($DataDiskId -in $StorageProfileDataDisk) {
                    $StorageProfileDataDisk.Remove($DataDiskId)
                } elseif  ($DataDiskName -in $StorageProfileDataDisk) {
                    $StorageProfileDataDisk.Remove($DataDiskName)
                } else {
                    Write-Error "Data Disk is not currently attached: $DataDisk"
                }
            }
           
            $PSBoundParameters.Add('StorageProfileDataDisk',  $StorageProfileDataDisk)
        }
        return Az.StackHciVM.internal\Update-AzStackHciVMVirtualMachine @PSBoundParameters
    }