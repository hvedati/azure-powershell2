function Update-AzAzureStackHciImage{
    [OutputType([Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Models.Api20221215Preview.IMarketplaceGalleryImages],ParameterSetName='Marketplace' )]
    [OutputType([Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Models.Api20221215Preview.IGalleryImages],ParameterSetName='GalleryImage' )]
    [CmdletBinding(PositionalBinding=$false)]
   
  param(
    [Parameter(ParameterSetName='ByName', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Path')]
    [System.String]
    # Name of the gallery image
    ${Name},

    [Parameter(ParameterSetName='ByName', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Path')]
    [System.String]
    # The name of the resource group.
    # The name is case insensitive.
    ${ResourceGroupName},

    [Parameter(ParameterSetName='ByName')]
    [Parameter(ParameterSetName='ByResourceId')] 
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String[]]
    # The ID of the target subscription.
    ${SubscriptionId},

 
    [Parameter(ParameterSetName='ByResourceId', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Path')]
    [System.String]
    # The ID of the target subscription.
    ${ResourceId},

    [Parameter(ParameterSetName='ByName')]
    [Parameter(ParameterSetName='ByResourceId')] 
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Models.Api20221215Preview.IGalleryImagesUpdateRequestTags]))]
    [System.Collections.Hashtable]
    # Resource tags
    ${Tags},

    [Parameter(ParameterSetName='ByName')]
    [Parameter(ParameterSetName='ByResourceId')]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.AzureStackHCI.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The credentials, account, tenant, and subscription used for communication with Azure.
    ${DefaultProfile}
)

    process {
        if ($PSCmdlet.ParameterSetName -eq "ByName"){
            $isGalleryImage = $false
            $isMarketplaceGalleryImage = $false

            try {
                Az.AzureStackHci\Get-AzAzureStackHciGalleryImage @PSBoundParameters
                $isGalleryImage = $true 
            }
            catch {
                try {
                Az.AzureStackHci\Get-AzAzureStackHciMarketplaceGalleryImage @PSBoundParameters
                $isMarketplaceGalleryImage = $true 
                }
                catch {
                    Write-Error "An Image with name: $Name does not exist in Resource Group: $ResourceGroupName"
                }
            }

            if ($isGalleryImage){
                return  Az.AzureStackHci\Update-AzAzureStackHciGalleryImage @PSBoundParameters
            } 

            if ($isMarketplaceGalleryImage){
                return  Az.AzureStackHci\Update-AzAzureStackHciMarketplaceGalleryImage @PSBoundParameters
            }

        }  elseif ($PSCmdlet.ParameterSetName -eq "ByResourceId"){
        
               if ($ResourceId -match $galImageRegex){
                
                    $subscriptionId = $($Matches['subscriptionId'])
                    $resourceGroupName = $($Matches['resourceGroupName'])
                    $resourceName = $($Matches['imageName'])
                    $null = $PSBoundParameters.Remove("ResourceId")
                    $PSBoundParameters.Add("Name", $resourceName)
                    $PSBoundParameters.Add("ResourceGroupName", $resourceGroupName)
                    $null = $PSBoundParameters.Remove("SubscriptionId")
                    $PSBoundParameters.Add("SubscriptionId", $subscriptionId)

                    return  Az.AzureStackHci\Update-AzAzureStackHciGalleryImage @PSBoundParameters
                    
                } elseif ($ResourceId -match $marketplaceGalImageRegex){
                    $subscriptionId = $($Matches['subscriptionId'])
                    $resourceGroupName = $($Matches['resourceGroupName'])
                    $resourceName = $($Matches['imageName'])
                    $null = $PSBoundParameters.Remove("ResourceId")
                    $PSBoundParameters.Add("Name", $resourceName)
                    $PSBoundParameters.Add("ResourceGroupName", $resourceGroupName)
                    $null = $PSBoundParameters.Remove("SubscriptionId")
                    $PSBoundParameters.Add("SubscriptionId", $subscriptionId)

                    return  Az.AzureStackHci\Update-AzAzureStackHciMarketplaceGalleryImage @PSBoundParameters

                } else {
                    Write-Error "Resource ID is invalid: $ResourceId"
                }
        }    
    }
} 