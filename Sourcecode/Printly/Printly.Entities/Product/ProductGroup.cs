using Printly.Entities.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Printly.Entities
{
    public class ProductGroup: EntityBase
    {

        public int ProductGroupID { get; set; }
        public string ProductGroupName { get; set; }
        public string ProductGroupDesc { get; set; }
        public ProductCategory ChildProductCategory { get; set; }

    }
}
