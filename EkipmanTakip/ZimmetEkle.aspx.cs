using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EkipmanTakip
{
    public partial class ZimmetEkle : System.Web.UI.Page
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
                DataSetTableAdapters.TBL_KULLANICILARTableAdapter dt = new DataSetTableAdapters.TBL_KULLANICILARTableAdapter();
                DropDownList1.DataSource = dt.KullanıcıSec2();
                DropDownList1.DataTextField = "AdSoyad";
                DropDownList1.DataValueField = "KullaniciID";
                DropDownList1.DataBind();

                DataSetTableAdapters.EkipmanListTableAdapter dt2 = new DataSetTableAdapters.EkipmanListTableAdapter();
                DropDownList2.DataSource = dt2.EkipmanGetir();
                DropDownList2.DataTextField = "Adı";
                DropDownList2.DataValueField = "EkipmanID";
                DropDownList2.DataBind();

            }
        }

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBL_ZIMMETTableAdapter dt = new DataSetTableAdapters.TBL_ZIMMETTableAdapter();
            dt.ZimmetEkle(Convert.ToInt32(DropDownList1.SelectedValue), Convert.ToInt32(DropDownList2.SelectedValue), DateTime.Parse(TxtZımmetTarihi.Text), TxtDurum.Text, DateTime.Parse(TxtTarih.Text), TxtAciklama.Text);
            Response.Redirect("ZimmetListesi.aspx");

        }
    }
}