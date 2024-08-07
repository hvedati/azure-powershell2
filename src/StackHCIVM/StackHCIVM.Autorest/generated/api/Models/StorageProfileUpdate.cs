// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Models
{
    using static Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Runtime.Extensions;

    public partial class StorageProfileUpdate :
        Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Models.IStorageProfileUpdate,
        Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Models.IStorageProfileUpdateInternal
    {

        /// <summary>Backing field for <see cref="DataDisk" /> property.</summary>
        private System.Collections.Generic.List<Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Models.IStorageProfileUpdateDataDisksItem> _dataDisk;

        /// <summary>adds data disks to the virtual machine instance for the update call</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Origin(Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.PropertyOrigin.Owned)]
        public System.Collections.Generic.List<Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Models.IStorageProfileUpdateDataDisksItem> DataDisk { get => this._dataDisk; set => this._dataDisk = value; }

        /// <summary>Creates an new <see cref="StorageProfileUpdate" /> instance.</summary>
        public StorageProfileUpdate()
        {

        }
    }
    public partial interface IStorageProfileUpdate :
        Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Runtime.IJsonSerializable
    {
        /// <summary>adds data disks to the virtual machine instance for the update call</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Read = true,
        Create = true,
        Update = true,
        Description = @"adds data disks to the virtual machine instance for the update call",
        SerializedName = @"dataDisks",
        PossibleTypes = new [] { typeof(Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Models.IStorageProfileUpdateDataDisksItem) })]
        System.Collections.Generic.List<Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Models.IStorageProfileUpdateDataDisksItem> DataDisk { get; set; }

    }
    internal partial interface IStorageProfileUpdateInternal

    {
        /// <summary>adds data disks to the virtual machine instance for the update call</summary>
        System.Collections.Generic.List<Microsoft.Azure.PowerShell.Cmdlets.StackHCIVM.Models.IStorageProfileUpdateDataDisksItem> DataDisk { get; set; }

    }
}