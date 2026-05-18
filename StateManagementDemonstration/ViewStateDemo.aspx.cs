using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementDemonstration
{
    public partial class ViewStateDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                lblMessage.Text = "Welcome Geetha.";
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
           

            ViewState["Name"] = txtName.Text;
            ViewState["Dept"]= ddlDepartment.SelectedItem.Text;
            txtName.Text = "";
            ddlDepartment.SelectedIndex = 0;
            // lblMessage.Text = "Data submitted successfully.";
        }

        protected void btnRetrive_Click(object sender, EventArgs e)
        {
            lblMessage.Text = ViewState["Name"].ToString() +  " - "+ViewState["Dept"].ToString();
        }
    }
}