using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSite
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        SqlSinif sqlSinif = new SqlSinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["TarifId"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select * from Tarifler where TarifId=@p1", sqlSinif.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    TextBox1.Text = oku[1].ToString();
                    TextBox2.Text = oku[2].ToString();
                    TextBox3.Text = oku[3].ToString();
                    TextBox4.Text = oku[5].ToString();
                    TextBox5.Text = oku[6].ToString();
                }

                SqlCommand komut2 = new SqlCommand("select * from Kategoriler", sqlSinif.baglanti());
                SqlDataReader oku2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriId";
                DropDownList1.DataSource = oku2;
                DropDownList1.DataBind();
            }
            sqlSinif.baglanti().Close();
        }

        protected void btnOnayla_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tarifler set TarifDurum=1 where TarifId=@p1", sqlSinif.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            komut.ExecuteNonQuery();
            sqlSinif.baglanti().Close();

            SqlCommand komut2 = new SqlCommand("insert into Yemekler (YemekAd, YemekMalzeme, YemekTarif, KategoriId ) values (@p1,@p2,@p3,@p4)", sqlSinif.baglanti());
            komut2.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut2.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut2.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            sqlSinif.baglanti().Close();
        }
    }
}