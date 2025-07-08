using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace EkipmanTakip
{
  
    public partial class EkipmanGuncelle : System.Web.UI.Page
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
                id = Convert.ToInt32(Request.QueryString["EkipmanID"].ToString());

                DataSetTableAdapters.EkipmanListTableAdapter dt = new DataSetTableAdapters.EkipmanListTableAdapter();
                TxtEkipmanid.Text = id.ToString();
                TxtAd.Text = dt.EkipmanGetir2(id)[0].Adı;
                TxtMarka.Text = dt.EkipmanGetir2(id)[0].Marka;
                TxtModel.Text = dt.EkipmanGetir2(id)[0].Model;
                TxtSerino.Text = dt.EkipmanGetir2(id)[0].SeriNo;
                TxtDurum.Text = dt.EkipmanGetir2(id)[0].Durum;
                TxtKategori.Text = dt.EkipmanGetir2(id)[0].KategoriAd;
                TxtTarih.Text = Convert.ToDateTime(dt.EkipmanGetir2(id)[0].AlımTarihi).ToString();
            }
        }
        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            

        }
    }
}