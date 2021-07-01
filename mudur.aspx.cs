using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;
using System.Web.UI.WebControls;



namespace otogalerisistemi
{
    public partial class mudur : System.Web.UI.Page
    {
        public string aracNo { get; set; }
        public string subeA { get; set; }
        public string user { get; set; }

        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["otogaleridb"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            subeA = Request["subeadi"];
            aracNo = Request["aracID"];
            user= Request["kullaniciadi"];

            // SqlCommand cmd = new SqlCommand("select SUM(kira + faturalar + maaslar) as ToplamGider from gider where subeadi='" + subeA + "'", connection);
            SqlCommand cmd = new SqlCommand("select * from gider where subeadi='" + subeA + "'", connection);
            connection.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            GVgider.DataSource = dr;
            GVgider.DataBind();
            connection.Close();

            // SqlCommand cmd2 = new SqlCommand("select DISTINCT SUM(maliyet.alisfiyati+maliyet.vergi+maliyet.bakim) as maliyet from maliyet subeadi='" + subeA + "'" , connection);
            SqlCommand cmd2 = new SqlCommand("select * from maliyet where subeadi='" + subeA + "'", connection);
            connection.Open();
            SqlDataReader dr2 = cmd2.ExecuteReader();
            GdMaliyet.DataSource = dr2;
            GdMaliyet.DataBind();
            connection.Close();
            
            Label maliyet = new Label();
            string alisfiyati = GdMaliyet.Rows[0].Cells[5].Text;
            string vergi = GdMaliyet.Rows[0].Cells[6].Text;
            string bakim = GdMaliyet.Rows[0].Cells[7].Text;
            maliyet.Text = (Convert.ToInt32(alisfiyati) + Convert.ToInt32(vergi) + Convert.ToInt32(bakim)).ToString();
            

            SqlCommand cmd3 = new SqlCommand("select * from calisan where subesi='" + subeA + "'", connection);
            connection.Open();
            SqlDataReader dr3 = cmd3.ExecuteReader();
            GdCalisanlar.DataSource = dr3;
            GdCalisanlar.DataBind();
            connection.Close();
        }

        protected void aracAlbtn_Click(object sender, EventArgs e)
        {

            string aracno = EkleSilaracno.Text;
            string aracsube = eklesube.Text;
            string marka = eklemarka.Text;
            string model = eklemodel.Text;
            string paket = eklepaket.Text;
            string yil = ekleyil.Text;
            string renk = eklerenk.Text;
            string yakit = ekleyakit.Text;
            string vites = eklevites.Text;
            string km = eklekm.Text;
            string kasatipi = eklekasatipi.Text;
            string motorgucu = eklemotorgucu.Text;
            string motorhacmi = eklemotorhacmi.Text;
            string alisfiyati = eklealisfiyati.Text;
            DataBase.YeniAracEkle(aracno, aracsube, marka, model, paket, Convert.ToInt32(yil), renk, yakit, vites, Convert.ToInt32(km), kasatipi, motorgucu, motorhacmi, Convert.ToInt32(alisfiyati));
            Response.Write("EKLEME BAŞARILI");

            string sql = "update araclar set durum=@durum";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@durum", "SATIŞTA");
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();

            EkleSilaracno.Text = string.Empty;
            eklesube.Text = string.Empty;
            eklemarka.Text = string.Empty;
            eklemodel.Text = string.Empty;
            eklepaket.Text = string.Empty;
            ekleyil.Text = string.Empty;
            eklerenk.Text = string.Empty;
            ekleyakit.Text = string.Empty;
            eklevites.Text = string.Empty;
            eklekm.Text = string.Empty;
            eklekasatipi.Text = string.Empty;
            eklemotorgucu.Text = string.Empty;
            eklemotorhacmi.Text = string.Empty;
            eklealisfiyati.Text = string.Empty;
        }

        protected void araclarlistbtn_Click(object sender, EventArgs e)
        {

            Response.Redirect("danisman.aspx?subeadi=" + subeA);
        }

        protected void superuserekrani_Click(object sender, EventArgs e)
        {
           
            Response.Write("GEÇERSİZ YETKİ");
        }

        protected void aracSatbtn_Click(object sender, EventArgs e)
        {
            string aracno = satilacakaracno.Text;
            string sube = satSube.Text;
            string marka = satMarka.Text;
            string model = satModel.Text;
            string satisfiyati = satisfiyat.Text;
            string aliciAS = aliciad.Text;
            string alicitel = alicitelno.Text;

            string sql = "update araclar set  aracsube=@aracsube,marka=@marka,model=@model,satisfiyati=@satisfiyati,durum=@durum,satisTarih=@satisTarih where aracno=@aracno ";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@aracno", aracno);
            command.Parameters.AddWithValue("@aracsube", subeA);
            command.Parameters.AddWithValue("@marka", marka);
            command.Parameters.AddWithValue("@model", model);
            command.Parameters.AddWithValue("@satisfiyati", satisfiyati);
            command.Parameters.AddWithValue("@durum", "SATILDI");
            command.Parameters.AddWithValue("@satisTarih", DateTime.Now);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            Response.Write("ARAÇ SATIŞI GERÇEKLEŞMİŞTİR.");

            DataBase.AracSatisEkle(sube,aracno,marka, model, Convert.ToInt32(satisfiyati), aliciAS, alicitel);

            satilacakaracno.Text = string.Empty;
            satMarka.Text = string.Empty;
            satModel.Text = string.Empty;
            satisfiyat.Text = string.Empty;
            aliciad.Text = string.Empty;
            alicitelno.Text = string.Empty;

            string sql2 = "insert into gelir(subeadi,satisfiyati) values (@subeadi,@satisfiyati)";
            SqlCommand command2 = new SqlCommand(sql2, connection);
            command2.Parameters.AddWithValue("@satisfiyati", satisfiyati);
            command2.Parameters.AddWithValue("@subeadi", subeA);
            SqlDataAdapter sad = new SqlDataAdapter(command2);
            DataSet giderEkle = new DataSet();
            connection.Open();
            sad.Fill(giderEkle);
            connection.Close();


        }

        protected void giderEklebtn_Click(object sender, EventArgs e)
        {
            string kira = eklekira.Text;
            string faturalar = eklefaturalar.Text;
            string maaslar = eklemaaslar.Text;
            // DataBase.GiderEkle(Convert.ToInt32(kira), Convert.ToInt32(faturalar), Convert.ToInt32(maaslar));
            string sql = "insert into gider(subeadi,kira,faturalar,maaslar) values (@subeadi,@kira,@faturalar,@maaslar)";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@subeadi", subeA);
            command.Parameters.AddWithValue("@kira", kira);
            command.Parameters.AddWithValue("@faturalar", faturalar);
            command.Parameters.AddWithValue("@maaslar", maaslar);
            SqlDataAdapter sa = new SqlDataAdapter(command);
            DataSet giderEkle = new DataSet();
            connection.Open();
            sa.Fill(giderEkle);
            connection.Close();

            Response.Write("İŞLEM TAMAMLANDI");

            eklekira.Text = string.Empty;
            eklefaturalar.Text = string.Empty;
            eklemaaslar.Text = string.Empty;
        }

        protected void masraf_Click(object sender, EventArgs e)
        {

        }

        protected void calisaneklebtn_Click(object sender, EventArgs e)
        {
            string calisanad = calisanADekle.Text;
            string calisansoyad = calisanSOYADekle.Text;
            string calisanTC = calisanTCekle.Text;
            string subesi = calisanSUBEekle.Text;
            string maas = calisanMAASekle.Text;
            string yetkirole = calisanYETKİROLEekle.Text;
            DataBase.YeniCalisanEkle(calisanad, calisansoyad, calisanTC, subeA, Convert.ToInt32(maas), yetkirole);

            Response.Write("İŞLEM TAMAMLANDI");
            calisanADekle.Text = string.Empty;
            calisanSOYADekle.Text = string.Empty;
            calisanTCekle.Text = string.Empty;
            calisanSUBEekle.Text = string.Empty;
            calisanMAASekle.Text = string.Empty;
            calisanYETKİROLEekle.Text = string.Empty;
        }

        protected void maliyet_Click(object sender, EventArgs e)
        {
            string aracno = aracnoMaliyet.Text;
            string marka = markaMaliyet.Text;
            string model = modelMaliyet.Text;
            string alisfiyati = alisfiyatiMaliyet.Text;
            string vergi = vergimaliyet.Text;
            string bakim = aracbakim.Text;
            DataBase.AracMaliyet(aracno, marka, model, Convert.ToInt32(alisfiyati), Convert.ToInt32(vergi), Convert.ToInt32(bakim),subeA);

            Response.Write("İŞLEM TAMAMLANDI");
            aracnoMaliyet.Text = string.Empty;
            markaMaliyet.Text = string.Empty;
            modelMaliyet.Text = string.Empty;
            alisfiyatiMaliyet.Text = string.Empty;
            vergimaliyet.Text = string.Empty;
            aracbakim.Text = string.Empty;
        }
    }
}