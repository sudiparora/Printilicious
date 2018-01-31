using Printly.DataAccess.Common;
using Printly.DataAccess.Constants;
using Printly.DataAccess.Interfaces;
using Printly.Entities;
using Printly.Entities.Base;
using System;
using System.Data.SqlClient;

namespace Printly.DataAccess.EntityParsers
{
    public class ProductCategoryParser: IEntityParser
    {
        private int ord_ProductCategoryId;
        private int ord_ProductCategoryName;
        private int ord_ProductCategoryDesc;

        public EntityBase PopulateEntity(SqlDataReader reader)
        {
            ProductCategory productCategory = new ProductCategory();
            if (!reader.IsDBNull(ord_ProductCategoryId)) productCategory.ProductCategoryID = reader.GetInt32(ord_ProductCategoryId);
            if (!reader.IsDBNull(ord_ProductCategoryName)) productCategory.ProductCategoryName = reader.GetString(ord_ProductCategoryName);
            if (!reader.IsDBNull(ord_ProductCategoryDesc)) productCategory.ProductCategoryDesc = reader.GetString(ord_ProductCategoryDesc);
            productCategory.ChildProduct = (Product)EntityParserHelper.PopulateEntity<Product>(reader);
            return productCategory;
        }

        public void PopulateOrdinals(SqlDataReader reader)
        {
            ord_ProductCategoryId = reader.GetOrdinal(DBColumnConstants.PRODUCTCATEGORYID);
            ord_ProductCategoryName = reader.GetOrdinal(DBColumnConstants.PRODUCTCATEGORYNAME);
            ord_ProductCategoryDesc = reader.GetOrdinal(DBColumnConstants.PRODUCTCATEGORYDESC);
        }

        public SqlParameter[] PopulateParameters(EntityBase entity)
        {
            throw new NotImplementedException();
        }
    }
}
