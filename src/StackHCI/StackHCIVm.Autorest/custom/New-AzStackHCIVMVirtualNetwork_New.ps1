
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
The operation to create or update a virtual network.
Please note some properties can be set only during virtual network creation.
.Description
The operation to create or update a virtual network.
Please note some properties can be set only during virtual network creation.
.Example
{{ Add code here }}
.Example
{{ Add code here }}

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Models.Api20221215Preview.IVirtualNetworks
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

SUBNET <IVirtualNetworkPropertiesSubnetsItem[]>: Subnet - list of subnets under the virtual network
  [AddressPrefix <String>]: Cidr for this subnet - IPv4, IPv6
  [IPAllocationMethod <IPAllocationMethodEnum?>]: IPAllocationMethod - The IP address allocation method. Possible values include: 'Static', 'Dynamic'
  [IPConfigurationReference <IComponentsCr63WSchemasVirtualnetworkpropertiesPropertiesSubnetsItemsPropertiesIpconfigurationreferencesItems[]>]: IPConfigurationReferences - list of IPConfigurationReferences
    [Id <String>]: IPConfigurationID
  [IPPool <IIPPool[]>]: network associated pool of IP Addresses
    [End <String>]: end of the ip address pool
    [Start <String>]: start of the ip address pool
    [Type <IPPoolTypeEnum?>]: ip pool type
  [Name <String>]: Name - The name of the resource that is unique within a resource group. This name can be used to access the resource.
  [PropertiesAddressPrefixes <String[]>]: AddressPrefixes - List of address prefixes for the subnet.
  [Route <IVirtualNetworkPropertiesSubnetsPropertiesItemsItem[]>]: Routes - Collection of routes contained within a route table.
    [AddressPrefix <String>]: AddressPrefix - The destination CIDR to which the route applies.
    [Name <String>]: Name - name of the subnet
    [NextHopIPAddress <String>]: NextHopIPAddress - The IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is VirtualAppliance.
  [RouteTableId <String>]: Etag - Gets a unique read-only string that changes whenever the resource is updated.
  [RouteTableName <String>]: Name - READ-ONLY; Resource name.
  [RouteTableType <String>]: Type - READ-ONLY; Resource type.
  [Vlan <Int32?>]: Vlan to use for the subnet
.Link
https://learn.microsoft.com/powershell/module/az.StackHciVM/new-azStackHciVMvirtualnetwork
#>
function New-AzStackHciVMVirtualNetwork {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Models.Api20221215Preview.IVirtualNetworks])]
[CmdletBinding( PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(Mandatory)]
    [Alias('VirtualNetworkName')]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Path')]
    [System.String]
    # Name of the virtual network
    ${Name},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Path')]
    [System.String]
    # The name of the resource group.
    # The name is case insensitive.
    ${ResourceGroupName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String]
    # The ID of the target subscription.
    ${SubscriptionId},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Body')]
    [System.String]
    # The geo-location where the resource lives
    ${Location},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Body')]
    [System.String]
    # The name of the extended location.
    ${CustomLocationId},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Body')]
    [System.String[]]
    # The list of DNS servers IP addresses.
    ${DnsServers},

    [Parameter()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Support.NetworkTypeEnum])]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Support.NetworkTypeEnum]
    # Type of the network
    ${NetworkType},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Models.Api30.ITrackedResourceTags]))]
    [System.Collections.Hashtable]
    # Resource tags.
    ${Tags},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Body')]
    [System.String]
    # Name of the network switch to be used for VMs
    ${VMSwitchName},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The credentials, account, tenant, and subscription used for communication with Azure.
    ${DefaultProfile},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command as a job
    ${AsJob},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command asynchronously
    ${NoWait},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials},


    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Body')]
    [System.String[]]
    # List of address prefixes for the subnet.
    $AddressPrefixes,

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Body')]
    [System.String]
    # The IP address allocation method. Possible values include: 'Static', 'Dynamic'
    $IpAllocationMethod, 

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Body')]
    [System.String]
    # End of the ip address pool
    $IpPoolEnd, 

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Body')]
    [System.String]
    # Start of the ip address pool
    $IpPoolStart, 

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Body')]
    [System.String]
    # Ip pool type
    $IpPoolType, 

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Body')]
    [System.Collections.Hashtable[]]
    # Network associated pool of IP Addresses
    $IpPools,

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Body')]
    [System.Collections.Hashtable[]]
    # Collection of routes contained within a route table.
    $Routes, 

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Body')]
    [System.String]
    # Name of the subnet
    $SubnetName, 

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Body')]
    [System.Collections.Hashtable[]]
    # List of subnets under the virtual network
    $Subnets, 

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHciVM.Category('Body')]
    [System.Int32]
    # Vlan to use for the subnet
    $Vlan

)

    if ($Name -notmatch $vnetNameRegex){
      Write-Error "Invalid Name:  $Name. The name must start with an alphanumeric character, contain all alphanumeric characters or '-' or '_' or '.' and end with an alphanumeric character or '_'. The max length is 64 characters." -ErrorAction Stop
    }

    if ($CustomLocationId -notmatch $customLocationRegex){
      Write-Error "Invalid CustomLocationId: $CustomLocationId" -ErrorAction Stop
    } 

    if ($DnsServers){
      foreach ($DnsServer in $DnsServers){
        if ($DnsServer -notmatch $ipv4Regex){
            Write-Error "Invalid ipaddress provided for Dns Servers : $DnsServer." -ErrorAction Stop
        }
      }
    }

    $validNetworkTypes = @{ics = "ICS"; internal = "Internal"; l2bridge = "L2Bridge"; l2tunnel = "L2Tunnel"; mirrored = "Mirrored"; nat = "NAT"; overlay =  "Overlay"; private = "Private"; transparent =  "Transparent"}
    if ($NetworkType){
      if (-Not $validNetworkTypes.ContainsKey($NetworkType.ToString().ToLower())){
        Write-Error "Invalid Network Type provided: $NetworkType. Allowed values are 'ics', 'internal', 'l2bridge', 'l2tunnel', 'mirrored', 'nat', 'overlay', 'private', 'transparent'" -ErrorAction Stop
      }
      $PSBoundParameters["NetworkType"] = $validNetworkTypes[$NetworkType.ToString().ToLower()]
    }

    if ($Subnets){
      Confirm-Subnets -Subnets $Subnets
      $null = $PSBoundParameters.Remove("Subnets")
      $PSBoundParameters.Add("Subnet", $Subnets)

    } else{
        $Subnet = @{}
        if ($IpAllocationMethod){
          if ($IpAllocationMethod.ToLower() -ne "dynamic" -and $IpAllocationMethod.ToLower() -ne "static"){
            Write-Error "Invalid Ip Allocation method provided: $IpAllocationMethod. Accepted values are 'dynamic' or 'static'" -ErrorAction Stop
          }
          $IpAllocationMethod = $IpAllocationMethod.ToLower()
          
          if ($IpAllocationMethod -eq "static"){
            $Subnet["IPAllocationMethod"] = 'Static'
            if (-Not $AddressPrefixes){
              Write-Error "Invalid Configuration for Static IpAllocationMethod. AddressPrefixes are required for Static IpAllocationMethod." -ErrorAction Stop
            }
          }
        } else {
          $Subnet["IPAllocationMethod"] = 'Dynamic'
        }

        if ($IpPoolStart -and $IpPoolEnd){
          if($IpPoolStart -notmatch $ipv4Regex){
            Write-Error "Invalid Ip Address provided : $IpPoolStart" -ErrorAction Stop
          }

          if($IpPoolEnd -notmatch $ipv4Regex){
            Write-Error "Invalid Ip Address provided : $IpPoolEnd" -ErrorAction Stop
          }
          $IpPool = @{End = $IpPoolEnd; Start = $IpPoolStart}
          if ($IpPoolType){
            $IpPoolType = $IpPoolType.ToLower()
            if ($IpPoolType -ne "vm" -and $IpPoolType -ne "vippool"){
              Write-Error "Invalid IpPoolType provided: $IpPoolType. Accepted values are 'vm' and 'vippool'."
            }
            $IpPool['Type'] = $IpPoolType
          }
          $Subnet["IPPool"] = @($IpPool)
        } elseif ($IpPoolStart -or $IpPoolEnd){
            Write-Error "Both IpPoolStart and IpPoolEnd must be specified together." -ErrorAction Stop
        }

        if ($IpPools){
          Confirm-IpPools -IpPools $IpPools
          $Subnet["IPPool"] = $IpPools
        }

        if($Vlan){
          if ($Vlan -gt 4094 -or $Vlan -lt 1){
            Write-Error "Invalid value for Vlan : $Vlan. Valid range is 1-4094" -ErrorAction Stop
          }
          $Subnet["Vlan"] = $Vlan
        }

        if ($SubnetName){
          if ($SubnetName -notmatch $subnetNameRegex){
             Write-Error "Invalid SubnetName: $SubnetName. The name must start with an alphanumeric character, contain all alphanumeric characters or '-' or '_' or '.' and end with an alphanumeric character or '_'. The max length is 80 characters." -ErrorAction Stop
          }
          $Subnet["Name"] = $SubnetName
        }

        if ($AddressPrefixes){
          foreach ($addressPrefix in $AddressPrefixes){
            if ($addressPrefix -notmatch $cidrRegex){
              Write-Error "Invalid AddressPrefix: $addressPrefix. Please use valid CIDR format." -ErrorAction Stop
            }
          }

          if ($AddressPrefixes.length -eq 1){
            $Subnet["AddressPrefix"] = $AddressPrefixes[0]
          } else {
            $Subnet["AddressPrefixes"] = $AddressPrefixes
          }

        }

        if ($Routes){
          Confirm-Routes -Routes $Routes
          $Subnet["Route"] = $Routes

        }
      
        $null = $PSBoundParameters.Remove("IpAllocationMethod")
        $null = $PSBoundParameters.Remove("IpPoolStart")
        $null = $PSBoundParameters.Remove("IpPoolEnd")
        $null = $PSBoundParameters.Remove("IpPoolType")
        $null = $PSBoundParameters.Remove("AddressPrefixes")
        $null = $PSBoundParameters.Remove("Vlan")
        $null = $PSBoundParameters.Remove("SubnetName")
        $null = $PSBoundParameters.Remove("IpPools")
        $null = $PSBoundParameters.Remove("Routes")
        $PSBoundParameters.Add("Subnet", $Subnet)

    }
   
    return Az.StackHciVM.internal\New-AzStackHciVMVirtualNetwork @PSBoundParameters
}
