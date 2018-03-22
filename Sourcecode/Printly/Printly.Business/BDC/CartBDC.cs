using AutoMapper;
using Printly.Business.Base;
using Printly.DataAccess.DAC;
using Printly.DTO.Cart;
using Printly.Entities;
using Printly.Shared.Core;
using System;

namespace Printly.Business.BDC
{
    public class CartBDC : EntityBDCBase
    {
        public OperationResult<bool> AddItemToCart(CartItemDTO cartItemDTO)
        {
            try
            {
                return DependencyFactory.Resolve<CartDAC>().AddItemToCart(Mapper.Map<CartItemDTO, CartItem>(cartItemDTO));
            }
            catch (Exception ex)
            {
                return OperationResult<bool>.LogAndReturnFailureResult(ex);
            }
        }

        public OperationResult<bool> RemoveItemFromCart(CartItemDTO cartItemDTO)
        {
            try
            {
                return DependencyFactory.Resolve<CartDAC>().RemoveItemFromCart(Mapper.Map<CartItemDTO, CartItem>(cartItemDTO));
            }
            catch (Exception ex)
            {
                return OperationResult<bool>.LogAndReturnFailureResult(ex);
            }
        }

        public OperationResult<bool> EmptyCart(string cartId)
        {
            try
            {
                return DependencyFactory.Resolve<CartDAC>().EmptyCart(cartId);
            }
            catch (Exception ex)
            {
                return OperationResult<bool>.LogAndReturnFailureResult(ex);
            }
        }
    }
}
