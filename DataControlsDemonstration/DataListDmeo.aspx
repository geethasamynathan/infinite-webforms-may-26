<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataListDmeo.aspx.cs" Inherits="DataControlsDemonstration.DataListDmeo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="dlEmployees" runat="server" 
                DataSourceID="EmployeeDataListSource" RepeatColumns="3"
                RepeatDirection="Horizontal">
                <ItemTemplate>
                    <div style="border 1px solid gray; padding:10px; margin:10px;">
                        <h3><%# Eval("FullName") %></h3>                        
                          <p><%# Eval("Email") %> </p>
                          <p><%# Eval("Mobile") %> </p>
                        <p><%# Eval("DepartmentName") %> </p>
                    </div>
                </ItemTemplate>
            </asp:DataList>
              
            <asp:SqlDataSource ID="EmployeeDataListSource" runat="server"
                ConnectionString="<%$ ConnectionStrings:EmployeeDBConnection %>"
               SelectCommand="SELECT E.EmployeeId,E.FullName,E.Email,E.Mobile,D.DepartmentName,E.Salary
                FROM Employees E
                
                INNER JOIN Departments D ON D.DepartmentId=E.DepartmentId"
                ></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
