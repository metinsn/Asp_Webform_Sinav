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
        public int FilmNo { get; set; }
        public string FilmAdi { get; set; }
        public string FilmYili { get; set; }
        public string FilmTuru { get; set; }       

        //[ForeignKey("Director")]
        //public virtual int YonetmenNo { get; set; }

        //[ForeignKey("Actor")]
        //public virtual int AktorNo { get; set; }

        //public virtual Director YonetmenNo { get; set; }
        //public virtual Actor AktorNo { get; set; }
    }
}