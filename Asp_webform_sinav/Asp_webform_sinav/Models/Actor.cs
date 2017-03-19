using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Asp_webform_sinav.Models
{
    public class Actor
    {
        [Key]
        public int AktorID { get; set; }
        public string AktorAdi { get; set; }
        public string AktorDogumYili { get; set; }
        public string AktorFilmRolu { get; set; }

        public ICollection<Movie> movie { get; set; }

        

    }
}