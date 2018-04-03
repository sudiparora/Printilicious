using Printilicious.Models.Product;
using Printly.Business.BDC;
using Printly.DTO.Product;
using Printly.Shared.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Printilicious.Controllers
{
    public class ProductController : Controller
    {
        // GET: Product
        public ActionResult Index(string productCode = "")
        {
            ProductViewModel viewModel = new ProductViewModel();
            OperationResult<ProductDTO> productDTOResult = DependencyFactory.Resolve<ProductBDC>().GetProductDetail(productCode);
            if (productDTOResult.IsSuccessful)
            {
                viewModel.Product = productDTOResult.Result;
                return View(viewModel);
            }
            else
            {
                return View("Error");
            }
        }

        public ActionResult GetProductsForCategory(string categoryCode = "")
        {
            ProductCategoryViewModel viewModel = new ProductCategoryViewModel();
            OperationResult<List<ProductDTO>> allProductsForCategoryResult = DependencyFactory.Resolve<ProductBDC>().GetAllProductsForCategory(categoryCode);
            if (allProductsForCategoryResult.IsSuccessful)
            {
                viewModel.CategoryCode = categoryCode;
                viewModel.Products = allProductsForCategoryResult.Result;
                return View("ProductCategory", viewModel);
            }
            else
            {
                return View("Error");
            }
        }
    }
}