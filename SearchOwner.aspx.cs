using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace OwnerSearch
{
    public partial class SearchOwner : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            //string name = TextBoxSearch.Text;

            //var maincon = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            //SqlConnection sqlcon = new SqlConnection(maincon);
            //sqlcon.Open();
            //SqlCommand sqlcommand = new SqlCommand();
            //string query = "Select OwnerName, OwnerNationalID from  [dbo].[tblPlotOwner] Where OwnerName = "+ name+" ";
            //sqlcommand.CommandText = query;
            //sqlcommand.Connection = sqlcon;
            ////sqlcommand.Parameters.AddWithValue("OwnerName", TextBoxSearch.Text);
            //DataTable dt = new DataTable();
            //SqlDataAdapter sda = new SqlDataAdapter(sqlcommand);
            //sda.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();

            GridView1.Visible = true;


        }
    }
}