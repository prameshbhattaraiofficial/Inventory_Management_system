<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="IMS_System.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
        <div>
         <table style="margin: auto;
  width: 50%;
  border: 3px solid green;
  padding: 10px;">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Enter Full Name"></asp:Label>
                    </td>
                    <td>
                         <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>

                  <tr>
                    <td>
                         <asp:Label ID="Label7" runat="server" Text="Enter Gender"></asp:Label>
                    </td>
                    <td> <asp:CheckBox ID="CheckBox3" runat="server" Text="male" value="1" OnCheckedChanged="CheckBox3_CheckedChanged"/>
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Others"  value ="2"/>
                        <asp:CheckBox ID="CheckBox2" runat="server" Text="Female" value="3" />
                    </td>
                     
                </tr>
                <tr>
                    <td>
                         <asp:Label ID="Label2" runat="server" Text="Enter  Your Address"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:Label ID="Label3" runat="server" Text="Enter  Phone Number"></asp:Label>
                    </td>
                    <td>
                         <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:Label ID="Label4" runat="server" Text="Enter Email "></asp:Label>
                    </td>
                    <td>
                         <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:Label ID="Label5" runat="server" Text="Enter  Password"></asp:Label>
                    </td>
                    <td>
                         <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                      <tr>
                    <td>
                         <asp:Label ID="Label6" runat="server" Text="Enter Confirm Password"></asp:Label>
                    </td>
                    <td>
                         <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn-primary" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
          
        </div>
    </form>

    <script type="text/javascript">
    function MutExChkList(chk) {
        var chkList = chk.parentNode.parentNode.parentNode;
    var chks = chkList.getElementsByTagName("input");
    for (var i = 0; i < chks.length; i++) {
            if (chks[i] != chk && chk.checked) {
        chks[i].checked = false;
            }
        }
    }
    </script>
</body>
</html>
