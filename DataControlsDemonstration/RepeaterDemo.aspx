<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RepeaterDemo.aspx.cs" Inherits="DataControlsDemonstration.RepeaterDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="rptEmployees" runat="server"
                DataSourceID="EmployeeRepeaterDataSource">
            <HeaderTemplate>
                <h2>Employee List</h2>
                <ul>
            </HeaderTemplate>    
                <ItemTemplate>
                    <li>
                        <b><%# Eval("FullName") %></b> - 
                        <%# Eval("Email") %> - 
                        <%# Eval("DepartmentName") %>
                    </li>
                </ItemTemplate>

                <FooterTemplate>
                    </ul>
                </FooterTemplate>
            </asp:Repeater>
            
            <asp:SqlDataSource ID="EmployeeRepeaterDataSource" runat="server"
                ConnectionString="<%$ ConnectionStrings:EmployeeDBConnection %>"
               SelectCommand="SELECT E.EmployeeId,E.FullName,E.Email,E.Mobile,D.DepartmentName,E.Salary
                FROM Employees E
                
                INNER JOIN Departments D ON D.DepartmentId=E.DepartmentId"
                ></asp:SqlDataSource>
        </div>

    </form>
</body>
</html>
