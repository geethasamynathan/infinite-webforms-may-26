using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace StateManagementDemonstration
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            Application["AppName"] = "State Management Demonstration";
            Application["ApplicationStartCount"] = 1;
            Application["CurrentUsers"] = 0;
            Application["TotalSessionStarted"] = 0;
            Application["TotalSessionEnded" ] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Application.Lock();
            Application["CurrentUsers"] = (int)Application["CurrentUsers"] + 1;
            Application["TotalSessionStarted"] = (int)Application["TotalSessionStarted"] + 1;
            Application.UnLock();
        }

        protected void Session_End(object sender,EventArgs e)
        {
            Application.Lock();
            Application["CurrentUsers"] = (int)Application["CurrentUsers"] -1;
            Application["TotalSessionStarted"] = (int)Application["TotalSessionStarted"] - 1;
            Application.UnLock();
        }

        protected void Application_Error(object sender, EventArgs e)
        {
            Exception ex = Server.GetLastError();
            // Log the exception (you can use a logging framework or write to a file/database)
            // For demonstration, we'll just clear the error and redirect to a custom error page
            Server.ClearError();
            Response.Redirect("ErrorPage.aspx");
        }
        protected void Application_End(object sender, EventArgs e)
        {
            // Code that runs on application shutdown
            // You can perform cleanup tasks here if needed
        }
    }
}