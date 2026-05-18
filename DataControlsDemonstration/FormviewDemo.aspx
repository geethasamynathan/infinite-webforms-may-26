<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormviewDemo.aspx.cs" Inherits="DataControlsDemonstration.FormviewDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="fvEmployee" runat="server"
                DataKeyNames="EmployeeID" DataSourceID="EmployeeFormDataSource"
                >

                <ItemTemplate>
                    <div style="border:1px solid #ccc; padding:20px; width:400px">
                        <h2> <%# Eval("FullName") %></h2>

                        <asp:Image ID="imgPhoto" runat="server"
                            ImageUrl='<%# Eval("PhotoPath") %>'
                            Width="120px" Height="120px" />    

                        <p>Email : <%# Eval("Email") %></p>
                        <p>Mobile : <%# Eval("Mobile") %></p>
                        <p>Gender : <%# Eval("Gender") %></p>
                        <p>Salary : <%# Eval("Salary") %></p>

                        <asp:LinkButton ID= "btnEdit" runat="server" 
                            CommandName="Edit">Edit</asp:LinkButton>
                    </div>
                </ItemTemplate>

                <EditItemTemplate>
                    Name :<asp:TextBox ID="txtName" runat="server"
Text='<%# Bind("FullName") %>' /><br />   

Email :<asp:TextBox ID="txtEmail" runat="server" Text='<%# Bind("Email") %>' /><br />
                    <asp:LinkButton ID="btnUpdate" runat="server" CommandName="Update">Update</asp:LinkButton>
                </EditItemTemplate>
            </asp:FormView>


              <asp:SqlDataSource ID="EmployeeFormDataSource" runat="server"
      ConnectionString="<%$ ConnectionStrings:EmployeeDBConnection %>"

      SelectCommand="SELECT *  FROM Employees WHERE EmployeeId=@EmployeeId"

      UpdateCommand="UPDATE Employees SET FullName=@FullName, Email=@Email
      WHERE EmployeeID=@EmployeeID"

      DeleteCommand="DELETE FROM Employees WHERE EmployeeID=@EmployeeID"
      >

      <SelectParameters>
          <asp:QueryStringParameter Name="EmployeeId" QueryStringField="id" Type="Int32" />
      </SelectParameters>
  </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
