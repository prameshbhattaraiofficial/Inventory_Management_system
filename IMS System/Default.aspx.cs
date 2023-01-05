using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace IMS_System
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string mainconn =  ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection con= new SqlConnection(mainconn);

            string sqlquery = "select * from [dbo].[producttbl]";
            SqlCommand sqlcom = new SqlCommand(sqlquery, con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(sqlcom);
            sda.SelectCommand= sqlcom;
            DataSet dataSetds = new DataSet();
            sda.Fill(dataSetds);
            DataList1.DataSource = dataSetds;
            DataList1.DataBind();
            con.Close();
        }
    }
}