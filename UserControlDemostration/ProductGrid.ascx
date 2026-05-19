<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProductGrid.ascx.cs" Inherits="UserControlDemostration.ProductGrid" %>
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

<asp:Label ID="lblMessage" runat="server" Text="Message"></asp:Label>

<br />
<br />
<br />

<asp:Button ID="btnLoad" runat="server" Text="Load Products" CssClass="btn" />

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