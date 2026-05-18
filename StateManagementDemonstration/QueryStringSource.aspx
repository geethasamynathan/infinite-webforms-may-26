<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QueryStringSource.aspx.cs" Inherits="StateManagementDemonstration.QueryStringSource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Querystring Source</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2> Querystring Source Page</h2>

            <asp:Label ID="lblEmployeeId" runat="server" Text="Employee Id: "></asp:Label>
            <asp:TextBox runat="server" ID="txtEmployeeId"></asp:TextBox>

            <br />
            <br />
            Company Name :<asp:TextBox ID="txtEmployeeName" runat="server"></asp:TextBox>
            <br />
            <br />
            Department: <asp:DropDownList ID="ddlDepartment" runat="server">
                <asp:ListItem>IT</asp:ListItem>
                <asp:ListItem>HR</asp:ListItem>
                <asp:ListItem>Finance</asp:ListItem>
                <asp:ListItem>Sales</asp:ListItem>
            </asp:DropDownList>

            <br />
            <br />
            <asp:Button ID="btnSendSingle" runat="server" Text="Send Employee Id" OnClick="btnSendSingle_Click" />
        &nbsp;&nbsp;
            <asp:Button ID="btnSendMultiple" runat="server" Text="Send Multiple Values" OnClick="btnSendMultiple_Click" />
        </div>
    </form>
</body>
</html>
