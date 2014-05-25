using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Mobiles.OnlineShopModel
{
    public class OnlineShoppingModel
    {
        public List<Category> Categories { get; set; }
        public List<Brand> Brands { get; set; } 

        public OnlineShoppingModel()
        {
            Categories = new List<Category>();
            Brands = new List<Brand>();

        }

    }

    public class Category
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Url { get; set; }
        public Category ParentCategory { get; set; }
        public List<Category> SubCategories { get; set; }
        public bool IsProductLevel { get; set; }
 
        public Category()
        {
            SubCategories = new List<Category>();
        }
    }
    
    public class Brand
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Url { get; set; }
        public int NoOfProducts { get; set; }
        public string ImageUrl { get; set; }
    }


    public class Product
    {
        public int CategoryId { get; set; }
        public string ProductName { get; set; }
        public string Description { get; set; }
        public string ImageUrl { get; set; }
        public string Url { get; set; }
    }


    public class ProductDetails
    {
        public ProductDetails()
        {
            Specifications = new List<Specification>();
        }

        public List<Specification> Specifications { get; set; } 
    }


    public class Specification
    {
        public string Type { get; set; }
        public List<SpecificationDetail> Details { get; set; } 

        public Specification()
        {
            Details = new List<SpecificationDetail>();
        }
    }

    public class SpecificationDetail
    {
        public string Key { get; set; }
        public string Value { get; set; }
    }

    public class OnlineShop
    {
        protected string Url { get; set; }
    }


}
