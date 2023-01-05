using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;


namespace IMS_System.Admin
{
    public partial class imagesupply : System.Web.UI.Page
    {

        

        String name = @"Data Source=PRAMESH\MSSQL;Initial Catalog=IMS_System;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

           

        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                using(SqlConnection con =new SqlConnection(name))
                {
                    if (FileUpload1.HasFile)
                    {
                        con.Open();
                        string query = "insert into producttbl(id,imagename, price,imagetype,description,image) values(@id,@imagename,@price,@imagetype, @description, @image)";
                        SqlCommand sqlCommand = new SqlCommand(query, con);
                        FileUpload1.SaveAs(Server.MapPath("~/image")+ System.IO.Path.GetFileName(FileUpload1.FileName));
                        string filepath = "image/" + System.IO.Path.GetFileName(FileUpload1.FileName);

                        sqlCommand.Parameters.AddWithValue("@id", TextBox2.Text);
                        sqlCommand.Parameters.AddWithValue("@imagename", TextBox1.Text);
                        sqlCommand.Parameters.AddWithValue("@price",TextBox3.Text);
                        sqlCommand.Parameters.AddWithValue("@imagetype", DropDownList1.SelectedValue);
                        sqlCommand.Parameters.AddWithValue("@description", TextBox4.Text);
                        sqlCommand.Parameters.AddWithValue("@image", filepath);
                        sqlCommand.ExecuteNonQuery();


                    }
                }

            }catch(Exception ex){
              

            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            FileUpload1.Attributes.Clear();
            DropDownList1.SelectedValue = string.Empty;
            TextBox4.Text = string.Empty;
        }
    }

   
}