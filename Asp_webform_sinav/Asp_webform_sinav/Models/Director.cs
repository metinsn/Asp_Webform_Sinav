using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Asp_webform_sinav.Models
{
    public class Director
    {
        [Key]
        public int YonetmenNo { get; set; }
        public string YonetmenAdi { get; set; }        
    }
}