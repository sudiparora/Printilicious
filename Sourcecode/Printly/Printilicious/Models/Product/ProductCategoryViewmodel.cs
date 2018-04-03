using Printly.DTO.Product;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Printilicious.Models.Product
{
    public class ProductCategoryViewModel: MenuViewModel
    {
        public string CategoryCode { get; set; }
        public List<ProductDTO> Products { get; set; }

    }
}