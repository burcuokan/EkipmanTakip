using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EkipmanTakip
{
    public partial class İstatistikler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.DataTable1TableAdapter dt = new DataSetTableAdapters.DataTable1TableAdapter();
            Textbox1.Text ="Toplam Kullanıcı Sayısı: " + dt.İstatistik1().ToString();
            Textbox2.Text ="Toplam Admin Sayısı: " + dt.İstatistik2().ToString();
            Textbox3.Text ="Toplam Kategori Sayısı: " + dt.İstatistik3().ToString();
            Textbox4.Text ="Toplam Ekipman Sayısı: " + dt.İstatistik4().ToString();
            Textbox5.Text ="Kullanımda Olan Ekipman Sayısı: " + dt.İstatistik5().ToString();
            Textbox6.Text ="Boşta Olan Ekipman Sayısı: " + dt.İstatistik6().ToString();
            Textbox7.Text ="Arızalı Olan Ekipman Sayısı: " + dt.İstatistik7().ToString();
            Textbox8.Text ="En Fazla Zimmetlenen Ekipman : " + dt.İstatistik8().ToString();
            Textbox9.Text ="Zimmet Süresi Geçen Ekipman : " + dt.İstatistik9().ToString();
            Textbox10.Text ="En Fazla Bulunan Ekipman Kategorisi : " + dt.İstatistik10().ToString();
            Textbox11.Text ="En Fazla Bulunan Meslek : " + dt.İstatistik11().ToString();
            Textbox12.Text ="Toplam Meslek Sayısı : " + dt.İstatistik12().ToString();
            
        }
    }
}