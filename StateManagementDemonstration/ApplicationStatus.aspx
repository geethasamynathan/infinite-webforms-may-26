<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApplicationStatus.aspx.cs" Inherits="StateManagementDemonstration.ApplicationStatus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h2> Application State Details</h2>
            <p> &nbsp;</p>
            <p> 
                <asp:Label ID="lblAppStart" runat="server" Text="Label"></asp:Label>
            </p>

            
            
            <asp:Label ID="lblCurrentUsers" runat="server" />
            <br /> <br />

            <asp:Label ID="lblSessionStarted" runat="server" />
 <br /> <br />

    <asp:Label ID="lblSessionEnded" runat="server" />
 <br /> <br />
        </div>
    </form>
</body>
</html>
