using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementDemonstration
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username= txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            if(username == "admin" && password == "admin123")
            {
                Session["Username"] = username;
                Session["Role"] = "Employee";
                Session["LoginTime"] = DateTime.Now.ToString();
                Session["IsLoggedIn"] = "true";

                string sessionId= Session.SessionID;
                Response.Redirect("EmployeeDashboard.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid username or password. Please try again.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }

            }
    }
}