using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace msterpage
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
            cnn.Open();
            string kayıt = "update kayıt set Kullanıcıadı=@kullanıcıadı where Kullanıcıadı=@kadı AND Şifre=@şifre";
            SqlCommand komut = new SqlCommand(kayıt, cnn);
            komut.Parameters.AddWithValue("@şifre", TextBox3.Text);
            komut.Parameters.AddWithValue("@kullanıcıadı", TextBox2.Text);
            komut.Parameters.AddWithValue("@kadı", TextBox1.Text);

            komut.ExecuteNonQuery();
            cnn.Close();


        }
    }
}