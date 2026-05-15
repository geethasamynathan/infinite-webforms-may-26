using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApp2
{
    public partial class GridView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                gvEmployees.DataSource = GetEmployees();
                gvEmployees.DataBind();
            }
        }

        private DataTable GetEmployees()
        {
            string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["EmployeeDBConnection"].ConnectionString;
            using(SqlConnection conn=new SqlConnection(connStr))
            {
                string query = "SELECT EmployeeId, FullName, Email, Mobile, Gender, Department, Skills, Languages, Salary, FilePath, CreatedDate FROM Employees";
                using (SqlDataAdapter da = new SqlDataAdapter(query, conn))
                {
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    return dt;
                }
                   
             }
        }
    }
}