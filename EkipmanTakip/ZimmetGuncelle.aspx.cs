using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EkipmanTakip
{
    public partial class ZimmetGuncelle : System.Web.UI.Page
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
                id = Convert.ToInt32(Request.QueryString["ZımmetID"].ToString());
                TxtZimmetid.Text = id.ToString();

                DataSetTableAdapters.TBL_KULLANICILARTableAdapter dtK = new DataSetTableAdapters.TBL_KULLANICILARTableAdapter();
                DropDownList1.DataSource = dtK.KullanıcıSec2();
                DropDownList1.DataTextField = "AdSoyad";
                DropDownList1.DataValueField = "KullaniciID";
                DropDownList1.DataBind();

                DataSetTableAdapters.EkipmanListTableAdapter dtE = new DataSetTableAdapters.EkipmanListTableAdapter();
                DropDownList2.DataSource = dtE.EkipmanGetir();
                DropDownList2.DataTextField = "Adı";
                DropDownList2.DataValueField = "EkipmanID";
                DropDownList2.DataBind();


                DataSetTableAdapters.TBL_ZIMMETTableAdapter dt = new DataSetTableAdapters.TBL_ZIMMETTableAdapter();
                DropDownList1.SelectedValue = dt.ZimmetSec(id)[0].KullaniciID.ToString();
                DropDownList2.SelectedValue = dt.ZimmetSec(id)[0].EkipmanID.ToString();
                TxtZımmetTarihi.Text = dt.ZimmetSec(id)[0].ZımmetTarihi.ToString();
                TxtDurum.Text = dt.ZimmetSec(id)[0].Durum;
                TxtTarih.Text = dt.ZimmetSec(id)[0].TeslimTarihi.ToString();
                TxtAciklama.Text = dt.ZimmetSec(id)[0].Aciklama;
            }
        }

            protected void BtnGuncelle_Click(object sender, EventArgs e)
            {

            DataSetTableAdapters.TBL_ZIMMETTableAdapter dt = new DataSetTableAdapters.TBL_ZIMMETTableAdapter();
            dt.ZimmetGuncelle(Convert.ToInt32(DropDownList1.SelectedValue),Convert.ToInt32(DropDownList2.SelectedValue), DateTime.Parse(TxtZımmetTarihi.Text), TxtDurum.Text, DateTime.Parse(TxtTarih.Text), TxtAciklama.Text, int.Parse(TxtZimmetid.Text));
            Response.Redirect("ZimmetListesi.aspx");

            }
    }
}