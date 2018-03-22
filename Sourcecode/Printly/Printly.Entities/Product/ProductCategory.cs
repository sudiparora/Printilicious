using Printly.Entities.Base;

namespace Printly.Entities
{
    public class ProductCategory: EntityBase
    {
        public int ProductCategoryID { get; set; }
        public string ProductCategoryName { get; set; }
        public string ProductCategoryCode { get; set; }
        public int? ProductCategoryParentID { get; set; }
        public string ProductCategoryParents { get; set; }
    }
}
