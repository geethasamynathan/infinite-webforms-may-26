using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementDemonstration
{
    public partial class ApplicationStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblAppStart.Text = $"Application Started Count : {Application["ApplicationStartCount"]}";
            lblCurrentUsers.Text = $"Current Users : {Application["CurrentUsers"]}";
            lblSessionStarted.Text = $"Total Session Started : {Application["TotalSessionStarted"]}";
            lblSessionEnded.Text = $"Total Session Ended : {Application["TotalSessionEnded"]}";
        }
    }
}