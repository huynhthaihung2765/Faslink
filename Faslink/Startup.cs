using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Faslink.Startup))]
namespace Faslink
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
