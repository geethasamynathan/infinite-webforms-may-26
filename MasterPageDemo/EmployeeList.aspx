<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EmployeeList.aspx.cs" Inherits="MasterPageDemo.EmployeeList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card">
        <h2>Employee List</h2>
          <asp:GridView ID="gvEmployees" runat="server" AutoGenerateColumns="False"
            Width="100%" BorderColor="#cccccc" CellPadding="8">

            <Columns>
                <asp:BoundField HeaderText="Employee ID" DataField="EmployeeId" />
                <asp:BoundField HeaderText="Full Name" DataField="FullName" />
                <asp:BoundField HeaderText="Department" DataField="Department" />
                <asp:BoundField HeaderText="Email" DataField="Email" />
            </Columns>

        </asp:GridView>
    </div>
</asp:Content>
