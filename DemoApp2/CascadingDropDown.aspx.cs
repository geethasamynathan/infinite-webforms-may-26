using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApp2
{
    public partial class CascadingDropDown : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlState.Items.Clear();
                ddlState.Items.Add(new ListItem("--Select State - -", ""));
            }
        }

        protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlState.Items.Clear();
            ddlState.Items.Add(new ListItem("--Select State - -", ""));
            if (ddlCountry.SelectedValue == "USA")
            {
                ddlState.Items.Add(new ListItem("California", "CA"));
                ddlState.Items.Add(new ListItem("New York", "NY"));
                ddlState.Items.Add(new ListItem("Texas", "TX"));
            }
            else if (ddlCountry.SelectedValue == "India")
            {
                ddlState.Items.Add(new ListItem("Karnataka", "KA"));
                ddlState.Items.Add(new ListItem("TamilNadu", "TN"));
                ddlState.Items.Add(new ListItem("AndraPradesh", "AP"));
            }   

        }
    }
}