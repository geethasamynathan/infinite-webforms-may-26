<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CascadingDropDown.aspx.cs" Inherits="DemoApp2.CascadingDropDown" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2> Cascading DropDown Demo</h2>
            <p> &nbsp;</p>
            <div>
                <asp:Label ID="lblCountry" runat="server" Text="Select Country"></asp:Label>
                <br />
                <asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged">
                    <asp:ListItem>-- Select Country --</asp:ListItem>
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                </asp:DropDownList>
            </div>
            <p> &nbsp;</p>
            <div>
                <asp:Label ID="lblState" runat="server" Text="Select State"></asp:Label>
                <br />
                <asp:DropDownList ID="ddlState" runat="server">
                </asp:DropDownList>
            </div>
            <p> &nbsp;</p>
        </div>
    </form>
</body>
</html>
