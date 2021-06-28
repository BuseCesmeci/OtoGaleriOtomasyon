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

            string subeadi = sube.Text;
            string kullaniciadi = kadi.Text;
            string sifre = psw.Text;

            bool Superuserkontrol = DataBase.checkSuperUser(kullaniciadi,yetkiID);
            if (Superuserkontrol == false)
                Response.Write("Hatalı Giriş");
            else
            {
                Session["login2"] = true;
                Response.Redirect("superuserekrani.aspx?kullaniciadi=" + Kadi);
            }

            bool mudurkontrol = DataBase.checkMudur(kullaniciadi, yetkiID);
            if (mudurkontrol == false)
                Response.Write("Hatalı Giriş");
            else
            {
                Session["login2"] = true;
                Response.Redirect("mudur.aspx?kullaniciadi=" + Kadi);
            }

            bool danismankontrol = DataBase.checkDanisman(kullaniciadi, yetkiID);
            if (danismankontrol == false)
                Response.Write("Hatalı Giriş");
            else
            {
                Session["login2"] = true;
                Response.Redirect("danisman.aspx?kullaniciadi=" + Kadi);
            }
           
        }
    }
}