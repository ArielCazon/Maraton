﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MaratonWeb.data
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class MaratonesEntities : DbContext
    {
        public MaratonesEntities()
            : base("name=MaratonesEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Maraton> Maratons { get; set; }
        public DbSet<ResultadoMaratonParticipante> ResultadoMaratonParticipantes { get; set; }
        public DbSet<Usuario> Usuarios { get; set; }
    }
}
