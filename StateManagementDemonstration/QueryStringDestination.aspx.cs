using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementDemonstration
{
    public partial class QueryStringDestination : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Request.QueryString["employeeId"] != null)
            //{
            //    string employeeId = Request.QueryString["employeeId"];
            //    lblEmployeeId.Text = "Employee ID: " + employeeId;

            //}
            //else
            //{
            //    lblEmployeeId.Text = "No Employee ID provided.";
            //}

            if (!IsPostBack)
            {
                string employeeId = Request.QueryString["employeeId"];
                string employeeName = Request.QueryString["employeeName"];
                string department = Request.QueryString["department"];

                if(employeeId!=null && employeeName!=null && department!=null)
                {
                    lblEmployeeId.Text = "Employee ID: " + employeeId;
                    lblEmployeeName.Text = "Employee Name: " + employeeName;
                    lblDepartment.Text = "Department: " + department;
                }
                else
                {
                    lblEmployeeId.Text = "No Employee ID provided.";
                    lblEmployeeId.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}