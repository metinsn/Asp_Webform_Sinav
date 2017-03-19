using System;
using System.Linq;

namespace Asp_webform_sinav
{
    public partial class Aktorler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (EntityModel Database = new EntityModel())
            {
                Tekrar1.DataSource = Database.Actor.ToList();
                Tekrar1.DataBind();
            }

            if (!IsPostBack)
            {
                if (Request.QueryString["ID"] != null)
                {
                    int id = int.Parse(Request.QueryString["ID"]);

                    using (EntityModel database = new EntityModel())
                    {
                        var deger = database.Actor.Find(id);
                        database.Actor.Remove(deger);
                        database.SaveChanges();
                        Response.Redirect("Aktorler.aspx");
                    }
                }

                if (Request.QueryString["GID"] != null)
                {
                    int gid = int.Parse(Request.QueryString["GID"]);

                    using (EntityModel database = new EntityModel())
                    {
                        var deger = database.Actor.Find(gid);
                        txtAktorAdi.Text = deger.AktorAdi;
                        txtAktorDogYili.Text = Convert.ToString(deger.AktorDogumYili);
                        txtAktorRolu.Text = deger.AktorFilmRolu;                       

                    }
                }
            }
        }

        protected void butonKaydet_Click(object sender, EventArgs e)
        {
            if (txtAktorAdi.Text != "" && txtAktorDogYili.Text != "" && txtAktorRolu.Text != "" && txtAktorRolu.Text != "")
            {

                using (EntityModel database = new EntityModel())
                {
                    Models.Actor aktor = new Models.Actor();
                    aktor.AktorAdi = txtAktorAdi.Text;
                    aktor.AktorDogumYili = txtAktorDogYili.Text;
                    aktor.AktorFilmRolu = txtAktorRolu.Text;

                    database.Actor.Add(aktor);
                    database.SaveChanges();
                }
                Response.Redirect("Aktorler.aspx");
            }
        }


        protected void butonGuncelle_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["GID"] != null)
            {
                using (EntityModel database = new EntityModel())
                {
                    int gid = int.Parse(Request.QueryString["GID"]);
                    var deger = database.Actor.Find(gid);
                    txtAktorAdi.Text = deger.AktorAdi;
                    txtAktorDogYili.Text = Convert.ToString(deger.AktorDogumYili);
                    txtAktorRolu.Text = deger.AktorFilmRolu;

                    database.SaveChanges();
                }
                Response.Redirect("Aktorler.aspx");
            }

        }
    }
}