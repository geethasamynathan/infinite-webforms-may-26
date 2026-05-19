<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HeaderMenu.ascx.cs" Inherits="UserControlDemostration.HeaderMenu" %>


<div style="background-color:#2c3e50; padding:15px;">
    <asp:HyperLink ID="lnkHome" runat="server" NavigateUrl="~/Home.aspx" ForeColor="White" Text="Home" /> &nbsp; &nbsp;
      <asp:HyperLink ID="lnkEmployee" runat="server" NavigateUrl="~/EmployeeDashboard.aspx"
          ForeColor="White" Text="Employee Dashboard" /> &nbsp; &nbsp;
      <asp:HyperLink ID="lnkProduct" runat="server" NavigateUrl="~/Products.aspx" ForeColor="White" Text="Products" /> &nbsp; &nbsp;
      <asp:HyperLink ID="lnkContact" runat="server" NavigateUrl="~/Contact.aspx" ForeColor="White" Text="Contact" /> &nbsp; &nbsp;
   
</div>