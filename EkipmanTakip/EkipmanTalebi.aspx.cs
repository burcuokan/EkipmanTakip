using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EkipmanTakip
{
    public partial class EkipmanTalebi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciID"] == null)
            {
                Response.Redirect("LoginPanel.aspx");
                return;
            }
            if (!Page.IsPostBack)
            {
                DataSetTableAdapters.EkipmanListTableAdapter dt = new DataSetTableAdapters.EkipmanListTableAdapter();
                ddlEkipman.DataSource = dt.EkipmanGetir();
                ddlEkipman.DataTextField = "Adı";
                ddlEkipman.DataValueField = "EkipmanID";
                ddlEkipman.DataBind();

                DataSetTableAdapters.TBL_KATEGORILERTableAdapter dt2 = new DataSetTableAdapters.TBL_KATEGORILERTableAdapter();
                ddlKategori.DataSource = dt2.KategoriListesi();
                ddlKategori.DataTextField = "KategoriAd";
                ddlKategori.DataValueField = "KategoriID";
                ddlKategori.DataBind();
            }

        }

        protected void BtnTalepGonder_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.DataTable2TableAdapter dt = new DataSetTableAdapters.DataTable2TableAdapter();
            int kullaniciID = Convert.ToInt32(Session["KullaniciID"]);
            dt.TalepEkle(kullaniciID, int.Parse(ddlEkipman.SelectedValue), int.Parse(ddlKategori.SelectedValue), TxtAciklama.Text);
            TxtAciklama.Text = "";
        }
    }
}