using Printly.DataAccess.EntityParsers;
using Printly.DataAccess.Interfaces;
using Printly.Entities;
using System;

namespace Printly.DataAccess.Common
{
    internal sealed class EntityParserFactory
    {
        internal IEntityParser GetParser(Type entityType)
        {
            IEntityParser parser = null;
            switch (entityType.Name)
            {
                case EntityConstants.PRODUCTCATEGORY:
                    parser = new ProductCategoryParser();
                    break;
                case EntityConstants.PRODUCTGROUP:
                    parser = new ProductGroupParser();
                    break;
                case EntityConstants.PRODUCT:
                    parser = new ProductParser();
                    break;
            }
            return parser;
        }
    }
}
