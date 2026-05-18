using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementDemonstration
{
    public partial class QueryStringSource : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendSingle_Click(object sender, EventArgs e)
        {
            string employeeId= txtEmployeeId.Text;
            Response.Redirect("QueryStringDestination.aspx?employeeId="+employeeId);
        }

        protected void btnSendMultiple_Click(object sender, EventArgs e)
        {
            string employeeId= txtEmployeeId.Text;
            string employeeName = txtEmployeeName.Text;
            string department = ddlDepartment.SelectedItem.Text;

            //string url= "QueryStringDestination.aspx?employeeId=" + 
            //    employeeId+"&employeeName="+ employeeName + "&department=" + department;

            string url= "QueryStringDestination.aspx?employeeId=" +
                HttpUtility.UrlEncode(employeeId) + "&employeeName=" +
                HttpUtility.UrlEncode(employeeName) + "&department=" +
                HttpUtility.UrlEncode(department);
            Response.Redirect(url);
        }
    }
}