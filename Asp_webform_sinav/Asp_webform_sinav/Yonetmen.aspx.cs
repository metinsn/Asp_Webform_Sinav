using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace Asp_webform_sinav
{
    public partial class Yonetmen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (EntityModel Database = new EntityModel())
            {
                Tekrar1.DataSource = Database.Director.ToList();
                Tekrar1.DataBind();
            }

            if (!IsPostBack)
            {
                if (Request.QueryString["ID"] != null)
                {
                    int id = int.Parse(Request.QueryString["ID"]);

                    using (EntityModel database = new EntityModel())
                    {
                        var deger = database.Director.Find(id);
                        database.Director.Remove(deger);
                        database.SaveChanges();
                        Response.Redirect("Yonetmen.aspx");
                    }
                }

                if (Request.QueryString["GID"] != null)
                {
                    int gid = int.Parse(Request.QueryString["GID"]);

                    using (EntityModel database = new EntityModel())
                    {
                        var deger = database.Director.Find(gid);
                        txtYonetmenAdi.Text = deger.YonetmenAdi;
                    }
                }
            }
        }

        protected void butonKaydet_Click(object sender, EventArgs e)
        {
            if (txtYonetmenAdi.Text != "")
            {

                using (EntityModel database = new EntityModel())
                {
                    Models.Director yonetmen = new Models.Director();
                    yonetmen.YonetmenAdi = txtYonetmenAdi.Text;

                    database.Director.Add(yonetmen);
                    database.SaveChanges();
                }
                Response.Redirect("Yonetmen.aspx");
            }
        }


        protected void butonGuncelle_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["GID"] != null)
            {
                using (EntityModel database = new EntityModel())
                {
                    int gid = int.Parse(Request.QueryString["GID"]);
                    var deger = database.Director.Find(gid);
                    txtYonetmenAdi.Text = deger.YonetmenAdi;


                    database.SaveChanges();
                }
                Response.Redirect("Yonetmen.aspx");
            }

        }
    }
}