<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DemoApp2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .error {
            color: red;
            font-weight: bold;
        }

        .success {
            color: green;
            font-weight: bold;
        }

        .login-table {
            width: 400px;
            margin: 50px auto;
            border: 1px solid #ccc;
            padding: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          
            <table class="login-table">
                <tr>
                    <td class="auto-style1" colspan="3">
                        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" ForeColor="#9900FF" Text="Login Form"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" Display="Dynamic" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnLogin" runat="server" BackColor="#3333CC" Font-Bold="True" ForeColor="White" Height="46px" OnClick="btnLogin_Click" Text="Login" Width="150px" />
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="btnCancel" runat="server" BackColor="Silver" Font-Bold="True" Height="41px" OnClick="btnCancel_Click" Text="Cancel" Width="104px" />
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="3">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Please fix the following Errors" />
                        <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
            </table>
          
        </div>
    </form>
</body>
</html>
