<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="UserControlDemostration.Products" %>
<%@ Register Src="~/HeaderMenu.ascx" TagPrefix="uc" TagName="HeaderMenu" %>
<%@ Register Src="~/ProductGrid.ascx" TagPrefix="uc" TagName="ProductGrid" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc:HeaderMenu  ID="HeaderMenu1" runat="server" />
    <h2> Welcome to Products Page</h2>

            <h2> Product Lsit -Fragment Caching Demo</h2>
            <asp:Button ID="btnRefreshPage" runat="server" Text="Refresh Page" OnClick="btnRefreshPage_Click" />
             <asp:Button ID="btnClearCache" runat="server" Text="Clear Data Cache" OnClick="btnClearCache_Click" />
            <asp:Label ID="lblMessage" runat="server" />
            <br />
            <br />

            <uc:ProductGrid ID="ProductGrid1" runat="server" />
        </div>
    </form>
</body>
</html>
