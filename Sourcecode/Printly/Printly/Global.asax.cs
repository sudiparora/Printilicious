using NLog.Common;
using Printly.App_Start;
using Printly.Business.BDC;
using Printly.Shared.Automapper;
using Printly.Shared.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

namespace Printly
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            string nlogPath = Server.MapPath("nlog-web.log");
            InternalLogger.LogFile = nlogPath;
            InternalLogger.LogLevel = NLog.LogLevel.Trace;

            AreaRegistration.RegisterAllAreas();
            GlobalConfiguration.Configure(WebApiConfig.Register);
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            AutoMapperConfiguration.Instance.InitializeAutoMapper();
            UnityConfig.RegisterObjects();

            DependencyFactory.Resolve<ProductBDC>().GetAllProductGroups();
        }
    }
}
