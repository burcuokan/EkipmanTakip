using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EkipmanTakip
{
    public partial class AdminÇıkışYap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Oturumdaki tüm verileri temizle
            Session.Clear();

            // Mevcut oturumu sonlandır
            Session.Abandon();

            // Kullanıcıyı giriş sayfasına yönlendir
            Response.Redirect("LoginPanel.aspx");

        }
    }
}