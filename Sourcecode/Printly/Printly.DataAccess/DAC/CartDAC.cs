using Printly.DataAccess.Base;
using Printly.DataAccess.Constants;
using Printly.Entities;
using Printly.Shared.Core;
using System;
using System.Data;
using System.Data.SqlClient;

namespace Printly.DataAccess.DAC
{
    public class CartDAC: EntityDACBase
    {

        public OperationResult<bool> AddItemToCart(CartItem cartItem)
        {
            try
            {
                SqlCommand command = GetDbSprocCommand(SPConstants.SP_ADD_ITEM_TO_CART);
                command.Parameters.Add(CreateParameter("@CartID", cartItem.CartId));
                command.Parameters.Add(CreateParameter("@ProductID", cartItem.ProductId));
                command.Parameters.Add(CreateParameter("@Quantity", cartItem.Quantity));
                command.Parameters.Add(CreateOutputParameter("@IsItemAddedToCart", SqlDbType.Bit));
                return OperationResult<bool>.ReturnSuccessResult(GetBoolResults(ref command, "@IsItemAddedToCart"));
            }
            catch (Exception ex)
            {
                return OperationResult<bool>.LogAndReturnFailureResult(ex);
            }
        }

        public OperationResult<bool> RemoveItemFromCart(CartItem cartItem)
        {
            try
            {
                SqlCommand command = GetDbSprocCommand(SPConstants.SP_REMOVE_ITEM_FROM_CART);
                command.Parameters.Add(CreateParameter("@CartID", cartItem.CartId));
                command.Parameters.Add(CreateParameter("@ProductID", cartItem.ProductId));
                command.Parameters.Add(CreateOutputParameter("@IsItemRemovedFromCart", SqlDbType.Bit));
                return OperationResult<bool>.ReturnSuccessResult(GetBoolResults(ref command, "@IsItemRemovedFromCart"));
            }
            catch (Exception ex)
            {
                return OperationResult<bool>.LogAndReturnFailureResult(ex);
            }
        }

    }
}
