using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementDemonstration
{
    public partial class CookieSource : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSaveCookie_Click(object sender, EventArgs e)
        {
            HttpCookie employeeCookie = new HttpCookie("EmployeeInfo");

            employeeCookie["EmployeeId"] = txtEmployeeId.Text;
            employeeCookie["EmployeeName"] = txtEmployeeName.Text;
            employeeCookie["Department"] = ddlDepartment.SelectedItem.Text;
            employeeCookie.Expires = DateTime.Now.AddMinutes(2);
            Response.Cookies.Add(employeeCookie);
            Response.Redirect("CookieDestination.aspx");
        }
    }
}