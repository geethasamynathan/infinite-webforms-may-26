<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="UserControlDemostration.Home" %>

<%@ Register Src="~/HeaderMenu.ascx" TagPrefix="uc" TagName="HeaderMenu" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc:HeaderMenu ID="HeaderMenu1" runat="server" />
            
            <h2>Welcome to Home Page. </h2>
            <p> This is the Home page Content</p>
        </div>
    </form>
</body>
</html>
