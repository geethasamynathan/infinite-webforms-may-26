<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfileDemo.aspx.cs" Inherits="StateManagementDemonstration.ProfileDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>User Profile</h2>
            
            Full Name:
           <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
            <br /><br />

             City :
<asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
 <br /><br />

             Full Name:
<asp:DropDownList ID="ddlTheme" runat="server">
<asp:ListItem Value="Light">Light</asp:ListItem>
    <asp:ListItem Value="Dark">Dark</asp:ListItem>
</asp:DropDownList>
 <br /><br />

            <asp:Button ID="btnSave" runat="server"
Text="Save Profile" OnClick="btnSave_Click" />  

            <asp:Button ID="btnLoad" runat="server"
Text="Load Profile" OnClick="btnLoad_Click" />  
            <br />
            <br />
            <br />
            <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
