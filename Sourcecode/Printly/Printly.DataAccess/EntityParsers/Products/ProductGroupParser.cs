using Printly.DataAccess.Common;
using Printly.DataAccess.Constants;
using Printly.DataAccess.Interfaces;
using Printly.Entities;
using Printly.Entities.Base;
using System;
using System.Data.SqlClient;

namespace Printly.DataAccess.EntityParsers
{
    public class ProductGroupParser : IEntityParser
    {

        private int ord_ProductGroupId;
        private int ord_ProductGroupName;
        private int ord_ProductGroupDesc;

        public EntityBase PopulateEntity(SqlDataReader reader)
        {
            ProductGroup productGroup = new ProductGroup();
            if (!reader.IsDBNull(ord_ProductGroupId)) productGroup.ProductGroupID = reader.GetInt32(ord_ProductGroupId);
            if (!reader.IsDBNull(ord_ProductGroupName)) productGroup.ProductGroupName = reader.GetString(ord_ProductGroupName);
            if (!reader.IsDBNull(ord_ProductGroupDesc)) productGroup.ProductGroupDesc = reader.GetString(ord_ProductGroupDesc);
            productGroup.ChildProductCategory = (ProductCategory)EntityParserHelper.PopulateEntity<ProductCategory>(reader);
            return productGroup;
        }

        public void PopulateOrdinals(SqlDataReader reader)
        {
            ord_ProductGroupId = reader.GetOrdinal(DBColumnConstants.PRODUCTGROUPID);
            ord_ProductGroupName = reader.GetOrdinal(DBColumnConstants.PRODUCTGROUPNAME);
            ord_ProductGroupDesc = reader.GetOrdinal(DBColumnConstants.PRODUCTGROUPDESC);
        }

        public SqlParameter[] PopulateParameters(EntityBase entity)
        {
            throw new NotImplementedException();
        }
    }
}
