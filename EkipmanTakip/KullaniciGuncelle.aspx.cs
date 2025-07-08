using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EkipmanTakip
{
    public partial class KullaniciGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciID"] == null)
            {
                Response.Redirect("LoginPanel.aspx");
                return;
            }

            if (!IsPostBack)
            { 
                id = Convert.ToInt32(Request.QueryString["KullaniciID"].ToString());
            TxtKullaniciid.Text = id.ToString();
            DataSetTableAdapters.TBL_KULLANICILARTableAdapter dt = new DataSetTableAdapters.TBL_KULLANICILARTableAdapter();
            TxtKullaniciAd.Text = dt.KullaniciSec(id)[0].Ad;
            TxtKullaniciSoyad.Text = dt.KullaniciSec(id)[0].Soyad;
            TxtTelefon.Text = dt.KullaniciSec(id)[0].Telefon;
            TxtMail.Text = dt.KullaniciSec(id)[0].Mail;
            TxtSifre.Text = dt.KullaniciSec(id)[0].Sifre;
            TxtRol.Text = dt.KullaniciSec(id)[0].Rol;
            TxtGorev.Text = dt.KullaniciSec(id)[0].Gorev;
        }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBL_KULLANICILARTableAdapter dt = new DataSetTableAdapters.TBL_KULLANICILARTableAdapter();
            dt.KullaniciGuncelle(TxtKullaniciAd.Text, TxtKullaniciSoyad.Text, TxtTelefon.Text, TxtMail.Text, TxtSifre.Text, TxtRol.Text, TxtGorev.Text,Convert.ToInt32(TxtKullaniciid.Text));
            Response.Redirect("Default.aspx");
        }
    }
}