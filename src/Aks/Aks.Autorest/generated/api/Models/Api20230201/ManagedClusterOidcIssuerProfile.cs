// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.Aks.Models.Api20230201
{
    using static Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Extensions;

    /// <summary>The OIDC issuer profile of the Managed Cluster.</summary>
    public partial class ManagedClusterOidcIssuerProfile :
        Microsoft.Azure.PowerShell.Cmdlets.Aks.Models.Api20230201.IManagedClusterOidcIssuerProfile,
        Microsoft.Azure.PowerShell.Cmdlets.Aks.Models.Api20230201.IManagedClusterOidcIssuerProfileInternal
    {

        /// <summary>Backing field for <see cref="Enabled" /> property.</summary>
        private bool? _enabled;

        /// <summary>Whether the OIDC issuer is enabled.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Aks.Origin(Microsoft.Azure.PowerShell.Cmdlets.Aks.PropertyOrigin.Owned)]
        public bool? Enabled { get => this._enabled; set => this._enabled = value; }

        /// <summary>Backing field for <see cref="IssuerUrl" /> property.</summary>
        private string _issuerUrl;

        /// <summary>The OIDC issuer url of the Managed Cluster.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Aks.Origin(Microsoft.Azure.PowerShell.Cmdlets.Aks.PropertyOrigin.Owned)]
        public string IssuerUrl { get => this._issuerUrl; }

        /// <summary>Internal Acessors for IssuerUrl</summary>
        string Microsoft.Azure.PowerShell.Cmdlets.Aks.Models.Api20230201.IManagedClusterOidcIssuerProfileInternal.IssuerUrl { get => this._issuerUrl; set { {_issuerUrl = value;} } }

        /// <summary>Creates an new <see cref="ManagedClusterOidcIssuerProfile" /> instance.</summary>
        public ManagedClusterOidcIssuerProfile()
        {

        }
    }
    /// The OIDC issuer profile of the Managed Cluster.
    public partial interface IManagedClusterOidcIssuerProfile :
        Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.IJsonSerializable
    {
        /// <summary>Whether the OIDC issuer is enabled.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"Whether the OIDC issuer is enabled.",
        SerializedName = @"enabled",
        PossibleTypes = new [] { typeof(bool) })]
        bool? Enabled { get; set; }
        /// <summary>The OIDC issuer url of the Managed Cluster.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Info(
        Required = false,
        ReadOnly = true,
        Description = @"The OIDC issuer url of the Managed Cluster.",
        SerializedName = @"issuerURL",
        PossibleTypes = new [] { typeof(string) })]
        string IssuerUrl { get;  }

    }
    /// The OIDC issuer profile of the Managed Cluster.
    internal partial interface IManagedClusterOidcIssuerProfileInternal

    {
        /// <summary>Whether the OIDC issuer is enabled.</summary>
        bool? Enabled { get; set; }
        /// <summary>The OIDC issuer url of the Managed Cluster.</summary>
        string IssuerUrl { get; set; }

    }
}