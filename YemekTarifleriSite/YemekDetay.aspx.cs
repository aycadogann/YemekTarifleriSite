using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSite
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        SqlSinif sqlSinif = new SqlSinif();
        string yemekId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekId = Request.QueryString["YemekId"];

            SqlCommand komut = new SqlCommand("select YemekAd from Yemekler where YemekId=@p1", sqlSinif.baglanti());
            komut.Parameters.AddWithValue("@p1", yemekId);
            SqlDataReader oku = komut.ExecuteReader();
            while(oku.Read())
            {
                Label3.Text = oku[0].ToString();
            }
            sqlSinif.baglanti().Close();

            //Yorumları Listeleme
            SqlCommand komut2 = new SqlCommand("select * from Yorumlar where YemekId=@p2", sqlSinif.baglanti());
            komut2.Parameters.AddWithValue("@p2", yemekId);
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList2.DataSource = oku2;
            DataList2.DataBind();

        }
    }
}