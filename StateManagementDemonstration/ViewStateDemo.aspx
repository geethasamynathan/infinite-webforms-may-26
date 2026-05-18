<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewStateDemo.aspx.cs" 
    Inherits="StateManagementDemonstration.ViewStateDemo" EnableViewState="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                   Employee Name:
        <asp:TextBox ID="txtName" runat="server" Text="Initial Message"></asp:TextBox>

        <br /><br />

        Department:
        <asp:DropDownList ID="ddlDepartment" runat="server" AutoPostBack="True">
            <asp:ListItem>HR</asp:ListItem>
            <asp:ListItem>IT</asp:ListItem>
            <asp:ListItem>Finance</asp:ListItem>
        </asp:DropDownList>

        <br /><br />

        <asp:Button ID="btnSubmit"
            runat="server"
            Text="Store"
            OnClick="btnSubmit_Click" EnableViewState="False" />

             <asp:Button ID="Button2"
     runat="server"
     Text="Retrive"
     OnClick="btnRetrive_Click" EnableViewState="False" />
            <asp:Label ID="lblMessage" runat="server" Text="Initial Message"></asp:Label>
        </div>
    </form>
</body>
</html>
