<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="noticefile.aspx.cs" Inherits="IMS_System.Admin.noticefile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div>
        <table>
            <tr>
                <td>  Enter Topic :</td>
                <td>
                    <asp:TextBox runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    File Upload :
                </td>
                <td>
                    <asp:FileUpload runat="server"></asp:FileUpload>
                </td>
            </tr>

            <tr>
                <td>

                </td>
                <td>
                    <asp:Button runat="server" Text="Button" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
