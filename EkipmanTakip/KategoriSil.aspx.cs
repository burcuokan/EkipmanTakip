using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EkipmanTakip
{
    public partial class KategoriSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["KategoriID"].ToString());
            DataSetTableAdapters.TBL_KATEGORILERTableAdapter dt = new DataSetTableAdapters.TBL_KATEGORILERTableAdapter();
            dt.KategoriSil(id);
            Response.Redirect("KategoriListesi.aspx");
        }
    }
}