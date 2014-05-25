using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;
using System.Linq;
using System.Text;
using DID_DataRead.DataModels;

namespace CURRYS_DataRead.ShopDataModel
{
    public class CurrysDbContext : DbContext
    {
        public CurrysDbContext()
            : base(DbSchemas.ConnectionName)
        {
            
        }

        public DbSet<Category> Categories { get; set; }
        public DbSet<Brand> Brands { get; set; }
        public DbSet<OfferUrl> OfferUrls { get; set; } 
        public DbSet<Product> Products { get; set; }
        public DbSet<ProductDetail> ProductDetails { get; set; }
        public DbSet<Specifiction> Specifictions { get; set; }
        public DbSet<SpecificatonDetail> SpecificatonDetails { get; set; }
        public DbSet<SpecifictionHeading> SpecifictionHeadings { get; set; }
        
        
        
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Category>().ToTable("Categories", DbSchemas.CURRYS);
            modelBuilder.Entity<Brand>().ToTable("Brands", DbSchemas.CURRYS);
            modelBuilder.Entity<OfferUrl>().ToTable("OfferUrls", DbSchemas.CURRYS);
            modelBuilder.Entity<Product>().ToTable("Products", DbSchemas.CURRYS);
            modelBuilder.Entity<ProductDetail>().ToTable("ProductDetails", DbSchemas.CURRYS);
            modelBuilder.Entity<Specifiction>().ToTable("Specifictions", DbSchemas.CURRYS);
            modelBuilder.Entity<SpecificatonDetail>().ToTable("SpecificatonDetails", DbSchemas.CURRYS);
            modelBuilder.Entity<SpecifictionHeading>().ToTable("SpecifictionHeadings", DbSchemas.CURRYS);
        }


    }



}
