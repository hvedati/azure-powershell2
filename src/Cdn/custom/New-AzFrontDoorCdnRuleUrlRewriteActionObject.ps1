
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
Create an in-memory object for UrlRewriteAction.
.Description
Create an in-memory object for UrlRewriteAction.

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20230501.UrlRewriteAction
.Link
https://learn.microsoft.com/powershell/module/az.Cdn/new-AzFrontDoorCdnRuleUrlRewriteActionObject
#>
function New-AzFrontDoorCdnRuleUrlRewriteActionObject {
    [OutputType('Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20230501.UrlRewriteAction')]
    [CmdletBinding(PositionalBinding=$false)]
    Param(

        [Parameter(Mandatory, HelpMessage="Define the relative URL to which the above requests will be rewritten by.")]
        [string]
        $ParameterDestination,
        [Parameter(HelpMessage="Whether to preserve unmatched path. Default value is true.")]
        [bool]
        $ParameterPreserveUnmatchedPath,
        [Parameter(Mandatory, HelpMessage="define a request URI pattern that identifies the type of requests that may be rewritten. If value is blank, all strings are matched.")]
        [string]
        $ParameterSourcePattern,
        [Parameter(Mandatory, HelpMessage="The name of the action for the delivery rule.")]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.Cdn.Support.DeliveryRuleAction])]
        [Microsoft.Azure.PowerShell.Cmdlets.Cdn.Support.DeliveryRuleAction]
        $Name
    )

    process {
        $Object = [Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20230501.UrlRewriteAction]::New()

        if ($PSBoundParameters.ContainsKey('ParameterDestination')) {
            $Object.ParameterDestination = $ParameterDestination
        }
        if ($PSBoundParameters.ContainsKey('ParameterPreserveUnmatchedPath')) {
            $Object.ParameterPreserveUnmatchedPath = $ParameterPreserveUnmatchedPath
        }
        if ($PSBoundParameters.ContainsKey('ParameterSourcePattern')) {
            $Object.ParameterSourcePattern = $ParameterSourcePattern
        }
        if ($PSBoundParameters.ContainsKey('Name')) {
            $Object.Name = $Name
        }
        return $Object
    }
}

