// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401
{
    using static Microsoft.Azure.PowerShell.Cmdlets.Workloads.Runtime.Extensions;

    /// <summary>Defines the collection of SAP Central Services Instance resources.</summary>
    public partial class SapCentralInstanceList :
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.ISapCentralInstanceList,
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.ISapCentralInstanceListInternal
    {

        /// <summary>Backing field for <see cref="NextLink" /> property.</summary>
        private string _nextLink;

        /// <summary>Gets the value of next link.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Owned)]
        public string NextLink { get => this._nextLink; set => this._nextLink = value; }

        /// <summary>Backing field for <see cref="Value" /> property.</summary>
        private Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.ISapCentralServerInstance[] _value;

        /// <summary>Gets the list of SAP central services instance resources.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Owned)]
        public Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.ISapCentralServerInstance[] Value { get => this._value; set => this._value = value; }

        /// <summary>Creates an new <see cref="SapCentralInstanceList" /> instance.</summary>
        public SapCentralInstanceList()
        {

        }
    }
    /// Defines the collection of SAP Central Services Instance resources.
    public partial interface ISapCentralInstanceList :
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Runtime.IJsonSerializable
    {
        /// <summary>Gets the value of next link.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"Gets the value of next link.",
        SerializedName = @"nextLink",
        PossibleTypes = new [] { typeof(string) })]
        string NextLink { get; set; }
        /// <summary>Gets the list of SAP central services instance resources.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"Gets the list of SAP central services instance resources.",
        SerializedName = @"value",
        PossibleTypes = new [] { typeof(Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.ISapCentralServerInstance) })]
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.ISapCentralServerInstance[] Value { get; set; }

    }
    /// Defines the collection of SAP Central Services Instance resources.
    internal partial interface ISapCentralInstanceListInternal

    {
        /// <summary>Gets the value of next link.</summary>
        string NextLink { get; set; }
        /// <summary>Gets the list of SAP central services instance resources.</summary>
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.ISapCentralServerInstance[] Value { get; set; }

    }
}