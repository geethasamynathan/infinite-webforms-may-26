<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HiddenFieldDemo.aspx.cs" Inherits="StateManagementDemonstration.HiddenFieldDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField ID="hfEmployeeId" runat="server" />
            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />

        </div>
    </form>
</body>
</html>
