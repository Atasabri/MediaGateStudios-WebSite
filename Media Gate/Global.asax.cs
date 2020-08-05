using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using Media_Gate.Models;


namespace Media_Gate
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            #region Add First Admin
            //DB DB = new DB();
            //if (DB.Admins.Count() == 0)
            //{
            //    DB.Admins.Add(new Admin { Name = "Ata Sabri", Password = "01142229025", Type = 1 });
            //}
            #endregion        

            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
    }
}