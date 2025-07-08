using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EkipmanTakip
{
    public partial class KayıtOl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBL_KULLANICILARTableAdapter dt = new DataSetTableAdapters.TBL_KULLANICILARTableAdapter();
            dt.KullaniciEkle(Request.Form["txtAd"], Request.Form["txtSoyad"], Request.Form["txtTelefon"], Request.Form["txtEmail"], Request.Form["txtSifre"], Request.Form["rblRol"], Request.Form["txtGorev"]);
        }
    }
}