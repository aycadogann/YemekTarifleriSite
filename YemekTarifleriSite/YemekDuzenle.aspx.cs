using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSite
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        SqlSinif sqlSinif = new SqlSinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YemekId"];
            if (Page.IsPostBack==false)
            {
                SqlCommand komut = new SqlCommand("select * from Yemekler where YemekId=@p1", sqlSinif.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    TextBox1.Text = oku[1].ToString();
                    TextBox2.Text = oku[2].ToString();
                    TextBox3.Text = oku[3].ToString();
                }
            }
            sqlSinif.baglanti().Close();

            if (Page.IsPostBack == false)
            {
                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("select * from Kategoriler", sqlSinif.baglanti());
                SqlDataReader oku2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriId";
                DropDownList1.DataSource = oku2;
                DropDownList1.DataBind();
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Yemekler set YemekAd=@p1, YemekMalzeme=@p2, YemekTarif=@p3, KategoriId=@p4 where YemekId=@p5", sqlSinif.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5", id);
            komut.ExecuteNonQuery();
            sqlSinif.baglanti().Close();
        }

        protected void btnGununYemegiSec_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Yemekler set durum=0", sqlSinif.baglanti());
            komut.ExecuteNonQuery();
            sqlSinif.baglanti().Close();

            SqlCommand komut2 = new SqlCommand("update Yemekler set Durum=1 where YmekeId=@p1", sqlSinif.baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            sqlSinif.baglanti().Close();
        
        }
    }
}