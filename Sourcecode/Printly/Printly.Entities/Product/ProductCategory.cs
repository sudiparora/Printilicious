using Printly.Entities.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Printly.Entities
{
    public class ProductCategory: EntityBase
    {
        public int ProductCategoryID { get; set; }
        public string ProductCategoryName { get; set; }
        public string ProductCategoryDesc { get; set; }
        public Product ChildProduct { get; set; }
    }
}
