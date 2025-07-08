using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EkipmanTakip
{
    public partial class KategoriEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBL_KATEGORILERTableAdapter dt = new DataSetTableAdapters.TBL_KATEGORILERTableAdapter();
            dt.KategoriEkle(TxtKategori.Text);
            Response.Redirect("KategoriListesi.aspx");
        }
    }
}