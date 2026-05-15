<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImageControls.aspx.cs" Inherits="DEMOAPP1.ImageControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Image controls Demo</h1>
            <h2> Image </h2>
            <asp:Image ID="img1" runat="server" Height="91px" ImageUrl="~/Images/sql.png" Width="169px" />
            <br />
            <br />
            <br />

            <h2> Image 2  setup imageUrl through Code-behind</h2>
            <asp:Image ID="img2" runat="server" />

            <h2> Image Button </h2>
            <asp:ImageButton ID="imgbtn1" runat="server" ImageUrl="~/Images/cart.jpg" OnClick="imgbtn1_Click" />

            <br />
            <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
            <br />

            <h2>Image Map</h2>
            
            <asp:ImageMap ID="ImageMap1" runat="server" Height="400px" HotSpotMode="Navigate" ImageUrl="~/Images/india map.jpg" ViewStateMode="Enabled" Width="400px" OnClick="ImageMap1_Click">
                  <asp:CircleHotSpot PostBackValue="Assam" NavigateUrl="https://assamtourism.gov.in/" Radius="30" X="120" Y="120" Target="_blank" />
                  <asp:CircleHotSpot PostBackValue="Kerala" NavigateUrl="https://www.tamilnadutourism.tn.gov.in/" Radius="30" X="150" Y="180"  Target="_blank" />
                <asp:CircleHotSpot PostBackValue="Tamilnadu" NavigateUrl="https://www.keralatourism.org/"  Radius="30" X="190" Y="220" Target="_blank" />
            </asp:ImageMap>
        </div>
    </form>
</body>
</html>
