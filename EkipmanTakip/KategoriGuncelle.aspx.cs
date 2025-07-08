using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EkipmanTakip
{
    public partial class KategoriGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Request.QueryString["KategoriID"] != null)
                {
                    id = Convert.ToInt32(Request.QueryString["KategoriID"].ToString());
                    TxtKategoriid.Text = id.ToString();
                    DataSetTableAdapters.TBL_KATEGORILERTableAdapter dt = new DataSetTableAdapters.TBL_KATEGORILERTableAdapter();
                    TxtKategoriAd.Text = dt.KategoriSec(id)[0].KategoriAd;
                }

            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBL_KATEGORILERTableAdapter dt = new DataSetTableAdapters.TBL_KATEGORILERTableAdapter();
            dt.KategoriGuncelle(TxtKategoriAd.Text, int.Parse(TxtKategoriid.Text));
            Response.Redirect("KategoriListesi.aspx");
        }
    }
}