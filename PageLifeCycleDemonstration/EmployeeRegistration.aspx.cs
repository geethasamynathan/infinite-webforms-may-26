using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PageLifeCycleDemonstration
{
    public partial class EmployeeRegistration : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["EmployeeDB"].ConnectionString;
        StringBuilder lifeCycleLog = new StringBuilder();
        protected void Page_PreInit(object sender, EventArgs e)
        {
            lifeCycleLog.AppendLine("1.Page PreInit executed <br/> ");
        }
        protected void Page_Init(object sender, EventArgs e)
        {
            lifeCycleLog.AppendLine("2.Page Init executed <br/> ");
        }
        protected void Page_InitComplete(object sender, EventArgs e)
        {
            lifeCycleLog.AppendLine("3.Page InitComplete executed <br/> ");
        }
        protected void Page_PreLoad(object sender, EventArgs e)
        {
            lifeCycleLog.AppendLine("4.Page PreLoad executed <br/> ");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            lifeCycleLog.AppendLine("5.Page Load executed <br/> ");
            if (!IsPostBack)
            {
                lifeCycleLog.AppendLine("First request: binding Departments. <br/> ");
                BindDepartments();
            }
            else
            {
                lifeCycleLog.AppendLine("Postback request: not binding Departments again. <br/> ");
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            lifeCycleLog.AppendLine("6.btnSave Click event executed <br/> ");
            SaveEmployee();
            lifeCycleLog.AppendLine("Employee saved successfully. <br/> ");
            lblMessage.Text = "Employee registered successfully!";
            lblMessage.ForeColor = System.Drawing.Color.Green;
        }
        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            lifeCycleLog.AppendLine("7.Page LoadComplete executed <br/> ");
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            lifeCycleLog.AppendLine("8.Page PreRender executed <br/> ");
            lblLifeCycle.Text = lifeCycleLog.ToString();
        }
        protected void Page_Unload(object sender, EventArgs e)
        {
            // Note: You cannot access server controls here as the page is being unloaded.
            // This event is typically used for cleanup code, such as closing database connections.
        }
        private void BindDepartments()
        {
         using(SqlConnection con = new SqlConnection(cs))
            {
                string query = "SELECT DepartmentID, DepartmentName FROM Departments";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                ddlDepartments.DataSource = dt;
                ddlDepartments.DataTextField = "DepartmentName";
                ddlDepartments.DataValueField = "DepartmentID";
                ddlDepartments.DataBind();

                ddlDepartments.Items.Insert(0, new ListItem("--Select Department--", "0"));
            }
           
        }

        private void SaveEmployee()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "INSERT INTO Employees (FullName, Email, Gender,DepartmentId) VALUES" +
                    " (@FullName, @Email,@Gender, @DepartmentId)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@FullName", txtFullName.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Gender", rblGender.SelectedValue);
                cmd.Parameters.AddWithValue("@DepartmentId", ddlDepartments.SelectedValue);

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}