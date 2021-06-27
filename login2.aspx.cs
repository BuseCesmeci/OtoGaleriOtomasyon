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

        // MAİLDEN SORDUĞUM 2.KISIM BURANIN TAMAMI//

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            if (yetkiID == 1)
            {
                string subeadi = sube.Text;
                string kullaniciadi = kadi.Text;
                string sifre = psw.Text;
              //  bool yetkikontrol = DataBase.SuperuserLogin(kullaniciadi,sifre,subeadi);
                bool yetkiID = DataBase.SuperuserLogin(kullaniciadi, sifre, subeadi);
                if (yetkiID == false)
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
               // bool yetkikontrol = DataBase.MudurLogin(kullaniciadi, sifre, subeadi);
                bool yetkiID = DataBase.MudurLogin(kullaniciadi, sifre, subeadi);
                if ( yetkiID == false)
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
                bool yetkikontrol = DataBase.DanismanLogin(kullaniciadi, sifre, subeadi);
                bool yetkiID = DataBase.DanismanLogin(kullaniciadi, sifre, subeadi);
                if (yetkikontrol == false || yetkiID == true)
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