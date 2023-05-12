
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
Create an in-memory object for EventNameFilter.
.Description
Create an in-memory object for EventNameFilter.

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Models.Api20220801Preview.EventNameFilter
#>
function New-AzWebPubSubEventNameFilterObject
{
    [OutputType('Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Models.Api20220801Preview.EventNameFilter')]
    [CmdletBinding(PositionalBinding=$false)]
    Param(

        [Parameter(HelpMessage="Gets or sets a list of system events. Supported events: `"connected`" and `"disconnected`". Blocking event `"connect`" is not supported because it requires a response.")]
        [string[]]
        $SystemEvent,
        [Parameter(HelpMessage="Gets or sets a matching pattern for event names.
        There are 3 kinds of patterns supported:
            1. `"*`", it matches any event name
            2. Combine multiple events with `",`", for example `"event1,event2`", it matches events `"event1`" and `"event2`"
            3. A single event name, for example, `"event1`", it matches `"event1`".")]
        [string]
        $UserEventPattern
    )

    process
    {
        $Object = [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Models.Api20220801Preview.EventNameFilter]::New()

        if ($PSBoundParameters.ContainsKey('SystemEvent'))
        {
            $Object.SystemEvent = $SystemEvent
        }
        if ($PSBoundParameters.ContainsKey('UserEventPattern'))
        {
            $Object.UserEventPattern = $UserEventPattern
        }
        return $Object
    }
}

