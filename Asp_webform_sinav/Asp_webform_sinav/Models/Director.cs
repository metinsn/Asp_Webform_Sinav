using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Asp_webform_sinav.Models
{
    public class Director
    {
        [Key]
        public int YonetmenID { get; set; }
        public string YonetmenAdi { get; set; }

        public ICollection<Movie> movie { get; set; }

    }
}