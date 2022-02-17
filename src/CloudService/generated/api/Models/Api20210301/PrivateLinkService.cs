// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301
{
    using static Microsoft.Azure.PowerShell.Cmdlets.CloudService.Runtime.Extensions;

    /// <summary>Private link service resource.</summary>
    public partial class PrivateLinkService :
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkService,
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServiceInternal,
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Runtime.IValidates
    {
        /// <summary>
        /// Backing field for Inherited model <see cref= "Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IResource"
        /// />
        /// </summary>
        private Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IResource __resource = new Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.Resource();

        /// <summary>The alias of the private link service.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Origin(Microsoft.Azure.PowerShell.Cmdlets.CloudService.PropertyOrigin.Inlined)]
        public string Alias { get => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).Alias; }

        /// <summary>The list of subscriptions.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Origin(Microsoft.Azure.PowerShell.Cmdlets.CloudService.PropertyOrigin.Inlined)]
        public string[] AutoApprovalSubscription { get => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).AutoApprovalSubscription; set => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).AutoApprovalSubscription = value ?? null /* arrayOf */; }

        /// <summary>Whether the private link service is enabled for proxy protocol or not.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Origin(Microsoft.Azure.PowerShell.Cmdlets.CloudService.PropertyOrigin.Inlined)]
        public bool? EnableProxyProtocol { get => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).EnableProxyProtocol; set => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).EnableProxyProtocol = value ?? default(bool); }

        /// <summary>Backing field for <see cref="Etag" /> property.</summary>
        private string _etag;

        /// <summary>A unique read-only string that changes whenever the resource is updated.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Origin(Microsoft.Azure.PowerShell.Cmdlets.CloudService.PropertyOrigin.Owned)]
        public string Etag { get => this._etag; }

        /// <summary>Backing field for <see cref="ExtendedLocation" /> property.</summary>
        private Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IExtendedLocation _extendedLocation;

        /// <summary>The extended location of the load balancer.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Origin(Microsoft.Azure.PowerShell.Cmdlets.CloudService.PropertyOrigin.Owned)]
        internal Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IExtendedLocation ExtendedLocation { get => (this._extendedLocation = this._extendedLocation ?? new Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.ExtendedLocation()); set => this._extendedLocation = value; }

        /// <summary>The name of the extended location.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Origin(Microsoft.Azure.PowerShell.Cmdlets.CloudService.PropertyOrigin.Inlined)]
        public string ExtendedLocationName { get => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IExtendedLocationInternal)ExtendedLocation).Name; set => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IExtendedLocationInternal)ExtendedLocation).Name = value ?? null; }

        /// <summary>The type of the extended location.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Origin(Microsoft.Azure.PowerShell.Cmdlets.CloudService.PropertyOrigin.Inlined)]
        public Microsoft.Azure.PowerShell.Cmdlets.CloudService.Support.ExtendedLocationTypes? ExtendedLocationType { get => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IExtendedLocationInternal)ExtendedLocation).Type; set => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IExtendedLocationInternal)ExtendedLocation).Type = value ?? ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Support.ExtendedLocationTypes)""); }

        /// <summary>The list of Fqdn.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Origin(Microsoft.Azure.PowerShell.Cmdlets.CloudService.PropertyOrigin.Inlined)]
        public string[] Fqdn { get => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).Fqdn; set => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).Fqdn = value ?? null /* arrayOf */; }

        /// <summary>An array of private link service IP configurations.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Origin(Microsoft.Azure.PowerShell.Cmdlets.CloudService.PropertyOrigin.Inlined)]
        public Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServiceIPConfiguration[] IPConfiguration { get => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).IPConfiguration; set => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).IPConfiguration = value ?? null /* arrayOf */; }

        /// <summary>Resource ID.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Origin(Microsoft.Azure.PowerShell.Cmdlets.CloudService.PropertyOrigin.Inherited)]
        public string Id { get => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IResourceInternal)__resource).Id; set => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IResourceInternal)__resource).Id = value ?? null; }

        /// <summary>An array of references to the load balancer IP configurations.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Origin(Microsoft.Azure.PowerShell.Cmdlets.CloudService.PropertyOrigin.Inlined)]
        public Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IFrontendIPConfiguration[] LoadBalancerFrontendIPConfiguration { get => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).LoadBalancerFrontendIPConfiguration; set => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).LoadBalancerFrontendIPConfiguration = value ?? null /* arrayOf */; }

        /// <summary>Resource location.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Origin(Microsoft.Azure.PowerShell.Cmdlets.CloudService.PropertyOrigin.Inherited)]
        public string Location { get => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IResourceInternal)__resource).Location; set => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IResourceInternal)__resource).Location = value ?? null; }

        /// <summary>Internal Acessors for Alias</summary>
        string Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServiceInternal.Alias { get => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).Alias; set => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).Alias = value; }

        /// <summary>Internal Acessors for AutoApproval</summary>
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IResourceSet Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServiceInternal.AutoApproval { get => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).AutoApproval; set => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).AutoApproval = value; }

        /// <summary>Internal Acessors for Etag</summary>
        string Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServiceInternal.Etag { get => this._etag; set { {_etag = value;} } }

        /// <summary>Internal Acessors for ExtendedLocation</summary>
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IExtendedLocation Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServiceInternal.ExtendedLocation { get => (this._extendedLocation = this._extendedLocation ?? new Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.ExtendedLocation()); set { {_extendedLocation = value;} } }

        /// <summary>Internal Acessors for NetworkInterface</summary>
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.INetworkInterface[] Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServiceInternal.NetworkInterface { get => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).NetworkInterface; set => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).NetworkInterface = value; }

        /// <summary>Internal Acessors for PrivateEndpointConnection</summary>
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateEndpointConnection[] Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServiceInternal.PrivateEndpointConnection { get => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).PrivateEndpointConnection; set => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).PrivateEndpointConnection = value; }

        /// <summary>Internal Acessors for Property</summary>
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServiceProperties Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServiceInternal.Property { get => (this._property = this._property ?? new Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.PrivateLinkServiceProperties()); set { {_property = value;} } }

        /// <summary>Internal Acessors for ProvisioningState</summary>
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Support.ProvisioningState? Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServiceInternal.ProvisioningState { get => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).ProvisioningState; set => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).ProvisioningState = value; }

        /// <summary>Internal Acessors for Visibility</summary>
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IResourceSet Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServiceInternal.Visibility { get => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).Visibility; set => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).Visibility = value; }

        /// <summary>Internal Acessors for Name</summary>
        string Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IResourceInternal.Name { get => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IResourceInternal)__resource).Name; set => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IResourceInternal)__resource).Name = value; }

        /// <summary>Internal Acessors for Type</summary>
        string Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IResourceInternal.Type { get => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IResourceInternal)__resource).Type; set => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IResourceInternal)__resource).Type = value; }

        /// <summary>Resource name.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Origin(Microsoft.Azure.PowerShell.Cmdlets.CloudService.PropertyOrigin.Inherited)]
        public string Name { get => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IResourceInternal)__resource).Name; }

        /// <summary>
        /// An array of references to the network interfaces created for this private link service.
        /// </summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Origin(Microsoft.Azure.PowerShell.Cmdlets.CloudService.PropertyOrigin.Inlined)]
        public Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.INetworkInterface[] NetworkInterface { get => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).NetworkInterface; }

        /// <summary>An array of list about connections to the private endpoint.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Origin(Microsoft.Azure.PowerShell.Cmdlets.CloudService.PropertyOrigin.Inlined)]
        public Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateEndpointConnection[] PrivateEndpointConnection { get => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).PrivateEndpointConnection; }

        /// <summary>Backing field for <see cref="Property" /> property.</summary>
        private Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServiceProperties _property;

        /// <summary>Properties of the private link service.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Origin(Microsoft.Azure.PowerShell.Cmdlets.CloudService.PropertyOrigin.Owned)]
        internal Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServiceProperties Property { get => (this._property = this._property ?? new Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.PrivateLinkServiceProperties()); set => this._property = value; }

        /// <summary>The provisioning state of the private link service resource.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Origin(Microsoft.Azure.PowerShell.Cmdlets.CloudService.PropertyOrigin.Inlined)]
        public Microsoft.Azure.PowerShell.Cmdlets.CloudService.Support.ProvisioningState? ProvisioningState { get => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).ProvisioningState; }

        /// <summary>Resource tags.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Origin(Microsoft.Azure.PowerShell.Cmdlets.CloudService.PropertyOrigin.Inherited)]
        public Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IResourceTags Tag { get => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IResourceInternal)__resource).Tag; set => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IResourceInternal)__resource).Tag = value ?? null /* model class */; }

        /// <summary>Resource type.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Origin(Microsoft.Azure.PowerShell.Cmdlets.CloudService.PropertyOrigin.Inherited)]
        public string Type { get => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IResourceInternal)__resource).Type; }

        /// <summary>The list of subscriptions.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Origin(Microsoft.Azure.PowerShell.Cmdlets.CloudService.PropertyOrigin.Inlined)]
        public string[] VisibilitySubscription { get => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).VisibilitySubscription; set => ((Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServicePropertiesInternal)Property).VisibilitySubscription = value ?? null /* arrayOf */; }

        /// <summary>Creates an new <see cref="PrivateLinkService" /> instance.</summary>
        public PrivateLinkService()
        {

        }

        /// <summary>Validates that this object meets the validation criteria.</summary>
        /// <param name="eventListener">an <see cref="Microsoft.Azure.PowerShell.Cmdlets.CloudService.Runtime.IEventListener" /> instance that will receive validation
        /// events.</param>
        /// <returns>
        /// A < see cref = "global::System.Threading.Tasks.Task" /> that will be complete when validation is completed.
        /// </returns>
        public async global::System.Threading.Tasks.Task Validate(Microsoft.Azure.PowerShell.Cmdlets.CloudService.Runtime.IEventListener eventListener)
        {
            await eventListener.AssertNotNull(nameof(__resource), __resource);
            await eventListener.AssertObjectIsValid(nameof(__resource), __resource);
        }
    }
    /// Private link service resource.
    public partial interface IPrivateLinkService :
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Runtime.IJsonSerializable,
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IResource
    {
        /// <summary>The alias of the private link service.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Runtime.Info(
        Required = false,
        ReadOnly = true,
        Description = @"The alias of the private link service.",
        SerializedName = @"alias",
        PossibleTypes = new [] { typeof(string) })]
        string Alias { get;  }
        /// <summary>The list of subscriptions.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"The list of subscriptions.",
        SerializedName = @"subscriptions",
        PossibleTypes = new [] { typeof(string) })]
        string[] AutoApprovalSubscription { get; set; }
        /// <summary>Whether the private link service is enabled for proxy protocol or not.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"Whether the private link service is enabled for proxy protocol or not.",
        SerializedName = @"enableProxyProtocol",
        PossibleTypes = new [] { typeof(bool) })]
        bool? EnableProxyProtocol { get; set; }
        /// <summary>A unique read-only string that changes whenever the resource is updated.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Runtime.Info(
        Required = false,
        ReadOnly = true,
        Description = @"A unique read-only string that changes whenever the resource is updated.",
        SerializedName = @"etag",
        PossibleTypes = new [] { typeof(string) })]
        string Etag { get;  }
        /// <summary>The name of the extended location.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"The name of the extended location.",
        SerializedName = @"name",
        PossibleTypes = new [] { typeof(string) })]
        string ExtendedLocationName { get; set; }
        /// <summary>The type of the extended location.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"The type of the extended location.",
        SerializedName = @"type",
        PossibleTypes = new [] { typeof(Microsoft.Azure.PowerShell.Cmdlets.CloudService.Support.ExtendedLocationTypes) })]
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Support.ExtendedLocationTypes? ExtendedLocationType { get; set; }
        /// <summary>The list of Fqdn.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"The list of Fqdn.",
        SerializedName = @"fqdns",
        PossibleTypes = new [] { typeof(string) })]
        string[] Fqdn { get; set; }
        /// <summary>An array of private link service IP configurations.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"An array of private link service IP configurations.",
        SerializedName = @"ipConfigurations",
        PossibleTypes = new [] { typeof(Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServiceIPConfiguration) })]
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServiceIPConfiguration[] IPConfiguration { get; set; }
        /// <summary>An array of references to the load balancer IP configurations.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"An array of references to the load balancer IP configurations.",
        SerializedName = @"loadBalancerFrontendIpConfigurations",
        PossibleTypes = new [] { typeof(Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IFrontendIPConfiguration) })]
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IFrontendIPConfiguration[] LoadBalancerFrontendIPConfiguration { get; set; }
        /// <summary>
        /// An array of references to the network interfaces created for this private link service.
        /// </summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Runtime.Info(
        Required = false,
        ReadOnly = true,
        Description = @"An array of references to the network interfaces created for this private link service.",
        SerializedName = @"networkInterfaces",
        PossibleTypes = new [] { typeof(Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.INetworkInterface) })]
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.INetworkInterface[] NetworkInterface { get;  }
        /// <summary>An array of list about connections to the private endpoint.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Runtime.Info(
        Required = false,
        ReadOnly = true,
        Description = @"An array of list about connections to the private endpoint.",
        SerializedName = @"privateEndpointConnections",
        PossibleTypes = new [] { typeof(Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateEndpointConnection) })]
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateEndpointConnection[] PrivateEndpointConnection { get;  }
        /// <summary>The provisioning state of the private link service resource.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Runtime.Info(
        Required = false,
        ReadOnly = true,
        Description = @"The provisioning state of the private link service resource.",
        SerializedName = @"provisioningState",
        PossibleTypes = new [] { typeof(Microsoft.Azure.PowerShell.Cmdlets.CloudService.Support.ProvisioningState) })]
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Support.ProvisioningState? ProvisioningState { get;  }
        /// <summary>The list of subscriptions.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"The list of subscriptions.",
        SerializedName = @"subscriptions",
        PossibleTypes = new [] { typeof(string) })]
        string[] VisibilitySubscription { get; set; }

    }
    /// Private link service resource.
    internal partial interface IPrivateLinkServiceInternal :
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IResourceInternal
    {
        /// <summary>The alias of the private link service.</summary>
        string Alias { get; set; }
        /// <summary>The auto-approval list of the private link service.</summary>
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IResourceSet AutoApproval { get; set; }
        /// <summary>The list of subscriptions.</summary>
        string[] AutoApprovalSubscription { get; set; }
        /// <summary>Whether the private link service is enabled for proxy protocol or not.</summary>
        bool? EnableProxyProtocol { get; set; }
        /// <summary>A unique read-only string that changes whenever the resource is updated.</summary>
        string Etag { get; set; }
        /// <summary>The extended location of the load balancer.</summary>
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IExtendedLocation ExtendedLocation { get; set; }
        /// <summary>The name of the extended location.</summary>
        string ExtendedLocationName { get; set; }
        /// <summary>The type of the extended location.</summary>
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Support.ExtendedLocationTypes? ExtendedLocationType { get; set; }
        /// <summary>The list of Fqdn.</summary>
        string[] Fqdn { get; set; }
        /// <summary>An array of private link service IP configurations.</summary>
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServiceIPConfiguration[] IPConfiguration { get; set; }
        /// <summary>An array of references to the load balancer IP configurations.</summary>
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IFrontendIPConfiguration[] LoadBalancerFrontendIPConfiguration { get; set; }
        /// <summary>
        /// An array of references to the network interfaces created for this private link service.
        /// </summary>
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.INetworkInterface[] NetworkInterface { get; set; }
        /// <summary>An array of list about connections to the private endpoint.</summary>
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateEndpointConnection[] PrivateEndpointConnection { get; set; }
        /// <summary>Properties of the private link service.</summary>
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IPrivateLinkServiceProperties Property { get; set; }
        /// <summary>The provisioning state of the private link service resource.</summary>
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Support.ProvisioningState? ProvisioningState { get; set; }
        /// <summary>The visibility list of the private link service.</summary>
        Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.IResourceSet Visibility { get; set; }
        /// <summary>The list of subscriptions.</summary>
        string[] VisibilitySubscription { get; set; }

    }
}