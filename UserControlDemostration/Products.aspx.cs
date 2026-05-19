using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserControlDemostration
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRefreshPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Products.aspx");
        }

        protected void btnClearCache_Click(object sender, EventArgs e)
        {
            Cache.Remove("Products");
            lblMessage.Text = "Data  cache removed. But fragment cache may still show old output until 60 seconds.";
            lblMessage.ForeColor = System.Drawing.Color.Red;
        }
    }
}