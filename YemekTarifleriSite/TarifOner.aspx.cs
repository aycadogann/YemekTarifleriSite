using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSite
{
    public partial class TarifOner : System.Web.UI.Page
    {
        SqlSinif sqlSinif = new SqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTarifOner_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tarifler (TarifAd, TarifMalzeme, TarifYapilis, TarifResim, TarifSahip,TarifSahipMail) values (@t1,@t2,@t3,@t4,@t5,@t6)", sqlSinif.baglanti());
            komut.Parameters.AddWithValue("@t1", txtTarifAd.Text);
            komut.Parameters.AddWithValue("@t2", txtMalzemeler.Text);
            komut.Parameters.AddWithValue("@t3", txtYapilis.Text);
            komut.Parameters.AddWithValue("@t4", FileUpload1.FileName);
            komut.Parameters.AddWithValue("@t5", txtTarifOneren.Text);
            komut.Parameters.AddWithValue("@t6", txtMailAdresi.Text);
            komut.ExecuteNonQuery();
            sqlSinif.baglanti().Close();
            Response.Write("Tarifiniz alınmıştır");
        }
    }
}