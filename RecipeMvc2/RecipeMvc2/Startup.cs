using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(RecipeMvc2.Startup))]
namespace RecipeMvc2
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
