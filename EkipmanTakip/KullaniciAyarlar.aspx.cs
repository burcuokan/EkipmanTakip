using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EkipmanTakip
{
    public partial class KullaniciAyarlar : System.Web.UI.Page
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
                    id = Convert.ToInt32(Session["KullaniciID"].ToString());
                    DataSetTableAdapters.TBL_KULLANICILARTableAdapter dt = new DataSetTableAdapters.TBL_KULLANICILARTableAdapter();
                    HiddenKullaniciID.Value = id.ToString();
                    TxtAd.Text = dt.AdminSec(id)[0].Ad;
                    TxtSoyad.Text = dt.AdminSec(id)[0].Soyad;
                    TxtTelefon.Text = dt.AdminSec(id)[0].Telefon;
                    TxtMail.Text = dt.AdminSec(id)[0].Mail;
                    TxtSifre.Text = dt.AdminSec(id)[0].Sifre;
                
            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBL_KULLANICILARTableAdapter dt = new DataSetTableAdapters.TBL_KULLANICILARTableAdapter();
            dt.AdminGuncelle(TxtAd.Text, TxtSoyad.Text, TxtTelefon.Text, TxtMail.Text, TxtSifre.Text,Convert.ToInt32(HiddenKullaniciID.Value));
            LblMesaj.Text = "Bilgiler Başarıyla Güncellendi";
            LblMesaj.Visible = true;
        }
    }
}