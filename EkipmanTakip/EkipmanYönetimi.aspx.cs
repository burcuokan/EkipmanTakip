using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EkipmanTakip
{
    public partial class EkipmanYönetimi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.EkipmanListTableAdapter dt = new DataSetTableAdapters.EkipmanListTableAdapter();
            Repeater1.DataSource = dt.EkipmanGetir();
            Repeater1.DataBind();
        }
    }
}