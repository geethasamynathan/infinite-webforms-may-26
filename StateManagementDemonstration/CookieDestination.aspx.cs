using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementDemonstration
{
    public partial class CookieDestination : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Request.Cookies["employeeName"] != null)
            //{
            //    string employeeName = Request.Cookies["employeeName"].Value;
            //    lblMessage.Text = "Employee Name: " + employeeName;
            //}
            //else
            //{
            //    lblMessage.Text = "No Employee Name cookie found.";
            //    lblMessage.ForeColor = System.Drawing.Color.Red;
            //}

            HttpCookie employeeCookie = Request.Cookies["EmployeeInfo"];
            if(employeeCookie != null)
            {
                lblEmployeeId.Text = "Employee ID: " + employeeCookie["EmployeeId"];
                lblEmployeeName.Text = "Employee Name: " + employeeCookie["EmployeeName"];
                lblDepartment.Text = "Department: " + employeeCookie["Department"];
            }
            else
            {
                lblEmployeeId.Text = "No Employee Info cookie found.";
            }
        }
    }
}