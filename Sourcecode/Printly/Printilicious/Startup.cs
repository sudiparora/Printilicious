using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Printilicious.Startup))]
namespace Printilicious
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
