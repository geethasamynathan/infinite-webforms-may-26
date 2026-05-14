<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registeration.aspx.cs" Inherits="DemoApp2.Registeration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .container {
            width: 500px;
            margin: 40px auto;
            padding: 25px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #f7f7f7;
        }

        .row {
            margin-bottom: 15px;
        }

        .label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        .input {
            width: 100%;
            padding: 8px;
        }

        .success {
            color: green;
            font-weight: bold;
        }

        .error {
            color: red;
            font-weight: bold;
        }

        .btn {
            padding: 10px 20px;
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Student Registration Form</h2>

            <div class="row">
                <asp:Label ID="lblName" runat="server" Text="Full Name" CssClass="label"></asp:Label>
                <asp:TextBox ID="txtName" runat="server" CssClass="input"></asp:TextBox>
            </div>
            <div class="row">
                <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="label"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="input"></asp:TextBox>
            </div>
            <div class="row">
                <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="label"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="input"></asp:TextBox>
            </div>
            <div class="row">
                <asp:Label ID="lblAge" runat="server" Text="Age" CssClass="label"></asp:Label>
                <asp:TextBox ID="txtAge" runat="server" CssClass="input"></asp:TextBox>
            </div>
            <div class="row">
                <asp:Label ID="lblGender" runat="server" Text="Gender" CssClass="label"></asp:Label>
                <asp:RadioButtonList ID="rblGender" runat="server">
                    <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                    <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div class="row">
                <asp:Label ID="lblSkills" runat="server" Text="Skills" CssClass="label"></asp:Label>
                <asp:CheckBoxList ID="cblSkills" runat="server">
                    <asp:ListItem Text="C#" Value="C#"></asp:ListItem>
                    <asp:ListItem Text="HTML" Value="HTML"></asp:ListItem>
                    <asp:ListItem Text="CSS" Value="CSS"></asp:ListItem>
                    <asp:ListItem Text="SQL" Value="SQL"></asp:ListItem>
                </asp:CheckBoxList>               
            </div>
            <div class="row">
                <asp:CheckBox ID="chkAgree" runat="server" Text="I Agree to the terms and conditions" />
            </div>
            <div class="row">
                <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn" OnClick="btnRegister_Click" /> 
                <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn" OnClick="btnClear_Click"  />
                <div class="row">
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
