// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401
{
    using static Microsoft.Azure.PowerShell.Cmdlets.Workloads.Runtime.Extensions;

    /// <summary>A provider instance associated with SAP monitor.</summary>
    public partial class ProviderInstance :
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstance,
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstanceInternal,
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Runtime.IValidates
    {
        /// <summary>
        /// Backing field for Inherited model <see cref= "Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResource" />
        /// </summary>
        private Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResource __resource = new Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.Resource();

        /// <summary>Server-defined set of error codes.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Inlined)]
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.DoNotFormat]
        public string ErrorCode { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal)Property).ErrorCode; }

        /// <summary>Array of details about specific errors that led to this reported error.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Inlined)]
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.DoNotFormat]
        public Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IError[] ErrorDetail { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal)Property).ErrorDetail; }

        /// <summary>
        /// Object containing more specific information than the current object about the error.
        /// </summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Inlined)]
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.DoNotFormat]
        public Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IErrorInnerError ErrorInnerError { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal)Property).ErrorInnerError; }

        /// <summary>Human-readable representation of the error.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Inlined)]
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.DoNotFormat]
        public string ErrorMessage { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal)Property).ErrorMessage; }

        /// <summary>Target of the error.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Inlined)]
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.DoNotFormat]
        public string ErrorTarget { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal)Property).ErrorTarget; }

        /// <summary>
        /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
        /// </summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Inherited)]
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.DoNotFormat]
        public string Id { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal)__resource).Id; }

        /// <summary>Backing field for <see cref="Identity" /> property.</summary>
        private Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IUserAssignedServiceIdentity _identity;

        /// <summary>[currently not in use] Managed service identity(user assigned identities)</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Owned)]
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.DoNotFormat]
        internal Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IUserAssignedServiceIdentity Identity { get => (this._identity = this._identity ?? new Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.UserAssignedServiceIdentity()); set => this._identity = value; }

        /// <summary>Type of manage identity</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Inlined)]
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.FormatTable(Index = 4)]
        public Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support.ManagedServiceIdentityType? IdentityType { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IUserAssignedServiceIdentityInternal)Identity).Type; set => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IUserAssignedServiceIdentityInternal)Identity).Type = value ?? ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support.ManagedServiceIdentityType)""); }

        /// <summary>User assigned identities dictionary</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Inlined)]
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.DoNotFormat]
        public Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IUserAssignedIdentities IdentityUserAssignedIdentity { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IUserAssignedServiceIdentityInternal)Identity).UserAssignedIdentity; set => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IUserAssignedServiceIdentityInternal)Identity).UserAssignedIdentity = value ?? null /* model class */; }

        /// <summary>Internal Acessors for Error</summary>
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IError Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstanceInternal.Error { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal)Property).Error; set => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal)Property).Error = value; }

        /// <summary>Internal Acessors for ErrorCode</summary>
        string Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstanceInternal.ErrorCode { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal)Property).ErrorCode; set => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal)Property).ErrorCode = value; }

        /// <summary>Internal Acessors for ErrorDetail</summary>
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IError[] Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstanceInternal.ErrorDetail { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal)Property).ErrorDetail; set => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal)Property).ErrorDetail = value; }

        /// <summary>Internal Acessors for ErrorInnerError</summary>
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IErrorInnerError Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstanceInternal.ErrorInnerError { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal)Property).ErrorInnerError; set => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal)Property).ErrorInnerError = value; }

        /// <summary>Internal Acessors for ErrorMessage</summary>
        string Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstanceInternal.ErrorMessage { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal)Property).ErrorMessage; set => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal)Property).ErrorMessage = value; }

        /// <summary>Internal Acessors for ErrorTarget</summary>
        string Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstanceInternal.ErrorTarget { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal)Property).ErrorTarget; set => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal)Property).ErrorTarget = value; }

        /// <summary>Internal Acessors for Identity</summary>
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IUserAssignedServiceIdentity Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstanceInternal.Identity { get => (this._identity = this._identity ?? new Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.UserAssignedServiceIdentity()); set { {_identity = value;} } }

        /// <summary>Internal Acessors for Property</summary>
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstanceProperties Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstanceInternal.Property { get => (this._property = this._property ?? new Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.ProviderInstanceProperties()); set { {_property = value;} } }

        /// <summary>Internal Acessors for ProvisioningState</summary>
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support.WorkloadMonitorProvisioningState? Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstanceInternal.ProvisioningState { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal)Property).ProvisioningState; set => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal)Property).ProvisioningState = value; }

        /// <summary>Internal Acessors for Id</summary>
        string Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal.Id { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal)__resource).Id; set => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal)__resource).Id = value; }

        /// <summary>Internal Acessors for Name</summary>
        string Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal.Name { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal)__resource).Name; set => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal)__resource).Name = value; }

        /// <summary>Internal Acessors for SystemData</summary>
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.ISystemData Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal.SystemData { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal)__resource).SystemData; set => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal)__resource).SystemData = value; }

        /// <summary>Internal Acessors for Type</summary>
        string Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal.Type { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal)__resource).Type; set => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal)__resource).Type = value; }

        /// <summary>The name of the resource</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Inherited)]
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.FormatTable(Index = 0)]
        public string Name { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal)__resource).Name; }

        /// <summary>Backing field for <see cref="Property" /> property.</summary>
        private Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstanceProperties _property;

        /// <summary>Provider Instance properties</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Owned)]
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.DoNotFormat]
        internal Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstanceProperties Property { get => (this._property = this._property ?? new Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.ProviderInstanceProperties()); set => this._property = value; }

        /// <summary>Defines the provider specific properties.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Inlined)]
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.DoNotFormat]
        public Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderSpecificProperties ProviderSetting { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal)Property).ProviderSetting; set => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal)Property).ProviderSetting = value ?? null /* model class */; }

        /// <summary>State of provisioning of the provider instance</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Inlined)]
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.FormatTable(Index = 2)]
        public Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support.WorkloadMonitorProvisioningState? ProvisioningState { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstancePropertiesInternal)Property).ProvisioningState; }

        /// <summary>Gets the resource group name</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Owned)]
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.FormatTable(Index = 1)]
        public string ResourceGroupName { get => (new global::System.Text.RegularExpressions.Regex("^/subscriptions/(?<subscriptionId>[^/]+)/resourceGroups/(?<resourceGroupName>[^/]+)/providers/", global::System.Text.RegularExpressions.RegexOptions.IgnoreCase).Match(this.Id).Success ? new global::System.Text.RegularExpressions.Regex("^/subscriptions/(?<subscriptionId>[^/]+)/resourceGroups/(?<resourceGroupName>[^/]+)/providers/", global::System.Text.RegularExpressions.RegexOptions.IgnoreCase).Match(this.Id).Groups["resourceGroupName"].Value : null); }

        /// <summary>
        /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
        /// </summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Inherited)]
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.DoNotFormat]
        internal Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.ISystemData SystemData { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal)__resource).SystemData; }

        /// <summary>The timestamp of resource creation (UTC).</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Inherited)]
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.DoNotFormat]
        public global::System.DateTime? SystemDataCreatedAt { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal)__resource).SystemDataCreatedAt; set => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal)__resource).SystemDataCreatedAt = value ?? default(global::System.DateTime); }

        /// <summary>The identity that created the resource.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Inherited)]
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.DoNotFormat]
        public string SystemDataCreatedBy { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal)__resource).SystemDataCreatedBy; set => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal)__resource).SystemDataCreatedBy = value ?? null; }

        /// <summary>The type of identity that created the resource.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Inherited)]
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.DoNotFormat]
        public Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support.CreatedByType? SystemDataCreatedByType { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal)__resource).SystemDataCreatedByType; set => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal)__resource).SystemDataCreatedByType = value ?? ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support.CreatedByType)""); }

        /// <summary>The timestamp of resource last modification (UTC)</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Inherited)]
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.DoNotFormat]
        public global::System.DateTime? SystemDataLastModifiedAt { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal)__resource).SystemDataLastModifiedAt; set => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal)__resource).SystemDataLastModifiedAt = value ?? default(global::System.DateTime); }

        /// <summary>The identity that last modified the resource.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Inherited)]
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.DoNotFormat]
        public string SystemDataLastModifiedBy { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal)__resource).SystemDataLastModifiedBy; set => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal)__resource).SystemDataLastModifiedBy = value ?? null; }

        /// <summary>The type of identity that last modified the resource.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Inherited)]
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.DoNotFormat]
        public Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support.CreatedByType? SystemDataLastModifiedByType { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal)__resource).SystemDataLastModifiedByType; set => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal)__resource).SystemDataLastModifiedByType = value ?? ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support.CreatedByType)""); }

        /// <summary>
        /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
        /// </summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Origin(Microsoft.Azure.PowerShell.Cmdlets.Workloads.PropertyOrigin.Inherited)]
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.DoNotFormat]
        public string Type { get => ((Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal)__resource).Type; }

        /// <summary>Creates an new <see cref="ProviderInstance" /> instance.</summary>
        public ProviderInstance()
        {

        }

        /// <summary>Validates that this object meets the validation criteria.</summary>
        /// <param name="eventListener">an <see cref="Microsoft.Azure.PowerShell.Cmdlets.Workloads.Runtime.IEventListener" /> instance that will receive validation
        /// events.</param>
        /// <returns>
        /// A <see cref = "global::System.Threading.Tasks.Task" /> that will be complete when validation is completed.
        /// </returns>
        public async global::System.Threading.Tasks.Task Validate(Microsoft.Azure.PowerShell.Cmdlets.Workloads.Runtime.IEventListener eventListener)
        {
            await eventListener.AssertNotNull(nameof(__resource), __resource);
            await eventListener.AssertObjectIsValid(nameof(__resource), __resource);
        }
    }
    /// A provider instance associated with SAP monitor.
    public partial interface IProviderInstance :
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Runtime.IJsonSerializable,
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResource
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
        /// <summary>Type of manage identity</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"Type of manage identity",
        SerializedName = @"type",
        PossibleTypes = new [] { typeof(Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support.ManagedServiceIdentityType) })]
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support.ManagedServiceIdentityType? IdentityType { get; set; }
        /// <summary>User assigned identities dictionary</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Workloads.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"User assigned identities dictionary",
        SerializedName = @"userAssignedIdentities",
        PossibleTypes = new [] { typeof(Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IUserAssignedIdentities) })]
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IUserAssignedIdentities IdentityUserAssignedIdentity { get; set; }
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
    /// A provider instance associated with SAP monitor.
    internal partial interface IProviderInstanceInternal :
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IResourceInternal
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
        /// <summary>[currently not in use] Managed service identity(user assigned identities)</summary>
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IUserAssignedServiceIdentity Identity { get; set; }
        /// <summary>Type of manage identity</summary>
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support.ManagedServiceIdentityType? IdentityType { get; set; }
        /// <summary>User assigned identities dictionary</summary>
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api30.IUserAssignedIdentities IdentityUserAssignedIdentity { get; set; }
        /// <summary>Provider Instance properties</summary>
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderInstanceProperties Property { get; set; }
        /// <summary>Defines the provider specific properties.</summary>
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Models.Api20230401.IProviderSpecificProperties ProviderSetting { get; set; }
        /// <summary>State of provisioning of the provider instance</summary>
        Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support.WorkloadMonitorProvisioningState? ProvisioningState { get; set; }

    }
}