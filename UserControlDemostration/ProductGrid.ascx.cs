using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Web.Caching;

namespace UserControlDemostration
{

    public partial class ProductGrid : System.Web.UI.UserControl
    {
        string cs = ConfigurationManager.ConnectionStrings["ProductDBConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProducts();
            }
        }
        private void LoadProducts()
        {
            DataTable dt;
            if (Cache["Products"] != null)
            {
                dt = (DataTable)Cache["Products"];
                lblMessage.Text = "Products loaded from cache.";
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                dt = GetProductsFromDatabase();
                //Cache.Insert("Products", dt, null, System.Web.Caching.Cache.NoAbsoluteExpiration,
                //    TimeSpan.FromMinutes(2), System.Web.Caching.CacheItemPriority.Default, null
                //   );


                CacheDependency dependency = new CacheDependency(Server.MapPath("~/App_Data/ProductCacheDependeny.xml"));

                Cache.Insert(
                        "Products",
                            dt,
                             dependency,
                         DateTime.Now.AddMinutes(10),
                         Cache.NoSlidingExpiration
                    );                                                     
                lblMessage.Text = "Products loaded from database and stored in cached.";
                lblMessage.ForeColor = System.Drawing.Color.Blue;
            }
            lblGenerationTime.Text = "User Control Generated at : " + DateTime.Now.ToString("hh:mm:ss tt");

            gvProducts.DataSource = dt;
            gvProducts.DataBind();
        }

        private DataTable GetProductsFromDatabase()
        {
            DataTable dt = new DataTable();
            using (SqlConnection conn = new SqlConnection(cs))
            {
                string query = "SELECT ProductId, ProductName, Category, Price, Stock FROM Products";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(dt);
                    }
                }
            }
            return dt;
        }

        protected void btnClearCache_Click(object sender, EventArgs e)
        {
            Cache.Remove("Products");

            lblMessage.Text = "Cache cleared. Please reload the page to fetch fresh data.";
            lblMessage.ForeColor = System.Drawing.Color.Red;

            gvProducts.DataSource = null;
            gvProducts.DataBind();
        }

        protected void btnLoad_Click(object sender, EventArgs e)
        {
            LoadProducts();
        }


    }
}