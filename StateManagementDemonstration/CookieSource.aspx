<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CookieSource.aspx.cs" Inherits="StateManagementDemonstration.CookieSource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cookie Source</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Employee Login</h2>

            Employee ID
            <asp:TextBox runat="server" ID="txtEmployeeId" />

            <br />
            <br />
            Employee Name:
            <asp:TextBox ID="txtEmployeeName" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            Department :
            <asp:DropDownList ID="ddlDepartment" runat="server" AutoPostBack="True">
                <asp:ListItem>IT</asp:ListItem>
                <asp:ListItem>HR</asp:ListItem>
                <asp:ListItem>Sales</asp:ListItem>
            </asp:DropDownList>

            <br />
            <br />

            <asp:Button ID="btnSaveCookie" runat="server"
Text="Save Cookie" OnClick="btnSaveCookie_Click" />        </div>
    </form>
</body>
</html>
