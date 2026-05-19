using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementDemonstration
{
    public partial class EmployeeDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IsLoggedIn"] == null || Session["IsLoggedIn"].ToString() != "true")
            {
                Response.Redirect("Unauthorised.aspx");
            }
            if(!IsPostBack)
            {
                lblWelcome.Text = $"Welcome, {Session["Username"]}!";
                lblSessionId.Text = $"Your session ID is: {Session.SessionID}";
                lblLoginTime.Text = $"You logged in at: {Session["LoginTime"]}";
                lblFullName.Text = $"Full Name: {HttpContext.Current.Profile["FullName"]}";
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            //clear all session data and end the session
            Session.Clear();

            // end the session and release resources
            Session.Abandon();

            Response.Redirect("Login.aspx");
        }
    }
}