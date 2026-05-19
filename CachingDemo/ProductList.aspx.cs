using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace CachingDemo
{
    public partial class ProductList : System.Web.UI.Page
    {
        //protected void btnRefreshPage_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("ProductList.aspx");
        //}

        //protected void btnClearCache_Click(object sender, EventArgs e)
        //{
        //    Cache.Remove("Products");

        //    lblPageMessage.Text = "Data cache removed. But fragment cache may still show old output until 60 seconds completes.";
        //    lblPageMessage.ForeColor = System.Drawing.Color.Red;
        //}
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
                Cache.Insert("Products", dt, null, System.Web.Caching.Cache.NoAbsoluteExpiration,
                    TimeSpan.FromMinutes(2), System.Web.Caching.CacheItemPriority.Default, null
                   );

                lblMessage.Text = "Products loaded from database and stored in cached.";
                lblMessage.ForeColor = System.Drawing.Color.Blue;
            }

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