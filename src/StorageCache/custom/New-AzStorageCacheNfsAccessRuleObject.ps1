
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
Create an in-memory object for NfsAccessRule.
.Description
Create an in-memory object for NfsAccessRule.

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.StorageCache.Models.Api20230501.NfsAccessRule
.Link
https://learn.microsoft.com/powershell/module/Az.StorageCache/new-AzStorageCacheNfsAccessRuleObject
#>
function New-AzStorageCacheNfsAccessRuleObject {
    [OutputType('Microsoft.Azure.PowerShell.Cmdlets.StorageCache.Models.Api20230501.NfsAccessRule')]
    [CmdletBinding(PositionalBinding=$false)]
    Param(

        [Parameter(Mandatory, HelpMessage="Access allowed by this rule.")]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.StorageCache.Support.NfsAccessRuleAccess])]
        [Microsoft.Azure.PowerShell.Cmdlets.StorageCache.Support.NfsAccessRuleAccess]
        $Access,
        [Parameter(HelpMessage="GID value that replaces 0 when rootSquash is true. This will use the value of anonymousUID if not provided.")]
        [string]
        $AnonymousGid,
        [Parameter(HelpMessage="UID value that replaces 0 when rootSquash is true. 65534 will be used if not provided.")]
        [string]
        $AnonymousUid,
        [Parameter(HelpMessage="Filter applied to the scope for this rule. The filter's format depends on its scope. 'default' scope matches all clients and has no filter value. 'network' scope takes a filter in CIDR format (for example, 10.99.1.0/24). 'host' takes an IP address or fully qualified domain name as filter. If a client does not match any filter rule and there is no default rule, access is denied.")]
        [string]
        $Filter,
        [Parameter(HelpMessage="Map root accesses to anonymousUID and anonymousGID.")]
        [bool]
        $RootSquash,
        [Parameter(Mandatory, HelpMessage="Scope for this rule. The scope and filter determine which clients match the rule.")]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.StorageCache.Support.NfsAccessRuleScope])]
        [Microsoft.Azure.PowerShell.Cmdlets.StorageCache.Support.NfsAccessRuleScope]
        $Scope,
        [Parameter(HelpMessage="For the default policy, allow access to subdirectories under the root export. If this is set to no, clients can only mount the path '/'. If set to yes, clients can mount a deeper path, like '/a/b'.")]
        [bool]
        $SubmountAccess,
        [Parameter(HelpMessage="Allow SUID semantics.")]
        [bool]
        $Suid
    )

    process {
        $Object = [Microsoft.Azure.PowerShell.Cmdlets.StorageCache.Models.Api20230501.NfsAccessRule]::New()

        if ($PSBoundParameters.ContainsKey('Access')) {
            $Object.Access = $Access
        }
        if ($PSBoundParameters.ContainsKey('AnonymousGid')) {
            $Object.AnonymousGid = $AnonymousGid
        }
        if ($PSBoundParameters.ContainsKey('AnonymousUid')) {
            $Object.AnonymousUid = $AnonymousUid
        }
        if ($PSBoundParameters.ContainsKey('Filter')) {
            $Object.Filter = $Filter
        }
        if ($PSBoundParameters.ContainsKey('RootSquash')) {
            $Object.RootSquash = $RootSquash
        }
        if ($PSBoundParameters.ContainsKey('Scope')) {
            $Object.Scope = $Scope
        }
        if ($PSBoundParameters.ContainsKey('SubmountAccess')) {
            $Object.SubmountAccess = $SubmountAccess
        }
        if ($PSBoundParameters.ContainsKey('Suid')) {
            $Object.Suid = $Suid
        }
        return $Object
    }
}

