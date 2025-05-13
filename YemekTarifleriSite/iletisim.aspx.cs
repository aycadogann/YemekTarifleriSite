using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSite
{
    public partial class iletisim : System.Web.UI.Page
    {
        SqlSinif sqlSinif = new SqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Mesajlar (MesajGonderen, MesajBaslik, MesajMail, MesajIcerik) values (@p1,@p2,@p3,@p4)", sqlSinif.baglanti());
            komut.Parameters.AddWithValue("@p1", txtGonderen.Text);
            komut.Parameters.AddWithValue("@p2", txtMail.Text);
            komut.Parameters.AddWithValue("@p3", txtBaslık.Text);
            komut.Parameters.AddWithValue("@p4", txtMesaj.Text);
            komut.ExecuteNonQuery();
            sqlSinif.baglanti().Close();
        }
    }
}