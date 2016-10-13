using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(marshrutkaby.Startup))]
namespace marshrutkaby
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
