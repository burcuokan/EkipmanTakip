using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EkipmanTakip
{
    public partial class ZimmetSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ZımmetID"].ToString());
            DataSetTableAdapters.TBL_ZIMMETTableAdapter dt = new DataSetTableAdapters.TBL_ZIMMETTableAdapter();
            dt.ZimmetSil(id);
            Response.Redirect("ZimmetListesi.aspx");
        }
    }
}