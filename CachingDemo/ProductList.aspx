<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="CachingDemo.ProductList" %>
<%@ Register Src="~/ProductGrid.ascx" TagPrefix="uc" TagName="ProductGrid" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product Catalog</title>
      <style>
        body {
            font-family: Arial;
            background-color: #f2f6fc;
        }

        .container {
            width: 800px;
            margin: 40px auto;
            background: white;
            padding: 25px;
            border-radius: 8px;
            box-shadow: 0 0 10px #ccc;
        }

        .title {
            color: #1e3a8a;
        }

        .message {
            font-weight: bold;
            margin-bottom: 15px;
            display: block;
        }

        .btn {
            background-color: #2563eb;
            color: white;
            border: none;
            padding: 8px 16px;
            margin-right: 8px;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn-danger {
            background-color: #dc2626;
        }

        table {
            margin-top: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2 class="title">Product List - Caching Demo</h2>
            <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>

            <asp:Button ID="btnLoad" runat="server"
Text="Load Products" CssClass="btn" OnClick="btnLoad_Click" /> 

            <asp:Button ID="btnClearCache" runat="server" Text="Clear Cache" 
                CssClass="btn btn-danger" OnClick="btnClearCache_Click" />  

<asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="False" CellPadding="8"
    Width="100%" BorderColor="#ccc">
    <Columns>
<asp:BoundField DataField="ProductID" HeaderText="Product ID" />
        <asp:BoundField DataField="ProductName" HeaderText="Name" />
        <asp:BoundField DataField="Category" HeaderText="Category" />
            <asp:BoundField DataField="Price" HeaderText="Price" DataFormatString="{0:C}" />
        <asp:BoundField DataField="Stock" HeaderText="In Stock" />
    </Columns>
    </asp:GridView>
        </div>
    </form>
</body>
</html>
