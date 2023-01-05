<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IMS_System.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">






    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" Height="174px" Width="382px" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
            <asp:BoundField DataField="imagename" HeaderText="imagename" SortExpression="imagename" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:TemplateField HeaderText="image" SortExpression="image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" Height="100px" Width="150px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="imagetype" HeaderText="imagetype" SortExpression="imagetype" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
</asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IMS_SystemConnectionString %>" SelectCommand="SELECT * FROM [producttbl]"></asp:SqlDataSource>


  <div >
      <center>
          <h1> All the items are show now.</h1>
          <hr />

          <asp:DataList ID="DataList1" runat="server" HorizontalAlign="Right" RepeatDirection="Horizontal">


                <itemTemplate>
              <table>
                  <tr>
                     <td> Product Name:</td>
                      <br />
                      <td> <%#Eval("imagename") %></td>
                  </tr>
                  <tr>
                    <td> <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("image") %>' /></td>
                  </tr>
                  <tr>
                     <td> Product price:</td>
                      <br />
                      <td> <%#Eval("price") %></td>
                  </tr>
                  <tr>
                     <td> Product Description:</td>
                      <br />
                      <td> <%#Eval("description") %></td>
                  </tr>
              </table>
          </itemTemplate>

          </asp:DataList>
          
      </center>
  </div>
</asp:Content>
