using Printilicious.Models;
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
    public class HomeController : Controller
    {

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";
            return View();
        }

        public ActionResult Index()
        {
            MenuViewModel menu = new MenuViewModel();
            return View(menu);
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";
            return View();
        }

    }
}