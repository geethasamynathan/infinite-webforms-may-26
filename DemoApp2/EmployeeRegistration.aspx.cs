using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApp2
{
    public partial class EmployeeRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void cvFile_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (fuEmployeeFile.HasFile)
            {
                string extension=Path.GetExtension(fuEmployeeFile.FileName).ToLower();
                string[] allowedExtensions = { ".jpg", ".jpeg", ".png", ".pdf" };
                args.IsValid = allowedExtensions.Contains(extension);
            }
            else
            {
                args.IsValid = true; // No file uploaded, so we consider it valid
            }
        }

        protected void cvAgree_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = chkAgree.Checked;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "";

            if (!Page.IsValid)
            {

                return;
            }

            string skills = string.Join(", ",
                lstSkills.Items.Cast<ListItem>().Where(i => i.Selected).Select(i => i.Text));

            string languages = string.Join(", ",
                               chkLanguages.Items.Cast<ListItem>().Where(i => i.Selected).Select(i => i.Text));

            string uploadedFilePath = "";
            if (fuEmployeeFile.HasFile)
            {
                string folderPath = Server.MapPath("~/EmployeeUploads/");
                if (!Directory.Exists(folderPath))
                {
                    Directory.CreateDirectory(folderPath);
                }
                string fileName = DateTime.Now.Ticks + "_" + Path.GetFileName(fuEmployeeFile.FileName);
                string fullPath = Path.Combine(folderPath, fileName);

                fuEmployeeFile.SaveAs(fullPath);
                uploadedFilePath = "~/EmployeeUploads/" + fileName;
                imgPreview.ImageUrl = uploadedFilePath;
                imgPreview.Visible = true;
            }
            StringBuilder sb = new StringBuilder();
            sb.Append("<div style='background:#eafaf1; padding:15px; border:1px solid green; border-radius:8px;'>");
            sb.Append("<h3 style='color:green;'>Employee Registered Successfully!</h3>");

            sb.Append("<b>Full Name:</b> " + txtFullName.Text.Trim() + "<br/>");
            sb.Append("<b>Email:</b> " + txtEmail.Text.Trim() + "<br/>");
            sb.Append("<b>Mobile:</b> " + txtMobile.Text.Trim() + "<br/>");
            sb.Append("<b>Department:</b> " + ddlDepartment.SelectedValue + "<br/>");
            sb.Append("<b>Skills:</b> " + skills + "<br/>");
            sb.Append("<b>Languages:</b> " + languages + "<br/>");
            sb.Append("<b>Salary:</b> " + txtSalary.Text.Trim() + "<br/>");

            if (!string.IsNullOrEmpty(uploadedFilePath))
            {
                sb.Append("<b>Uploaded File:</b> Saved successfully in EmployeeUploads folder<br/>");
            }
            sb.Append("</div>");

            lblMessage.Text = sb.ToString();
            lblMessage.ForeColor = System.Drawing.Color.Green;

            ClearForm();
        }

        private void ClearForm()
        {
            txtFullName.Text = "";
            txtEmail.Text = "";
            txtConfirmEmail.Text = "";
            txtMobile.Text = "";
            txtSalary.Text = "";

            ddlDepartment.SelectedIndex = 0;

            foreach (ListItem item in lstSkills.Items)
            {
                item.Selected = false;
            }

            foreach (ListItem item in chkLanguages.Items)
            {
                item.Selected = false;
            }

            chkAgree.Checked = false;
        }
    }
}