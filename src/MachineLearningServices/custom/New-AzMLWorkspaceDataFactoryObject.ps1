
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
Create an in-memory object for DataFactory.
.Description
Create an in-memory object for DataFactory.

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Models.Api20220501.DataFactory
.Link
https://learn.microsoft.com/powershell/module/az.MachineLearningServices/new-AzMLWorkspaceDataFactoryObject
#>
function New-AzMLWorkspaceDataFactoryObject {
    [OutputType('Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Models.Api20220501.DataFactory')]
    [CmdletBinding(PositionalBinding=$false)]
    Param(

        [Parameter(HelpMessage="The description of the Machine Learning compute.")]
        [string]
        $Description,
        [Parameter(HelpMessage="Opt-out of local authentication and ensure customers can use only MSI and AAD exclusively for authentication.")]
        [bool]
        $DisableLocalAuth,
        [Parameter(HelpMessage="ARM resource id of the underlying compute.")]
        [string]
        $ResourceId
    )

    process {
        $Object = [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Models.Api20220501.DataFactory]::New()
        $Object.Type = 'DataFactory'

        if ($PSBoundParameters.ContainsKey('Description')) {
            $Object.Description = $Description
        }
        if ($PSBoundParameters.ContainsKey('DisableLocalAuth')) {
            $Object.DisableLocalAuth = $DisableLocalAuth
        }
        if ($PSBoundParameters.ContainsKey('ResourceId')) {
            $Object.ResourceId = $ResourceId
        }
        return $Object
    }
}

