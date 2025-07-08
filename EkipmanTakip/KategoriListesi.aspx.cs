using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EkipmanTakip
{
    public partial class KategoriListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciID"] == null)
            {
                Response.Redirect("LoginPanel.aspx");
                return;
            }
            DataSetTableAdapters.TBL_KATEGORILERTableAdapter dt = new DataSetTableAdapters.TBL_KATEGORILERTableAdapter();
            Repeater1.DataSource = dt.KategoriListesi();
            Repeater1.DataBind();
        }
    }
}