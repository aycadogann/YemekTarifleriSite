using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSite
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        SqlSinif sqlSinif = new SqlSinif();
        string kategoriId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriId = Request.QueryString["KategoriId"];
            SqlCommand komut = new SqlCommand("select * from Yemekler where KategoriId=@p1", sqlSinif.baglanti());
            komut.Parameters.AddWithValue("@p1", kategoriId);
            SqlDataReader oku = komut.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();
        }
    }
}