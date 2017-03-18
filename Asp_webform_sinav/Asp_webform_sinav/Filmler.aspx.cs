using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_webform_sinav
{
    public partial class Filmler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            sing(EntityBaglan database = new EntityBaglan())
            {
                Tekrar1.DataSource = database.Kurslar.ToList();
                Tekrar1.DataBind();
            }

            if (!IsPostBack)
            {
                if (Request.QueryString["ID"] != null)
                {
                    int id = int.Parse(Request.QueryString["ID"]);

                    using (EntityBaglan database = new EntityBaglan())
                    {
                        var deger = database.Kurslar.Find(id);
                        database.Kurslar.Remove(deger);
                        database.SaveChanges();
                        Response.Redirect("Kurslar.aspx");
                    }
                }

                if (Request.QueryString["GID"] != null)
                {
                    int gid = int.Parse(Request.QueryString["GID"]);

                    using (EntityBaglan database = new EntityBaglan())
                    {
                        var deger = database.Kurslar.Find(gid);
                        txtkursAdi.Text = deger.kursAdi;
                        txtkurssaati.Text = Convert.ToString(deger.kursSaati);
                        txtkursucreti.Text = Convert.ToString(deger.KursUcret);

                    }
                }
            }
        }
    }
}