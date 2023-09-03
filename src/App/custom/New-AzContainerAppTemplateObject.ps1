
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
Create an in-memory object for Container.
.Description
Create an in-memory object for Container.

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.App.Models.Api20220301.Container
#>
function New-AzContainerAppTemplateObject {
    [OutputType('Microsoft.Azure.PowerShell.Cmdlets.App.Models.Api20220301.Container')]
    [CmdletBinding(PositionalBinding=$false)]
    Param(

        [Parameter(HelpMessage="Container start command arguments.")]
        [string[]]
        $Arg,
        [Parameter(HelpMessage="Container start command.")]
        [string[]]
        $Command,
        [Parameter(HelpMessage="Container environment variables.")]
        [Microsoft.Azure.PowerShell.Cmdlets.App.Models.Api20220301.IEnvironmentVar[]]
        $Env,
        [Parameter(HelpMessage="Container image tag.")]
        [string]
        $Image,
        [Parameter(HelpMessage="Custom container name.")]
        [string]
        $Name,
        [Parameter(HelpMessage="List of probes for the container.")]
        [Microsoft.Azure.PowerShell.Cmdlets.App.Models.Api20220301.IContainerAppProbe[]]
        $Probe,
        [Parameter(HelpMessage="Required CPU in cores, e.g. 0.5.")]
        [double]
        $ResourceCpu,
        [Parameter(HelpMessage="Required memory, e.g. `"250Mb`".")]
        [string]
        $ResourceMemory,
        [Parameter(HelpMessage="Container volume mounts.")]
        [Microsoft.Azure.PowerShell.Cmdlets.App.Models.Api20220301.IVolumeMount[]]
        $VolumeMount
    )

    process {
        $Object = [Microsoft.Azure.PowerShell.Cmdlets.App.Models.Api20220301.Container]::New()

        if ($PSBoundParameters.ContainsKey('Arg')) {
            $Object.Arg = $Arg
        }
        if ($PSBoundParameters.ContainsKey('Command')) {
            $Object.Command = $Command
        }
        if ($PSBoundParameters.ContainsKey('Env')) {
            $Object.Env = $Env
        }
        if ($PSBoundParameters.ContainsKey('Image')) {
            $Object.Image = $Image
        }
        if ($PSBoundParameters.ContainsKey('Name')) {
            $Object.Name = $Name
        }
        if ($PSBoundParameters.ContainsKey('Probe')) {
            $Object.Probe = $Probe
        }
        if ($PSBoundParameters.ContainsKey('ResourceCpu')) {
            $Object.ResourceCpu = $ResourceCpu
        }
        if ($PSBoundParameters.ContainsKey('ResourceMemory')) {
            $Object.ResourceMemory = $ResourceMemory
        }
        if ($PSBoundParameters.ContainsKey('VolumeMount')) {
            $Object.VolumeMount = $VolumeMount
        }
        return $Object
    }
}

