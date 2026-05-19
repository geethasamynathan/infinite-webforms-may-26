<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Unauthorised.aspx.cs" Inherits="StateManagementDemonstration.Unauthorised" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2 style="color:red">You are not an authorised user.</h2>

            <asp:HyperLink ID="lnkLogin" runat="server" NavigateUrl="~/Login.aspx">Click here to login</asp:HyperLink>
        </div>
    </form>
</body>
</html>
