using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace otogalerisistemi
{
    public partial class login2 : System.Web.UI.Page
    {
        public int yetkiID { get; set; }
        public string Kadi { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            string yetkiID = Request["yetkiID"];
            string Kadi = Request["kullaniciadi"];

        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            if (yetkiID==1)
            {
                string subeadi = sube.Text;
                string kullaniciadi = kadi.Text;
                string sifre = psw.Text;
                bool yetkikontrol = DataBase.Login(yetkiID, kullaniciadi);
                if (yetkikontrol == false)
                    Response.Write("Yetkiniz Bulunmamaktadır.");
                else
                {
                    Session["login2"] = true;
                    Response.Redirect("superuserekrani.aspx?kullaniciadi=" + Kadi);
                }
            }
            else if (yetkiID == 2)
            {
                string subeadi = sube.Text;
                string kullaniciadi = kadi.Text;
                string sifre = psw.Text;
                bool yetkikontrol = DataBase.Login(yetkiID, kullaniciadi);
                if (yetkikontrol == false)
                    Response.Write("Yetkiniz Bulunmamaktadır.");
                else
                {
                    Session["login2"] = true;
                    Response.Redirect("mudur.aspx?kullaniciadi=" + Kadi);
                }
            }
            else if (yetkiID == 3)
            {
                string subeadi = sube.Text;
                string kullaniciadi = kadi.Text;
                string sifre = psw.Text;
                bool yetkikontrol = DataBase.Login(yetkiID, kullaniciadi);
                if (yetkikontrol == false)
                    Response.Write("Yetkiniz Bulunmamaktadır.");
                else
                {
                    Session["login2"] = true;
                    Response.Redirect("danisman.aspx?kullaniciadi=" + Kadi);
                }
            }
            else
            {
                Session["login2"] = true;
                Response.Write("Giriş Yapınız");
            }
        }
    }
}