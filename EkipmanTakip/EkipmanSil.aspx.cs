using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EkipmanTakip
{
    public partial class EkipmanSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["EkipmanID"].ToString());

            DataSetTableAdapters.EkipmanListTableAdapter dt = new DataSetTableAdapters.EkipmanListTableAdapter();
            dt.EkipmanSil(id);
            Response.Redirect("EkipmanYönetimi.aspx");
        }

}
}