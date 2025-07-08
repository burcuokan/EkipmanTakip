using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EkipmanTakip
{
    public partial class Ekipmanlar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciID"] == null)
            {
                Response.Redirect("LoginPanel.aspx");
                return; 
            }

            if (!IsPostBack)
            {
                if (Session["KullaniciID"] != null)
                {
                    int kullaniciID = Convert.ToInt32(Session["KullaniciID"]);
                    DataSetTableAdapters.ZımmetGetirTableAdapter dt = new DataSetTableAdapters.ZımmetGetirTableAdapter();
                    Repeater1.DataSource = dt.EkipmanGetir(kullaniciID);
                    Repeater1.DataBind();
                }
            }
           
        }
    }
}