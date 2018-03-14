using Printly.DataAccess.Constants;
using Printly.DataAccess.Interfaces;
using Printly.Entities;
using Printly.Entities.Base;
using System;
using System.Data.SqlClient;

namespace Printly.DataAccess.EntityParsers
{

    public class CartParser : IEntityParser
    {

        private int ord_CartId;
        private int ord_UserId;
        private int ord_ItemCount;
        private int ord_CartTotal;

        public EntityBase PopulateEntity(SqlDataReader reader)
        {
            Cart cart = new Cart();
            if (!reader.IsDBNull(ord_CartId)) cart.CartId = reader.GetString(ord_CartId);
            if (!reader.IsDBNull(ord_UserId)) cart.UserId = reader.GetString(ord_UserId);
            if (!reader.IsDBNull(ord_ItemCount)) cart.ItemCount = reader.GetInt32(ord_ItemCount);
            if (!reader.IsDBNull(ord_CartTotal)) cart.CartTotal = reader.GetDecimal(ord_CartTotal);
            return cart;
        }

        public void PopulateOrdinals(SqlDataReader reader)
        {
            ord_CartId = reader.GetOrdinal(DBColumnConstants.CARTID);
            ord_UserId = reader.GetOrdinal(DBColumnConstants.USERID);
            ord_ItemCount = reader.GetOrdinal(DBColumnConstants.ITEMCOUNT);
            ord_CartTotal = reader.GetOrdinal(DBColumnConstants.CARTTOTAL);
        }

        public SqlParameter[] PopulateParameters(EntityBase entity)
        {
            throw new NotImplementedException();
        }
    }
}
