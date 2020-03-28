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
    public partial class Sil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void YES_Click(object sender, EventArgs e)
        {

            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
            cnn.Open();
            string kayıt = "DELETE FROM kayıt where Şifre=@şfr";
            SqlCommand komut = new SqlCommand(kayıt, cnn);
            komut.Parameters.AddWithValue("@şfr", TextBox1.Text);
        

            komut.ExecuteNonQuery();
            cnn.Close();
        }

        protected void NO_Click(object sender, EventArgs e)
        {
            Response.Redirect("anasayfa.aspx");
        }
    }
}