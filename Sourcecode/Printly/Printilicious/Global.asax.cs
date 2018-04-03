using NLog.Common;
using Printilicious.App_Start;
using Printly.Shared.Automapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

namespace Printilicious
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            string nlogPath = Server.MapPath("nlog-web.log");
            InternalLogger.LogFile = nlogPath;
            InternalLogger.LogLevel = NLog.LogLevel.Trace;

            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            AutoMapperConfiguration.Instance.InitializeAutoMapper();
            UnityConfig.RegisterObjects();
            CacheConfig.Instance.InitializeCache();
        }
    }
}
