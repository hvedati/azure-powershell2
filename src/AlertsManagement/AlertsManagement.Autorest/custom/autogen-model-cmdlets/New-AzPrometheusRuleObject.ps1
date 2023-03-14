
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
Create an in-memory object for PrometheusRule.
.Description
Create an in-memory object for PrometheusRule.

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Alerts.Models.Api20230301.PrometheusRule
.Link
https://learn.microsoft.com/powershell/module/az./new-AzPrometheusRuleObject
#>
function New-AzPrometheusRuleObject {
    [OutputType('Microsoft.Azure.PowerShell.Cmdlets.Alerts.Models.Api20230301.PrometheusRule')]
    [CmdletBinding(PositionalBinding=$false)]
    Param(

        [Parameter(HelpMessage="One or more action group resource IDs. Each is activated when an alert is fired.")]
        [string[]]
        $ActionGroup,
        [Parameter(HelpMessage="The properties of an action group object.")]
        [Microsoft.Azure.PowerShell.Cmdlets.Alerts.Models.Api20230301.IStringDictionary]
        $ActionProperty,
        [Parameter(HelpMessage="Alert rule name.")]
        [string]
        $Alert,
        [Parameter(HelpMessage="Alert annotation key-value pairs.")]
        [Microsoft.Azure.PowerShell.Cmdlets.Alerts.Models.Api20230301.IStringDictionary]
        $Annotation,
        [Parameter(HelpMessage="Enable/disable rule.")]
        [bool]
        $Enabled,
        [Parameter(Mandatory, HelpMessage="The PromQL expression to evaluate. Every evaluation cycle this is evaluated at the current time, and the result recorded as a new set of time series with the metric name as given by 'record'.")]
        [string]
        $Expression,
        [Parameter(HelpMessage="The amount of time alert must be active before firing.")]
        [System.TimeSpan]
        $For,
        [Parameter(HelpMessage="Labels to add or overwrite before storing the result.")]
        [Microsoft.Azure.PowerShell.Cmdlets.Alerts.Models.Api20230301.IStringDictionary]
        $Label,
        [Parameter(HelpMessage="Recorded metrics name.")]
        [string]
        $Record,
        [Parameter(HelpMessage="Enable alert auto-resolution.")]
        [bool]
        $ResolveConfigurationAutoResolved,
        [Parameter(HelpMessage="Alert auto-resolution timeout.")]
        [System.TimeSpan]
        $ResolveConfigurationTimeToResolve,
        [Parameter(HelpMessage="The severity of the alerts fired by the rule.")]
        [int]
        $Severity
    )

    process {
        $Object = [Microsoft.Azure.PowerShell.Cmdlets.Alerts.Models.Api20230301.PrometheusRule]::New()

        if ($PSBoundParameters.ContainsKey('ActionGroup')) {
            $Object.ActionGroup = $ActionGroup
        }
        if ($PSBoundParameters.ContainsKey('ActionProperty')) {
            $Object.ActionProperty = $ActionProperty
        }
        if ($PSBoundParameters.ContainsKey('Alert')) {
            $Object.Alert = $Alert
        }
        if ($PSBoundParameters.ContainsKey('Annotation')) {
            $Object.Annotation = $Annotation
        }
        if ($PSBoundParameters.ContainsKey('Enabled')) {
            $Object.Enabled = $Enabled
        }
        if ($PSBoundParameters.ContainsKey('Expression')) {
            $Object.Expression = $Expression
        }
        if ($PSBoundParameters.ContainsKey('For')) {
            $Object.For = $For
        }
        if ($PSBoundParameters.ContainsKey('Label')) {
            $Object.Label = $Label
        }
        if ($PSBoundParameters.ContainsKey('Record')) {
            $Object.Record = $Record
        }
        if ($PSBoundParameters.ContainsKey('ResolveConfigurationAutoResolved')) {
            $Object.ResolveConfigurationAutoResolved = $ResolveConfigurationAutoResolved
        }
        if ($PSBoundParameters.ContainsKey('ResolveConfigurationTimeToResolve')) {
            $Object.ResolveConfigurationTimeToResolve = $ResolveConfigurationTimeToResolve
        }
        if ($PSBoundParameters.ContainsKey('Severity')) {
            $Object.Severity = $Severity
        }
        return $Object
    }
}

