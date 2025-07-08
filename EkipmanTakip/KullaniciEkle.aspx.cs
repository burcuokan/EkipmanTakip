using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EkipmanTakip
{
    public partial class KullaniciEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciID"] == null)
            {
                Response.Redirect("LoginPanel.aspx");
                return;
            }

        }

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBL_KULLANICILARTableAdapter dt = new DataSetTableAdapters.TBL_KULLANICILARTableAdapter();
            dt.KullaniciEkle(TxtKullaniciAd.Text, TxtKullaniciSoyad.Text, TxtTelefon.Text, TxtMail.Text, TxtSifre.Text, TxtRol.Text, TxtGorev.Text);
            Response.Redirect("Default.aspx");
        }
    }
}