using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Asp_webform_sinav.Models
{
    public class Actor
    {
        [Key]
        public int AktorNo { get; set; }
        public string AktorAdi { get; set; }
        public string AktorDogumYili { get; set; }
        public string AktorFilmRolu { get; set; }

        //public virtual Movie Filmleri { get; set; }
    }
}