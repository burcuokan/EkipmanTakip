using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EkipmanTakip
{
    public partial class ZimmetListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciID"] == null)
            {
                Response.Redirect("LoginPanel.aspx");
                return;
            }

            DataSetTableAdapters.ZımmetListTableAdapter dt = new DataSetTableAdapters.ZımmetListTableAdapter();
            Repeater1.DataSource = dt.ZimmetGetir();
            Repeater1.DataBind();
        }
    }
}