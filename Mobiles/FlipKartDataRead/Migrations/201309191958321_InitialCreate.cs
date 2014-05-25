namespace Mobiles.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialCreate : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Brands",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        BrandName = c.String(),
                        ImageUrl = c.String(),
                        NumberOfProducts = c.Int(nullable: false),
                        HasToBeMonitered = c.Boolean(nullable: false),
                        IsActive = c.Boolean(nullable: false),
                        AddedDate = c.DateTime(),
                        LastModifiedDate = c.DateTime(),
                        Url = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Products",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        ProductName = c.String(),
                        Description = c.String(),
                        ImageUrl = c.String(),
                        IsRead = c.Boolean(nullable: false),
                        HasToBeMonitered = c.Boolean(nullable: false),
                        IsActive = c.Boolean(nullable: false),
                        AddedDate = c.DateTime(),
                        LastModifiedDate = c.DateTime(),
                        Url = c.String(),
                        Brand_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Brands", t => t.Brand_Id)
                .Index(t => t.Brand_Id);
            
            CreateTable(
                "dbo.Specifictions",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Type_Id = c.Int(),
                        Product_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.SpecifictionTypes", t => t.Type_Id)
                .ForeignKey("dbo.Products", t => t.Product_Id)
                .Index(t => t.Type_Id)
                .Index(t => t.Product_Id);
            
            CreateTable(
                "dbo.SpecifictionTypes",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.SpecificatonDetails",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Value = c.String(),
                        Heading_Id = c.Int(),
                        Specifiction_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.SpecifictionHeadings", t => t.Heading_Id)
                .ForeignKey("dbo.Specifictions", t => t.Specifiction_Id)
                .Index(t => t.Heading_Id)
                .Index(t => t.Specifiction_Id);
            
            CreateTable(
                "dbo.SpecifictionHeadings",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.BrandPages",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Url = c.String(),
                        IsInitialPage = c.Boolean(nullable: false),
                        IsRead = c.Boolean(nullable: false),
                        Brand_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Brands", t => t.Brand_Id)
                .Index(t => t.Brand_Id);
            
            CreateTable(
                "dbo.Schedules",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        ScheduleDate = c.DateTime(nullable: false),
                        StartTime = c.DateTime(nullable: false),
                        EndTime = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.BrandProductCounts",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        CurrentNoOfProducts = c.Int(nullable: false),
                        Brand_Id = c.Int(),
                        Schedule_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Brands", t => t.Brand_Id)
                .ForeignKey("dbo.Schedules", t => t.Schedule_Id)
                .Index(t => t.Brand_Id)
                .Index(t => t.Schedule_Id);
            
        }
        
        public override void Down()
        {
            DropIndex("dbo.BrandProductCounts", new[] { "Schedule_Id" });
            DropIndex("dbo.BrandProductCounts", new[] { "Brand_Id" });
            DropIndex("dbo.BrandPages", new[] { "Brand_Id" });
            DropIndex("dbo.SpecificatonDetails", new[] { "Specifiction_Id" });
            DropIndex("dbo.SpecificatonDetails", new[] { "Heading_Id" });
            DropIndex("dbo.Specifictions", new[] { "Product_Id" });
            DropIndex("dbo.Specifictions", new[] { "Type_Id" });
            DropIndex("dbo.Products", new[] { "Brand_Id" });
            DropForeignKey("dbo.BrandProductCounts", "Schedule_Id", "dbo.Schedules");
            DropForeignKey("dbo.BrandProductCounts", "Brand_Id", "dbo.Brands");
            DropForeignKey("dbo.BrandPages", "Brand_Id", "dbo.Brands");
            DropForeignKey("dbo.SpecificatonDetails", "Specifiction_Id", "dbo.Specifictions");
            DropForeignKey("dbo.SpecificatonDetails", "Heading_Id", "dbo.SpecifictionHeadings");
            DropForeignKey("dbo.Specifictions", "Product_Id", "dbo.Products");
            DropForeignKey("dbo.Specifictions", "Type_Id", "dbo.SpecifictionTypes");
            DropForeignKey("dbo.Products", "Brand_Id", "dbo.Brands");
            DropTable("dbo.BrandProductCounts");
            DropTable("dbo.Schedules");
            DropTable("dbo.BrandPages");
            DropTable("dbo.SpecifictionHeadings");
            DropTable("dbo.SpecificatonDetails");
            DropTable("dbo.SpecifictionTypes");
            DropTable("dbo.Specifictions");
            DropTable("dbo.Products");
            DropTable("dbo.Brands");
        }
    }
}
