using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace otogalerisistemi
{
    public partial class araclistesi : System.Web.UI.Page
    {
        public string user { get; set; }

        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["otogaleridb"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            user = Request["kullaniciadi"];

            SqlCommand komut = new SqlCommand("Select * From araclar where durum='SATISTA'", connection);
            connection.Open();
            SqlDataReader dr = komut.ExecuteReader();
            GdAraclarListesi.DataSource = dr;
            GdAraclarListesi.DataBind();
            connection.Close();

        }
    }
}