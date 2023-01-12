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
    /// Resource filter.
    /// </summary>
    public partial class GenericResourceFilter
    {
        /// <summary>
        /// Initializes a new instance of the GenericResourceFilter class.
        /// </summary>
        public GenericResourceFilter()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the GenericResourceFilter class.
        /// </summary>
        /// <param name="resourceType">The resource type.</param>
        /// <param name="tagname">The tag name.</param>
        /// <param name="tagvalue">The tag value.</param>
        public GenericResourceFilter(string resourceType = default(string), string tagname = default(string), string tagvalue = default(string))
        {
            ResourceType = resourceType;
            Tagname = tagname;
            Tagvalue = tagvalue;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// Gets or sets the resource type.
        /// </summary>
        [JsonProperty(PropertyName = "resourceType")]
        public string ResourceType { get; set; }

        /// <summary>
        /// Gets or sets the tag name.
        /// </summary>
        [JsonProperty(PropertyName = "tagname")]
        public string Tagname { get; set; }

        /// <summary>
        /// Gets or sets the tag value.
        /// </summary>
        [JsonProperty(PropertyName = "tagvalue")]
        public string Tagvalue { get; set; }

    }
}
