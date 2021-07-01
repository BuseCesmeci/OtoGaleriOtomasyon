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
    public partial class subeler : System.Web.UI.Page
    {
        public string subeA { get; set; }
        public string user { get; set; }

        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["otogaleridb"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            subeA = Request["subeadi"];
            user = Request["kullaniciadi"];


            SqlCommand komut = new SqlCommand("Select * From sube", connection);
            connection.Open();
            SqlDataReader dr = komut.ExecuteReader();
            subebilgi.DataSource = dr;
            subebilgi.DataBind();
            connection.Close();

            SqlCommand komut2 = new SqlCommand("Select * From calisan where subesi='SUBE1'", connection);
            connection.Open();
            SqlDataReader dr2 = komut2.ExecuteReader();
            Gdsube1calisan.DataSource = dr2;
            Gdsube1calisan.DataBind();
            connection.Close();


            SqlCommand komut3 = new SqlCommand("Select * From araclar where aracsube='SUBE1' and durum='SATISTA'", connection);
            connection.Open();
            SqlDataReader dr3 = komut3.ExecuteReader();
            Gdsube1arac.DataSource = dr3;
            Gdsube1arac.DataBind();
            connection.Close();

            // SqlCommand komut4 = new SqlCommand("select SUM(satisfiyati) satisfiyati from aracsatis where sube='" + subeadi + "'" , connection);
            SqlCommand komut4 = new SqlCommand("select SUM(satisfiyati) satisfiyati from aracsatis where sube='SUBE1'", connection);
            connection.Open();
            SqlDataReader dr4 = komut4.ExecuteReader();
            Gdsube1gelir.DataSource = dr4;
            Gdsube1gelir.DataBind();
            connection.Close();

            SqlCommand komut5 = new SqlCommand("Select * From gider where subeadi='SUBE1'", connection);
            //   SqlCommand komut5 = new SqlCommand("select SUM(gider.kira + gider.faturalar + gider.maaslar) as ToplamGider from gider where subeadi='SUBE1'", connection);
            connection.Open();
            SqlDataReader dr5 = komut5.ExecuteReader();
            Gdsube1gider.DataSource = dr5;
            Gdsube1gider.DataBind();
            connection.Close();

            SqlCommand komut6 = new SqlCommand("Select * From maliyet where subeadi='SUBE1'", connection);
          //  SqlCommand komut6 = new SqlCommand("Select * From maliyet", connection);
            connection.Open();
            SqlDataReader dr6 = komut6.ExecuteReader();
            Gdsube1maliyet.DataSource = dr6;
            Gdsube1maliyet.DataBind();
            connection.Close();

            SqlCommand komut7 = new SqlCommand("Select * From calisan where subesi='SUBE2'", connection);
            connection.Open();
            SqlDataReader dr7 = komut7.ExecuteReader();
            Gdsube2calisan.DataSource = dr7;
            Gdsube2calisan.DataBind();
            connection.Close();

            SqlCommand komut8 = new SqlCommand("Select * From araclar where aracsube='SUBE2' and durum='SATISTA'", connection);
            connection.Open();
            SqlDataReader dr8 = komut8.ExecuteReader();
            Gdsube2arac.DataSource = dr8;
            Gdsube2arac.DataBind();
            connection.Close();

            // SqlCommand komut9 = new SqlCommand("select SUM(satisfiyati) satisfiyati from aracsatis where sube='" + subeadi + "'", connection);
            SqlCommand komut9 = new SqlCommand("select SUM(satisfiyati) satisfiyati from aracsatis where sube='SUBE2'", connection);
            connection.Open();
            SqlDataReader dr9 = komut9.ExecuteReader();
            Gdsube2gelir.DataSource = dr9;
            Gdsube2gelir.DataBind();
            connection.Close();

            //  SqlCommand komut10 = new SqlCommand("Select * From gider where subeadi='SUBE2'", connection);
            SqlCommand komut10 = new SqlCommand("Select * From gider", connection);
            connection.Open();
            SqlDataReader dr10 = komut10.ExecuteReader();
            Gdsube2gider.DataSource = dr10;
            Gdsube2gider.DataBind();
            connection.Close();

            SqlCommand komut11 = new SqlCommand("Select * From maliyet where subeadi='SUBE2'", connection);
            //  SqlCommand komut11 = new SqlCommand("Select * From maliyet", connection);
            connection.Open();
            SqlDataReader dr11 = komut11.ExecuteReader();
            Gdsube2maliyet.DataSource = dr11;
            Gdsube2maliyet.DataBind();
            connection.Close();

            SqlCommand komut12 = new SqlCommand("select aracsatis.aracno,araclar.aracsube,aracsatis.marka,aracsatis.model,araclar.alisfiyati,aracsatis.satisfiyati,aracsatis.aliciAS,aracsatis.alicitel,aracsatis.satisTarih,araclar.durum from araclar inner join aracsatis on araclar.aracno=aracsatis.aracno", connection);
            connection.Open();
            SqlDataReader dr12 = komut12.ExecuteReader();
            SatilanAraclar.DataSource = dr12;
            SatilanAraclar.DataBind();
            connection.Close();

            SqlCommand komut13 = new SqlCommand("select DISTINCT SUM(maliyet.alisfiyati+maliyet.vergi+maliyet.bakim) as maliyet from maliyet inner join araclar on araclar.aracID = maliyet.aracID", connection);
            connection.Open();

            connection.Close();
        }

        protected void eklesilguncelle2_Click(object sender, EventArgs e)
        {
            Response.Redirect("superuserakrani.aspx?kullaniciadi=" + user);
        }

        protected void subeler2_Click(object sender, EventArgs e)
        {
            Response.Redirect("subeler.aspx?kullaniciadi=" + user);
        }

        protected void mudurekrani2_Click(object sender, EventArgs e)
        {
            Response.Redirect("mudur.aspx?kullaniciadi=" + user);
        }
    }
}