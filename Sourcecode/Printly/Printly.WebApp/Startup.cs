using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Printly.WebApp.Startup))]
namespace Printly.WebApp
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
