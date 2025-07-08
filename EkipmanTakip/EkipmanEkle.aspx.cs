using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EkipmanTakip
{
    public partial class EkipmanEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciID"] == null)
            {
                Response.Redirect("LoginPanel.aspx");
                return;
            }

            if (Page.IsPostBack == false)
            {
                DataSetTableAdapters.TBL_KATEGORILERTableAdapter dt = new DataSetTableAdapters.TBL_KATEGORILERTableAdapter();
                DropDownList1.DataSource = dt.KategoriListesi();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriID";
                DropDownList1.DataBind();
            }

        }

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.EkipmanListTableAdapter dt = new DataSetTableAdapters.EkipmanListTableAdapter();
            dt.EkipmanEkle(TxtEkipmanAd.Text, TxtMarka.Text, TxtModel.Text, TxtSeriNo.Text, TxtDurum.Text, Convert.ToInt32(DropDownList1.SelectedValue), TxtTarih.Text);
            Response.Redirect("EkipmanYönetimi.aspx");

        }
    }
}