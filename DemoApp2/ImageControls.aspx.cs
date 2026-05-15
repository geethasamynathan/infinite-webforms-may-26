using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DEMOAPP1
{
    public partial class ImageControls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            img2.ImageUrl = "~/Images/infinit.png";
            lblMessage.Text = "";

        }

        protected void imgbtn1_Click(object sender, ImageClickEventArgs e)
        {
         //Response.Write("<script>   alert('Image Button 1 clicked!');' </script>");

            lblMessage.Text = "Product Added in to the cart";
        }

        protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
        {
            lblMessage.Text = "You clicked on " + e.PostBackValue;
        }
    }
}