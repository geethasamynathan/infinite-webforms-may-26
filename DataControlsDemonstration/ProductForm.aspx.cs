using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace DataControlsDemonstration
{
    public partial class ProductForm : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["EmployeeDBConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProducts();
                rblStatus.SelectedValue = "Active";
            }
        }
        private void LoadProducts()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Products ORDER BY ProductId DESC", con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                gvProducts.DataSource = dt;
                gvProducts.DataBind();
            }
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (btnSave.CommandName == "Insert")
            {
                InsertProduct();
            }
            else if (btnSave.CommandName == "Update")
            {
                UpdateProduct();
            }

            LoadProducts();
            ClearForm();
        }
        private void InsertProduct()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = @"INSERT INTO Products
                                (ProductName, Category, Price, Stock, Status)
                                VALUES
                                (@ProductName, @Category, @Price, @Stock, @Status)";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@ProductName", txtProductName.Text);
                cmd.Parameters.AddWithValue("@Category", ddlCategory.SelectedValue);
                cmd.Parameters.AddWithValue("@Price", Convert.ToDecimal(txtPrice.Text));
                cmd.Parameters.AddWithValue("@Stock", Convert.ToInt32(txtStock.Text));
                cmd.Parameters.AddWithValue("@Status", rblStatus.SelectedValue);

                con.Open();
                cmd.ExecuteNonQuery();
            }
            lblMessage.Text = "Product inserted successfully.";
            lblMessage.ForeColor = Color.Green;

        }
        private void UpdateProduct()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = @"UPDATE Products SET
                                ProductName = @ProductName,
                                Category = @Category,
                                Price = @Price,
                                Stock = @Stock,
                                Status = @Status
                                WHERE ProductId = @ProductId";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@ProductId", hfProductId.Value);
                cmd.Parameters.AddWithValue("@ProductName", txtProductName.Text);
                cmd.Parameters.AddWithValue("@Category", ddlCategory.SelectedValue);
                cmd.Parameters.AddWithValue("@Price", Convert.ToDecimal(txtPrice.Text));
                cmd.Parameters.AddWithValue("@Stock", Convert.ToInt32(txtStock.Text));
                cmd.Parameters.AddWithValue("@Status", rblStatus.SelectedValue);

                con.Open();
                cmd.ExecuteNonQuery();
            }

            lblMessage.Text = "Product updated successfully.";
            lblMessage.ForeColor = Color.Green;
        }

        protected void gvProducts_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditProduct")
            {
                int productId = Convert.ToInt32(e.CommandArgument);
                LoadProductById(productId);
            }
        }
        private void LoadProductById(int productId)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "SELECT * FROM Products WHERE ProductId = @ProductId";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@ProductId", productId);

                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    hfProductId.Value = dr["ProductId"].ToString();
                    txtProductName.Text = dr["ProductName"].ToString();
                    ddlCategory.SelectedValue = dr["Category"].ToString();
                    txtPrice.Text = dr["Price"].ToString();
                    txtStock.Text = dr["Stock"].ToString();
                    rblStatus.SelectedValue = dr["Status"].ToString();

                    btnSave.Text = "Update";
                    btnSave.CommandName = "Update";
                }
            }
        }

        protected void gvProducts_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int productId = Convert.ToInt32(gvProducts.DataKeys[e.RowIndex].Value);

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "DELETE FROM Products WHERE ProductId = @ProductId";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@ProductId", productId);

                con.Open();
                cmd.ExecuteNonQuery();
            }

            lblMessage.Text = "Product deleted successfully.";
            lblMessage.ForeColor = Color.Red;

            LoadProducts();
            ClearForm();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            ClearForm();

        }
        private void ClearForm()
        {
            hfProductId.Value = "";
            txtProductName.Text = "";
            ddlCategory.SelectedIndex = 0;
            txtPrice.Text = "";
            txtStock.Text = "";
            rblStatus.SelectedValue = "Active";

            btnSave.Text = "Insert";
            btnSave.CommandName = "Insert";
        }
    }
}