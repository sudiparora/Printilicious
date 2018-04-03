using Printly.DTO.Product;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Printilicious.Models.Product
{
    public class ProductViewModel: MenuViewModel
    {

        public ProductDTO Product { get; set; }

    }
}