<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeRegistration.aspx.cs" Inherits="DemoApp2.EmployeeRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         body {
            font-family: Arial;
            background-color: #f4f6f8;
        }

        .container {
            width: 700px;
            margin: 30px auto;
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px #ccc;
        }

        table {
            width: 100%;
        }

        td {
            padding: 8px;
        }

        .error {
            color: red;
        }

        .success {
            color: green;
            font-weight: bold;
        }

        .btn {
            padding: 8px 18px;
            background-color: #0078d7;
            color: white;
            border: none;
            border-radius: 5px;
        }
        .auto-style1 {
            width: 839px;
            margin: 30px auto;
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px #ccc;
            height: 1030px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h2>Employee REgistration Form</h2>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                HeaderText="Please fix the following errors:" CssClass="error"
                />
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblName" runat="server" Text="Full Name"></asp:Label>
                    </td>
                    <td> 

                        <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtFullName" CssClass="error" Display="Dynamic" ErrorMessage="FullName is Required"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td> 

                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" CssClass="error" Display="Dynamic" ErrorMessage="Email is Required"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" CssClass="error" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblConfirmEmail" runat="server" Text="Confirm Email"></asp:Label>
                    </td>
                    <td> 

                        <asp:TextBox ID="txtConfirmEmail" runat="server"></asp:TextBox>
&nbsp;<asp:CompareValidator ID="cvEmail" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtConfirmEmail" CssClass="error" Display="Dynamic" ErrorMessage="Email and Confirm Email must match"></asp:CompareValidator>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblMobile" runat="server" Text="Mobile"></asp:Label>
                    </td>
                    <td> 

                        <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="revMobile" runat="server" ControlToValidate="txtMobile" CssClass="error" Display="Dynamic" ErrorMessage="Mobile Number is Required"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="revMobile1" runat="server" ControlToValidate="txtMobile" CssClass="error" Display="Dynamic" ErrorMessage="Enter valid 10 digit mobile number" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
&nbsp;&nbsp; 

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDepartment" runat="server" Text="Department"></asp:Label>
                    </td>
                    <td> 

                        <asp:DropDownList ID="ddlDepartment" runat="server" AutoPostBack="True">
                            <asp:ListItem>--Select Department --</asp:ListItem>
                            <asp:ListItem>HR</asp:ListItem>
                            <asp:ListItem>IT</asp:ListItem>
                            <asp:ListItem>Finance</asp:ListItem>
                            <asp:ListItem>Sales</asp:ListItem>
                        </asp:DropDownList>
&nbsp;
                        <asp:RequiredFieldValidator ID="revDepartment" runat="server" ControlToValidate="ddlDepartment" CssClass="error" Display="Dynamic" ErrorMessage="Please Select Department"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSkills" runat="server" Text="Skills"></asp:Label>
                    </td>
                    <td> 

                        <asp:ListBox ID="lstSkills" runat="server" AutoPostBack="True" SelectionMode="Multiple">
                            <asp:ListItem>C#</asp:ListItem>
                            <asp:ListItem>SQL</asp:ListItem>
                            <asp:ListItem>ASP.NET</asp:ListItem>
                            <asp:ListItem>Javascript</asp:ListItem>
                        </asp:ListBox>
&nbsp;
                        <asp:RequiredFieldValidator ID="rfvSkills" runat="server" ControlToValidate="lstSkills" CssClass="error" Display="Dynamic" ErrorMessage="Please select at least one skill"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblLanguuage" runat="server" Text="Languages Known"></asp:Label>
                    </td>
                    <td> 

                        <asp:CheckBoxList ID="chkLanguages" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>English</asp:ListItem>
                            <asp:ListItem>Tamil</asp:ListItem>
                            <asp:ListItem>Hindi</asp:ListItem>
                        </asp:CheckBoxList>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSalary" runat="server" Text="Salary"></asp:Label>
                    </td>
                    <td> 

                        <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="rfvSalary" runat="server" ControlToValidate="txtSalary" CssClass="error" Display="Dynamic" ErrorMessage="Salary is required"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvSalary" runat="server" ControlToValidate="txtSalary" CssClass="error" Display="Dynamic" ErrorMessage="Salary between 25000 and 20000" MaximumValue="200000" MinimumValue="25000" Type="Double"></asp:RangeValidator>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblFile" runat="server" Text="Upload Photo/Resume"></asp:Label>
                    </td>
                    <td> 

                        <asp:FileUpload ID="fuEmployeeFile" runat="server" />
&nbsp;<asp:CustomValidator ID="cvFile" runat="server" CssClass="error" Display="Dynamic" ErrorMessage="CustomValidator" OnServerValidate="cvFile_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td> 

                        <asp:CheckBox ID="chkAgree" runat="server" Text="I Confirm the above details are correct" />
&nbsp;
                        <br />
                        <asp:CustomValidator ID="cvAgree" runat="server" CssClass="error" Display="Dynamic" ErrorMessage="Please confirm the declaration" OnServerValidate="cvAgree_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" CssClass="btn" Text="Register Employee" OnClick="btnSubmit_Click" />
                    </td>
                    <td> 

                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Image ID="imgPreview" runat="server" Height="120px" Visible="False" Width="120px" />
                    </td>
                </tr>
            </table>

            <hr />
            <h3> Registered Employees</h3>
            <asp:GridView ID="gvEmployees" runat="server" AutoGenerateColumns="true"
                BorderWidth="1" CellPadding="6"></asp:GridView>
        </div>
    </form>
</body>
</html>
