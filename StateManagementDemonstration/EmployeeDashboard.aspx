<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDashboard.aspx.cs" Inherits="StateManagementDemonstration.EmployeeDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Employee Dashboard</h2>
            <asp:Label ID="lblWelcome" runat="server" />
            <br /><br />

            <asp:Label ID="lblSessionId" runat="server"></asp:Label>

            <br />
            <br />

            <br />
            <asp:Label ID="lblLoginTime" runat="server"></asp:Label>

             <br />
            <br />
            <asp:Label ID="lblFullName" runat="server" Text="Label"></asp:Label>
            <br />
            <br />

             <br />


            <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
        </div>
    </form>
</body>
</html>
