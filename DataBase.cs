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
    public class DataBase
    {
        static string db = ConfigurationManager.ConnectionStrings["otogaleridb"].ToString();
        static SqlConnection connection = new SqlConnection(db);

        public static bool SuperuserLogin(string kullaniciadi, string sifre,string subeadi)
        {
                       
            SqlCommand command = new SqlCommand("select kullaniciadi,sifre,subeadi from admin where yetkirole=@yetkirole,subeadi=@subeadi", connection);
            command.Parameters.AddWithValue("@kullaniciadi", kullaniciadi);
            command.Parameters.AddWithValue("@sifre", sifre);
            command.Parameters.AddWithValue("@yetkirole","superuser");
            command.Parameters.AddWithValue("@subeadi", subeadi);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet sonuc = new DataSet();
            connection.Open();
            adapter.Fill(sonuc);
            connection.Close();
            bool varmi = false;
            if (sonuc.Tables[0].Rows.Count > 0)
                varmi = true;
            return varmi;
        }
        public static bool MudurLogin(string kadi, string psw)
        {
            
            SqlCommand command = new SqlCommand("select kullaniciadi,sifre from admin where yetkirole='mudur'", connection);
            command.Parameters.AddWithValue("@kullaniciadi", kadi);
            command.Parameters.AddWithValue("@sifre", psw);
            command.Parameters.AddWithValue("@yetkirole", "mudur");
            connection.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet sonuc = new DataSet();
            connection.Open();
            adapter.Fill(sonuc);
            connection.Close();
            bool varmi = false;
            if (sonuc.Tables[0].Rows.Count > 0)
                varmi = true;
            return varmi;
        }
        public static bool DanismanLogin(string kadi, string psw)
        {           

            SqlCommand command = new SqlCommand("select kullaniciadi,sifre from admin where yetkirole='danisman'", connection);
            command.Parameters.AddWithValue("@kullaniciadi", kadi);
            command.Parameters.AddWithValue("@sifre", psw);
            command.Parameters.AddWithValue("@yetkirole", "danisman");
            connection.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet sonuc = new DataSet();
            connection.Open();
            adapter.Fill(sonuc);
            connection.Close();
            bool varmi = false;
            if (sonuc.Tables[0].Rows.Count > 0)
                varmi = true;
            return varmi;
        }
        public static bool Login(string kullaniciadi, string subeadi)
        {
            string sql = "select kullaniciadi,subeadi from admin";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@kullaniciadi", kullaniciadi);
            command.Parameters.AddWithValue("@subeadi", subeadi);
            SqlDataAdapter adp = new SqlDataAdapter(command);
            DataSet sonuc = new DataSet();
            connection.Open();
            adp.Fill(sonuc);
            connection.Close();
            bool varmi = false;
            if (sonuc.Tables[0].Rows.Count > 0)
                varmi = true;
            return varmi;

        }
        public static void YeniAracEkle(string aracno, string aracsube, string marka, string model, string paket, int yil, string renk, string yakit, string vites, int km, string kasatipi, string motorgucu, string motorhacmi, int alisfiyati)
        {
            string sql = "insert into araclar(aracno,aracsube,marka,model,paket,yil,renk,yakit,vites,km,kasatipi,motorgucu,motorhacmi,alisfiyati) values(@aracno,@aracsube,@marka,@model,@paket,@yil,@renk,@yakit,@vites,@km,@kasatipi,@motorgucu,@motorhacmi,@alisfiyati)";
            SqlCommand comm = new SqlCommand(sql, connection);
            comm.Parameters.AddWithValue("@aracno", aracno);
            comm.Parameters.AddWithValue("@aracsube", aracsube);
            comm.Parameters.AddWithValue("@marka", marka);
            comm.Parameters.AddWithValue("@model", model);
            comm.Parameters.AddWithValue("@paket", paket);
            comm.Parameters.AddWithValue("@yil", yil);
            comm.Parameters.AddWithValue("@renk", renk);
            comm.Parameters.AddWithValue("@yakit", yakit);
            comm.Parameters.AddWithValue("@vites", vites);
            comm.Parameters.AddWithValue("@km", km);
            comm.Parameters.AddWithValue("@kasatipi", kasatipi);
            comm.Parameters.AddWithValue("@motorgucu", motorgucu);
            comm.Parameters.AddWithValue("@motorhacmi", motorhacmi);
            comm.Parameters.AddWithValue("@alisfiyati", alisfiyati);
            SqlDataAdapter adapter = new SqlDataAdapter(comm);
            DataSet yeniaracekle = new DataSet();
            connection.Open();
            adapter.Fill(yeniaracekle);
            connection.Close();
        }
        public static void YeniSubeEkle(string subeadi, string subeadres, string muduradi, string mudursoyadi)
        {
            string sql = "insert into sube(subeadi,subeadres,muduradi,mudursoyadi) values (@subeadi,@subeadres,@muduradi,@mudursoyadi)";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@subeadi", subeadi);
            command.Parameters.AddWithValue("@subeadres", subeadres);
            command.Parameters.AddWithValue("@muduradi", muduradi);
            command.Parameters.AddWithValue("@mudursoyadi", mudursoyadi);
            SqlDataAdapter sqlda = new SqlDataAdapter(command);
            DataSet subeEkle = new DataSet();
            connection.Open();
            sqlda.Fill(subeEkle);
            connection.Close();
        }
        public static void YeniCalisanEkle(string calisanad, string calisansoyad, string calisanTC, string subesi, int maas, string yetkirole)
        {
            string sql = "insert into calisan(calisanad,calisansoyad,calisanTC,subesi,maas,yetkirole) values (@calisanad,@calisansoyad,@calisanTC,@subesi,@maas,@yetkirole)";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@calisanad", calisanad);
            command.Parameters.AddWithValue("@calisansoyad", calisansoyad);
            command.Parameters.AddWithValue("@calisanTC", calisanTC);
            command.Parameters.AddWithValue("@subesi", subesi);
            command.Parameters.AddWithValue("@maas", maas);
            command.Parameters.AddWithValue("@yetkirole", yetkirole);
            SqlDataAdapter sqlda = new SqlDataAdapter(command);
            DataSet calisanEkle = new DataSet();
            connection.Open();
            sqlda.Fill(calisanEkle);
            connection.Close();
        }
        public static void AracSil(string aracno)
        {
            string sql = "delete from araclar where aracno=@aracno";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@aracno", aracno);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
        }
        public static void SubeSil(string subeadi)
        {
            string sql = "delete from sube where subeadi=@subeadi";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@subeadi", subeadi);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
        }
        public static void CalisanSil(string calisanTC)
        {
            string sql = "delete from calisan where calisanTC=@calisanTC";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@calisanTC", calisanTC);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
        }
        public static bool AracGuncelle(string aracno, string yeniaracno, string aracsube, string marka, string model, string paket, int yil, string renk, string yakit, string vites, int km, string kasatipi, string motorgucu, string motorhacmi, int alisfiyati, int satisfiyati)
        {
            if (aracno == "" || aracno == null)
            {
                return false;
            }
            else if (yeniaracno != "")
            {

                string sql = "update araclar set aracno=@yeniaracno,aracsube=@aracsube,marka=@marka,model=@model,paket=@paket,yil=@yil,renk=@renk,yakit=@yakit,vites=@vites,km=@km,kasatipi=@kasatipi,motorgucu=@motorgucu,motorhacmi=@motorhacmi,alisfiyati=@alisfiyati,satisfiyati=@satisfiyati where aracno=@aracno";
                SqlCommand command = new SqlCommand(sql, connection);
                command.Parameters.AddWithValue("@yeniaracno", yeniaracno);
                command.Parameters.AddWithValue("@aracno", aracno);
                command.Parameters.AddWithValue("@aracsube", aracsube);
                command.Parameters.AddWithValue("@marka", marka);
                command.Parameters.AddWithValue("@model", model);
                command.Parameters.AddWithValue("@paket", paket);
                command.Parameters.AddWithValue("@yil", yil);
                command.Parameters.AddWithValue("@renk", renk);
                command.Parameters.AddWithValue("@yakit", yakit);
                command.Parameters.AddWithValue("@vites", vites);
                command.Parameters.AddWithValue("@km", km);
                command.Parameters.AddWithValue("@kasatipi", kasatipi);
                command.Parameters.AddWithValue("@motorgucu", motorgucu);
                command.Parameters.AddWithValue("@motorhacmi", motorhacmi);
                command.Parameters.AddWithValue("@alisfiyati", alisfiyati);
                command.Parameters.AddWithValue("@satisfiyati", satisfiyati);
                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
                return true;
            }
            else
            {
                return false;
            }
        }
        public static bool SubeGuncelle(string subeadi, string yenisubeadi, string subeadres, string muduradi, string mudursoyadi)
        {
            if (subeadi == "" || subeadi == null)
            {
                return false;
            }
            else if (yenisubeadi != "")
            {
                string sql = "update sube set subeadi=@yenisubeadi,subeadres=@subeadres,muduradi=@muduradi,mudursoyadi=@mudursoyadi where subeadi=@subeadi";
                SqlCommand command = new SqlCommand(sql, connection);
                command.Parameters.AddWithValue("@yenisubeadi", yenisubeadi);
                command.Parameters.AddWithValue("@subeadi", subeadi);
                command.Parameters.AddWithValue("@subeadres", subeadres);
                command.Parameters.AddWithValue("@muduradi", muduradi);
                command.Parameters.AddWithValue("@mudursoyadi", mudursoyadi);
                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
                return true;
            }
            else
            {
                return false;
            }
        }
        public static bool CalisanGuncelle(string yenicalisanTC, string calisanad, string calisansoyad, string calisanTC, string subesi, int maas, string yetkirole)
        {
            if (calisanTC == "" || calisanTC == null)
            {
                return false;
            }
            else if (yenicalisanTC != "")
            {
                string sql = "update calisan set calisanTC=@yenicalisanTC,calisanad=@calisanad,calisansoyad=@calisansoyad,subesi=@subesi,maas=@maas,yetkirole=@yetkirole where calisanTC=@calisanTC";
                SqlCommand command = new SqlCommand(sql, connection);
                command.Parameters.AddWithValue("@yenicalisanTC", yenicalisanTC);
                command.Parameters.AddWithValue("@calisanTC", calisanTC);
                command.Parameters.AddWithValue("@calisanad", calisanad);
                command.Parameters.AddWithValue("@calisansoyad", calisansoyad);
                command.Parameters.AddWithValue("@subesi", subesi);
                command.Parameters.AddWithValue("@maas", maas);
                command.Parameters.AddWithValue("@yetkirole", yetkirole);
                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
                return true;
            }
            else
            {
                return false;
            }
        }
        public static void GelirEkle(int satisfiyati)
        {
            string sql = "insert into gelir(satisfiyati) values (@satisfiyati)";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@satisfiyati", satisfiyati);
            SqlDataAdapter sad = new SqlDataAdapter(command);
            DataSet giderEkle = new DataSet();
            connection.Open();
            sad.Fill(giderEkle);
            connection.Close();
        }
        public static void GiderEkle(int kira, int faturalar, int maaslar)
        {
            string sql = "insert into gider(kira,faturalar,maaslar) values (@kira,@faturalar,@maaslar)";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@kira", kira);
            command.Parameters.AddWithValue("@faturalar", faturalar);
            command.Parameters.AddWithValue("@maaslar", maaslar);
            SqlDataAdapter sa = new SqlDataAdapter(command);
            DataSet giderEkle = new DataSet();
            connection.Open();
            sa.Fill(giderEkle);
            connection.Close();
        }
        public static bool AracSat(string aracno, string marka, string model, int satisfiyati, string durum)
        {
            string sql = "update araclar set  marka=@marka,model=@model,satisfiyati=@satisfiyati,durum=@durum where aracno=@aracno ";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@aracno", aracno);
            command.Parameters.AddWithValue("@marka", marka);
            command.Parameters.AddWithValue("@model", model);
            command.Parameters.AddWithValue("@satisfiyati", satisfiyati);
            command.Parameters.AddWithValue("@durum", "SATILDI");
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            return true;
        }
        public static void AracSatisEkle(string aracno, string marka, string model, int satisfiyati, string aliciAS, string alicitel)
        {
            string sql2 = "insert into aracsatis(aracno,marka,model,satisfiyati,aliciAS,alicitel) values (@aracno,@marka,@model,@satisfiyati,@aliciAS,@alicitel)";
            SqlCommand con = new SqlCommand(sql2, connection);
            con.Parameters.AddWithValue("@aracno", aracno);
            con.Parameters.AddWithValue("@marka", marka);
            con.Parameters.AddWithValue("@model", model);
            con.Parameters.AddWithValue("@satisfiyati", satisfiyati);
            con.Parameters.AddWithValue("@aliciAS", aliciAS);
            con.Parameters.AddWithValue("@alicitel", alicitel);
            SqlDataAdapter sqlda = new SqlDataAdapter(con);
            DataSet aracsatisEkle = new DataSet();
            connection.Open();
            sqlda.Fill(aracsatisEkle);
            connection.Close();
        }
        public static void AracMaliyet(string aracno, string marka, string model, int alisfiyati, int vergi, int bakim)
        {
            string sql = "insert into maliyet(aracno,marka,model,alisfiyati,vergi,bakim) values (@aracno,@marka,@model,@alisfiyati,@vergi,@bakim)";
            SqlCommand con = new SqlCommand(sql, connection);
            con.Parameters.AddWithValue("@aracno", aracno);
            con.Parameters.AddWithValue("@marka", marka);
            con.Parameters.AddWithValue("@model", model);
            con.Parameters.AddWithValue("@alisfiyati", alisfiyati);
            con.Parameters.AddWithValue("@vergi", vergi);
            con.Parameters.AddWithValue("@bakim", bakim);
            SqlDataAdapter sqlda = new SqlDataAdapter(con);
            DataSet aracmasrafEkle = new DataSet();
            connection.Open();
            sqlda.Fill(aracmasrafEkle);
            connection.Close();
        }
    }
}