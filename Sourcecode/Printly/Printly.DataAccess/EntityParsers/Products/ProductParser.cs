using Printly.DataAccess.Constants;
using Printly.DataAccess.Interfaces;
using Printly.Entities;
using Printly.Entities.Base;
using System;
using System.Data.SqlClient;

namespace Printly.DataAccess.EntityParsers
{
    public class ProductParser: IEntityParser
    {
        private int ord_ProductId;
        private int ord_ProductName;
        private int ord_ProductDesc;

        public EntityBase PopulateEntity(SqlDataReader reader)
        {
            Product product = new Product();
            if (!reader.IsDBNull(ord_ProductId)) product.ProductID = reader.GetInt32(ord_ProductId);
            if (!reader.IsDBNull(ord_ProductName)) product.ProductName = reader.GetString(ord_ProductName);
            if (!reader.IsDBNull(ord_ProductDesc)) product.ProductDesc = reader.GetString(ord_ProductDesc);
            return product;
        }

        public void PopulateOrdinals(SqlDataReader reader)
        {
            ord_ProductId = reader.GetOrdinal(DBColumnConstants.PRODUCTID);
            ord_ProductName = reader.GetOrdinal(DBColumnConstants.PRODUCTNAME);
            ord_ProductDesc = reader.GetOrdinal(DBColumnConstants.PRODUCTDESC);
        }

        public SqlParameter[] PopulateParameters(EntityBase entity)
        {
            throw new NotImplementedException();
        }
    }
}
