namespace Asp_webform_sinav
{
    using System;
    using System.Data.Entity;
    using System.Linq;
    using Models;

    public class EntityModel : DbContext
    {
        public EntityModel()
            : base("name=EntityModel")
        {
        }
        public virtual DbSet<Actor> Actor { get; set; }
        public virtual DbSet<Director> Director { get; set; }
        public virtual DbSet<Movie> Movie { get; set; }
    }

}

