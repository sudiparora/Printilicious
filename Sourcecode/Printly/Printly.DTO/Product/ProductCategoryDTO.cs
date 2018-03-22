using Printly.DTO.Base;
using System.Collections.Generic;

namespace Printly.DTO.Product
{
    public class ProductCategoryDTO : DTOBase
    {
        public ProductCategoryDTO()
        {
            ChildProductCategories = new List<ProductCategoryDTO>();
        }

        public int ProductCategoryID { get; set; }
        public string ProductCategoryName { get; set; }
        public string ProductCategoryDesc { get; set; }
        public string ProductCategoryCode { get; set; }
        //public bool HasNoChildCategories
        //{
        //    get { return ChildProductCategories.Count > 0; }
        //}
        public List<ProductCategoryDTO> ChildProductCategories { get; set; }
    }
}
