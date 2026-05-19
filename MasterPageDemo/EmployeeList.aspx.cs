using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageDemo
{
    public partial class EmployeeList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadEmployees();
            }
        }

        public void LoadEmployees()
        {
            DataTable dt = new DataTable();

            dt.Columns.Add("EmployeeId");
            dt.Columns.Add("FullName");
            dt.Columns.Add("Department");
            dt.Columns.Add("Email");

            dt.Rows.Add("101", "Geetha", "IT", "geetha@example.com");
            dt.Rows.Add("102", "Ravi", "HR", "ravi@example.com");
            dt.Rows.Add("103", "Priya", "Finance", "priya@example.com");

            gvEmployees.DataSource = dt;
            gvEmployees.DataBind();
        }
    }
}