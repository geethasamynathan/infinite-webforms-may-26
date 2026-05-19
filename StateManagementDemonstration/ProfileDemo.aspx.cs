using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementDemonstration
{
    public partial class ProfileDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
           HttpContext.Current.Profile["FullName"] = txtFullName.Text;
            HttpContext.Current.Profile["City"] = txtCity.Text;

            HttpContext.Current.Profile["Theme"] = ddlTheme.SelectedValue;
  

              lblMessage.Text = "Profile information saved successfully!";
            lblMessage.ForeColor = System.Drawing.Color.Green;

            Response.Redirect("Login.aspx");
        }

        protected void btnLoad_Click(object sender, EventArgs e)
        {
            txtFullName.Text = HttpContext.Current.Profile["FullName"].ToString();
            txtCity.Text = HttpContext.Current.Profile["City"].ToString();
            ddlTheme.SelectedValue = HttpContext.Current.Profile["Theme"].ToString();

            lblMessage.Text = "Profile information loaded successfully!";
            lblMessage.ForeColor = System.Drawing.Color.Blue;
        }
    }
}