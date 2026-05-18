<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListViewDemo.aspx.cs" Inherits="DataControlsDemonstration.ListViewDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListView ID="lvEmployees" runat="server"
                DataSourceID="EmployeeListDataSource">
            <LayoutTemplate>
                <div>
                   
                    <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                </div>
            </LayoutTemplate>    

                <ItemTemplate>
                    <div style="border 1px solid #ccc; 
margin:10px; padding:10px; width:300px; display:inline-block">
                        <h3><%# Eval("FullName") %></h3>

                        <p> Email : <%# Eval("Email") %></p>
                          <p> Mobile : <%# Eval("Mobile") %></p>
                          <p> Department : <%# Eval("DepartmentName") %></p>
                          <p> Salary : <%# Eval("Salary") %></p>
                    </div>
                        
                </ItemTemplate>
            </asp:ListView>

            <asp:SqlDataSource ID="EmployeeListDataSource" runat="server"
                ConnectionString="<%$ ConnectionStrings:EmployeeDBConnection %>"
               SelectCommand="SELECT E.EmployeeId,E.FullName,E.Email,E.Mobile,D.DepartmentName,E.Salary
                FROM Employees E
                
                INNER JOIN Departments D ON D.DepartmentId=E.DepartmentId"
                ></asp:SqlDataSource>

            <asp:DataPager ID="DataPager1" runat="server"
                PagedControlID="lvEmployees" PageSize="5">

<Fields>
                        <asp:NextPreviousPagerField ShowFirstPageButton="true"
                            ShowNextPageButton="true"
                            ShowPreviousPageButton="true" 
                            ShowLastPageButton="true" />
    </Fields>
            </asp:DataPager>
        </div>
    </form>
</body>
</html>
