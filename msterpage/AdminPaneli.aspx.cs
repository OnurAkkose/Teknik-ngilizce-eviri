using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace msterpage
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("anasayfa.aspx");
            }
        }

        protected void btnk_Click(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
            string sorgu = "Insert into dbo.Çeviri(İngilizce,Türkçe) values(@ingilizce,@türkce)";

            SqlCommand cmd = new SqlCommand(sorgu, cnn);

            cnn.Open();
            cmd.Parameters.AddWithValue("@ingilizce", txtk1.Text);
            cmd.Parameters.AddWithValue("@türkce", txtk2.Text);


            cmd.ExecuteNonQuery();
            cnn.Close();
          

        }

        protected void btncıkıs_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("anasayfa.aspx");
        }
    }
    }
