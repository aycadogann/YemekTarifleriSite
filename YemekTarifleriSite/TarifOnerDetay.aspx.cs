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
            sqlSinif.baglanti().Close();
        }
    }
}