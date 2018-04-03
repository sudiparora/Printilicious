using Printilicious.App_Start;
using Printly.DTO.Product;
using System.Collections.Generic;

namespace Printilicious.Models
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