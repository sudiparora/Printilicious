using Printly.DTO.Base;
using System.Collections.Generic;

namespace Printly.DTO.Product
{
    public class ProductGroupDTO : DTOBase
    {

        public int ProductGroupID { get; set; }
        public string ProductGroupName { get; set; }
        public string ProductGroupDesc { get; set; }
        public List<ProductCategoryDTO> ProductCategories { get; set; }

    }
}
