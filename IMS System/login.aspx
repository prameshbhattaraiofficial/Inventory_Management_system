<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="IMS_System.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h1> Login</h1>

            <table>
                <tr>
                    <td> Email Address :</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox> </td>
                    <td>  </td>
                </tr>
                <tr>
                    <td>
                        Password :
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Login"  CssClass="btn-primary"/>
                    </td>
                </tr>
            </table>
           
        </div>
    </form>
</body>
</html>
