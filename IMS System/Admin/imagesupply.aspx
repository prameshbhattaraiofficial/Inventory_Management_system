<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="imagesupply.aspx.cs" Inherits="IMS_System.Admin.imagesupply" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="  margin: auto;
  width: 50%;
  border: 3px solid green;
  padding: 10px;">

             <tr>
            <td> <asp:Label ID="Label5" runat="server" Text="Enter Image ID"></asp:Label> </td>
            <td> <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox></td>
        </tr>
        <tr>
            <td> <asp:Label ID="Label1" runat="server" Text="Enter Image Name"></asp:Label> </td>
            <td> <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Enter product Type "></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                    <asp:ListItem Selected="True">Select</asp:ListItem>
                    <asp:ListItem>Food</asp:ListItem>
                    <asp:ListItem>Education</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
         <tr>
            <td> <asp:Label ID="Label4" runat="server" Text="Enter Image Price"></asp:Label> </td>
            <td> <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="Number" ></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Image"></asp:Label>

            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control"/>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="imagedescription" runat="server" Text="Image Description"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Reset" CssClass="btn-primary" OnClick="Button2_Click" />
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Supply" OnClick="Button1_Click" />
            </td>
        </tr>

        <tr>
            <td>

            </td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="  "></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
