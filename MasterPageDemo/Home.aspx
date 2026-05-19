<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MasterPageDemo.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card">
        <h2>Welcome to Employee Management System</h2>
        <p>
            This application helps the company manage employee information,
            departments, contact details, and employee records.
        </p>

        <asp:Button ID="btnViewEmployees" runat="server" Text="View Employees" CssClass="btn" OnClick="btnViewEmployees_Click" />
    </div>
   
</asp:Content>
