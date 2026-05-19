<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDashboard.aspx.cs" Inherits="UserControlDemostration.EmployeeDashboard" %>
<%@ Register Src="~/HeaderMenu.ascx" TagName="HeaderText" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc:HeaderText ID="HeaderMenu1" runat="server" />

            <h2> Employee Dashboard</h2>
        </div>
    </form>
</body>
</html>
