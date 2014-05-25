using System;
using System.Collections.Generic;

namespace Mobiles.DataModels
{
    public class DbSchemas
    {
        public const string ConnectionName = "Mobiles";
    }


    public class Entity
    {
        public int Id { get; set; }
    }

    public class TableBase : Entity
    {
        public bool HasToBeMonitered { get; set; }
        public bool IsActive { get; set; }
        public DateTime? AddedDate { get; set; }
        public DateTime? LastModifiedDate { get; set; }
        public string Url { get; set; }
    }

    public class Category : TableBase
    {
        public string CategoryName { get; set; }
        public bool IsProductLevel { get; set; }
        public Category Parent { get; set; }
        public virtual List<Category> SubCategories { get; set; }
        public virtual List<Brand> Brands { get; set; }
    }

    public class Brand : TableBase
    {
        public string BrandName { get; set; }
        public string ImageUrl { get; set; }
        public int NumberOfProducts { get; set; }
        public List<Product> Products { get; set; }
        public List<BrandPage> BrandPages { get; set; }
        public Brand()
        {
            Products = new List<Product>();
            BrandPages = new List<BrandPage>();
        }

    }

    public class OfferUrl : TableBase
    {
        public Category Category { get; set; }
    }

    public class BrandPage : Entity
    {
        public Brand Brand { get; set; }
        public string Url { get; set; }
        public bool IsInitialPage { get; set; }
        public bool IsRead { get; set; }
    }



    public class Product : TableBase
    {
        public Brand Brand { get; set; }
        public string ProductName { get; set; }
        public string Description { get; set; }
        public string ImageUrl { get; set; }
        public bool IsRead { get; set; }
        public List<Specifiction> Specifictions { get; set; }

        public Product()
        {
            Specifictions = new List<Specifiction>();
        }
    }

    public class ProductImage : Entity
    {
        public Product Product { get; set; }
        public string ImageUrl { get; set; }
    }



    public class Specifiction : Entity
    {
        public SpecifictionType Type { get; set; }
        public List<SpecificatonDetail> SpecificatonDetails { get; set; }
        public Product Product { get; set; }
        public Specifiction()
        {
            SpecificatonDetails = new List<SpecificatonDetail>();
        }
    }

    public class SpecificatonDetail : Entity
    {
        public SpecifictionHeading Heading { get; set; }
        public string Value { get; set; }
        public Specifiction Specifiction { get; set; }
    }

    public class SpecifictionType : Entity
    {
        public string Name { get; set; }
    }

    public class SpecifictionHeading : Entity
    {
        public string Name { get; set; }
    }
    
    public class Schedule : Entity
    {
        public DateTime ScheduleDate { get; set; }
        public DateTime StartTime { get; set; }
        public DateTime EndTime { get; set; }
    }

    public class BrandProductCount : Entity
    {
        public Brand Brand { get; set; }
        public int CurrentNoOfProducts { get; set; }
        public Schedule Schedule { get; set; }
    }

    public class UpdateDetail : Entity
    {
        public Schedule Schedule { get; set; }
        public string TableName { get; set; }
        public int EntityId { get; set; }
    }
}