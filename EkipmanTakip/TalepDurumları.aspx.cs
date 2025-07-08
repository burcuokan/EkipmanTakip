using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EkipmanTakip
{
    public partial class TalepDurumları : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["KullaniciID"] != null)
                {
                    int kullaniciID = Convert.ToInt32(Session["KullaniciID"]);
                    DataSetTableAdapters.DataTable2TableAdapter dt = new DataSetTableAdapters.DataTable2TableAdapter();
                    Repeater1.DataSource = dt.TalepDurum(kullaniciID);
                    Repeater1.DataBind();
                }
                else
                {
                    // Giriş yapılmamışsa yönlendir
                    Response.Redirect("LoginPanel.aspx");
                }
            }
        }
    }
}