<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DDLASDataControl.aspx.cs" Inherits="DataControlsDemonstration.DDLASDataControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddlDepartment" runat="server"
                DataSourceID="DepartmentDataSource"
                DataTextField="DepartmentName" 
                DataValueField="DepartmentId" AppendDataBoundItems="true">
                <asp:ListItem Text="-- Select Department -- "  Value=""/>
            </asp:DropDownList>
              <asp:SqlDataSource ID="DepartmentDataSource" runat="server"
      ConnectionString="<%$ ConnectionStrings:EmployeeDBConnection %>"
     SelectCommand="SELECT DepartmentId, DepartmentName FROM Departments"
            ></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
