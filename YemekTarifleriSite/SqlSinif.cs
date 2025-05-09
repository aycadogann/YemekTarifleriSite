using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace YemekTarifleriSite
{
    public class SqlSinif
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB; Initial Catalog=YemekTarifi; Integrated Security=true");
            baglan.Open();
            return baglan;
        }

    }
}