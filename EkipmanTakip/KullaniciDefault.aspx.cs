using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EkipmanTakip
{
    public partial class KullaniciDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciID"] == null)
            {
                Response.Redirect("LoginPanel.aspx");
                return;
            }
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Session["KullaniciID"]);

                DataSetTableAdapters.TBL_KULLANICILARTableAdapter dt = new DataSetTableAdapters.TBL_KULLANICILARTableAdapter();
                TxtAd.Text = "Ad: " + dt.KullaniciPaneliGetir(id)[0].Ad;
                TxtSoyad.Text = "Soyad: " + dt.KullaniciPaneliGetir(id)[0].Soyad;
                TxtTelefon.Text = "Telefon: " + dt.KullaniciPaneliGetir(id)[0].Telefon;
                TxtMail.Text = "Mail: " + dt.KullaniciPaneliGetir(id)[0].Mail;
                TxtSifre.Text = "Şifre: " + dt.KullaniciPaneliGetir(id)[0].Sifre;
                TxtRol.Text = "Rol: " + dt.KullaniciPaneliGetir(id)[0].Rol;
                TxtGorev.Text = "Görev: " + dt.KullaniciPaneliGetir(id)[0].Gorev;
            }

        }
    }
}