using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSite
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        SqlSinif sqlSinif = new SqlSinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YorumId"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select YorumAdSoyad, YorumMail, YorumIcerik, YemekAd from Yorumlar " +
                    "inner join Yemekler on Yorumlar.YemekId=Yemekler.YemekId where YorumId=@p1", sqlSinif.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    txtAd.Text = oku[0].ToString();
                    txtMail.Text = oku[1].ToString();
                    txtIcerik.Text = oku[2].ToString();
                    txtYemek.Text = oku[3].ToString();
                }
                sqlSinif.baglanti().Close();
            }
        }

        protected void btnOnayla_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Yorumlar set YorumIcerik=@p1, YorumOnay=@p2 where YorumId=@p3", sqlSinif.baglanti());
            komut.Parameters.AddWithValue("@p1", txtIcerik.Text);
            komut.Parameters.AddWithValue("@p2", "true");
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            sqlSinif.baglanti().Close();
        }
    }
}