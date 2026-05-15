using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace DemoApp2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = "";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connsectionString = ConfigurationManager.ConnectionStrings["EmployeeDBConnection"].ConnectionString;
            
            if (!Page.IsValid)
            { return; }

            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            using(SqlConnection con=new SqlConnection(connsectionString))
            {
                string query = "SELECT COUNT(*) FROM Users WHERE Username=@Username AND Password=@Password";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Password", password);
                con.Open();
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                if(count==1)
                {
                    lblMessage.Text = "Login successful!";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    lblMessage.Text = "Invalid username or password.";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }

            ////if(string.IsNullOrEmpty(username))
            ////{
            ////    lblMessage.Text = "Please enter username.";
            ////    lblMessage.ForeColor = System.Drawing.Color.Red;
            ////    txtUsername.Focus();
            ////    return;
            ////}
            ////if (string.IsNullOrEmpty(password))
            ////{
            ////    lblMessage.Text = "Please enter password.";
            ////    lblMessage.ForeColor = System.Drawing.Color.Red;
            ////    txtUsername.Focus();
            ////    return;
            ////}
            //if (username == "admin" && password == "admin@123")
            //{
            //    lblMessage.Text = "Login successful!";
            //    lblMessage.ForeColor = System.Drawing.Color.Green;
            //}
            //else
            //{
            //    lblMessage.Text = "Invalid username or password.";
            //    lblMessage.ForeColor = System.Drawing.Color.Red;
            //}
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtUsername.Text = "";
            txtPassword.Text = "";
            lblMessage.Text = "";

        }
    }
}