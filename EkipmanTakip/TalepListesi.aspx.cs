using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EkipmanTakip
{
    public partial class TalepListesi : System.Web.UI.Page
    {
        private void Listele()
        {
            DataSetTableAdapters.DataTable2TableAdapter dt = new DataSetTableAdapters.DataTable2TableAdapter();
            Repeater1.DataSource = dt.TalepListesi();
            Repeater1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Listele();
            }

        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int TalepID = Convert.ToInt32(e.CommandArgument); //İşlem yapılacak verinin ID'sini taşır.
            string durum = "";
            if (e.CommandName=="Onayla") //Hangi işlem yapılacağını belirler.
            {
                durum = "Onaylandı";
            }
            else if (e.CommandName=="Reddet")
            {
                durum = "Reddedildi";
            }
            else
            {
                return;  // Geçersiz komutsa işlemi durdur
            }

            DataSetTableAdapters.DataTable2TableAdapter dt = new DataSetTableAdapters.DataTable2TableAdapter();
            dt.DurumGuncelle(durum, TalepID);
            Listele();
        }
    }
}