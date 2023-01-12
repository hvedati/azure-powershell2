// <auto-generated>
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace Microsoft.Azure.PowerShell.Cmdlets.KeyVault.Helpers.Resources.Models
{
    using Newtonsoft.Json;
    using System.Linq;

    /// <summary>
    /// Deployment operation information.
    /// </summary>
    public partial class DeploymentOperation
    {
        /// <summary>
        /// Initializes a new instance of the DeploymentOperation class.
        /// </summary>
        public DeploymentOperation()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the DeploymentOperation class.
        /// </summary>
        /// <param name="id">Full deployment operation ID.</param>
        /// <param name="operationId">Deployment operation ID.</param>
        /// <param name="properties">Deployment properties.</param>
        public DeploymentOperation(string id = default(string), string operationId = default(string), DeploymentOperationProperties properties = default(DeploymentOperationProperties))
        {
            Id = id;
            OperationId = operationId;
            Properties = properties;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// Gets full deployment operation ID.
        /// </summary>
        [JsonProperty(PropertyName = "id")]
        public string Id { get; private set; }

        /// <summary>
        /// Gets deployment operation ID.
        /// </summary>
        [JsonProperty(PropertyName = "operationId")]
        public string OperationId { get; private set; }

        /// <summary>
        /// Gets or sets deployment properties.
        /// </summary>
        [JsonProperty(PropertyName = "properties")]
        public DeploymentOperationProperties Properties { get; set; }

    }
}
