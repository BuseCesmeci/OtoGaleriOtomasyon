using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace otogalerisistemi
{
    public partial class superuserekrani : System.Web.UI.Page
    {
        public string ka { get; set; }
        public string yetki { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ka = Request["kullaniciadi"];
            yetki = Request["yerkirole"];
            //if (Convert.ToBoolean(Session["superuserlogin"]) != true)
            //    Response.Redirect("superuserlogin.aspx?msg=Oncelikle Giris Yapmalisiniz");
        }

        protected void eklebutton_Click(object sender, EventArgs e)
        {
            if (inlineRadioArac.Checked)
            {
                string aracno = EkleSilaracno.Text;
                string aracsube = eklearacsube.Text;
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

                DataBase.YeniAracEkle(aracno,aracsube ,marka, model,paket , Convert.ToInt32(yil), renk, yakit, vites, Convert.ToInt32(km), kasatipi, motorgucu, motorhacmi, Convert.ToInt32(alisfiyati));
                Response.Write("EKLEME BAŞARILI");
                EkleSilaracno.Text = string.Empty;
                eklearacsube.Text = string.Empty;
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
            else if (inlineRadioSube.Checked)
            {
                string subeadi = EkleSilsubeadi.Text;
                string subeadres = eklesubeadres.Text;
                string muduradi = eklemuduradi.Text;
                string mudursoyadi = eklemudursoyadi.Text;

                DataBase.YeniSubeEkle(subeadi, subeadres, muduradi, mudursoyadi);
                Response.Write("EKLEME BAŞARILI");
                EkleSilsubeadi.Text = string.Empty;
                eklesubeadres.Text = string.Empty;
                eklemuduradi.Text = string.Empty;
                eklemudursoyadi.Text = string.Empty;

            }
            else if (inlineRadioCalisan.Checked)
            {
                string calisanad = eklecalisanadi.Text;
                string calisansoyad = eklecalisansoyad.Text;
                string calisanTC = EkleSilcalisanTC.Text;
                string subesi = eklecalisanSubesi.Text;
                string maas = eklemaas.Text;
                string yetkirole = ekleyetkirole.Text;

                DataBase.YeniCalisanEkle(calisanad, calisansoyad, calisanTC, subesi, Convert.ToInt32(maas), yetkirole);
                Response.Write("EKLEME BAŞARILI");
                eklecalisanadi.Text = string.Empty;
                eklecalisansoyad.Text = string.Empty;
                EkleSilcalisanTC.Text = string.Empty;
                eklecalisanSubesi.Text = string.Empty;
                eklemaas.Text = string.Empty;
                ekleyetkirole.Text = string.Empty;
            }
            else
            {
                Response.Write("DÜZENLEME YAPMAK İSTEDİĞİNİZ BÖLÜMÜ SEÇMEDİNİZ --> ARAÇ/ŞUBE/ÇALIŞAN");
            }
        }

        protected void silbutton_Click(object sender, EventArgs e)
        {
            if (inlineRadioArac.Checked)
            {
                string aracno = EkleSilaracno.Text;
                DataBase.AracSil(aracno);
                Response.Write("SİLME BAŞARILI");
                EkleSilaracno.Text = string.Empty;
            }
            else if (inlineRadioSube.Checked)
            {
                string subeadi = EkleSilsubeadi.Text;
                DataBase.SubeSil(subeadi);
                Response.Write("SİLME BAŞARILI");
                EkleSilsubeadi.Text = string.Empty;
            }
            else if (inlineRadioCalisan.Checked)
            {
                string calisanTC = EkleSilcalisanTC.Text;
                DataBase.CalisanSil(calisanTC);
                Response.Write("SİLME BAŞARILI");
                EkleSilcalisanTC.Text = string.Empty;
            }
            else
            {
                Response.Write("DÜZENLEME YAPMAK İSTEDİĞİNİZ BÖLÜMÜ SEÇMEDİNİZ --> ARAÇ/ŞUBE/ÇALIŞAN");
            }
        }

        protected void guncellebutton_Click(object sender, EventArgs e)
        {
            if (inlineRadioArac.Checked)
            {
                string aracno = guncellenecekaracno.Text;
                string yeniaracno = guncelleAracno.Text;
                string aracsube = guncelleAracsube.Text;
                string marka = guncelleMarka.Text;
                string model = guncelleModel.Text;
                string paket = guncellePaket.Text;
                string yil = guncelleYil.Text;
                string renk = guncelleRenk.Text;
                string yakit = guncelleYakit.Text;
                string vites = guncelleVites.Text;
                string km = guncelleKM.Text;
                string kasatipi = guncelleKasatipi.Text;
                string motorgucu = guncelleMotorgucu.Text;
                string motorhacmi = guncelleMotorhacmi.Text;
                string alisfiyati = guncelleAlisfiyat.Text;
                string satisfiyati = guncelleSatisfiyat.Text;

                Boolean aracguncelle = DataBase.AracGuncelle(aracno, yeniaracno,aracsube ,marka, model,paket , Convert.ToInt32(yil), renk, yakit, vites, Convert.ToInt32(km), kasatipi, motorgucu, motorhacmi, Convert.ToInt32(alisfiyati), Convert.ToInt32(satisfiyati));
                if (aracguncelle == false)
                {
                    Response.Write("GÜNCELLEME BAŞARISIZ");
                }
                else
                {
                    Response.Write("GÜNCELLEME BAŞARILI");
                    guncellenecekaracno.Text = string.Empty;
                    guncelleAracno.Text = string.Empty;
                    guncelleAracsube.Text = string.Empty;
                    guncelleMarka.Text = string.Empty;
                    guncelleModel.Text = string.Empty;
                    guncellePaket.Text = string.Empty;
                    guncelleYil.Text = string.Empty;
                    guncelleRenk.Text = string.Empty;
                    guncelleYakit.Text = string.Empty;
                    guncelleVites.Text = string.Empty;
                    guncelleKM.Text = string.Empty;
                    guncelleKasatipi.Text = string.Empty;
                    guncelleMotorgucu.Text = string.Empty;
                    guncelleMotorhacmi.Text = string.Empty;
                    guncelleSatisfiyat.Text = string.Empty;

                }
            }
            else if (inlineRadioSube.Checked)
            {
                string subeadi = guncelleneceksube.Text;
                string yenisubeadi = guncelleSube.Text;
                string subeadres = guncelleSubeAdres.Text;
                string muduradi = guncelleMuduradi.Text;
                string mudursoyadi = guncelleMudursoyadi.Text;

                Boolean guncellesube = DataBase.SubeGuncelle(subeadi, yenisubeadi, subeadres, muduradi, mudursoyadi);
                if (guncellesube == false)
                {
                    Response.Write("GÜNCELLEME BAŞARISIZ");
                }
                else
                {
                    Response.Write("GÜNCELLEME BAŞARILI");
                    guncelleSube.Text = string.Empty;
                    guncelleSubeAdres.Text = string.Empty;
                    guncelleMuduradi.Text = string.Empty;
                    guncelleMudursoyadi.Text = string.Empty;
                }

            }
            else if (inlineRadioCalisan.Checked)
            {

                string calisanad = guncellecalisanadi.Text;
                string calisansoyad = guncellecalisanSoyadi.Text;
                string calisanTC = guncellenecekCalisanTC.Text;
                string yenicalisanTC = guncellecalisanTC.Text;
                string subesi = guncellecalisanSubesi.Text;
                string maas = guncelleMaas.Text;
                string unvan = guncellecUnvan.Text;

                Boolean guncellecalisan = DataBase.CalisanGuncelle(yenicalisanTC, calisanad, calisansoyad, calisanTC, subesi, Convert.ToInt32(maas), unvan);
                if (guncellecalisan == false)
                {
                    Response.Write("GÜNCELLEME BAŞARISIZ");
                }
                else
                {
                    Response.Write("GÜNCELLEME BAŞARILI");
                    guncellecalisanadi.Text = string.Empty;
                    guncellecalisanSoyadi.Text = string.Empty;
                    guncellenecekCalisanTC.Text = string.Empty;
                    guncellecalisanSubesi.Text = string.Empty;
                    guncelleMaas.Text = string.Empty;
                    guncellecUnvan.Text = string.Empty;
                }
            }

            else
            {
                Response.Write("DÜZENLEME YAPMAK İSTEDİĞİNİZ BÖLÜMÜ SEÇMEDİNİZ --> ARAÇ/ŞUBE/ÇALIŞAN");
            }
        }

        protected void eklesilguncelle_Click(object sender, EventArgs e)
        {
            Response.Redirect("superuserakrani.aspx");
        }

        protected void subeler_Click(object sender, EventArgs e)
        {
            Response.Redirect("subeler.aspx");
        }

        protected void mudurekrani_Click(object sender, EventArgs e)
        {
            Response.Redirect("mudur.aspx");
        }
    }
}