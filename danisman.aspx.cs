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
    public partial class danisman : System.Web.UI.Page
    {
        public string subeadi { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            subeadi = Request["subeadi"];

            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["otogaleridb"].ConnectionString);
            SqlCommand komut = new SqlCommand("Select * From araclar where aracsube='"+ subeadi + "'", connection);
            connection.Open();
            SqlDataReader dr = komut.ExecuteReader();
            GdAraclar.DataSource = dr;
            GdAraclar.DataBind();
            connection.Close();
        }

        protected void mudurekrani3_Click(object sender, EventArgs e)
        {
            Response.Redirect("mudur.aspx");
        }
    }
}