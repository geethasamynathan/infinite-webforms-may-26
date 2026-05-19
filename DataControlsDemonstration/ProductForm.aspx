<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductForm.aspx.cs" Inherits="DataControlsDemonstration.ProductForm" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product CRUD</title>
</head>
<body>
    <form id="form1" runat="server">

        <h2>Product Form</h2>

        <asp:HiddenField ID="hfProductId" runat="server" />

        Product Name:
        <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
        <br /><br />

        Category:
        <asp:DropDownList ID="ddlCategory" runat="server">
            <asp:ListItem Text="--Select--" Value=""></asp:ListItem>
            <asp:ListItem Text="Electronics" Value="Electronics"></asp:ListItem>
            <asp:ListItem Text="Grocery" Value="Grocery"></asp:ListItem>
            <asp:ListItem Text="Clothing" Value="Clothing"></asp:ListItem>
        </asp:DropDownList>
        <br /><br />

        Price:
        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
        <br /><br />

        Stock:
        <asp:TextBox ID="txtStock" runat="server"></asp:TextBox>
        <br /><br />

        Status:
        <asp:RadioButtonList ID="rblStatus" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Text="Active" Value="Active"></asp:ListItem>
            <asp:ListItem Text="Inactive" Value="Inactive"></asp:ListItem>
        </asp:RadioButtonList>
        <br />

        <asp:Button ID="btnSave" runat="server" Text="Insert" CommandName="Insert"
            OnClick="btnSave_Click" />

        <asp:Button ID="btnClear" runat="server" Text="Clear"
            OnClick="btnClear_Click" />

        <br /><br />

        <asp:Label ID="lblMessage" runat="server"></asp:Label>

        <hr />

        <h2>Product List</h2>

        <asp:GridView ID="gvProducts" runat="server"
            AutoGenerateColumns="False"
            DataKeyNames="ProductId"
            OnRowCommand="gvProducts_RowCommand"
            OnRowDeleting="gvProducts_RowDeleting">

            <Columns>
                <asp:BoundField DataField="ProductId" HeaderText="ID" />
                <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                <asp:BoundField DataField="Category" HeaderText="Category" />
                <asp:BoundField DataField="Price" HeaderText="Price" />
                <asp:BoundField DataField="Stock" HeaderText="Stock" />
                <asp:BoundField DataField="Status" HeaderText="Status" />

                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:Button ID="btnEdit" runat="server"
                            Text="Edit"
                            CommandName="EditProduct"
                            CommandArgument='<%# Eval("ProductId") %>' />
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:CommandField ShowDeleteButton="True" HeaderText="Delete" />
            </Columns>
        </asp:GridView>

    </form>
</body>
</html>
