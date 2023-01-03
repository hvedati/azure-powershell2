
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create or update a resource.
.Description
Create or update a resource.
.Example
PS C:\> New-AzWebPubSub -ResourceGroupName psdemo -Name psdemo-wps -Location eastus -SkuName Standard_S1

Name                Location      SkuName
----                --------      -------
psdemo-wps          eastus        Standard_S1
.Example
PS C:\> $wps = New-AzWebPubSub -ResourceGroupName psdemo -Name psdemo-wps `
-Location eastus -SkuName Standard_S1 -IdentityType SystemAssigned -LiveTraceEnabled true `
-LiveTraceCategory @{ Name='ConnectivityLogs' ; Enabled = 'true' }, @{ Name='MessageLogs' ; Enabled = 'true' }

Name                Location      SkuName
----                --------      -------
psdemo-wps          eastus        Standard_S1

PS C:\> $wps | format-list

DisableAadAuth               : False
DisableLocalAuth             : False
EnableTlsClientCert          : False
ExternalIP                   : 20.62.134.186
HostName                     : psdemo-wps.webpubsub.azure.com
Id                           : /subscriptions/9caf2a1e-9c49-49b6-89a2-56bdec7e3f97/resourceGroups/psdemo/providers/Micr
                               osoft.SignalRService/WebPubSub/psdemo-wps
IdentityPrincipalId          :
IdentityTenantId             :
IdentityType                 :
LiveTraceCategory            :
LiveTraceEnabled             : true
Location                     : eastus
Name                         : psdemo-wps
NetworkAcLDefaultAction      : Deny
PrivateEndpointAcl           : {}
PrivateEndpointConnection    : {}
ProvisioningState            : Succeeded
PublicNetworkAccess          : Enabled
PublicNetworkAllow           : {ServerConnection, ClientConnection, RESTAPI, Trace}
PublicNetworkDeny            :
PublicPort                   : 443
ResourceLogCategory          :
ServerPort                   : 443
SharedPrivateLinkResource    : {}
SkuCapacity                  : 1
SkuFamily                    :
SkuName                      : Standard_S1
SkuSize                      : S1
SkuTier                      : Standard
SystemDataCreatedAt          : 2021-10-11 9:02:37 AM
SystemDataCreatedBy          : testuser@microsoft.com
SystemDataCreatedByType      : User
SystemDataLastModifiedAt     : 2021-10-12 7:21:58 AM
SystemDataLastModifiedBy     : testuser@microsoft.com
SystemDataLastModifiedByType : User
Tag                          : Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Models.Api20220801Preview.TrackedResourceTags
Type                         : Microsoft.SignalRService/WebPubSub
UserAssignedIdentity         : Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Models.Api20220801Preview.ManagedIdentityUserAssig
                               nedIdentities
Version                      : 1.0

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Models.Api20220801Preview.IWebPubSubResource
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

LIVETRACECATEGORY <ILiveTraceCategory[]>: Gets or sets the list of category configurations.
  [Enabled <String>]: Indicates whether or the live trace category is enabled.         Available values: true, false.         Case insensitive.
  [Name <String>]: Gets or sets the live trace category's name.         Available values: ConnectivityLogs, MessagingLogs.         Case insensitive.

PRIVATEENDPOINTACL <IPrivateEndpointAcl[]>: ACLs for requests from private endpoints
  Name <String>: Name of the private endpoint connection
  [Allow <WebPubSubRequestType[]>]: Allowed request types. The value can be one or more of: ClientConnection, ServerConnection, RESTAPI.
  [Deny <WebPubSubRequestType[]>]: Denied request types. The value can be one or more of: ClientConnection, ServerConnection, RESTAPI.

RESOURCELOGCATEGORY <IResourceLogCategory[]>: Gets or sets the list of category configurations.
  [Enabled <String>]: Indicates whether or the resource log category is enabled.         Available values: true, false.         Case insensitive.
  [Name <String>]: Gets or sets the resource log category's name.         Available values: ConnectivityLogs, MessagingLogs.         Case insensitive.
#>
function New-AzWebPubSub
{
  [OutputType([Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Models.Api20220801Preview.IWebPubSubResource])]
  [CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
  param(
    [Parameter(Mandatory)]
    [Alias('ResourceName')]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Path')]
    [System.String]
    # The name of the resource.
    ${Name},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Path')]
    [System.String]
    # The name of the resource group that contains the resource.
    # You can obtain this value from the Azure Resource Manager API or the portal.
    ${ResourceGroupName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String]
    # Gets subscription Id which uniquely identify the Microsoft Azure subscription.
    # The subscription ID forms part of the URI for every service call.
    ${SubscriptionId},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # DisableLocalAuthEnable or disable aad authWhen set as true, connection with AuthType=aad won't work.
    ${DisableAadAuth},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # DisableLocalAuthEnable or disable local auth with AccessKeyWhen set as true, connection with AccessKey=xxx won't work.
    ${DisableLocalAuth},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Request client certificate during TLS handshake if enabled
    ${EnableTlsClientCert},

    [Parameter()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Support.ManagedIdentityType])]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Support.ManagedIdentityType]
    # Represent the identity type: systemAssigned, userAssigned, None
    ${IdentityType},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Models.Api20220801Preview.ILiveTraceCategory[]]
    # Gets or sets the list of category configurations.
    # To construct, see NOTES section for LIVETRACECATEGORY properties and create a hash table.
    ${LiveTraceCategory},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Body')]
    [System.String]
    # Indicates whether or not enable live trace.When it's set to true, live trace client can connect to the service.Otherwise, live trace client can't connect to the service, so that you are unable to receive any log, no matter what you configure in "categories".Available values: true, false.Case insensitive.
    ${LiveTraceEnabled},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Body')]
    [System.String]
    # The GEO location of the resource.
    # e.g.
    # West US | East US | North Central US | South Central US.
    ${Location},

    [Parameter()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Support.AclAction])]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Support.AclAction]
    # Default action when no other rule matches
    ${NetworkAcLDefaultAction},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Models.Api20220801Preview.IPrivateEndpointAcl[]]
    # ACLs for requests from private endpoints
    # To construct, see NOTES section for PRIVATEENDPOINTACL properties and create a hash table.
    ${PrivateEndpointAcl},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Body')]
    [System.String]
    # Enable or disable public network access.
    # Default to "Enabled".When it's Enabled, network ACLs still apply.When it's Disabled, public network access is always disabled no matter what you set in network ACLs.
    ${PublicNetworkAccess},

    [Parameter()]
    [AllowEmptyCollection()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Support.WebPubSubRequestType])]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Support.WebPubSubRequestType[]]
    # Allowed request types.
    # The value can be one or more of: ClientConnection, ServerConnection, RESTAPI.
    ${PublicNetworkAllow},

    [Parameter()]
    [AllowEmptyCollection()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Support.WebPubSubRequestType])]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Support.WebPubSubRequestType[]]
    # Denied request types.
    # The value can be one or more of: ClientConnection, ServerConnection, RESTAPI.
    ${PublicNetworkDeny},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Models.Api20220801Preview.IResourceLogCategory[]]
    # Gets or sets the list of category configurations.
    # To construct, see NOTES section for RESOURCELOGCATEGORY properties and create a hash table.
    ${ResourceLogCategory},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Body')]
    [System.Int32]
    # Optional, integer.
    # The unit count of the resource.
    # 1 by default.If present, following values are allowed: Free: 1 Standard: 1,2,5,10,20,50,100
    ${SkuCapacity},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Body')]
    [System.String]
    # The name of the SKU.
    # Required.Allowed values: Standard_S1, Free_F1
    ${SkuName},

    [Parameter()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Support.WebPubSubSkuTier])]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Support.WebPubSubSkuTier]
    # Optional tier of this particular SKU.
    # 'Standard' or 'Free'.
    # `Basic` is deprecated, use `Standard` instead.
    ${SkuTier},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Models.Api20220801Preview.ITrackedResourceTags]))]
    [System.Collections.Hashtable]
    # Tags of the service which is a list of key value pairs that describe the resource.
    ${Tag},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Models.Api20220801Preview.IManagedIdentityUserAssignedIdentities]))]
    [System.Collections.Hashtable]
    # Get or set the user assigned identities
    ${UserAssignedIdentity},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The credentials, account, tenant, and subscription used for communication with Azure.
    ${DefaultProfile},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command as a job
    ${AsJob},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command asynchronously
    ${NoWait},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
  )

  process
  {
    try
    {
      Az.SignalR.internal\New-AzWebPubSub @PSBoundParameters
    } catch
    {
      throw
    }
  }
}