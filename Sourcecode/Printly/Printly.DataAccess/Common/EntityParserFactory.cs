using Printly.DataAccess.EntityParsers;
using Printly.DataAccess.Interfaces;
using Printly.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
