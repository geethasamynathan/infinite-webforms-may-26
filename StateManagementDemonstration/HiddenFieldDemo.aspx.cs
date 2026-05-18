using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementDemonstration
{
    public partial class HiddenFieldDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                hfEmployeeId.Value = "E001";
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Response.Write("Employee ID: " + hfEmployeeId.Value);
        }
    }
}