using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApp2
{
    public partial class Registeration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "";

            if(!Page.IsValid)
            { return; }
            string name = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();
            string ageText = txtAge.Text.Trim();
            string gender = rblGender.SelectedValue;
            string course = cblSkills.SelectedValue;

            //if (name == "")
            //{
            //    ShowError("Please enter name.");
            //    return;
            //}
            //if (email == "")
            //{
            //    ShowError("Please enter email.");
            //    return;
            //}

            //if (password == "")
            //{
            //    ShowError("Please enter password.");
            //    return;
            //}
            //if (password.Length < 6)
            //{
            //    ShowError("Password must be at least 6 characters long.");
            //    return;
            //}
            //if (ageText == "")
            //{
            //    ShowError("Please enter age.");
            //    return;
            //}
            //int age;
            //if (!int.TryParse(ageText, out  age))
            //{
            //    ShowError("Please enter a valid age.");
            //    return;
            //}
            //if (age < 18)
            //{
            //    ShowError("Age must be at least 18.");
            //    return;
            //}

            //if (rblGender.SelectedIndex == -1)
            //{
            //    ShowError("Please select Gender");
            //    return;
            //}
            bool isSkillSelected = false;
            StringBuilder skills = new StringBuilder();

            foreach (ListItem item in cblSkills.Items)
            {
                if (item.Selected)
                {
                    isSkillSelected = true;
                    skills.Append(item.Value + " ");
                }
            }
            if (!isSkillSelected)
            {
                ShowError("Please select at least one skill.");
                return;
            }

            if (!chkAgree.Checked)
            {
                ShowError("You must agree to the terms and conditions.");
                return;
            }

            string selectedSkills = skills.ToString().Trim();
            lblMessage.ForeColor = System.Drawing.Color.Green;
            lblMessage.Text = "Registration Successfull <br/>" +
                               " Name:" + name + " <br/>" +
                "Email:" + email + " < br />" +
                "Age : " + ageText + "<br/>" +
                "Gender : " + gender + "<br/>" +
                "Skills : " + selectedSkills;
        }

        private void ShowError(string message)
        {
            lblMessage.Text = message;
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Font.Bold = true;

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtAge.Text = "";
            rblGender.ClearSelection();
            foreach (ListItem item in cblSkills.Items)
            {
                item.Selected = false;
            }

            chkAgree.Checked = false;
            lblMessage.Text = "";
        }
    }
}