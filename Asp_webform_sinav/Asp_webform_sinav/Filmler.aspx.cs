using System;
using System.Linq;

namespace Asp_webform_sinav
{
    public partial class Filmler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (EntityModel Database = new EntityModel())
            {
                Tekrar1.DataSource = Database.Movie.ToList();
                Tekrar1.DataBind();
            }

            if (!IsPostBack)
            {
                if (Request.QueryString["ID"] != null)
                {
                    int id = int.Parse(Request.QueryString["ID"]);

                    using (EntityModel database = new EntityModel())
                    {
                        var deger = database.Movie.Find(id);
                        database.Movie.Remove(deger);
                        database.SaveChanges();
                        Response.Redirect("Filmler.aspx");
                    }
                }

                if (Request.QueryString["GID"] != null)
                {
                    int gid = int.Parse(Request.QueryString["GID"]);

                    using (EntityModel database = new EntityModel())
                    {
                        var deger = database.Movie.Find(gid);

                        txtFilmAdi.Text = deger.FilmAdi;
                        txtFilmYili.Text = Convert.ToString(deger.FilmYili);
                        txtFilmTuru.Text = deger.FilmTuru;
                        //txtFilmYönetmen.Text = yonetmen.YonetmenAdi;
                        //txtFilmAktor.Text = aktor.AktorAdi;

                    }
                }
            }
        }

        protected void butonKaydet_Click(object sender, EventArgs e)
        {
            if (txtFilmAdi.Text != "" && txtFilmYili.Text != "" && txtFilmTuru.Text != "" ) /*&& txtFilmYönetmen.Text != "" && txtFilmAktor.Text != "")*/
            {

                using (EntityModel database = new EntityModel())
                {
                    Models.Movie film = new Models.Movie();
                    Models.Actor aktor = new Models.Actor();
                    Models.Director yonetmen = new Models.Director();
                    film.FilmAdi = txtFilmAdi.Text;
                    film.FilmYili = txtFilmYili.Text;
                    film.FilmTuru = txtFilmTuru.Text;
                    yonetmen.YonetmenAdi = txtFilmYönetmen.Text;
                    aktor.AktorAdi = txtFilmAktor.Text;

                    database.Movie.Add(film);
                    database.Actor.Add(aktor);
                    database.Director.Add(yonetmen);
                    database.SaveChanges();
                }
                Response.Redirect("Filmler.aspx");
            }
        }


        protected void butonGuncelle_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["GID"] != null)
            {
                using (EntityModel database = new EntityModel())
                {
                    int gid = int.Parse(Request.QueryString["GID"]);
                    var deger = database.Movie.Find(gid);
                    txtFilmAdi.Text = deger.FilmAdi;
                    txtFilmYili.Text = Convert.ToString(deger.FilmYili);
                    txtFilmTuru.Text = deger.FilmTuru;
                    //txtFilmYönetmen.Text = Convert.ToString(deger.YonetmenNo);
                    //txtFilmAktor.Text = Convert.ToString(deger.AktorNo);

                    database.SaveChanges();
                }
                Response.Redirect("Filmler.aspx");
            }

        }
    }
}