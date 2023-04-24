// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401
{
    using static Microsoft.Azure.PowerShell.Cmdlets.Workloads.Runtime.Extensions;

    /// <summary>Describes the properties of a provider instance.</summary>
    public partial class ProviderInstanceProperties :
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstanceProperties,
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal
    {

        /// <summary>Backing field for <see cref="Error" /> property.</summary>
        private Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IError _error;

        /// <summary>Defines the provider instance errors.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Owned)]
        internal Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IError Error { get => (this._error = this._error ?? new Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.Error()); }

        /// <summary>Server-defined set of error codes.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Inlined)]
        public string ErrorCode { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IErrorInternal)Error).Code; }

        /// <summary>Array of details about specific errors that led to this reported error.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Inlined)]
        public Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IError[] ErrorDetail { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IErrorInternal)Error).Detail; }

        /// <summary>
        /// Object containing more specific information than the current object about the error.
        /// </summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Inlined)]
        public Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IErrorInnerError ErrorInnerError { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IErrorInternal)Error).InnerError; }

        /// <summary>Human-readable representation of the error.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Inlined)]
        public string ErrorMessage { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IErrorInternal)Error).Message; }

        /// <summary>Target of the error.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Inlined)]
        public string ErrorTarget { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IErrorInternal)Error).Target; }

        /// <summary>Internal Acessors for Error</summary>
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IError Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal.Error { get => (this._error = this._error ?? new Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.Error()); set { {_error = value;} } }

        /// <summary>Internal Acessors for ErrorCode</summary>
        string Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal.ErrorCode { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IErrorInternal)Error).Code; set => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IErrorInternal)Error).Code = value; }

        /// <summary>Internal Acessors for ErrorDetail</summary>
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IError[] Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal.ErrorDetail { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IErrorInternal)Error).Detail; set => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IErrorInternal)Error).Detail = value; }

        /// <summary>Internal Acessors for ErrorInnerError</summary>
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IErrorInnerError Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal.ErrorInnerError { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IErrorInternal)Error).InnerError; set => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IErrorInternal)Error).InnerError = value; }

        /// <summary>Internal Acessors for ErrorMessage</summary>
        string Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal.ErrorMessage { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IErrorInternal)Error).Message; set => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IErrorInternal)Error).Message = value; }

        /// <summary>Internal Acessors for ErrorTarget</summary>
        string Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal.ErrorTarget { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IErrorInternal)Error).Target; set => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IErrorInternal)Error).Target = value; }

        /// <summary>Internal Acessors for ProvisioningState</summary>
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support.WorkloadMonitorProvisioningState? Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal.ProvisioningState { get => this._provisioningState; set { {_provisioningState = value;} } }

        /// <summary>Backing field for <see cref="ProviderSetting" /> property.</summary>
        private Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderSpecificProperties _providerSetting;

        /// <summary>Defines the provider specific properties.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Owned)]
        public Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderSpecificProperties ProviderSetting { get => (this._providerSetting = this._providerSetting ?? new Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.ProviderSpecificProperties()); set => this._providerSetting = value; }

        /// <summary>Backing field for <see cref="ProvisioningState" /> property.</summary>
        private Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support.WorkloadMonitorProvisioningState? _provisioningState;

        /// <summary>State of provisioning of the provider instance</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Owned)]
        public Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support.WorkloadMonitorProvisioningState? ProvisioningState { get => this._provisioningState; }

        /// <summary>Creates an new <see cref="ProviderInstanceProperties" /> instance.</summary>
        public ProviderInstanceProperties()
        {

        }
    }
    /// Describes the properties of a provider instance.
    public partial interface IProviderInstanceProperties :
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Runtime.IJsonSerializable
    {
        /// <summary>Server-defined set of error codes.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Runtime.Info(
        Required = false,
        ReadOnly = true,
        Description = @"Server-defined set of error codes.",
        SerializedName = @"code",
        PossibleTypes = new [] { typeof(string) })]
        string ErrorCode { get;  }
        /// <summary>Array of details about specific errors that led to this reported error.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Runtime.Info(
        Required = false,
        ReadOnly = true,
        Description = @"Array of details about specific errors that led to this reported error.",
        SerializedName = @"details",
        PossibleTypes = new [] { typeof(Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IError) })]
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IError[] ErrorDetail { get;  }
        /// <summary>
        /// Object containing more specific information than the current object about the error.
        /// </summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Runtime.Info(
        Required = false,
        ReadOnly = true,
        Description = @"Object containing more specific information than  the current object about the error.",
        SerializedName = @"innerError",
        PossibleTypes = new [] { typeof(Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IErrorInnerError) })]
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IErrorInnerError ErrorInnerError { get;  }
        /// <summary>Human-readable representation of the error.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Runtime.Info(
        Required = false,
        ReadOnly = true,
        Description = @"Human-readable representation of the error.",
        SerializedName = @"message",
        PossibleTypes = new [] { typeof(string) })]
        string ErrorMessage { get;  }
        /// <summary>Target of the error.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Runtime.Info(
        Required = false,
        ReadOnly = true,
        Description = @"Target of the error.",
        SerializedName = @"target",
        PossibleTypes = new [] { typeof(string) })]
        string ErrorTarget { get;  }
        /// <summary>Defines the provider specific properties.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"Defines the provider specific properties.",
        SerializedName = @"providerSettings",
        PossibleTypes = new [] { typeof(Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderSpecificProperties) })]
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderSpecificProperties ProviderSetting { get; set; }
        /// <summary>State of provisioning of the provider instance</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Runtime.Info(
        Required = false,
        ReadOnly = true,
        Description = @"State of provisioning of the provider instance",
        SerializedName = @"provisioningState",
        PossibleTypes = new [] { typeof(Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support.WorkloadMonitorProvisioningState) })]
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support.WorkloadMonitorProvisioningState? ProvisioningState { get;  }

    }
    /// Describes the properties of a provider instance.
    internal partial interface IProviderInstancePropertiesInternal

    {
        /// <summary>Defines the provider instance errors.</summary>
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IError Error { get; set; }
        /// <summary>Server-defined set of error codes.</summary>
        string ErrorCode { get; set; }
        /// <summary>Array of details about specific errors that led to this reported error.</summary>
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IError[] ErrorDetail { get; set; }
        /// <summary>
        /// Object containing more specific information than the current object about the error.
        /// </summary>
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IErrorInnerError ErrorInnerError { get; set; }
        /// <summary>Human-readable representation of the error.</summary>
        string ErrorMessage { get; set; }
        /// <summary>Target of the error.</summary>
        string ErrorTarget { get; set; }
        /// <summary>Defines the provider specific properties.</summary>
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderSpecificProperties ProviderSetting { get; set; }
        /// <summary>State of provisioning of the provider instance</summary>
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support.WorkloadMonitorProvisioningState? ProvisioningState { get; set; }

    }
}