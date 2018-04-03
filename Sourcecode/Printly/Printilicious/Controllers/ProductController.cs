using Printilicious.Models.Product;
using Printly.Business.BDC;
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
            viewModel.Product = DependencyFactory.Resolve<ProductBDC>().GetProductDetail(productCode);
            return View(viewModel);
        }

        public ActionResult GetProductsForCategory(string categoryCode = "")
        {
            ProductCategoryViewModel viewModel = new ProductCategoryViewModel();
            viewModel.CategoryCode = categoryCode;
            viewModel.Products = DependencyFactory.Resolve<ProductBDC>().GetAllProductsForCategory(categoryCode);
            return View("ProductCategory", viewModel);
        }
    }
}