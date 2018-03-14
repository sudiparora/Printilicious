using Printly.DataAccess.Constants;
using Printly.DataAccess.Interfaces;
using Printly.Entities;
using Printly.Entities.Base;
using System;
using System.Data.SqlClient;

namespace Printly.DataAccess.EntityParsers
{
    public class CartItemParser : IEntityParser
    {

        private int ord_CartId;
        private int ord_ProductId;
        private int ord_Quantity;

        public EntityBase PopulateEntity(SqlDataReader reader)
        {
            CartItem cartItem = new CartItem();
            if (!reader.IsDBNull(ord_CartId)) cartItem.CartId = reader.GetString(ord_CartId);
            if (!reader.IsDBNull(ord_ProductId)) cartItem.ProductId = reader.GetInt32(ord_ProductId);
            if (!reader.IsDBNull(ord_Quantity)) cartItem.Quantity = reader.GetInt32(ord_Quantity);
            return cartItem;
        }

        public void PopulateOrdinals(SqlDataReader reader)
        {
            ord_CartId = reader.GetOrdinal(DBColumnConstants.CARTID);
            ord_ProductId = reader.GetOrdinal(DBColumnConstants.PRODUCTID);
            ord_Quantity = reader.GetOrdinal(DBColumnConstants.QUANTITY);
        }

        public SqlParameter[] PopulateParameters(EntityBase entity)
        {
            throw new NotImplementedException();
        }
    }
}
