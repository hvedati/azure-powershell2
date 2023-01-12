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
    using Microsoft.Rest;
    using Newtonsoft.Json;
    using System.Collections;
    using System.Collections.Generic;
    using System.Linq;

    /// <summary>
    /// Resource information.
    /// </summary>
    public partial class GenericResource : Resource
    {
        /// <summary>
        /// Initializes a new instance of the GenericResource class.
        /// </summary>
        public GenericResource()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the GenericResource class.
        /// </summary>
        /// <param name="id">Resource ID</param>
        /// <param name="name">Resource name</param>
        /// <param name="type">Resource type</param>
        /// <param name="location">Resource location</param>
        /// <param name="extendedLocation">Resource extended location.</param>
        /// <param name="tags">Resource tags</param>
        /// <param name="plan">The plan of the resource.</param>
        /// <param name="properties">The resource properties.</param>
        /// <param name="kind">The kind of the resource.</param>
        /// <param name="managedBy">ID of the resource that manages this
        /// resource.</param>
        /// <param name="sku">The SKU of the resource.</param>
        /// <param name="identity">The identity of the resource.</param>
        public GenericResource(string id = default(string), string name = default(string), string type = default(string), string location = default(string), ExtendedLocation extendedLocation = default(ExtendedLocation), IDictionary<string, string> tags = default(IDictionary<string, string>), Plan plan = default(Plan), object properties = default(object), string kind = default(string), string managedBy = default(string), Sku sku = default(Sku), Identity identity = default(Identity))
            : base(id, name, type, location, extendedLocation, tags)
        {
            Plan = plan;
            Properties = properties;
            Kind = kind;
            ManagedBy = managedBy;
            Sku = sku;
            Identity = identity;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// Gets or sets the plan of the resource.
        /// </summary>
        [JsonProperty(PropertyName = "plan")]
        public Plan Plan { get; set; }

        /// <summary>
        /// Gets or sets the resource properties.
        /// </summary>
        [JsonProperty(PropertyName = "properties")]
        public object Properties { get; set; }

        /// <summary>
        /// Gets or sets the kind of the resource.
        /// </summary>
        [JsonProperty(PropertyName = "kind")]
        public string Kind { get; set; }

        /// <summary>
        /// Gets or sets ID of the resource that manages this resource.
        /// </summary>
        [JsonProperty(PropertyName = "managedBy")]
        public string ManagedBy { get; set; }

        /// <summary>
        /// Gets or sets the SKU of the resource.
        /// </summary>
        [JsonProperty(PropertyName = "sku")]
        public Sku Sku { get; set; }

        /// <summary>
        /// Gets or sets the identity of the resource.
        /// </summary>
        [JsonProperty(PropertyName = "identity")]
        public Identity Identity { get; set; }

        /// <summary>
        /// Validate the object.
        /// </summary>
        /// <exception cref="ValidationException">
        /// Thrown if validation fails
        /// </exception>
        public virtual void Validate()
        {
            if (Kind != null)
            {
                if (!System.Text.RegularExpressions.Regex.IsMatch(Kind, "^[-\\w\\._,\\(\\)]+$"))
                {
                    throw new ValidationException(ValidationRules.Pattern, "Kind", "^[-\\w\\._,\\(\\)]+$");
                }
            }
        }
    }
}
