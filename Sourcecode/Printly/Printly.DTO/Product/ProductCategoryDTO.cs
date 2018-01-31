using Printly.DTO.Base;
using System.Collections.Generic;

namespace Printly.DTO.Product
{
    public class ProductCategoryDTO : DTOBase
    {
        public int ProductCategoryID { get; set; }
        public string ProductCategoryName { get; set; }
        public string ProductCategoryDesc { get; set; }
        public List<ProductDTO> Products { get; set; }
    }
}
