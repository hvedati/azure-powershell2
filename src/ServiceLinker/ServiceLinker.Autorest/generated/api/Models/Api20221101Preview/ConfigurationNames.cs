// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Models.Api20221101Preview
{
    using static Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Runtime.Extensions;

    /// <summary>
    /// The configuration names which will be set based on specific target resource, client type, auth type.
    /// </summary>
    public partial class ConfigurationNames :
        Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Models.Api20221101Preview.IConfigurationNames,
        Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Models.Api20221101Preview.IConfigurationNamesInternal
    {

        /// <summary>Backing field for <see cref="AuthType" /> property.</summary>
        private Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Support.AuthType? _authType;

        /// <summary>The auth type.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Origin(Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.PropertyOrigin.Owned)]
        public Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Support.AuthType? AuthType { get => this._authType; set => this._authType = value; }

        /// <summary>Backing field for <see cref="ClientType" /> property.</summary>
        private Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Support.ClientType? _clientType;

        /// <summary>The client type for configuration names.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Origin(Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.PropertyOrigin.Owned)]
        public Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Support.ClientType? ClientType { get => this._clientType; set => this._clientType = value; }

        /// <summary>Backing field for <see cref="Name" /> property.</summary>
        private Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Models.Api20221101Preview.IConfigurationName[] _name;

        /// <summary>The configuration names to be set in compute service environment.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Origin(Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.PropertyOrigin.Owned)]
        public Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Models.Api20221101Preview.IConfigurationName[] Name { get => this._name; set => this._name = value; }

        /// <summary>Backing field for <see cref="TargetService" /> property.</summary>
        private string _targetService;

        /// <summary>The target service provider name and resource name.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Origin(Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.PropertyOrigin.Owned)]
        public string TargetService { get => this._targetService; set => this._targetService = value; }

        /// <summary>Creates an new <see cref="ConfigurationNames" /> instance.</summary>
        public ConfigurationNames()
        {

        }
    }
    /// The configuration names which will be set based on specific target resource, client type, auth type.
    public partial interface IConfigurationNames :
        Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Runtime.IJsonSerializable
    {
        /// <summary>The auth type.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"The auth type.",
        SerializedName = @"authType",
        PossibleTypes = new [] { typeof(Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Support.AuthType) })]
        Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Support.AuthType? AuthType { get; set; }
        /// <summary>The client type for configuration names.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"The client type for configuration names.",
        SerializedName = @"clientType",
        PossibleTypes = new [] { typeof(Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Support.ClientType) })]
        Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Support.ClientType? ClientType { get; set; }
        /// <summary>The configuration names to be set in compute service environment.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"The configuration names to be set in compute service environment.",
        SerializedName = @"names",
        PossibleTypes = new [] { typeof(Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Models.Api20221101Preview.IConfigurationName) })]
        Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Models.Api20221101Preview.IConfigurationName[] Name { get; set; }
        /// <summary>The target service provider name and resource name.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"The target service provider name and resource name.",
        SerializedName = @"targetService",
        PossibleTypes = new [] { typeof(string) })]
        string TargetService { get; set; }

    }
    /// The configuration names which will be set based on specific target resource, client type, auth type.
    internal partial interface IConfigurationNamesInternal

    {
        /// <summary>The auth type.</summary>
        Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Support.AuthType? AuthType { get; set; }
        /// <summary>The client type for configuration names.</summary>
        Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Support.ClientType? ClientType { get; set; }
        /// <summary>The configuration names to be set in compute service environment.</summary>
        Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Models.Api20221101Preview.IConfigurationName[] Name { get; set; }
        /// <summary>The target service provider name and resource name.</summary>
        string TargetService { get; set; }

    }
}