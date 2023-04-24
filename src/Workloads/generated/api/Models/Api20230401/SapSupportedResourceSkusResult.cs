// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401
{
    using static Microsoft.Azure.PowerShell.Cmdlets.Workloads.Runtime.Extensions;

    /// <summary>
    /// The list of supported SKUs for different resources which are part of SAP deployment.
    /// </summary>
    public partial class SapSupportedResourceSkusResult :
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.ISapSupportedResourceSkusResult,
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.ISapSupportedResourceSkusResultInternal
    {

        /// <summary>Backing field for <see cref="SupportedSku" /> property.</summary>
        private Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.ISapSupportedSku[] _supportedSku;

        /// <summary>Gets the list of SAP supported SKUs.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Owned)]
        public Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.ISapSupportedSku[] SupportedSku { get => this._supportedSku; set => this._supportedSku = value; }

        /// <summary>Creates an new <see cref="SapSupportedResourceSkusResult" /> instance.</summary>
        public SapSupportedResourceSkusResult()
        {

        }
    }
    /// The list of supported SKUs for different resources which are part of SAP deployment.
    public partial interface ISapSupportedResourceSkusResult :
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Runtime.IJsonSerializable
    {
        /// <summary>Gets the list of SAP supported SKUs.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"Gets the list of SAP supported SKUs.",
        SerializedName = @"supportedSkus",
        PossibleTypes = new [] { typeof(Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.ISapSupportedSku) })]
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.ISapSupportedSku[] SupportedSku { get; set; }

    }
    /// The list of supported SKUs for different resources which are part of SAP deployment.
    internal partial interface ISapSupportedResourceSkusResultInternal

    {
        /// <summary>Gets the list of SAP supported SKUs.</summary>
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.ISapSupportedSku[] SupportedSku { get; set; }

    }
}