// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.Aks.Models.Api20230201
{
    using static Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Extensions;

    /// <summary>Security profile for the container service cluster.</summary>
    public partial class ManagedClusterSecurityProfile
    {

        /// <summary>
        /// <c>AfterFromJson</c> will be called after the json deserialization has finished, allowing customization of the object
        /// before it is returned. Implement this method in a partial class to enable this behavior
        /// </summary>
        /// <param name="json">The JsonNode that should be deserialized into this object.</param>

        partial void AfterFromJson(Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Json.JsonObject json);

        /// <summary>
        /// <c>AfterToJson</c> will be called after the json serialization has finished, allowing customization of the <see cref="Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Json.JsonObject"
        /// /> before it is returned. Implement this method in a partial class to enable this behavior
        /// </summary>
        /// <param name="container">The JSON container that the serialization result will be placed in.</param>

        partial void AfterToJson(ref Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Json.JsonObject container);

        /// <summary>
        /// <c>BeforeFromJson</c> will be called before the json deserialization has commenced, allowing complete customization of
        /// the object before it is deserialized.
        /// If you wish to disable the default deserialization entirely, return <c>true</c> in the <paramref name= "returnNow" />
        /// output parameter.
        /// Implement this method in a partial class to enable this behavior.
        /// </summary>
        /// <param name="json">The JsonNode that should be deserialized into this object.</param>
        /// <param name="returnNow">Determines if the rest of the deserialization should be processed, or if the method should return
        /// instantly.</param>

        partial void BeforeFromJson(Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Json.JsonObject json, ref bool returnNow);

        /// <summary>
        /// <c>BeforeToJson</c> will be called before the json serialization has commenced, allowing complete customization of the
        /// object before it is serialized.
        /// If you wish to disable the default serialization entirely, return <c>true</c> in the <paramref name="returnNow" /> output
        /// parameter.
        /// Implement this method in a partial class to enable this behavior.
        /// </summary>
        /// <param name="container">The JSON container that the serialization result will be placed in.</param>
        /// <param name="returnNow">Determines if the rest of the serialization should be processed, or if the method should return
        /// instantly.</param>

        partial void BeforeToJson(ref Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Json.JsonObject container, ref bool returnNow);

        /// <summary>
        /// Deserializes a <see cref="Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Json.JsonNode"/> into an instance of Microsoft.Azure.PowerShell.Cmdlets.Aks.Models.Api20230201.IManagedClusterSecurityProfile.
        /// </summary>
        /// <param name="node">a <see cref="Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Json.JsonNode" /> to deserialize from.</param>
        /// <returns>
        /// an instance of Microsoft.Azure.PowerShell.Cmdlets.Aks.Models.Api20230201.IManagedClusterSecurityProfile.
        /// </returns>
        public static Microsoft.Azure.PowerShell.Cmdlets.Aks.Models.Api20230201.IManagedClusterSecurityProfile FromJson(Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Json.JsonNode node)
        {
            return node is Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Json.JsonObject json ? new ManagedClusterSecurityProfile(json) : null;
        }

        /// <summary>
        /// Deserializes a Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Json.JsonObject into a new instance of <see cref="ManagedClusterSecurityProfile" />.
        /// </summary>
        /// <param name="json">A Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Json.JsonObject instance to deserialize from.</param>
        internal ManagedClusterSecurityProfile(Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Json.JsonObject json)
        {
            bool returnNow = false;
            BeforeFromJson(json, ref returnNow);
            if (returnNow)
            {
                return;
            }
            {_defender = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Json.JsonObject>("defender"), out var __jsonDefender) ? Microsoft.Azure.PowerShell.Cmdlets.Aks.Models.Api20230201.ManagedClusterSecurityProfileDefender.FromJson(__jsonDefender) : Defender;}
            {_azureKeyVaultKm = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Json.JsonObject>("azureKeyVaultKms"), out var __jsonAzureKeyVaultKms) ? Microsoft.Azure.PowerShell.Cmdlets.Aks.Models.Api20230201.AzureKeyVaultKms.FromJson(__jsonAzureKeyVaultKms) : AzureKeyVaultKm;}
            {_workloadIdentity = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Json.JsonObject>("workloadIdentity"), out var __jsonWorkloadIdentity) ? Microsoft.Azure.PowerShell.Cmdlets.Aks.Models.Api20230201.ManagedClusterSecurityProfileWorkloadIdentity.FromJson(__jsonWorkloadIdentity) : WorkloadIdentity;}
            {_imageCleaner = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Json.JsonObject>("imageCleaner"), out var __jsonImageCleaner) ? Microsoft.Azure.PowerShell.Cmdlets.Aks.Models.Api20230201.ManagedClusterSecurityProfileImageCleaner.FromJson(__jsonImageCleaner) : ImageCleaner;}
            AfterFromJson(json);
        }

        /// <summary>
        /// Serializes this instance of <see cref="ManagedClusterSecurityProfile" /> into a <see cref="Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Json.JsonNode" />.
        /// </summary>
        /// <param name="container">The <see cref="Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Json.JsonObject"/> container to serialize this object into. If the caller
        /// passes in <c>null</c>, a new instance will be created and returned to the caller.</param>
        /// <param name="serializationMode">Allows the caller to choose the depth of the serialization. See <see cref="Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.SerializationMode"/>.</param>
        /// <returns>
        /// a serialized instance of <see cref="ManagedClusterSecurityProfile" /> as a <see cref="Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Json.JsonNode" />.
        /// </returns>
        public Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Json.JsonNode ToJson(Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Json.JsonObject container, Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.SerializationMode serializationMode)
        {
            container = container ?? new Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Json.JsonObject();

            bool returnNow = false;
            BeforeToJson(ref container, ref returnNow);
            if (returnNow)
            {
                return container;
            }
            AddIf( null != this._defender ? (Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Json.JsonNode) this._defender.ToJson(null,serializationMode) : null, "defender" ,container.Add );
            AddIf( null != this._azureKeyVaultKm ? (Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Json.JsonNode) this._azureKeyVaultKm.ToJson(null,serializationMode) : null, "azureKeyVaultKms" ,container.Add );
            AddIf( null != this._workloadIdentity ? (Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Json.JsonNode) this._workloadIdentity.ToJson(null,serializationMode) : null, "workloadIdentity" ,container.Add );
            AddIf( null != this._imageCleaner ? (Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.Json.JsonNode) this._imageCleaner.ToJson(null,serializationMode) : null, "imageCleaner" ,container.Add );
            AfterToJson(ref container);
            return container;
        }
    }
}