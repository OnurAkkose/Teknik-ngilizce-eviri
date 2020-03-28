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
    public partial class KAYITOL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void kayıtol_Click(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
            string sorgu = "Insert into dbo.kayıt(Kullanıcıadı,Şifre,mail) values(@kullanıcıadı,@şifre,@mail)";

            SqlCommand cmd = new SqlCommand(sorgu, cnn);

            cnn.Open();
            cmd.Parameters.AddWithValue("@kullanıcıadı", TextBox1.Text);
            cmd.Parameters.AddWithValue("@şifre", TextBox3.Text);
            cmd.Parameters.AddWithValue("@mail", TextBox2.Text);


            cmd.ExecuteNonQuery();
            cnn.Close();
            Label1.Text = "Kayıt Oldunuz";

        }
    }
}