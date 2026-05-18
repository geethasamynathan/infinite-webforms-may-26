<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeRegistration.aspx.cs" Inherits="PageLifeCycleDemonstration.EmployeeRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <h2> Employee Registration</h2>
        <table>
            <tr>
                <td>Full Name: </td>
                <td>
                    <asp:TextBox  ID="txtFullName" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
     <td>Email : </td>
     <td>
         <asp:TextBox  ID="txtEmail" runat="server"></asp:TextBox>
     </td>
 </tr>
             <tr>
     <td>Gender: </td>
     <td>
         <asp:RadioButtonList  ID="rblGender" runat="server">
             <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
               <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
             
         </asp:RadioButtonList>
     </td>
 </tr>
                        <tr>
                <td>Department:</td>
                <td>
                    <asp:DropDownList ID="ddlDepartments" runat="server"></asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnSave" runat="server"
                        Text="Save Employee"
                        OnClick="btnSave_Click" />
                </td>
            </tr>

            <tr>
                <td></td>
                <td>
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </td>
            </tr>

              
        </table>

                <hr />

        <h3>Page Life Cycle Tracking</h3>
        <asp:Label ID="lblLifeCycle" runat="server"></asp:Label>

    </form>
</body>
</html>
