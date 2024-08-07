// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
namespace Microsoft.Azure.Management.Storage
{
    using Microsoft.Rest.Azure;
    using Models;

    /// <summary>
    /// Extension methods for DeletedAccountsOperations
    /// </summary>
    public static partial class DeletedAccountsOperationsExtensions
    {
        /// <summary>
        /// Lists deleted accounts under the subscription.
        /// </summary>
        /// <param name='operations'>
        /// The operations group for this extension method.
        /// </param>
        public static Microsoft.Rest.Azure.IPage<DeletedAccount> List(this IDeletedAccountsOperations operations)
        {
                return ((IDeletedAccountsOperations)operations).ListAsync().GetAwaiter().GetResult();
        }

        /// <summary>
        /// Lists deleted accounts under the subscription.
        /// </summary>
        /// <param name='operations'>
        /// The operations group for this extension method.
        /// </param>
        /// <param name='cancellationToken'>
        /// The cancellation token.
        /// </param>
        public static async System.Threading.Tasks.Task<Microsoft.Rest.Azure.IPage<DeletedAccount>> ListAsync(this IDeletedAccountsOperations operations, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            using (var _result = await operations.ListWithHttpMessagesAsync(null, cancellationToken).ConfigureAwait(false))
            {
                return _result.Body;
            }
        }
        /// <summary>
        /// Get properties of specified deleted account resource.
        /// </summary>
        /// <param name='operations'>
        /// The operations group for this extension method.
        /// </param>
        /// <param name='deletedAccountName'>
        /// Name of the deleted storage account.
        /// </param>
        /// <param name='location'>
        /// The location of the deleted storage account.
        /// </param>
        public static DeletedAccount Get(this IDeletedAccountsOperations operations, string deletedAccountName, string location)
        {
                return ((IDeletedAccountsOperations)operations).GetAsync(deletedAccountName, location).GetAwaiter().GetResult();
        }

        /// <summary>
        /// Get properties of specified deleted account resource.
        /// </summary>
        /// <param name='operations'>
        /// The operations group for this extension method.
        /// </param>
        /// <param name='deletedAccountName'>
        /// Name of the deleted storage account.
        /// </param>
        /// <param name='location'>
        /// The location of the deleted storage account.
        /// </param>
        /// <param name='cancellationToken'>
        /// The cancellation token.
        /// </param>
        public static async System.Threading.Tasks.Task<DeletedAccount> GetAsync(this IDeletedAccountsOperations operations, string deletedAccountName, string location, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            using (var _result = await operations.GetWithHttpMessagesAsync(deletedAccountName, location, null, cancellationToken).ConfigureAwait(false))
            {
                return _result.Body;
            }
        }
        /// <summary>
        /// Lists deleted accounts under the subscription.
        /// </summary>
        /// <param name='operations'>
        /// The operations group for this extension method.
        /// </param>
        /// <param name='nextPageLink'>
        /// The NextLink from the previous successful call to List operation.
        /// </param>
        public static Microsoft.Rest.Azure.IPage<DeletedAccount> ListNext(this IDeletedAccountsOperations operations, string nextPageLink)
        {
                return ((IDeletedAccountsOperations)operations).ListNextAsync(nextPageLink).GetAwaiter().GetResult();
        }

        /// <summary>
        /// Lists deleted accounts under the subscription.
        /// </summary>
        /// <param name='operations'>
        /// The operations group for this extension method.
        /// </param>
        /// <param name='nextPageLink'>
        /// The NextLink from the previous successful call to List operation.
        /// </param>
        /// <param name='cancellationToken'>
        /// The cancellation token.
        /// </param>
        public static async System.Threading.Tasks.Task<Microsoft.Rest.Azure.IPage<DeletedAccount>> ListNextAsync(this IDeletedAccountsOperations operations, string nextPageLink, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            using (var _result = await operations.ListNextWithHttpMessagesAsync(nextPageLink, null, cancellationToken).ConfigureAwait(false))
            {
                return _result.Body;
            }
        }
    }
}
