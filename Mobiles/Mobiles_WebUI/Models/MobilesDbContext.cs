using System.Data.Entity;

namespace Mobiles_WebUI.Models
{
    public class MobilesDbContext : DbContext
    {
        public MobilesDbContext()
            : base(DbSchemas.ConnectionName)
        {
        }

        public DbSet<Brand> Brands { get; set; }
        //public DbSet<Category> Categories { get; set; }
        //public DbSet<OfferUrl> OfferUrls { get; set; }
        public DbSet<BrandPage> BrandPages { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<Specifiction> Specifictions { get; set; }
        public DbSet<SpecificatonDetail> SpecificatonDetails { get; set; }
        public DbSet<SpecifictionHeading> SpecifictionHeadings { get; set; }
        public DbSet<SpecifictionType> SpecifictionTypes { get; set; }
        public DbSet<Schedule> Schedules { get; set; }
        public DbSet<BrandProductCount> BrandProductCounts { get; set; }


        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Brand>().ToTable("Brands");
            modelBuilder.Entity<BrandPage>().ToTable("BrandPages");
            //modelBuilder.Entity<Category>().ToTable("Categories");
            //modelBuilder.Entity<OfferUrl>().ToTable("OfferUrls");
            modelBuilder.Entity<Product>().ToTable("Products");
            modelBuilder.Entity<Specifiction>().ToTable("Specifictions");
            modelBuilder.Entity<SpecificatonDetail>().ToTable("SpecificatonDetails");
            modelBuilder.Entity<SpecifictionHeading>().ToTable("SpecifictionHeadings");
            modelBuilder.Entity<SpecifictionType>().ToTable("SpecifictionTypes");
            modelBuilder.Entity<Schedule>().ToTable("Schedules");
            modelBuilder.Entity<BrandProductCount>().ToTable("BrandProductCounts");
        }
    }
}