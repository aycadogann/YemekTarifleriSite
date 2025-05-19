using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSite
{
    public partial class Yemekler : System.Web.UI.Page
    {
        SqlSinif sqlSinif = new SqlSinif();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel5.Visible = false;

            if (Page.IsPostBack==false)
            {
                id = Request.QueryString["YemekId"];
                islem = Request.QueryString["islem"];
            }

            if (Page.IsPostBack==false)
            {
                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("select * from Kategoriler", sqlSinif.baglanti());
                SqlDataReader oku2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriId";
                DropDownList1.DataSource = oku2;
                DropDownList1.DataBind();
            }

            //Yemek Listesi
            SqlCommand komut = new SqlCommand("select * from Yemekler", sqlSinif.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            if (islem=="sil")
            {
                SqlCommand komut2 = new SqlCommand("delete from Yemekler where YemekId=@p1", sqlSinif.baglanti());
                komut2.Parameters.AddWithValue("@p1", id);
                komut2.ExecuteNonQuery();
                sqlSinif.baglanti().Close();
 
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel5.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel5.Visible = false;
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            //Yemek Ekleme
            SqlCommand komut = new SqlCommand("insert into Yemekler (YemekAd,YemekMalzeme, YemekTarif,KategoriId) values (@p1,@p2,@p3,@p4)", sqlSinif.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            sqlSinif.baglanti().Close();

            //Kategori Sayısını Arttırma
            SqlCommand komut2 = new SqlCommand("update Kategoriler set KategoriAdet=KategoriAdet+1 where KategoriId=@p1", sqlSinif.baglanti());
            komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            sqlSinif.baglanti().Close();
        }
    }
}