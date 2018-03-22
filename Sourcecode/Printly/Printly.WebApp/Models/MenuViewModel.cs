using Printly.DTO.Product;
using Printly.WebApp.App_Start;
using System.Collections.Generic;

namespace Printly.WebApp.Models
{
    public class MenuViewModel
    {

        public List<ProductCategoryDTO> ProductCategories
        {
            get
            {
                return CacheConfig.Instance.ProductCategories;
            }
        }

    }
}