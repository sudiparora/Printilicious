using Printly.Entities.Base;

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
