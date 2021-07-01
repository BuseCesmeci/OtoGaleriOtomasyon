using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Web.UI;


namespace otogalerisistemi
{ 

    public partial class login : System.Web.UI.Page
    {
         //public string yetki { get; set; }
         //public string ka { get; set; }
         //public string subeadi { get; set; }
       
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["otogaleridb"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
         //   HttpContext.Current.Session["kullanici"];

            //ka = Request["kullaniciadi"];
        }

        //protected void loginbtn_Click(object sender, EventArgs e)
        //{
            
        //    string kullaniciadi = kadi.Text;
        //  //  string sifre = psw.Text;
        //    string subeadi = sube.Text;
        //    //string yetkirole = yetki;
        //   // yetki = Request["yerkirole"];
        //    subeadi = Request["subeadi"];
        //    // bool kontrol = DataBase.SuperuserLogin(kullaniciadi, sifre, subeadi);
        //    bool kontrol = DataBase.Login(kullaniciadi, subeadi);
        //    if (kontrol == false)
        //       Response.Write("Hatalı Giriş");
        //    else
        //    {
        //       Session["login"] = true;
        //       Response.Write("giris yapılamadı");
        //   }
        //}
        
        protected void loginbtn_Click1(object sender, EventArgs e)
        {
            //if(FormsAuthentication.Authenticate(kullaniciadi.Text, sifre.Text))
            //{
            //    FormsAuthentication.RedirectFromLoginPage(kullaniciadi.Text, cboxPersist.Checked);
            //}
            //else
            //{
            //    msg.Text = "geçersiz kadi";
            //}
        }
    }
}