using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace EkipmanTakip
{
    public partial class LoginPanel : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=OKAN;Initial Catalog=EkipmanTakipDb;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From TBL_KULLANICILAR where Mail=@p1 and Sifre=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", TxtMail.Text);
            komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();

            if (dr.Read())
            {
                string veriTabaniRolu = dr["Rol"].ToString(); // Veritabanından gelen kullanıcının rolünü alıyoruz.
                string secilenRol = ddlRol.SelectedValue; // Kullanıcının dropdowndan seçtiği rolü alıyoruz.

                if (veriTabaniRolu != secilenRol)  // Veritabanındaki rol ile seçilen rolü karşılaştırıyoruz.
                {
                    lblMesaj.Text = "Seçilen rol ile hesap rolü uyuşmuyor!"; // Eğer roller uyuşmuyorsa kullanıcıya uyarı mesajı gösteriyoruz.
                    baglanti.Close();
                    return;   // Fonksiyondan çıkıyoruz, giriş işlemi sonlanıyor.
                }

                Session["KullaniciID"] = dr["KullaniciID"]; // Kullanıcının ID bilgisini Session'a atıyoruz (oturumda tutuyoruz).

                if (veriTabaniRolu == "Admin")
                {
                    Response.Redirect("Default.aspx");
                }
                else if (veriTabaniRolu == "Kullanıcı")
                {
                    int id = Convert.ToInt32(dr["KullaniciID"]);
                    Response.Redirect("KullaniciDefault.aspx?id=" + id);
                }
                else
                {
                    lblMesaj.Text = "Tanımsız Rol";
                }
            }
            else
            {
                lblMesaj.Text = "Hatalı e-posta veya şifre!";
            }

            baglanti.Close();
        }
    }
}