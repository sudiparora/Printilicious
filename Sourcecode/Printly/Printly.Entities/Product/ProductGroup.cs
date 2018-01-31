using Printly.Entities.Base;

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
