using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Asp_webform_sinav.Models
{
    public class Movie
    {
        [Key]
        public int FilmID { get; set; }
        public string FilmAdi { get; set; }
        public string FilmYili { get; set; }
        public string FilmTuru { get; set; }
        public virtual ICollection<Actor> aktor { get; set; }
        public virtual Director YonetmenID { get; set; }
    }
}