// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.Aks.Models.Api20230201
{
    using static Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Extensions;

    /// <summary>Cluster HTTP proxy configuration.</summary>
    public partial class ManagedClusterHttpProxyConfig :
        Microsoft.Azure.PowerShell.Cmdlets.Aks.Models.Api20230201.IManagedClusterHttpProxyConfig,
        Microsoft.Azure.PowerShell.Cmdlets.Aks.Models.Api20230201.IManagedClusterHttpProxyConfigInternal
    {

        /// <summary>Backing field for <see cref="HttpProxy" /> property.</summary>
        private string _httpProxy;

        /// <summary>The HTTP proxy server endpoint to use.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Aks.Origin(Microsoft.Azure.PowerShell.Cmdlets.Aks.PropertyOrigin.Owned)]
        public string HttpProxy { get => this._httpProxy; set => this._httpProxy = value; }

        /// <summary>Backing field for <see cref="HttpsProxy" /> property.</summary>
        private string _httpsProxy;

        /// <summary>The HTTPS proxy server endpoint to use.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Aks.Origin(Microsoft.Azure.PowerShell.Cmdlets.Aks.PropertyOrigin.Owned)]
        public string HttpsProxy { get => this._httpsProxy; set => this._httpsProxy = value; }

        /// <summary>Backing field for <see cref="NoProxy" /> property.</summary>
        private string[] _noProxy;

        /// <summary>The endpoints that should not go through proxy.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Aks.Origin(Microsoft.Azure.PowerShell.Cmdlets.Aks.PropertyOrigin.Owned)]
        public string[] NoProxy { get => this._noProxy; set => this._noProxy = value; }

        /// <summary>Backing field for <see cref="TrustedCa" /> property.</summary>
        private string _trustedCa;

        /// <summary>Alternative CA cert to use for connecting to proxy servers.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Aks.Origin(Microsoft.Azure.PowerShell.Cmdlets.Aks.PropertyOrigin.Owned)]
        public string TrustedCa { get => this._trustedCa; set => this._trustedCa = value; }

        /// <summary>Creates an new <see cref="ManagedClusterHttpProxyConfig" /> instance.</summary>
        public ManagedClusterHttpProxyConfig()
        {

        }
    }
    /// Cluster HTTP proxy configuration.
    public partial interface IManagedClusterHttpProxyConfig :
        Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.IJsonSerializable
    {
        /// <summary>The HTTP proxy server endpoint to use.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"The HTTP proxy server endpoint to use.",
        SerializedName = @"httpProxy",
        PossibleTypes = new [] { typeof(string) })]
        string HttpProxy { get; set; }
        /// <summary>The HTTPS proxy server endpoint to use.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"The HTTPS proxy server endpoint to use.",
        SerializedName = @"httpsProxy",
        PossibleTypes = new [] { typeof(string) })]
        string HttpsProxy { get; set; }
        /// <summary>The endpoints that should not go through proxy.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"The endpoints that should not go through proxy.",
        SerializedName = @"noProxy",
        PossibleTypes = new [] { typeof(string) })]
        string[] NoProxy { get; set; }
        /// <summary>Alternative CA cert to use for connecting to proxy servers.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"Alternative CA cert to use for connecting to proxy servers.",
        SerializedName = @"trustedCa",
        PossibleTypes = new [] { typeof(string) })]
        string TrustedCa { get; set; }

    }
    /// Cluster HTTP proxy configuration.
    internal partial interface IManagedClusterHttpProxyConfigInternal

    {
        /// <summary>The HTTP proxy server endpoint to use.</summary>
        string HttpProxy { get; set; }
        /// <summary>The HTTPS proxy server endpoint to use.</summary>
        string HttpsProxy { get; set; }
        /// <summary>The endpoints that should not go through proxy.</summary>
        string[] NoProxy { get; set; }
        /// <summary>Alternative CA cert to use for connecting to proxy servers.</summary>
        string TrustedCa { get; set; }

    }
}