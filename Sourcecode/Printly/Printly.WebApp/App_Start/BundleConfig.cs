using System.Web;
using System.Web.Optimization;

namespace Printly.WebApp
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/lib/jquery-1.11.0.min.js",
                      "~/Scripts/lib/bootstrap.min.js",
                      "~/Scripts/lib/jquery.cookie.js",
                      "~/Scripts/lib/waypoints.min.js",
                      "~/Scripts/lib/modernizr.js",
                      "~/Scripts/lib/bootstrap-hover-dropdown.js",
                      "~/Scripts/lib/owl.carousel.min.js",
                      "~/Scripts/lib/front.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/css/font-awesome.css",
                      "~/Content/css/bootstrap.min.css",
                      "~/Content/css/animate.min.css",
                      "~/Content/css/owl.carousel.css",
                      "~/Content/css/owl.theme.css",
                      "~/Content/css/style.default.css",
                      "~/Content/site.css"));
        }
    }
}
