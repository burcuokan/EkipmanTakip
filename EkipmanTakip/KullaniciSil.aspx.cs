using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EkipmanTakip
{
    public partial class KullaniciSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["KullaniciID"].ToString());

            DataSetTableAdapters.TBL_KULLANICILARTableAdapter dt = new DataSetTableAdapters.TBL_KULLANICILARTableAdapter();
            dt.KullaniciSil(id);
            Response.Redirect("Default.aspx");
        }
    }
}