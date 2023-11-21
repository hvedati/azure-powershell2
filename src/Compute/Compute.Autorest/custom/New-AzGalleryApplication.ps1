
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create or update a gallery Application Definition.
.Description
Create or update a gallery Application Definition.
#>

function New-AzGalleryApplication {
    [OutputType([Microsoft.Azure.PowerShell.Cmdlets.Compute.Models.Api20220103.IGalleryApplication])]
    [CmdletBinding(PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Medium')]
    param(
        [Parameter(Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Path')]
        [System.String]
        # The name of the Shared Application Gallery in which the Application Definition is to be created.
        ${GalleryName},

        [Parameter(Mandatory)]
        [Alias('GalleryApplicationName')]
        [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Path')]
        [System.String]
        # The name of the gallery Application Definition to be created or updated.
        # The allowed characters are alphabets and numbers with dots, dashes, and periods allowed in the middle.
        # The maximum length is 80 characters.
        ${Name},

        [Parameter(Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Path')]
        [System.String]
        # The name of the resource group.
        ${ResourceGroupName},

        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Path')]
        [Microsoft.Azure.PowerShell.Cmdlets.Compute.Runtime.DefaultInfo(Script = '(Get-AzContext).Subscription.Id')]
        [System.String]
        # Subscription credentials which uniquely identify Microsoft Azure subscription.
        # The subscription ID forms part of the URI for every service call.
        ${SubscriptionId},

        [Parameter(Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Body')]
        [System.String]
        # Resource location
        ${Location},

        [Parameter(Mandatory)]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.Compute.Support.OperatingSystemTypes])]
        [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.Compute.Support.OperatingSystemTypes]
        # This property allows you to specify the supported type of the OS that application is built for.
        #
        #
        #  Possible values are:
        #
        #  **Windows**
        #
        #  **Linux**
        ${SupportedOSType},

        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Body')]
        [System.String]
        # The description of this gallery Application Definition resource.
        # This property is updatable.
        ${Description},

        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.Compute.Runtime.Info(PossibleTypes = ([Microsoft.Azure.PowerShell.Cmdlets.Compute.Models.Api10.IResourceTags]))]
        [System.Collections.Hashtable]
        # Resource tags
        ${Tag},

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

    process {
        Az.Compute.internal\New-AzGalleryApplication @PSBoundParameters
    }
}